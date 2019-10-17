Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70313DB2E0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 18:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jh2ook6wisnsAC5QRYRCKFOK0/zTcKtbYVeCT6/w4FU=; b=I1rb+/NTwR6gRb
	13gKselOBMMi8Cq9E6d2TtyXVmjxuQp8O+Ktd3B+9CalYVUUBkkvl7Ywt+w0m8N+SZh3mH06HdOuo
	uThWON88PXnQaStBtdE3DsG9gKo5UHBrr8+7pfspZz7vuXtO4f4HJ2Bxu+eCfDzkxG8bqexwgUahG
	vO9eZcYJM6s4MPge/8nfAQ7rV7y3gRPBP7qRIXSwC/SZK8jIciA45+km/cmmeaIaoikjJ0r3+c2cL
	dTWU7WZBE9rldI+xU+jVV5ErzbxyqyDFFEfz1tdPol6kd8P3dvUFNxL8TwQBw3WvO8nbLuuJN1ITC
	xevcS8+tO7WnfX62rr8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL93Q-0008Na-Vl; Thu, 17 Oct 2019 16:55:12 +0000
Received: from mailoutvs28.siol.net ([185.57.226.219] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL938-0008N8-Ea
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 16:54:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 3DE9E52402E;
 Thu, 17 Oct 2019 18:54:52 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id D6UzhXF7HyCW; Thu, 17 Oct 2019 18:54:51 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id DCFF2524BFA;
 Thu, 17 Oct 2019 18:54:51 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 8A3395247E3;
 Thu, 17 Oct 2019 18:54:51 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v3 5/6] media: sun4i: Add H3 deinterlace driver
Date: Thu, 17 Oct 2019 18:54:51 +0200
Message-ID: <14416618.qeK7XMoh1f@jernej-laptop>
In-Reply-To: <20191017092800.old6jcyeoq3ruawv@gilmour>
References: <20191016192807.1278987-1-jernej.skrabec@siol.net>
 <20191016192807.1278987-6-jernej.skrabec@siol.net>
 <20191017092800.old6jcyeoq3ruawv@gilmour>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_095454_649458_269FA491 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.219 listed in list.dnswl.org]
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

RG5lIMSNZXRydGVrLCAxNy4gb2t0b2JlciAyMDE5IG9iIDExOjI4OjAwIENFU1QgamUgTWF4aW1l
IFJpcGFyZCBuYXBpc2FsKGEpOgo+IEhpLAo+IAo+IEkgaGF2ZSBhIHNtYWxsIGNvbW1lbnQgdGhh
dCBjYW4gZGVmaW5pdGVseSBiZSBhZGRyZXNzZWQgaW4gYSBzdWJzZXF1ZW50Cj4gcGF0Y2gKPiBP
biBXZWQsIE9jdCAxNiwgMjAxOSBhdCAwOToyODowNlBNICswMjAwLCBKZXJuZWogU2tyYWJlYyB3
cm90ZToKPiA+ICsJZGV2LT5idXNfY2xrID0gZGV2bV9jbGtfZ2V0KGRldi0+ZGV2LCAiYnVzIik7
Cj4gPiArCWlmIChJU19FUlIoZGV2LT5idXNfY2xrKSkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRl
diwgIkZhaWxlZCB0byBnZXQgYnVzIGNsb2NrXG4iKTsKPiA+ICsKPiA+ICsJCXJldHVybiBQVFJf
RVJSKGRldi0+YnVzX2Nsayk7Cj4gPiArCX0KPiA+ICsKPiA+ICsJZGV2LT5tb2RfY2xrID0gZGV2
bV9jbGtfZ2V0KGRldi0+ZGV2LCAibW9kIik7Cj4gPiArCWlmIChJU19FUlIoZGV2LT5tb2RfY2xr
KSkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZhaWxlZCB0byBnZXQgbW9kIGNsb2NrXG4i
KTsKPiA+ICsKPiA+ICsJCXJldHVybiBQVFJfRVJSKGRldi0+bW9kX2Nsayk7Cj4gPiArCX0KPiA+
ICsKPiA+ICsJZGV2LT5yYW1fY2xrID0gZGV2bV9jbGtfZ2V0KGRldi0+ZGV2LCAicmFtIik7Cj4g
PiArCWlmIChJU19FUlIoZGV2LT5yYW1fY2xrKSkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwg
IkZhaWxlZCB0byBnZXQgcmFtIGNsb2NrXG4iKTsKPiA+ICsKPiA+ICsJCXJldHVybiBQVFJfRVJS
KGRldi0+cmFtX2Nsayk7Cj4gPiArCX0KPiA+ICsKPiA+ICsJZGV2LT5yc3RjID0gZGV2bV9yZXNl
dF9jb250cm9sX2dldChkZXYtPmRldiwgTlVMTCk7Cj4gPiArCWlmIChJU19FUlIoZGV2LT5yc3Rj
KSkgewo+ID4gKwkJZGV2X2VycihkZXYtPmRldiwgIkZhaWxlZCB0byBnZXQgcmVzZXQgY29udHJv
bFxuIik7Cj4gPiArCj4gPiArCQlyZXR1cm4gUFRSX0VSUihkZXYtPnJzdGMpOwo+ID4gKwl9Cj4g
PiArCj4gPiArCWNsa19zZXRfcmF0ZV9leGNsdXNpdmUoZGV2LT5tb2RfY2xrLCAzMDAwMDAwMDAp
Owo+IAo+IGNsa19zZXRfcmF0ZV9leGNsdXNpdmUgcHV0cyBhIHByZXR0eSBiaWcgY29uc3RyYWlu
dCBvbiB0aGUgY2xvY2sgdHJlZSwKPiBhbmQgd2Ugc2hvdWxkbid0IHJlYWxseSBlbmZvcmNlIGl0
IGlmIHRoZSBkZXZpY2UgaXMgdW51c2VkLgoKVGhhdCBpcyB0cnVlIGluIGdlbmVyYWwsIGJ1dCBh
cyBJIHNhaWQgYmVmb3JlLCB0aGF0IGlzIG5vdCByZWFsbHkgYW4gaXNzdWUgZm9yIApIMy4gRGVp
bnRlcmxhY2UgY2xvY2sgZGVmYXVsdCBwYXJlbnQgaXMgcGVyaXBoZXJhbCBjbG9jaywgd2hpY2gg
aXMgZml4ZWQgdG8gNjAwIApNSHogYW5kIGRvZXNuJ3QgY2hhbmdlLgoKPiAKPiBJIGd1ZXNzIHdl
IHNob3VsZCBtb3ZlIGl0IHRvIHRoZSBydW50aW1lX3BtIHJlc3VtZSBob29rICh3aXRoIHRoZQo+
IHB1dF9leGNsdXNpdmUgY2FsbCBpbiBzdXNwZW5kKS4KCk9rLCBJJ2xsIG1vdmUgaXQgaW4gY2Fz
ZSB0aGF0IHRoaXMgZGVpbnRlcmxhY2UgY29yZSBpcyB1c2VkIG9uIG90aGVyIFNvQ3Mgd2l0aCAK
bm9uLWZpeGVkIHBhcmVudCBjbG9jay4KCj4gCj4gT3RoZXJ3aXNlLCB0aGF0IHBhdGNoIGlzCj4g
QWNrZWQtYnk6IE1heGltZSBSaXBhcmQgPG1yaXBhcmRAa2VybmVsLm9yZz4KClRoYW5rcyEKCkJl
c3QgcmVnYXJkcywKSmVybmVqCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtl
cm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
