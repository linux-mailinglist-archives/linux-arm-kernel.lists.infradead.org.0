Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BB12B2A1F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Sep 2019 08:42:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mhfp1UoOtvmt7kmALEIfduzyqJpsiALRfHpjHqhyHx8=; b=K8L9fWo8YnovXp
	ebKvoRTaiBjeKBxQSnyP9moMp1gnWn/YMmCNoPvdfMslrcF9u0a1drqjvjpC2c9cQG7pM+s9wY/ho
	rpokkZeSZAe7u6CdhC8OwVuo/GBTYoSaneefuEBHzM4XVEiV5DyMdJ/s/L3dbib2ifgSSekS6FXJl
	HztIkYC1CvN3avtDQsCYQJo8h8faH+NHdc/oTjOzeONEy1zdLQy0zGPGETTI0kPsmWP1voNIlZSUB
	p2vmJgj16lZQ6lFoSSHDNXFu+Z7A8elDSATZJBhw4o6rh6Sp7gYeR2CfnEub188QdPXwCMRhytzIz
	OsF2lRfY+soB/Dnjde2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i91la-0002K8-T9; Sat, 14 Sep 2019 06:42:42 +0000
Received: from mailoutvs48.siol.net ([185.57.226.239] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91lP-0002JM-Ar
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Sep 2019 06:42:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id 2B7D6520C71;
 Sat, 14 Sep 2019 08:42:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 0F_nRnEQ3SM1; Sat, 14 Sep 2019 08:42:23 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id AF25E52132C;
 Sat, 14 Sep 2019 08:42:23 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 2E97D520C71;
 Sat, 14 Sep 2019 08:42:23 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Date: Sat, 14 Sep 2019 08:42:22 +0200
Message-ID: <3227980.eWD6USAIP4@jernej-laptop>
In-Reply-To: <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-6-jernej.skrabec@siol.net>
 <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_234231_534863_1FE36E35 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.239 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkhCgpEbmUgxI1ldHJ0ZWssIDEyLiBzZXB0ZW1iZXIgMjAxOSBvYiAyMjoyNjo0NyBDRVNUIGpl
IE1heGltZSBSaXBhcmQgbmFwaXNhbChhKToKPiBIaSwKPiAKPiBPbiBUaHUsIFNlcCAxMiwgMjAx
OSBhdCAwNzo1MTozMVBNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3cm90ZToKPiA+ICsJZGV2LT5y
ZWdtYXAgPSBkZXZtX3JlZ21hcF9pbml0X21taW8oZGV2LT5kZXYsIGRldi0+YmFzZSwKPiA+ICsJ
CQkJCSAgICAKJmRlaW50ZXJsYWNlX3JlZ21hcF9jb25maWcpOwo+ID4gKwlpZiAoSVNfRVJSKGRl
di0+cmVnbWFwKSkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkNvdWxkbid0IGNyZWF0ZSBk
ZWludGVybGFjZSAKcmVnbWFwXG4iKTsKPiA+ICsKPiA+ICsJCXJldHVybiBQVFJfRVJSKGRldi0+
cmVnbWFwKTsKPiA+ICsJfQo+ID4gKwo+ID4gKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoZGV2
LT5idXNfY2xrKTsKPiA+ICsJaWYgKHJldCkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZh
aWxlZCB0byBlbmFibGUgYnVzIGNsb2NrXG4iKTsKPiA+ICsKPiA+ICsJCXJldHVybiByZXQ7Cj4g
PiArCX0KPiAKPiBEbyB5b3UgbmVlZCB0byBrZWVwIHRoZSBidXMgY2xvY2sgZW5hYmxlZCBhbGwg
dGhlIHRpbWU/IFVzdWFsbHksIGZvcgo+IHRoZSBTb0NzIHRoYXQgaGF2ZSBhIHJlc2V0IGxpbmUs
IHlvdSBvbmx5IG5lZWQgaXQgdG8gcmVhZCAvIHdyaXRlIHRvCj4gdGhlIHJlZ2lzdGVycywgbm90
IHRvIGhhdmUgdGhlIGNvbnRyb2xsZXIgYWN0dWFsbHkgcnVubmluZy4KPiAKPiBJZiB5b3UgZG9u
J3QsIHRoZW4gcmVnbWFwX2luaXRfbW1pb19jbGsgd2lsbCB0YWtlIGNhcmUgb2YgdGhhdCBmb3IK
PiB5b3UuCj4gCj4gPiArCWNsa19zZXRfcmF0ZShkZXYtPm1vZF9jbGssIDMwMDAwMDAwMCk7Cj4g
PiArCj4gPiArCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShkZXYtPm1vZF9jbGspOwo+ID4gKwlp
ZiAocmV0KSB7Cj4gPiArCQlkZXZfZXJyKGRldi0+ZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBtb2Qg
Y2xvY2tcbiIpOwo+ID4gKwo+ID4gKwkJZ290byBlcnJfYnVzX2NsazsKPiA+ICsJfQo+ID4gKwo+
ID4gKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoZGV2LT5yYW1fY2xrKTsKPiA+ICsJaWYgKHJl
dCkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZhaWxlZCB0byBlbmFibGUgcmFtIGNsb2Nr
XG4iKTsKPiA+ICsKPiA+ICsJCWdvdG8gZXJyX21vZF9jbGs7Cj4gPiArCX0KPiA+ICsKPiA+ICsJ
cmV0ID0gcmVzZXRfY29udHJvbF9yZXNldChkZXYtPnJzdGMpOwo+ID4gKwlpZiAocmV0KSB7Cj4g
PiArCQlkZXZfZXJyKGRldi0+ZGV2LCAiRmFpbGVkIHRvIGFwcGx5IHJlc2V0XG4iKTsKPiA+ICsK
PiA+ICsJCWdvdG8gZXJyX3JhbV9jbGs7Cj4gPiArCX0KPiAKPiBUaGlzIGNvdWxkIGJlIG1vdmVk
IHRvIGEgcnVudGltZV9wbSBob29rLCB3aXRoIGdldF9zeW5jIGNhbGxlZCBpbiB0aGUKPiBvcGVu
LiBUaGF0IHdheSB5b3Ugd29uJ3QgbGVhdmUgdGhlIGRldmljZSBwb3dlcmVkIG9uIGlmIGl0J3Mg
dW51c2VkLgoKQ3VycmVudGx5IEknbSBsb29raW5nIGF0IHN1bjRpX2NzaS5jIGFzIGFuIGV4YW1w
bGUgb2YgcnVudGltZSBvcHMsIGJ1dCBpdCAKc2VlbXMgYSBiaXQgd3JvbmcgdG8gaGF2ZSBzdXNw
ZW5kIGFuZCByZXN1bWUgZnVuY3Rpb24gbWFya2VkIHdpdGggCl9fbWF5YmVfdW51c2VkIGJlY2F1
c2UgdGhleSBhcmUgdGhlIG9ubHkgZnVuY3Rpb25zIHdoaWNoIGVuYWJsZSBuZWVkZWQgY2xvY2tz
LgpJZiBDT05GSUdfUE0gaXMgbm90IGVuYWJsZWQsIHRoZW4gdGhpcyBkcml2ZXIgc2ltcGx5IHdv
bid0IHdvcmssIGJlY2F1c2UgCmNsb2NrcyB3aWxsIG5ldmVyIGdldCBlbmFibGVkLiBJIGd1ZXNz
IEkgY2FuIGltcGxlbWVudCBydW50aW1lIHBtIG9wcyBpbiB0aGUgCnNhbWUgd2F5IGFuZCBhZGQg
YWRkaXRpb25hbCBoYW5kbGluZyB3aGVuIENPTkZJR19QTSBpcyBub3QgZW5hYmxlZCwgcmlnaHQ/
CgpCVFcsIHdoaWNoIGNhbGxiYWNrIGlzIGdldF9zeW5jPyBJIGRvbid0IHNlZSBpdCBpbiBkZXZf
cG1fb3BzLiBJIHN1cHBvc2UgSSAKbmVlZCBvbmx5IHJ1bnRpbWVfc3VzcGVuZCBhbmQgcnVudGlt
ZV9yZXN1bWUuCgpPZmYgdG9waWM6IHN1bjZpX2NzaS5jIGluY2x1ZGVzIGxpbnV4L3BtX3J1bnRp
bWUuaCBidXQgaXQgZG9lc24ndCBoYXZlIGFueSBraW5kIApvZiBwb3dlciBtYW5hZ2VtZW50IGFz
IGZhciBhcyBJIGNhbiBzZWUuCgpCZXN0IHJlZ2FyZHMsCkplcm5lagoKPiAKPiA+ICtzdHJ1Y3Qg
ZGVpbnRlcmxhY2VfZGV2IHsKPiA+ICsJc3RydWN0IHY0bDJfZGV2aWNlCXY0bDJfZGV2Owo+ID4g
KwlzdHJ1Y3QgdmlkZW9fZGV2aWNlCXZmZDsKPiA+ICsJc3RydWN0IGRldmljZQkJKmRldjsKPiA+
ICsJc3RydWN0IHY0bDJfbTJtX2RldgkqbTJtX2RldjsKPiA+ICsKPiA+ICsJLyogRGV2aWNlIGZp
bGUgbXV0ZXggKi8KPiA+ICsJc3RydWN0IG11dGV4CQlkZXZfbXV0ZXg7Cj4gPiArCj4gPiArCXZv
aWQgX19pb21lbQkJKmJhc2U7Cj4gPiArCXN0cnVjdCByZWdtYXAJCSpyZWdtYXA7Cj4gCj4gRG8g
eW91IG5lZWQgdG8gc3RvcmUgdGhlIGJhc2UgYWRkcmVzcyBpbiB0aGF0IHN0cnVjdHVyZSBpZiB5
b3UncmUKPiB1c2luZyB0aGUgcmVnbWFwPwo+IAo+IE1heGltZQoKCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
