Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09B5B1585
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:43:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RwhcEFPqaQzEsMcha2b8QNFh6sJfxZ7jGc4gdYFXaHs=; b=NwjMj3QIaKKbb1
	mLaUjtX3Rb02PhRIc6D7KNsxrcOdLOpPE58ieGeveS+D4TGhsz30KtoyKQDFCCIhM8QpzCXdXC+qq
	XeEPEEhuHxZEytsYPBtSQDXbOOZho+lnc3UcNT+DX6S2tsQCiY/OoVS+wr5erQKpFutl4LKv3OiOM
	TiIlsrBJI0pDbmT3y3feV+bVf53xSh8/03JmN0QM10f6+lBtBMha1UofIViKhSlpQkP5Pb9O+cdnF
	uaK8e+nHwzW/ZzwaNO9BTQTer8lUJCxSccG1d3Ts8OYjnFabtOuQ7QqEwDb2iAywYGm+ei3oTSzAk
	GbMSiNKWdXlpbDjTo3xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VwV-0004zb-5U; Thu, 12 Sep 2019 20:43:51 +0000
Received: from mailoutvs59.siol.net ([185.57.226.250] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VwE-0004xc-5m
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:43:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 0CD5A522593;
 Thu, 12 Sep 2019 22:43:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 5udkIJLPJE85; Thu, 12 Sep 2019 22:43:29 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 93F7C5225DB;
 Thu, 12 Sep 2019 22:43:29 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 20CB2522593;
 Thu, 12 Sep 2019 22:43:29 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 5/6] media: sun4i: Add H3 deinterlace driver
Date: Thu, 12 Sep 2019 22:43:28 +0200
Message-ID: <4613446.95M5L3lKvs@jernej-laptop>
In-Reply-To: <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-6-jernej.skrabec@siol.net>
 <20190912202647.wfcjur7yxhlelvd6@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_134334_463901_F9FFB5EB 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.250 listed in list.dnswl.org]
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
LgoKSSdsbCB0ZXN0IHRoYXQuCgo+IAo+ID4gKwljbGtfc2V0X3JhdGUoZGV2LT5tb2RfY2xrLCAz
MDAwMDAwMDApOwo+ID4gKwo+ID4gKwlyZXQgPSBjbGtfcHJlcGFyZV9lbmFibGUoZGV2LT5tb2Rf
Y2xrKTsKPiA+ICsJaWYgKHJldCkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZhaWxlZCB0
byBlbmFibGUgbW9kIGNsb2NrXG4iKTsKPiA+ICsKPiA+ICsJCWdvdG8gZXJyX2J1c19jbGs7Cj4g
PiArCX0KPiA+ICsKPiA+ICsJcmV0ID0gY2xrX3ByZXBhcmVfZW5hYmxlKGRldi0+cmFtX2Nsayk7
Cj4gPiArCWlmIChyZXQpIHsKPiA+ICsJCWRldl9lcnIoZGV2LT5kZXYsICJGYWlsZWQgdG8gZW5h
YmxlIHJhbSBjbG9ja1xuIik7Cj4gPiArCj4gPiArCQlnb3RvIGVycl9tb2RfY2xrOwo+ID4gKwl9
Cj4gPiArCj4gPiArCXJldCA9IHJlc2V0X2NvbnRyb2xfcmVzZXQoZGV2LT5yc3RjKTsKPiA+ICsJ
aWYgKHJldCkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZhaWxlZCB0byBhcHBseSByZXNl
dFxuIik7Cj4gPiArCj4gPiArCQlnb3RvIGVycl9yYW1fY2xrOwo+ID4gKwl9Cj4gCj4gVGhpcyBj
b3VsZCBiZSBtb3ZlZCB0byBhIHJ1bnRpbWVfcG0gaG9vaywgd2l0aCBnZXRfc3luYyBjYWxsZWQg
aW4gdGhlCj4gb3Blbi4gVGhhdCB3YXkgeW91IHdvbid0IGxlYXZlIHRoZSBkZXZpY2UgcG93ZXJl
ZCBvbiBpZiBpdCdzIHVudXNlZC4KCk9rLgoKPiAKPiA+ICtzdHJ1Y3QgZGVpbnRlcmxhY2VfZGV2
IHsKPiA+ICsJc3RydWN0IHY0bDJfZGV2aWNlCXY0bDJfZGV2Owo+ID4gKwlzdHJ1Y3QgdmlkZW9f
ZGV2aWNlCXZmZDsKPiA+ICsJc3RydWN0IGRldmljZQkJKmRldjsKPiA+ICsJc3RydWN0IHY0bDJf
bTJtX2RldgkqbTJtX2RldjsKPiA+ICsKPiA+ICsJLyogRGV2aWNlIGZpbGUgbXV0ZXggKi8KPiA+
ICsJc3RydWN0IG11dGV4CQlkZXZfbXV0ZXg7Cj4gPiArCj4gPiArCXZvaWQgX19pb21lbQkJKmJh
c2U7Cj4gPiArCXN0cnVjdCByZWdtYXAJCSpyZWdtYXA7Cj4gCj4gRG8geW91IG5lZWQgdG8gc3Rv
cmUgdGhlIGJhc2UgYWRkcmVzcyBpbiB0aGF0IHN0cnVjdHVyZSBpZiB5b3UncmUKPiB1c2luZyB0
aGUgcmVnbWFwPwoKUHJvYmFibHkgbm90LiBJJ2xsIHJlbW92ZSBpdCBpbiB2Mi4KCkJlc3QgcmVn
YXJkcywKSmVybmVqCgo+IAo+IE1heGltZQoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
