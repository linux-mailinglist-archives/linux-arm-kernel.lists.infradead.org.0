Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB22A4FDB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:28:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zb3bPX0HN/JE/34wJseZG5zURxSzozbhMU/g6XZ4vCE=; b=kL84/UxRUChR5K
	TPzT8yl3TUFh74CWdvuz9guvXMGvEC6J3oET8N/CE+i5n/r6pQ13Wpmhcd3WKGCk0v9A8kTcJDUG8
	1uLRU4aWcAbHKj+g7NZFWnfUCuAaIHirGGj2UTBOWOfh5lIEbQ7JWJMBVgQY7s7ifXTpqqsu8qwJ/
	jqkcUOZ8mRY0p/RCZonB3h+PZ6EuM+oe8WF4YwntTRLdOstU0Li9fbhbsULKQUQJDRjm/ViLIDRn0
	oao/2nSN0A7iWTtaRaSV1g7h7QAdrYxbf2y+qI6AizH8fyj56ZpyZrlMcrQ4oBq83fYPGR1IBGzSN
	bHsxlM+UvQ0ghnJ8w5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4gkx-0004fx-5z; Mon, 02 Sep 2019 07:28:07 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4gki-0004fH-6m
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 07:27:54 +0000
X-Originating-IP: 213.190.86.42
Received: from localhost (unknown [213.190.86.42])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id D864DC0008;
 Mon,  2 Sep 2019 07:27:40 +0000 (UTC)
Date: Mon, 2 Sep 2019 09:27:35 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Yangtao Li <tiny.windzz@gmail.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
 mark.rutland@arm.com, wens@csie.org, mchehab+samsung@kernel.org,
 davem@davemloft.net, gregkh@linuxfoundation.org,
 Jonathan.Cameron@huawei.com, nicolas.ferre@microchip.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH v5 00/18] add thermal driver for h6
Message-ID: <20190902072735.zkrueocyz4glc26n@flea>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190901215214.f4vbxemdd7mf3gun@core.my.home>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190901215214.f4vbxemdd7mf3gun@core.my.home>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_002752_399221_F90264E6 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.198 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBTdW4sIFNlcCAwMSwgMjAxOSBhdCAxMTo1MjoxNFBNICswMjAwLCBPbmTFmWVqIEpp
cm1hbiB3cm90ZToKPiBIZWxsbyBZYW5ndGFvLAo+Cj4gT24gU2F0LCBBdWcgMTAsIDIwMTkgYXQg
MDU6Mjg6MTFBTSArMDAwMCwgWWFuZ3RhbyBMaSB3cm90ZToKPiA+IFRoaXMgcGF0Y2hzZXQgYWRk
IHN1cHBvcnQgZm9yIEE2NCwgSDMsIEg1LCBINiBhbmQgUjQwIHRoZXJtYWwgc2Vuc29yLgo+ID4K
PiA+IFRoeCB0byBJY2Vub3d5IGFuZCBWYXNpbHkuCj4gPgo+ID4gQlRZLCBkbyBhIGNsZWFudXAg
aW4gdGhlcm1hbCBtYWtmaWxlLgo+Cj4gSSd2ZSBhZGRlZCBzdXBwb3J0IGZvciBBODNUIGFuZCBh
bHNvIHNvbWUgY2xlYW51cHMsIGFjY29yZGluZyB0byBteQo+IGZlZWRiYWNrOgo+Cj4gaHR0cHM6
Ly9tZWdvdXMuY29tL2dpdC9saW51eC9sb2cvP2g9dGhzLTUuMwo+Cj4gRmVlbCBmcmVlIHRvIHBp
Y2sgdXAgd2hhdGV2ZXIgeW91IGxpa2UgZnJvbSB0aGF0IHRyZWUuCj4KPiBGb3Igb3RoZXJzLCB0
aGVyZSBhcmUgYWxzbyBEVFMgcGF0Y2hlcyBpbiB0aGF0IHRyZWUgZm9yIEgzLCBINSwgQTgzVCwg
YW5kIEg2LCBzbwo+IHRoYXQgc2hvdWwgbWFrZSB0ZXN0aW5nIG9mIHRoaXMgZHJpdmVyIGVhc2ll
ci4KCkknbSBub3QgY29udmluY2VkIHRoYXQgYWx3YXlzIGV4cGFuZGluZyB0aGUgbnVtYmVyIG9m
IFNvQyBzdXBwb3J0ZWQgaXMKdGhlIGJlc3Qgc3RyYXRlZ3kgdG8gZ2V0IHRoaXMgbWVyZ2VkLiBV
c3VhbGx5LCBrZWVwaW5nIHRoZSBzYW1lCmZlYXR1cmUgc2V0IGFjcm9zcyB2ZXJzaW9uLCBjb25z
b2xpZGF0aW5nIHRoYXQsIGFuZCB0aGVuIG9uY2UgaXQncyBpbgpzZW5kaW5nIHRoZSBuZXcgU29D
IHN1cHBvcnQgd29ya3MgYmVzdC4KCk1heGltZQoKLS0KTWF4aW1lIFJpcGFyZCwgQm9vdGxpbgpF
bWJlZGRlZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHBzOi8vYm9vdGxpbi5jb20K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
