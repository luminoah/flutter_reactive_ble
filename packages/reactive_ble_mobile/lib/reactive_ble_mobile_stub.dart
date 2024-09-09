import 'package:flutter/src/services/platform_channel.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart' show Registrar;
import 'package:reactive_ble_mobile/reactive_ble_mobile.dart';
import 'package:reactive_ble_mobile/src/converter/args_to_protubuf_converter.dart';
import 'package:reactive_ble_mobile/src/converter/protobuf_converter.dart';
import 'package:reactive_ble_platform_interface/reactive_ble_platform_interface.dart';
import 'package:reactive_ble_platform_interface/src/model/ble_status.dart';
import 'package:reactive_ble_platform_interface/src/model/characteristic_instance.dart';
import 'package:reactive_ble_platform_interface/src/model/characteristic_value.dart';
import 'package:reactive_ble_platform_interface/src/model/clear_gatt_cache_error.dart';
import 'package:reactive_ble_platform_interface/src/model/connection_priority.dart';
import 'package:reactive_ble_platform_interface/src/model/connection_state_update.dart';
import 'package:reactive_ble_platform_interface/src/model/discovered_device.dart';
import 'package:reactive_ble_platform_interface/src/model/discovered_service.dart';
import 'package:reactive_ble_platform_interface/src/model/generic_failure.dart';
import 'package:reactive_ble_platform_interface/src/model/result.dart';
import 'package:reactive_ble_platform_interface/src/model/scan_mode.dart';
import 'package:reactive_ble_platform_interface/src/model/unit.dart';
import 'package:reactive_ble_platform_interface/src/model/uuid.dart';
import 'package:reactive_ble_platform_interface/src/model/write_characteristic_info.dart';

class ReactiveBlePluginStub extends ReactiveBleMobilePlatform {
  ReactiveBlePluginStub({
    required ArgsToProtobufConverter argsToProtobufConverter,
    required ProtobufConverter protobufConverter,
    required MethodChannel bleMethodChannel,
    required Stream<List<int>> connectedDeviceChannel,
    required Stream<List<int>> charUpdateChannel,
    required Stream<List<int>> bleDeviceScanChannel,
    required Stream<List<int>> bleStatusChannel,
    Logger? logger,
  }) : super(
            argsToProtobufConverter: argsToProtobufConverter,
            protobufConverter: protobufConverter,
            bleMethodChannel: bleMethodChannel,
            connectedDeviceChannel: connectedDeviceChannel,
            charUpdateChannel: charUpdateChannel,
            bleDeviceScanChannel: bleDeviceScanChannel,
            bleStatusChannel: bleStatusChannel,
            logger: logger);

  @override
  // TODO: implement bleStatusStream
  Stream<BleStatus> get bleStatusStream => throw UnimplementedError();

  @override
  // TODO: implement charValueUpdateStream
  Stream<CharacteristicValue> get charValueUpdateStream => throw UnimplementedError();

  @override
  // TODO: implement connectionUpdateStream
  Stream<ConnectionStateUpdate> get connectionUpdateStream => throw UnimplementedError();

  @override
  // TODO: implement scanStream
  Stream<ScanResult> get scanStream => throw UnimplementedError();

  @override
  Future<Result<Unit, GenericFailure<ClearGattCacheError>?>> clearGattCache(String deviceId) {
    // TODO: implement clearGattCache
    throw UnimplementedError();
  }

  @override
  Stream<void> connectToDevice(String id, Map<Uuid, List<Uuid>>? servicesWithCharacteristicsToDiscover, Duration? connectionTimeout) {
    // TODO: implement connectToDevice
    throw UnimplementedError();
  }

  @override
  Future<void> deinitialize() => Future<void>.value();

  @override
  Future<void> disconnectDevice(String deviceId) {
    // TODO: implement disconnectDevice
    throw UnimplementedError();
  }

  @override
  Future<List<DiscoveredService>> discoverServices(String deviceId) {
    // TODO: implement discoverServices
    throw UnimplementedError();
  }

  @override
  Future<List<DiscoveredService>> getDiscoverServices(String deviceId) {
    // TODO: implement getDiscoverServices
    throw UnimplementedError();
  }

  @override
  Future<void> initialize() => Future<void>.value();

  @override
  Stream<void> readCharacteristic(CharacteristicInstance characteristic) {
    // TODO: implement readCharacteristic
    throw UnimplementedError();
  }

  @override
  Future<int> readRssi(String deviceId) {
    // TODO: implement readRssi
    throw UnimplementedError();
  }

  @override
  Future<ConnectionPriorityInfo> requestConnectionPriority(String deviceId, ConnectionPriority priority) {
    // TODO: implement requestConnectionPriority
    throw UnimplementedError();
  }

  @override
  Future<int> requestMtuSize(String deviceId, int? mtu) {
    // TODO: implement requestMtuSize
    throw UnimplementedError();
  }

  @override
  Stream<void> scanForDevices({required List<Uuid> withServices, required ScanMode scanMode, required bool requireLocationServicesEnabled}) {
    // TODO: implement scanForDevices
    throw UnimplementedError();
  }

  @override
  Future<void> stopSubscribingToNotifications(CharacteristicInstance characteristic) {
    // TODO: implement stopSubscribingToNotifications
    throw UnimplementedError();
  }

  @override
  Stream<void> subscribeToNotifications(CharacteristicInstance characteristic) {
    // TODO: implement subscribeToNotifications
    throw UnimplementedError();
  }

  @override
  Future<WriteCharacteristicInfo> writeCharacteristicWithoutResponse(CharacteristicInstance characteristic, List<int> value) {
    // TODO: implement writeCharacteristicWithoutResponse
    throw UnimplementedError();
  }

  @override
  Future<WriteCharacteristicInfo> writeCharacteristicWithResponse(CharacteristicInstance characteristic, List<int> value) {
    // TODO: implement writeCharacteristicWithResponse
    throw UnimplementedError();
  }

  static void registerWith(Registrar registrar) {
    ReactiveBlePlatform.instance = ReactiveBlePluginStub(
        argsToProtobufConverter: null,
        protobufConverter: null,
        bleMethodChannel: null,
        connectedDeviceChannel: null,
        charUpdateChannel: null,
        bleDeviceScanChannel: null,
        bleStatusChannel: null);
  }
}
