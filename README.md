# ChinaOpen

## Introduction

 
<!-- [DATASET] -->

```BibTeX
@inproceedings{Chen2023chinaopen,
  title={ChinaOpen: A Dataset for Open-world Multimodal Learning},
  author={Aozhu Chen, Ziyuan Wang, Chengbo Dong, Kaibin Tian, Ruixiang Zhao, Xun Liang, Zhanhui Kang, Xirong Li},
  journal={ACMMM},
  year={2023},
}
```
For detailed dataset information, please visit the dataset's official [website](https://ruc-aimc-lab.github.io/ChinaOpen/).  

## Requirement
- Python3  
- you-get  
  macOS:  
  ```shell
  brew install you-get
  ```
  Linux:  
  ```shell
  pip install you-get
  ```

##  ChinaOpen-50k
### Download videos
```shell
bash download_ChinaOpen-50k.sh /your/save/path
```
### Annotations
```
ChinaOpen-50K-annotations.json
├── video_id#1:'BV1j64y1o7sJ'
│   ├── title:['我的学长和李现好像呀！！']
│   ├── caption:['一个男人正在看人们在雨中行走。', '一个男孩在喷泉边走边说话。', '一个背着背包的男人走在街上。']
├── ...
```

## ChinaOpen-1k
### Download videos
- request via [Google Form](https://docs.google.com/forms/d/e/1FAIpQLSfjA9fv6dYafonAhJkUIL0y9Em9NFZztpTu-Xe_LXmkerHVYQ/viewform).
  
### Annotations
```
ChianOpen-1K-annotations.json
├── video_id#1:'BV1CN411o7WE'
│   ├── Captions
│   │   ├── User-title:'自行车压弯竟然比摩托车都低！'
│   │   ├── Manual-caption:'一个男人骑着自行车走下一段楼梯。'
│   ├── Captions-en
│   │   ├── User-title:'Bikes bend even lower than motorcycles!'
│   │   ├── Manual-caption:'A man rode his bicycle down a flight of stairs.'
│   ├── Labels
│   │   ├── Object:['自行车', '摩托车', '男人', '安全帽']
│   │   ├── Action:['骑自行车', '骑摩托车']
│   │   ├── Scene:['滑板坡', '弯道']
│   │   ├── User-tag:['压弯', '骑行']
│   ├── Labels-en
│   │   ├── Object:['bicycle', 'motorbike', 'man', 'safety hat']
│   │   ├── Action:['riding a bicycle', 'motorcycling']
│   │   ├── Scene:['skateboard slope', 'curve']
│   │   ├── User-tag:[ 'bending', 'riding']
├── ...
```
