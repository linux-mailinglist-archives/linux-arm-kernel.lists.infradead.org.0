Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F02BB156C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:30:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tMqQrCrsm0yxXToGcdx5NHZ4gAf2VH8uUTFAlkQEHSA=; b=nUkbUcuExIh/6j
	TswDI7PnKM6+7O646rFH5YcX5rYQ5X9fH5mQL13v3Js3NapQjJy8k2xL3cNL3epoWCMJJu5U7cYtY
	2GyEfKcrfnqfcJCHxI1UtegqhX7J9F4c0sa+qd9X26rfM9EGJUspJsyrTMUYcZE/mV//t4d1JpXDf
	KbegZdCm/PnZ8+qc0NNqnMoEbMthCa7fpLZdMH+AXfEbZJ0n1sal02ZVmnNPTPRx7Jx+2DceddRcy
	EVde+X1wYyFJIko5/E948n+c9MfksoiggntL4Yo2cgEJkvOOgjcvG5MmZMbdfkZ8JUtbCmvf0m8UU
	mkPYkSPt9m51esGw4hiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Vjc-00081s-Of; Thu, 12 Sep 2019 20:30:33 +0000
Received: from mailoutvs9.siol.net ([185.57.226.200] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Vht-0007tb-OY
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:28:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4E4D55208E3;
 Thu, 12 Sep 2019 22:28:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id PegbFYo6SQrO; Thu, 12 Sep 2019 22:28:39 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id C0A7952079B;
 Thu, 12 Sep 2019 22:28:38 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id CA8BF522798;
 Thu, 12 Sep 2019 22:28:37 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 3/6] ARM: dts: sunxi: h3/h5: Add MBUS controller node
Date: Thu, 12 Sep 2019 22:28:37 +0200
Message-ID: <1679881.yZ8pMUtPNZ@jernej-laptop>
In-Reply-To: <20190912202057.czb6nzgssg442isi@localhost.localdomain>
References: <20190912175132.411-1-jernej.skrabec@siol.net>
 <20190912175132.411-4-jernej.skrabec@siol.net>
 <20190912202057.czb6nzgssg442isi@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_132848_225021_1A22EC6C 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.200 listed in list.dnswl.org]
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

RG5lIMSNZXRydGVrLCAxMi4gc2VwdGVtYmVyIDIwMTkgb2IgMjI6MjA6NTcgQ0VTVCBqZSBNYXhp
bWUgUmlwYXJkIG5hcGlzYWwoYSk6Cj4gSGksCj4gCj4gT24gVGh1LCBTZXAgMTIsIDIwMTkgYXQg
MDc6NTE6MjlQTSArMDIwMCwgSmVybmVqIFNrcmFiZWMgd3JvdGU6Cj4gPiBCb3RoLCBIMyBhbmQg
SDUsIGNvbnRhaW4gTUJVUywgd2hpY2ggaXMgdGhlIGJ1cyB1c2VkIGJ5IERNQSBkZXZpY2VzIHRv
Cj4gPiBhY2Nlc3Mgc3lzdGVtIG1lbW9yeS4KPiA+IAo+ID4gTUJVUyBjb250cm9sbGVyIGlzIHJl
c3BvbnNpYmxlIGZvciBhcmJpdHJhdGlvbiBiZXR3ZWVuIGNoYW5uZWxzIGJhc2VkCj4gPiBvbiBz
ZXQgcHJpb3JpdHkgYW5kIGNhbiBkbyBzb21lIG90aGVyIHRoaW5ncyBhcyB3ZWxsLCBsaWtlIHJl
cG9ydAo+ID4gYmFuZHdpZHRoIHVzZWQuIEl0IGFsc28gbWFwcyBSQU0gcmVnaW9uIHRvIGRpZmZl
cmVudCBhZGRyZXNzIHRoYW4gQ1BVLgo+ID4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBKZXJuZWogU2ty
YWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+Cj4gPiAtLS0KPiA+IAo+ID4gIGFyY2gvYXJt
L2Jvb3QvZHRzL3N1bnhpLWgzLWg1LmR0c2kgfCA5ICsrKysrKysrKwo+ID4gIDEgZmlsZSBjaGFu
Z2VkLCA5IGluc2VydGlvbnMoKykKPiA+IAo+ID4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtL2Jvb3Qv
ZHRzL3N1bnhpLWgzLWg1LmR0c2kKPiA+IGIvYXJjaC9hcm0vYm9vdC9kdHMvc3VueGktaDMtaDUu
ZHRzaSBpbmRleCBlYmExOTBiM2Y5ZGUuLmVmMWQwMzgxMjYzNgo+ID4gMTAwNjQ0Cj4gPiAtLS0g
YS9hcmNoL2FybS9ib290L2R0cy9zdW54aS1oMy1oNS5kdHNpCj4gPiArKysgYi9hcmNoL2FybS9i
b290L2R0cy9zdW54aS1oMy1oNS5kdHNpCj4gPiBAQCAtMTA5LDYgKzEwOSw3IEBACj4gPiAKPiA+
ICAJCWNvbXBhdGlibGUgPSAic2ltcGxlLWJ1cyI7Cj4gPiAgCQkjYWRkcmVzcy1jZWxscyA9IDwx
PjsKPiA+ICAJCSNzaXplLWNlbGxzID0gPDE+Owo+ID4gCj4gPiArCQlkbWEtcmFuZ2VzOwo+ID4g
Cj4gPiAgCQlyYW5nZXM7Cj4gPiAgCQkKPiA+ICAJCWRpc3BsYXlfY2xvY2tzOiBjbG9ja0AxMDAw
MDAwIHsKPiA+IAo+ID4gQEAgLTUzOCw2ICs1MzksMTQgQEAKPiA+IAo+ID4gIAkJCX07Cj4gPiAg
CQkKPiA+ICAJCX07Cj4gPiAKPiA+ICsJCW1idXM6IGRyYW0tY29udHJvbGxlckAxYzYyMDAwIHsK
PiA+ICsJCQljb21wYXRpYmxlID0gImFsbHdpbm5lcixzdW44aS1oMy1tYnVzIjsKPiA+ICsJCQly
ZWcgPSA8MHgwMWM2MjAwMCAweDEwMDA+Owo+ID4gKwkJCWNsb2NrcyA9IDwmY2N1IDExMz47Cj4g
PiArCQkJZG1hLXJhbmdlcyA9IDwweDAwMDAwMDAwIDB4NDAwMDAwMDAgCjB4YzAwMDAwMDA+Owo+
ID4gKwkJCSNpbnRlcmNvbm5lY3QtY2VsbHMgPSA8MT47Cj4gPiArCQl9Owo+ID4gKwo+IAo+IElm
IHRoYXQncyBlYXN5IGVub3VnaCB0byBhY2Nlc3MsIGNhbiB5b3UgYWxzbyBhZGQgdGhlIHJlZmVy
ZW5jZXMgaW4KPiB0aGUgZGV2aWNlcyB0aGF0IGFyZSBhbHJlYWR5IHRoZXJlPyAoQ1NJIGFuZCBE
RSBjb21lcyB0byBteSBtaW5kLCBidXQKPiB0aGVyZSBtaWdodCBiZSBvdGhlcnMpLgoKU3RyYW5n
ZWx5LCBERTIgZG9lc24ndCB1c2UgdGhpcyBvZmZzZXQuIFRoYXQgd2FzIHRlc3RlZCBvbiBPcmFu
Z2VQaSBQbHVzMkUsIAp3aGljaCBoYXMgMiBHaUIgb2YgUkFNIGFuZCBzdWJ0cmFjdGluZyB0aGlz
IG9mZnNldCBjYXVzZXMgY29ycnVwdGVkIGltYWdlLgoKQnV0IEkgY2FuIGFkZCB0aGlzIHByb3Bl
cnRpZXMgdG8gQ1NJIHRvby4gSG93ZXZlciwgd291bGRuJ3QgdGhhdCBuZWVkIENTSSBEVCAKYmlu
ZGluZyBleHBhbnNpb24gd2l0aCB0aG9zZSBwcm9wZXJ0aWVzPyBvdGhldHdpc2UgRFQgY2hlY2sg
d2lsbCBmYWlsLgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCj4gCj4gVGhhbmtzIQo+IE1heGltZQoK
CgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
