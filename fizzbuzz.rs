use std::collections::BTreeMap;

fn main() {
    let mut dict = BTreeMap::new();
    let mut output = "".to_string();
    dict.insert(3, "Fizz");
    dict.insert(5, "Buzz");
    for i in 1..=100 {
        output.clear();
        for (key, value) in &dict {
            if i % key == 0 {
                output.push_str(value);
            }
        }
        if output.is_empty() {
            output = i.to_string();
        }
        println!("{}", output)
    }
}