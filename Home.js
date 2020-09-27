import React from 'react';
import {
    View,
    Text,
    Button,
    NativeModules,
    NativeEventEmitter
} from 'react-native';

const iOSBridger = NativeModules.Bridge;
const iOSBridgerEmitter = new NativeEventEmitter(iOSBridger);
let subscription = null;

const Home = () => {

    const presentButtonPressed = () => {

        iOSBridger.presentController({'name':'Kota'})

        subScribeEvent();
    }

    const subScribeEvent = () => {
        subscription = iOSBridgerEmitter.addListener('UpdatedProfile', (data)=>{
            console.log('Data in subscription');
            console.log(data);
        });
    };

    return(
        <View style = {{flex:1,justifyContent:'center',alignContent:'center',alignItems:'center'}}>
            <Text>Home</Text>
            <Button title = 'Present' onPress = {presentButtonPressed}/>
        </View>
    )
}

export default Home;