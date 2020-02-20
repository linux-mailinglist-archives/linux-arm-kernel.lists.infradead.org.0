Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF23D1665A8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:00:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tsz+EXVp/6wu5H/eD6HruKn9FcLQHsvLJ2hJxDL1TyQ=; b=ggMrODKZUVlRlT
	DPxGzze78mfUdDRw4/bbxb4SrKI05RefEJfrw9OdURXf16cAsBdVO3EnzgBb0gTsT7QAZ+NWl4dVu
	ytnEmq3V3fw4qXIZZ1BS7feAj0XodygWiussmO8zmS509yGC/XGayYf+UztfZZHlG8qhNopUk6HSq
	XfSSeIsJp35iySUCY1QJxrfpbLQDSEtEv3en7DoyXatrJtlUUUk+EGfJ4lXbgM7b1oB69emCoLdQz
	ROdsdBfZkK1x/mcIOoyE97w2Jyo66U6PrXvoNRN5ZkuQC8GJ1HDCZ14GQ9MGNygPNit2wYTY2P5E8
	Vwh8wNJMuFhD/evFxXPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q7Y-0001mW-LF; Thu, 20 Feb 2020 18:00:20 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q7N-0000Y4-VH
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:00:12 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 925215246B1;
 Thu, 20 Feb 2020 18:59:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 9gCUlovdAPR5; Thu, 20 Feb 2020 18:59:54 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 1F4BF524768;
 Thu, 20 Feb 2020 18:59:54 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-194-152-20-232.static.triera.net
 [194.152.20.232]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id EADDA5246B1;
 Thu, 20 Feb 2020 18:59:52 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH 1/2] rtc: sun6i: Make external 32k oscillator optional
Date: Thu, 20 Feb 2020 18:59:52 +0100
Message-ID: <4534371.31r3eYUQgx@jernej-laptop>
In-Reply-To: <20200220174749.ih3pcj3oxiwvuurz@gilmour.lan>
References: <20200213211427.33004-1-jernej.skrabec@siol.net>
 <5326350.DvuYhMxLoT@jernej-laptop>
 <20200220174749.ih3pcj3oxiwvuurz@gilmour.lan>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_100010_167488_25F2428D 
X-CRM114-Status: GOOD (  29.89  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, a.zummo@towertech.it, alexandre.belloni@bootlin.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, wens@csie.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAyMC4gZmVicnVhciAyMDIwIG9iIDE4OjQ3OjQ5IENFVCBqZSBNYXhpbWUg
UmlwYXJkIG5hcGlzYWwoYSk6Cj4gT24gRnJpLCBGZWIgMTQsIDIwMjAgYXQgMDU6NDI6MTNQTSAr
MDEwMCwgSmVybmVqIMWga3JhYmVjIHdyb3RlOgo+ID4gSGkgTWF4aW1lLAo+ID4gCj4gPiBEbmUg
cGV0ZWssIDE0LiBmZWJydWFyIDIwMjAgb2IgMDk6MTQ6NDMgQ0VUIGplIE1heGltZSBSaXBhcmQg
bmFwaXNhbChhKToKPiA+ID4gSGkgSmVybmVqLAo+ID4gPiAKPiA+ID4gVGhhbmtzIGZvciB0YWtp
bmcgY2FyZSBvZiB0aGlzCj4gPiA+IAo+ID4gPiBPbiBUaHUsIEZlYiAxMywgMjAyMCBhdCAxMDox
NDoyNlBNICswMTAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ID4gPiBTb21lIGJvYXJkcywg
bGlrZSBPcmFuZ2VQaSBQQzIgKEg1KSwgT3JhbmdlUGkgUGx1cyAyRSAoSDMpIGFuZCBUYW5peAo+
ID4gPiA+IFRYNgo+ID4gPiA+IChINikgZG9uJ3QgaGF2ZSBleHRlcm5hbCAzMmtIeiBvc2NpbGxh
dG9yLiBUaWxsIEg2LCBpdCBkaWRuJ3QgcmVhbGx5Cj4gPiA+ID4gbWF0dGVyIGlmIGV4dGVybmFs
IG9zY2lsbGF0b3Igd2FzIGVuYWJsZWQgYmVjYXVzZSBIVyBkZXRlY3RlZCBlcnJvcgo+ID4gPiA+
IGFuZAo+ID4gPiA+IGZhbGwgYmFjayB0byBpbnRlcm5hbCBvbmUuIEg2IGhhcyBzYW1lIGZ1bmN0
aW9uYWxpdHkgYnV0IGl0J3MgdGhlCj4gPiA+ID4gZmlyc3QKPiA+ID4gPiBTb0Mgd2hpY2ggaGF2
ZSAiYXV0byBzd2l0Y2ggYnlwYXNzIiBiaXQgZG9jdW1lbnRlZCBhbmQgYWx3YXlzIGVuYWJsZWQK
PiA+ID4gPiBpbgo+ID4gPiA+IGRyaXZlci4gVGhpcyBwcmV2ZW50cyBSVEMgdG8gd29yayBjb3Jy
ZWN0bHkgaWYgZXh0ZXJuYWwgY3J5c3RhbCBpcyBub3QKPiA+ID4gPiBwcmVzZW50IG9uIGJvYXJk
LiBUaGVyZSBhcmUgb3RoZXIgc2lkZSBlZmZlY3RzIC0gYWxsIHBlcmlwaGVyYWxzIHdoaWNoCj4g
PiA+ID4gZGVwZW5kcyBvbiB0aGlzIGNsb2NrIGFsc28gZG9uJ3Qgd29yayAoSERNSSBDRUMgZm9y
IGV4YW1wbGUpLgo+ID4gPiA+IAo+ID4gPiA+IE1ha2UgY2xvY2tzIHByb3BlcnR5IG9wdGlvbmFs
LiBJZiBpdCBpcyBwcmVzZW50LCBzZWxlY3QgZXh0ZXJuYWwKPiA+ID4gPiBvc2NpbGxhdG9yLiBJ
ZiBub3QsIHN0YXkgb24gaW50ZXJuYWwuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTog
SmVybmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gPiA+IC0tLQo+ID4g
PiA+IAo+ID4gPiA+ICBkcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYyB8IDE0ICsrKysrKy0tLS0tLS0t
Cj4gPiA+ID4gIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0p
Cj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jIGIv
ZHJpdmVycy9ydGMvcnRjLXN1bjZpLmMKPiA+ID4gPiBpbmRleCA4NTJmNWYzYjM1OTIuLjUzOGNm
N2UxOTAzNCAxMDA2NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL3J0Yy9ydGMtc3VuNmkuYwo+ID4g
PiA+ICsrKyBiL2RyaXZlcnMvcnRjL3J0Yy1zdW42aS5jCj4gPiA+ID4gQEAgLTI1MCwxOSArMjUw
LDE3IEBAIHN0YXRpYyB2b2lkIF9faW5pdCBzdW42aV9ydGNfY2xrX2luaXQoc3RydWN0Cj4gPiA+
ID4gZGV2aWNlX25vZGUgKm5vZGUsPgo+ID4gPiA+IAo+ID4gPiA+ICAJCXdyaXRlbChyZWcsIHJ0
Yy0+YmFzZSArIFNVTjZJX0xPU0NfQ1RSTCk7Cj4gPiA+ID4gIAkKPiA+ID4gPiAgCX0KPiA+ID4g
PiAKPiA+ID4gPiAtCS8qIFN3aXRjaCB0byB0aGUgZXh0ZXJuYWwsIG1vcmUgcHJlY2lzZSwgb3Nj
aWxsYXRvciAqLwo+ID4gPiA+IC0JcmVnIHw9IFNVTjZJX0xPU0NfQ1RSTF9FWFRfT1NDOwo+ID4g
PiA+IC0JaWYgKHJ0Yy0+ZGF0YS0+aGFzX2xvc2NfZW4pCj4gPiA+ID4gLQkJcmVnIHw9IFNVTjZJ
X0xPU0NfQ1RSTF9FWFRfTE9TQ19FTjsKPiA+ID4gPiArCS8qIFN3aXRjaCB0byB0aGUgZXh0ZXJu
YWwsIG1vcmUgcHJlY2lzZSwgb3NjaWxsYXRvciwgaWYgcHJlc2VudCAKKi8KPiA+ID4gPiArCWlm
IChvZl9nZXRfcHJvcGVydHkobm9kZSwgImNsb2NrcyIsIE5VTEwpKSB7Cj4gPiA+ID4gKwkJcmVn
IHw9IFNVTjZJX0xPU0NfQ1RSTF9FWFRfT1NDOwo+ID4gPiA+ICsJCWlmIChydGMtPmRhdGEtPmhh
c19sb3NjX2VuKQo+ID4gPiA+ICsJCQlyZWcgfD0gU1VONklfTE9TQ19DVFJMX0VYVF9MT1NDX0VO
Owo+ID4gPiA+ICsJfQo+ID4gPiA+IAo+ID4gPiA+ICAJd3JpdGVsKHJlZywgcnRjLT5iYXNlICsg
U1VONklfTE9TQ19DVFJMKTsKPiA+ID4gPiAgCQo+ID4gPiA+ICAJLyogWWVzLCBJIGtub3csIHRo
aXMgaXMgdWdseS4gKi8KPiA+ID4gPiAgCXN1bjZpX3J0YyA9IHJ0YzsKPiA+ID4gPiAKPiA+ID4g
PiAtCS8qIERlYWwgd2l0aCBvbGQgRFRzICovCj4gPiA+ID4gLQlpZiAoIW9mX2dldF9wcm9wZXJ0
eShub2RlLCAiY2xvY2tzIiwgTlVMTCkpCj4gPiA+ID4gLQkJZ290byBlcnI7Cj4gPiA+ID4gLQo+
ID4gPiAKPiA+ID4gRG9lc24ndCB0aGF0IHByZXZlbnQgdGhlIHBhcmVudHMgdG8gYmUgcHJvcGVy
bHkgc2V0IGlmIHRoZXJlJ3MgYW4KPiA+ID4gZXh0ZXJuYWwgY3J5c3RhbD8KPiA+IAo+ID4gTm8s
IHdoeT8KPiA+IAo+ID4gQ2hlY2sgdGhlc2UgdHdvIGNsa19zdW1tYXJ5Ogo+ID4gaHR0cDovL2l4
LmlvLzJiSFkgVGFuaXggVFg2IChubyBleHRlcm5hbCBjcnlzdGFsKQo+ID4gaHR0cDovL2l4Lmlv
LzJiSTIgT3JhbmdlUGkgMyAoZXh0ZXJuYWwgY3J5c3RhbCBwcmVzZW50KQo+IAo+IEkgd2FzIGNv
bmNlcm5lZCBhYm91dCB0aGUgIm90aGVyIiBwYXJlbnQuIEluIHRoZSBjYXNlIHdoZXJlIHlvdSBk
b24ndAo+IGhhdmUgYSBjbG9ja3MgcHJvcGVydHkgKHNvIHRoZSBjaGVjayB0aGF0IHlvdSBhcmUg
cmVtb3ZpbmcpLCB0aGUgY29kZQo+IHRoZW4gcmVnaXN0ZXJzIGEgY2xvY2sgd2l0aCB0d28gcGFy
ZW50czogdGhlIG9uZSB0aGF0IHdlIGNyZWF0ZSAodGhlCj4gaW50ZXJuYWwgb3NjaWxsYXRvcikg
YW5kIHRoZSBvbmUgY29taW5nIGZyb20gdGhlIGNsb2NrcyBwcm9wZXJ0eS4KPiAKPiBjbGtfc3Vt
bWFyeSBvbmx5IHNob3dzIHRoZSBjdXJyZW50IHBhcmVudCwgd2hpY2ggaXMgZ29pbmcgdG8gYmUg
cmlnaHQKPiB3aXRoIHlvdXIgcGF0Y2gsIGJ1dCBpbiB0aGUgY2FzZSB3aGVyZSB5b3UgaGF2ZSBu
byBjbG9ja3MgcHJvcGVydHksCj4geW91IHN0aWxsIChhdHRlbXB0cyB0bykgcmVnaXN0ZXIgdHdv
IHBhcmVudHMsIHRoZSBzZWNvbmQgb25lIGJlaW5nCj4gbm9uLWZ1bmN0aW9uYWwuCj4gCj4gRnVy
dGhlciBsb29raW5nIGF0IGl0LCB3ZSBtaWdodCBiZSBnb29kIGJlY2F1c2Ugd2UgYWxsb2NhdGUg
YW4gYXJyYXkKPiBvZiB0d28gY2xvY2tzLCBidXQgb25seSByZWdpc3RlciBvZl9jbGtfZ2V0X3Bh
cmVudF9jb3VudChub2RlKSArIDEKPiBjbG9ja3MsIHNvIDEgaWYgY2xvY2tzIGlzIG1pc3Npbmcu
CgpZZXMsIG15IHBhdGNoIHJlbHkgb24gIm9mX2Nsa19nZXRfcGFyZW50X2NvdW50KG5vZGUpICsg
MSIuIElmIHRoZXJlIGlzIG5vIApwcm9wZXJ0eSwgaXQgd2lsbCByZXR1cm4gMSB0aHVzIG9ubHkg
Zmlyc3QgcGFyZW50IChpbnRlcm5hbCBSQyBvc2NpbGF0b3IpIHdpbGwgCmJlIHJlZ2lzdGVyZWQu
CgpBbnl3YXksIGZvbGxvd2luZyBsaW5lOgpwYXJlbnRzWzFdID0gb2ZfY2xrX2dldF9wYXJlbnRf
bmFtZShub2RlLCAwKTsKc2hvdWxkIGV2YWx1YXRlIHRvIG51bGwuIEkgZGlkbid0IHJlc2VhcmNo
IGZ1cnRoZXIgd2hhdCBjbGsgZnJhbWV3b3JrIGRvZXMgCndpdGggbnVsbCBwYXJlbnQgYmVjYXVz
ZSBudW1iZXIgb2YgcGFyZW50cyB3aWxsIGJlIHNldCB0byAxIGFuZCB0aGlzIG51bGwgCnZhbHVl
IHdpbGwgYmUgaWdub3JlZCBhbnl3YXkuCgo+IAo+IFN0aWxsLCBJIHRoaW5rIHRoaXMgc2hvdWxk
IGJlIG1vcmUgb2J2aW91cywgdGhyb3VnaCBhIGNvbW1lbnQgb3IKPiBzaHVmZmxpbmcgYSBiaXQg
dGhlIHBhcmVudCByZWdpc3RyYXRpb24gbWF5YmU/CgpJIHRoaW5rIGNvZGUgaXMgaW4gY29ycmVj
dCBvcmRlciwganVzdCBtYXliZSBhIGJpdCBtb3JlIGV4cGxhbmF0aW9uIGluIGZvcm0gb2YgCmNv
bW1lbnQocykgdG8gbWFrZSBpdCBtb3JlIG9idmlvdXMgaG93IGl0IHdvcmtzIGZvciBlaXRoZXIg
Y2FzZS4KCkJlc3QgcmVnYXJkcywKSmVybmVqCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
