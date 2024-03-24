import * as React from 'react';

import { ScrollView, StyleSheet } from 'react-native';
import { ScreenLoadingView } from 'react-native-screen-loading';
import { NestedView } from './NestedView';

export default function App() {
  console.log(`IBG-RN: App is called at ${Date.now()}`);

  React.useEffect(() => {
    console.log(`IBG-RN: App is mounted at ${Date.now()}`);
  }, []);

  return (
    <ScrollView style={styles.container}>
      {/* ScreenLoadingView needs to have a non-zero width and height in order to be drawn */}
      <ScreenLoadingView
        style={styles.screenLoadingView}
        onLayout={(e) => {
          console.log(`IBG-RN: onLayout is called at ${e.timeStamp}`);
        }}
      />
      <NestedView breadth={2} depth={12} />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  screenLoadingView: {
    width: 100,
    height: 100,
    backgroundColor: 'skyblue',
  },
});
