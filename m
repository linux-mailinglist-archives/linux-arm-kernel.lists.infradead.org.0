Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47BB186DFA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 01:40:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjPl4a8TAWxf8sNkbWxLbnGZcZ24G7FXvm3oxMX+OZo=; b=WZfr3xBYPppMrh
	W22K6G/WTHIVzc1+SrXQ6E9E5Rvvp6OyZz1d8Rh+8GCBxpqB97S7y2x1gS9O2HwZFsvTfJJcG8SXX
	qdChsv3qMAywyS2erl1MPtFsx5QP2jNh83Up4quk/PXEwvXT4GZXS3A7PRgxzzw6S0rL5bQTaLNMR
	0PfdktNxokbHmEif78slHDNn8ZXCHUnkd5vQELkJUqtM8hIdCKSk9k1Lat8xxTK2fjn489ecoMdXd
	Jxo8qNgLo45eMbokxIJYcS9B5HWmL7NIDkzmdMBnT4FdJJNwcPVtmGFS1dEVRrCj3e7GQ9NEzrNPH
	YpoS6XFryqNqv7fJn93Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvs0q-0005RU-Cm; Thu, 08 Aug 2019 23:40:04 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvs0Z-0005JV-Ag
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 23:39:48 +0000
X-Originating-IP: 176.129.6.65
Received: from localhost (car62-h01-176-129-6-65.dsl.sta.abo.bbox.fr
 [176.129.6.65]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id DC3221C0003;
 Thu,  8 Aug 2019 23:39:31 +0000 (UTC)
Date: Fri, 9 Aug 2019 01:39:30 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>, Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-rtc@vger.kernel.org
Subject: Re: [linux-sunxi] [PATCH 0/3] Add basic support for RTC on Allwinner
 H6 SoC
Message-ID: <20190808233930.GM3600@piout.net>
References: <20190412120730.473-1-megous@megous.com>
 <CAGb2v66cbpsoHJoiFJkBwhZ5SbO+uO+Kf6gtnA3kPFQZq0329Q@mail.gmail.com>
 <20190806183045.edhm3qzpegscf2z7@core.my.home>
 <20190807105502.GK3600@piout.net>
 <20190808121237.g6twq2nh3sayu3vx@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190808121237.g6twq2nh3sayu3vx@core.my.home>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_163947_526028_D22EEF8D 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMDgvMDgvMjAxOSAxNDoxMjozNyswMjAwLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPiBPbiBX
ZWQsIEF1ZyAwNywgMjAxOSBhdCAxMjo1NTowMlBNICswMjAwLCBBbGV4YW5kcmUgQmVsbG9uaSB3
cm90ZToKPiA+IEhpLAo+ID4gCj4gPiBPbiAwNi8wOC8yMDE5IDIwOjMwOjQ1KzAyMDAsIE9uZMWZ
ZWogSmlybWFuIHdyb3RlOgo+ID4gPiBNYXliZSB3aGV0aGVyIFhPIG9yIERDWE8gaXMgdXNlZCBh
bHNvIG1hdHRlcnMgaWYgeW91IHdhbnQgdG8gZG8gc29tZSBmaW5lCj4gPiA+IHR1bm5pbmcgb2Yg
RENYTyAoY29udHJvbCByZWdpc3RlciBoYXMgcGxldG55IG9mIG9wdGlvbnMpLCBidXQgdGhhdCdz
IHByb2JhYmx5Cj4gPiA+IGJldHRlciBkb25lIGluIHUtYm9vdC4gQW5kIHRoZXJlJ3Mgc3RpbGwg
bm8gbmVlZCB0byByZWFkIEhPU0Mgc291cmNlIGZyb20gRFQuCj4gPiA+IFRoZSBkcml2ZXIgY2Fu
IGp1c3QgY2hlY2sgY29tcGF0aWJsZSwgYW5kIGlmIGl0IGlzIEg2IGFuZCBPU0NfQ0xLX1NSQ19T
RUwgaXMgMSwKPiA+ID4gaXQgY2FuIGRvIGl0J3MgRENYTyB0dW5uaW5nLCBvciB3aGF0ZXZlci4g
QnV0IG5laXRoZXIgT1Mgbm9yIGJvb3Rsb2FkZXIgd2lsbAo+ID4gPiBiZSB1c2luZyB0aGlzIGlu
Zm8gdG8gZ2F0ZS9kaXNhYmxlIHRoZSBvc2NpYWxsYXRvci4KPiA+ID4gCj4gPiAKPiA+IEl0IGlz
IGFjdHVhbGx5IHVzZWZ1bCB0byBiZSBhYmxlIHRvIHR3ZWFrIHRoZSBjcnlzdGFsIHR1bmluZyBh
dAo+ID4gcnVudGltZSB0byBiZSBhYmxlIHRvIHJlZHVjZSBjbG9jayBkcmlmdCBhbmQgY29tcGFy
ZSB3aXRoIGEgcmVsaWFibGUKPiA+IHNvdXJjZSAoZS5nLiBOVFApLgo+IAo+IEkgZG9uJ3QgdGhp
bmsgdGhlcmUncyBhIExpbnV4IGtlcm5lbCBBUEkgdGhhdCB5b3UgY2FuIHVzZSB0byBhY2hpZXZl
IHRoYXQsIHNvCj4gdGhhdCdzIGEgcmF0aGVyIHRoZW9yZXRpY2FsIGNvbmNlcm4gYXQgdGhlIG1v
bWVudC4KPiAKClRoZXJlIGlzIC9zeXMvY2xhc3MvcnRjL3J0Y1gvb2Zmc2V0IHdoaWNoIGlzIGV2
ZW4gcHJvcGVybHkgZG9jdW1lbnRlZC4KClRoZSByZWFzb24gSSBhc2tlZCBpcyB0aGF0IHNvbWUg
UlRDcyBoYXZlIGJvdGggYW5hbG9nIChjaGFuZ2luZyB0aGUKb3NjaWxsYXRvciBjYXBhY2l0YW5j
ZSkgYW5kIGRpZ2l0YWwgKGNoYW5naW5nIHRoZSBSVEMgY291bnRlcikgc28gSSdtCndvbmRlcmlu
ZyB3aGV0aGVyIHRoaXMgaW50ZXJmYWNlIHNob3VsZCBiZSBleHRlbmRlZC4KCj4gQWxzbyB0aGVy
ZSBhcmUgbXVsdGlwbGUgY2xvY2tzLCB0aGF0IGNhbiBkcml2ZSB0aGUgUlRDLCBhbmQgeW91IHVz
dWFsbHkgZG9uJ3QKPiBkcml2ZSBpdCBmcm9tIDI0TUh6IERDWE8gb3NjaWxsYXRvci4gVGhlIHJl
YXNvbiBpcyB0aGF0IHlvdSdkIGhhdmUgdG8gZGVhbCB3aXRoCj4gdGhlIGZhY3QgdGhhdCB0aGUg
Y2xvY2sgZm9yIFJUQyB0aGVuIGJlY29tZXMgMjQwMDAwMDAvNzUwICg3NTAgaXMgZml4ZWQKPiBk
aXZpZGVyKSwgd2hpY2ggaXMgMzIwMDAuCj4gCj4gU28gaWYgeW91IHdhbnQgdG8gZ2V0IDMyNzY4
SHogZm9yIFJUQyBieSB0dW5pbmcgdGhlIERDWE8sIGl0IHdvdWxkIGhhdmUgdG8gaGF2ZQo+IDI0
IDU3NiAwMDAgSHouIEFuZCBldmVuIGlmIHlvdSBjb3VsZCBhY2hpZXZlIHRoYXQgKGRvdWJ0ZnVs
KSwgaXQgd291bGQgdGhyb3cgb2ZmCj4gdGltaW5ncyBpbiB0aGUgcmVzdCBvZiB0aGUgc3lzdGVt
IChzYXkgVUFSVCwgVVNCLCBDUFUsIGRpc3BsYXkgY3RsKSBpbiBhIG1ham9yIHdheS4KPiAKPiBJ
IGd1ZXNzIHlvdSBjYW4gdHJ5IHR1bmluZyAyNE1IeiBvc2NpbGxhdG9yIHNvIHRoYXQgaXQncyBj
bG9zZXIgdG8gdGhlCj4gcmVhbC13b3JsZCAyNE1IeiB2aWEgTlRQIHJlZmVyZW5jZSBmb3Igb3Ro
ZXIgcmVhc29ucy4gQnV0IGl0IHdvdWxkIGJlCj4gY29tcGxpY2F0ZWQsIGFuZCByZXF1aXJlIHBy
ZWNpc2UgaW50ZXJhY3Rpb24gd2l0aCBvdGhlciBjb21wb25lbnRzLCBsaWtlIHVzaW5nCj4gSFcg
dGltZXJzIHNvdXJjZWQgZnJvbSAyNE1IeiBIT1NDIGNsb2NrLCBiZWNhdXNlIHlvdSBjYW4ndCB1
c2UgQ1BVJ3MgdGltZXJzLAo+IGJlY2F1c2Ugb2YgaW5hY2N1cmFjaWVzIGludHJvZHVjZWQgZHVy
aW5nIERWRlMsIGZvciBleGFtcGxlLgo+IAo+IHJlZ2FyZHMsCj4gCW8uCj4gCj4gPiBJJ20gY3Vy
aW91cywgd2hhdCBraW5kIG9mIG9wdGlvbnMgZG9lcyB0aGlzIFJUQyBoYXZlPwo+ID4gCj4gPiAt
LSAKPiA+IEFsZXhhbmRyZSBCZWxsb25pLCBCb290bGluCj4gPiBFbWJlZGRlZCBMaW51eCBhbmQg
S2VybmVsIGVuZ2luZWVyaW5nCj4gPiBodHRwczovL2Jvb3RsaW4uY29tCj4gPiAKPiA+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdAo+ID4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCj4gPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwKCi0tIApBbGV4YW5kcmUgQmVsbG9uaSwgQm9vdGxpbgpFbWJlZGRlZCBMaW51
eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFp
bGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
