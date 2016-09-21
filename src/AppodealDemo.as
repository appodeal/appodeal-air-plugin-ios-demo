package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.text.TextFormat;  
	import com.appodeal.aneplugin.*;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.events.MouseEvent;
	
	public class AppodealDemo extends Sprite
	{
		public function AppodealDemo()
		{
			super();
			
			// support autoOrients
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			var interstitial:TextField = new TextField(); 
			interstitial.text = "INTERSTITIAL!"; 
			interstitial.autoSize = TextFieldAutoSize.LEFT;                  
			var format:TextFormat = new TextFormat(); 
			format.size = 48;           			
			interstitial.setTextFormat ( format ); 
			interstitial.x = 0;
			interstitial.y = 200;
			this.addChild( interstitial ); 
			interstitial.addEventListener(MouseEvent.CLICK, showInterstitital);
			
			var rewarded:TextField = new TextField(); 
			rewarded.text = "REWARDED VIDEO!"; 
			rewarded.autoSize = TextFieldAutoSize.LEFT;                  
			format.size = 48;  
			rewarded.setTextFormat ( format ); 
			rewarded.x = 0;
			rewarded. y = 300;
			this.addChild( rewarded ); 
			rewarded.addEventListener(MouseEvent.CLICK, showRewarded);
			
			var skippable:TextField = new TextField(); 
			skippable.text = "SKIPPABLE VIDEO!"; 
			skippable.autoSize = TextFieldAutoSize.LEFT;                  
			format.size = 48;    
			skippable.setTextFormat ( format ); 
			skippable.x = 0;
			skippable.y = 400;
			this.addChild( skippable ); 
			skippable.addEventListener(MouseEvent.CLICK, showSkippable);
			
			var banner:TextField = new TextField(); 
			banner.text = "HIDE BANNER!"; 
			banner.autoSize = TextFieldAutoSize.LEFT;                  
			format.size = 48;    
			banner.setTextFormat ( format ); 
			banner.x = 0;
			banner.y = 500;
			this.addChild( banner ); 
			banner.addEventListener(MouseEvent.CLICK, hideBanner);
			
			var bottombanner:TextField = new TextField(); 
			bottombanner.text = "SHOW BOTTOM BANNER!"; 
			bottombanner.autoSize = TextFieldAutoSize.LEFT;                  
			format.size = 48;    
			bottombanner.setTextFormat ( format ); 
			bottombanner.x = 0;
			bottombanner.y = 600;
			this.addChild( bottombanner ); 
			bottombanner.addEventListener(MouseEvent.CLICK, showBottomBanner);
			
			var topbanner:TextField = new TextField(); 
			topbanner.text = "SHOW TOP BANNER!"; 
			topbanner.autoSize = TextFieldAutoSize.LEFT;                  
			format.size = 48;    
			topbanner.setTextFormat ( format ); 
			topbanner.x = 0;
			topbanner.y = 700;
			this.addChild( topbanner ); 
			topbanner.addEventListener(MouseEvent.CLICK, showTopBanner);
			
			var nonskippable:TextField = new TextField(); 
			nonskippable.text = "NONSKIPPABLE VIDEO!"; 
			nonskippable.autoSize = TextFieldAutoSize.LEFT;                  
			format.size = 48;    
			nonskippable.setTextFormat ( format ); 
			nonskippable.x = 0;
			nonskippable.y = 800;
			this.addChild( nonskippable ); 
			nonskippable.addEventListener(MouseEvent.CLICK, showNonskippable);
			
			
			var appodeal:Appodeal = new Appodeal();
			var appKey:String = "dee74c5129f53fc629a44a690a02296694e3eef99f2d3a5f";
			appodeal.initialize(appKey, AdType.INTERSTITIAL | AdType.SKIPPABLE_VIDEO | AdType.BANNER | AdType.REWARDED_VIDEO | AdType.NON_SKIPPABLE_VIDEO);
			appodeal.cache(AdType.SKIPPABLE_VIDEO);
			appodeal.setBannerAnimationEnabled(true);
			appodeal.setBannerBackgroundVisible(true);
			appodeal.setSmartBannersEnabled(true);
			appodeal.addEventListener(AdEvent.INTERSTITIAL_LOADED, onInterstitial);
			appodeal.addEventListener(AdEvent.INTERSTITIAL_FAILED_TO_LOAD, onInterstitial);
			appodeal.addEventListener(AdEvent.INTERSTITIAL_SHOWN, onInterstitial);
			appodeal.addEventListener(AdEvent.INTERSTITIAL_CLICKED, onInterstitial);
			appodeal.addEventListener(AdEvent.INTERSTITIAL_CLOSED, onInterstitial);
			appodeal.addEventListener(AdEvent.REWARDED_VIDEO_LOADED, onRewardedVideo);
			appodeal.addEventListener(AdEvent.REWARDED_VIDEO_FAILED_TO_LOAD, onRewardedVideo);
			appodeal.addEventListener(AdEvent.REWARDED_VIDEO_SHOWN, onRewardedVideo);
			appodeal.addEventListener(AdEvent.REWARDED_VIDEO_FINISHED, onRewardedVideo);
			appodeal.addEventListener(AdEvent.REWARDED_VIDEO_CLOSED, onRewardedVideo);
			appodeal.addEventListener(AdEvent.BANNER_LOADED, onBanner);
			appodeal.addEventListener(AdEvent.BANNER_FAILED_TO_LOAD, onBanner);
			appodeal.addEventListener(AdEvent.BANNER_SHOWN, onBanner);
			appodeal.addEventListener(AdEvent.BANNER_CLICKED, onBanner);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_LOADED, onVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_FAILED_TO_LOAD, onVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_SHOWN, onVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_FINISHED, onVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_CLOSED, onVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_LOADED, onNonskippableVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_FAILED_TO_LOAD, onNonskippableVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_SHOWN, onNonskippableVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_FINISHED, onNonskippableVideo);
			appodeal.addEventListener(AdEvent.SKIPPABLE_VIDEO_CLOSED, onNonskippableVideo);
			
		}
		
		private function showRewarded(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.showWithPlacement(AdType.REWARDED_VIDEO, "poiulk");
		}
		private function showSkippable(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.show(AdType.SKIPPABLE_VIDEO);	
		}
		private function showInterstitital(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.show(AdType.INTERSTITIAL);  
		}		
		private function hideBanner(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.hide(AdType.BANNER);
		}
		private function showBottomBanner(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.show(AdType.BANNER_BOTTOM);
		}
		private function showTopBanner(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.show(AdType.BANNER_TOP);
		}
		private function showNonskippable(event:MouseEvent):void {
			var appodeal:Appodeal = new Appodeal();
			appodeal.show(AdType.NON_SKIPPABLE_VIDEO);
		}
		private function onInterstitial(event:AdEvent):void {
			switch (event.type) {
				case AdEvent.INTERSTITIAL_LOADED:
					trace('INTERSTITIAL_LOADED');
					break;
				case AdEvent.INTERSTITIAL_FAILED_TO_LOAD:
					trace('INTERSTITIAL_FAILED_TO_LOAD');
					break;
				case AdEvent.INTERSTITIAL_SHOWN:
					trace('INTERSTITIAL_SHOWN');
					break;
				case AdEvent.INTERSTITIAL_CLICKED:
					trace('INTERSTITIAL_CLICKED');
					break;
				case AdEvent.INTERSTITIAL_CLOSED:
					trace('INTERSTITIAL_CLOSED');
					break;
			}
		}
		private function onRewardedVideo(event:AdEvent):void {
			switch (event.type) {
				case AdEvent.REWARDED_VIDEO_LOADED:
					trace('REWARDED_VIDEO_LOADED');
					break;
				case AdEvent.REWARDED_VIDEO_FAILED_TO_LOAD:
					trace('REWARDED_VIDEO_FAILED_TO_LOAD');
					break;
				case AdEvent.REWARDED_VIDEO_SHOWN:
					trace('REWARDED_VIDEO_SHOWN');
					break;
				case AdEvent.REWARDED_VIDEO_FINISHED:
					trace('REWARDED_VIDEO_FINISHED, your reward:', event.amount, event.name);
					break;
				case AdEvent.REWARDED_VIDEO_CLOSED:
					trace('REWARDED_VIDEO_CLOSED');
					break;
			}
		}
		private function onBanner(event:AdEvent):void {
			switch (event.type) {
				case AdEvent.BANNER_LOADED:
					trace('BANNER_LOADED');
					break;
				case AdEvent.BANNER_FAILED_TO_LOAD:
					trace('BANNER_FAILED_TO_LOAD');
					break;
				case AdEvent.BANNER_SHOWN:
					trace('BANNER_SHOWN');
					break;
				case AdEvent.BANNER_CLICKED:
					trace('BANNER_CLICKED');
					break;
			}
		}
		private function onVideo(event:AdEvent):void {
			switch (event.type) {
				case AdEvent.SKIPPABLE_VIDEO_LOADED:
					trace('SKIPPABLE_VIDEO_LOADED');
					break;
				case AdEvent.SKIPPABLE_VIDEO_FAILED_TO_LOAD:
					trace('SKIPPABLE_VIDEO_FAILED_TO_LOAD');
					break;
				case AdEvent.SKIPPABLE_VIDEO_SHOWN:
					trace('SKIPPABLE_VIDEO_SHOWN');
					break;
				case AdEvent.SKIPPABLE_VIDEO_FINISHED:
					trace('SKIPPABLE_VIDEO_FINISHED');
					break;
				case AdEvent.SKIPPABLE_VIDEO_CLOSED:
					trace('SKIPPABLE_VIDEO_CLOSED');
					break;
			}
		}
		private function onNonskippableVideo(event:AdEvent):void {
			switch (event.type) {
				case AdEvent.NON_SKIPPABLE_VIDEO_LOADED:
					trace('NON_SKIPPABLE_VIDEO_LOADED');
					break;
				case AdEvent.NON_SKIPPABLE_VIDEO_FAILED_TO_LOAD:
					trace('NON_SKIPPABLE_VIDEO_FAILED_TO_LOAD');
					break;
				case AdEvent.NON_SKIPPABLE_VIDEO_SHOWN:
					trace('NON_SKIPPABLE_VIDEO_SHOWN');
					break;
				case AdEvent.NON_SKIPPABLE_VIDEO_FINISHED:
					trace('NON_SKIPPABLE_VIDEO_FINISHED');
					break;
				case AdEvent.NON_SKIPPABLE_VIDEO_CLOSED:
					trace('NON_SKIPPABLE_VIDEO_CLOSED');
					break;
			}
		}
	}
	
}