/**
 * Generic Server-Side Google Analytics Haxe Client
 * 
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License (LGPL) as published by the Free Software Foundation; either
 * version 3 of the License, or (at your option) any later version.
 * 
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * Lesser General Public License for more details.
 * 
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA.
 * 
 * Google Analytics is a registered trademark of Google Inc.
 * 
 * @link      https://github.com/fbricker/haxe-ga
 * 
 * @license   http://www.gnu.org/licenses/lgpl.html
 * @author    Federico Bricker <fbricker@gmail.com>
 * @copyright Copyright (c) 2012 SempaiGames (http://www.sempaigames.com)
 */

package googleAnalytics;

class Page {
	
	/**
	 * Page request URI, e.g. "/path/page.html", will be mapped to
	 * "utmp" parameter
	 * @see internals.ParameterHolder::$utmp
	 */
	private var path : String;
	
	/**
	 * Page title, will be mapped to "utmdt" parameter
	 * @see internals.ParameterHolder::$utmdt
	 */
	private var title : String;
	
	/**
	 * Charset encoding (e.g. "UTF-8"), will be mapped to "utmcs" parameter
	 * @see internals.ParameterHolder::$utmcs
	 */
	private var charset : String;
	
	/**
	 * Referer URL, e.g. "http://www.example.com/path/page.html",  will be
	 * mapped to "utmr" parameter
	 * @see internals.ParameterHolder::$utmr
	 */
	private var referrer : String;
	
	/**
	 * Page load time in milliseconds, will be encoded into "utme" parameter.
	 * @see internals.ParameterHolder::$utme
	 */
	private var loadTime : Int;
	
	
	/**
	 * Constant to mark referrer as a site-internal one.
	 * 
	 * @see Page::$referrer
	 * @const string
	 */
	static inline public var REFERRER_INTERNAL = '0';
	
	
	public function new(path:String) {
		this.setPath(path);
	}
	
	public function setPath(path:String) {
		if(path!=null && path.charAt(0) != '/') {
			Tracker._raiseError('The page path should always start with a slash ("/").','Page.setPath');
		}
		
		this.path = path;
	}
	
	public function getPath() : String {
		return this.path;
	}
	
	public function setTitle(title:String) {
		this.title = title;
	}
	
	public function getTitle() : String {
		return this.title;
	}
	
	public function setCharset(encoding) {
		this.charset = encoding;
	}
	
	public function getCharset() : String {
		return this.charset;
	}
	
	public function setReferrer(referrer:String) {
		this.referrer = referrer;
	}
	
	public function getReferrer() : String {
		return this.referrer;
	}
	
	public function setLoadTime(loadTime:Int) {
		this.loadTime = loadTime;
	}
	
	public function getLoadTime() : Int {
		return this.loadTime;
	}
	
}
