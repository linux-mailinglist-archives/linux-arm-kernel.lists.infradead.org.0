Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14232C148B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 15:19:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pzmjEciOb3cTvZPrRzoSSI/hp8u6zQcu42uS3fT6PBY=; b=WjiX3uRZDRyIce
	TjSy2hjgn4q7wGZ5eCX8zLO1NUn6YOechqBTCBncTMz0gf7hZKI0eVubOK2cyAtAeWJMn9nK68f3D
	GY2xFPMWxorR7/wMb/WyYZLTJx1JE97y6qGHjZ+t72Z3ZQVFhcMJ8BfaSAltha3pCbL+Wvy0EvK03
	JQrM7EWKFFltOvjemmIXlbvVg73t0ws80n21oPqTwvHwbfMFd5uHcC0nSeysUxYEU59a+FhRRA+Y8
	o7DyyG66lWXfFYOMKlkfbnFbD21pjUlkYwNm7iPTEkgzOCkMyM8iDrFuO+3HMa93EsL03fpmvPraN
	zt+EfkJTALmU5Dp6RqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEZ6a-0001Cl-2n; Sun, 29 Sep 2019 13:19:16 +0000
Received: from mailoutvs9.siol.net ([185.57.226.200] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEZ6P-0001Bc-I7
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 13:19:08 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id F3AD4520DE2;
 Sun, 29 Sep 2019 15:18:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id GfKKfDQhmfqB; Sun, 29 Sep 2019 15:18:59 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 7DCB75207AE;
 Sun, 29 Sep 2019 15:18:59 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 0AE24520DE2;
 Sun, 29 Sep 2019 15:18:59 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Date: Sun, 29 Sep 2019 15:18:58 +0200
Message-ID: <14809830.gx5DXe3C1k@jernej-laptop>
In-Reply-To: <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-6-jernej.skrabec@siol.net>
 <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_061905_759537_99FDC766 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.200 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, robh+dt@kernel.org, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIMSNZXRydGVrLCAxMi4gc2VwdGVtYmVyIDIwMTkgb2IgMjI6MjY6NDcgQ0VTVCBqZSBNYXhp
bWUgUmlwYXJkIG5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gVGh1LCBTZXAgMTIsIDIwMTkgYXQg
MDc6NTE6MzFQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiArCWRldi0+cmVnbWFw
ID0gZGV2bV9yZWdtYXBfaW5pdF9tbWlvKGRldi0+ZGV2LCBkZXYtPmJhc2UsCj4gPiArCQkJCQkg
ICAgCiZkZWludGVybGFjZV9yZWdtYXBfY29uZmlnKTsKPiA+ICsJaWYgKElTX0VSUihkZXYtPnJl
Z21hcCkpIHsKPiA+ICsJCWRldl9lcnIoZGV2LT5kZXYsICJDb3VsZG4ndCBjcmVhdGUgZGVpbnRl
cmxhY2UgCnJlZ21hcFxuIik7Cj4gPiArCj4gPiArCQlyZXR1cm4gUFRSX0VSUihkZXYtPnJlZ21h
cCk7Cj4gPiArCX0KPiA+ICsKPiA+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGRldi0+YnVz
X2Nsayk7Cj4gPiArCWlmIChyZXQpIHsKPiA+ICsJCWRldl9lcnIoZGV2LT5kZXYsICJGYWlsZWQg
dG8gZW5hYmxlIGJ1cyBjbG9ja1xuIik7Cj4gPiArCj4gPiArCQlyZXR1cm4gcmV0Owo+ID4gKwl9
Cj4gCj4gRG8geW91IG5lZWQgdG8ga2VlcCB0aGUgYnVzIGNsb2NrIGVuYWJsZWQgYWxsIHRoZSB0
aW1lPyBVc3VhbGx5LCBmb3IKPiB0aGUgU29DcyB0aGF0IGhhdmUgYSByZXNldCBsaW5lLCB5b3Ug
b25seSBuZWVkIGl0IHRvIHJlYWQgLyB3cml0ZSB0bwo+IHRoZSByZWdpc3RlcnMsIG5vdCB0byBo
YXZlIHRoZSBjb250cm9sbGVyIGFjdHVhbGx5IHJ1bm5pbmcuCj4gCj4gSWYgeW91IGRvbid0LCB0
aGVuIHJlZ21hcF9pbml0X21taW9fY2xrIHdpbGwgdGFrZSBjYXJlIG9mIHRoYXQgZm9yCj4geW91
LgoKSSBqdXN0IHRlc3RlZCBhbmQgdXNpbmcgcmVnbWFwX2luaXRfbW1pb19jbGsoKSB3aXRoICJi
dXMiIGNsb2NrIGRvZXNuJ3Qgd29yay4gCkkgZ3Vlc3MgaXQgaGFzIHRvIGJlIGVuYWJsZWQgd2hv
bGUgdGltZS4gSSdsbCBqdXN0IGxlYXZlIGl0IGFzLWlzLgoKQmVzdCByZWdhcmRzLApKZXJuZWoK
Cj4gCj4gPiArCWNsa19zZXRfcmF0ZShkZXYtPm1vZF9jbGssIDMwMDAwMDAwMCk7Cj4gPiArCj4g
PiArCXJldCA9IGNsa19wcmVwYXJlX2VuYWJsZShkZXYtPm1vZF9jbGspOwo+ID4gKwlpZiAocmV0
KSB7Cj4gPiArCQlkZXZfZXJyKGRldi0+ZGV2LCAiRmFpbGVkIHRvIGVuYWJsZSBtb2QgY2xvY2tc
biIpOwo+ID4gKwo+ID4gKwkJZ290byBlcnJfYnVzX2NsazsKPiA+ICsJfQo+ID4gKwo+ID4gKwly
ZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoZGV2LT5yYW1fY2xrKTsKPiA+ICsJaWYgKHJldCkgewo+
ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZhaWxlZCB0byBlbmFibGUgcmFtIGNsb2NrXG4iKTsK
PiA+ICsKPiA+ICsJCWdvdG8gZXJyX21vZF9jbGs7Cj4gPiArCX0KPiA+ICsKPiA+ICsJcmV0ID0g
cmVzZXRfY29udHJvbF9yZXNldChkZXYtPnJzdGMpOwo+ID4gKwlpZiAocmV0KSB7Cj4gPiArCQlk
ZXZfZXJyKGRldi0+ZGV2LCAiRmFpbGVkIHRvIGFwcGx5IHJlc2V0XG4iKTsKPiA+ICsKPiA+ICsJ
CWdvdG8gZXJyX3JhbV9jbGs7Cj4gPiArCX0KPiAKPiBUaGlzIGNvdWxkIGJlIG1vdmVkIHRvIGEg
cnVudGltZV9wbSBob29rLCB3aXRoIGdldF9zeW5jIGNhbGxlZCBpbiB0aGUKPiBvcGVuLiBUaGF0
IHdheSB5b3Ugd29uJ3QgbGVhdmUgdGhlIGRldmljZSBwb3dlcmVkIG9uIGlmIGl0J3MgdW51c2Vk
Lgo+IAo+ID4gK3N0cnVjdCBkZWludGVybGFjZV9kZXYgewo+ID4gKwlzdHJ1Y3QgdjRsMl9kZXZp
Y2UJdjRsMl9kZXY7Cj4gPiArCXN0cnVjdCB2aWRlb19kZXZpY2UJdmZkOwo+ID4gKwlzdHJ1Y3Qg
ZGV2aWNlCQkqZGV2Owo+ID4gKwlzdHJ1Y3QgdjRsMl9tMm1fZGV2CSptMm1fZGV2Owo+ID4gKwo+
ID4gKwkvKiBEZXZpY2UgZmlsZSBtdXRleCAqLwo+ID4gKwlzdHJ1Y3QgbXV0ZXgJCWRldl9tdXRl
eDsKPiA+ICsKPiA+ICsJdm9pZCBfX2lvbWVtCQkqYmFzZTsKPiA+ICsJc3RydWN0IHJlZ21hcAkJ
KnJlZ21hcDsKPiAKPiBEbyB5b3UgbmVlZCB0byBzdG9yZSB0aGUgYmFzZSBhZGRyZXNzIGluIHRo
YXQgc3RydWN0dXJlIGlmIHlvdSdyZQo+IHVzaW5nIHRoZSByZWdtYXA/Cj4gCj4gTWF4aW1lCgoK
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgt
YXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJt
LWtlcm5lbAo=
