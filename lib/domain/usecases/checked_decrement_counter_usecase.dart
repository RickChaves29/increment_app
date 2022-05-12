class CheckedDecrementCounterUseCase {
  execute(int value) {
    if (value <= 0) {
      return true;
    } else {
      return false;
    }
  }
}
