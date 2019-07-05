Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A92606EF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 15:56:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iqoTBC78aft2ija7oDo4j4783WOSftL2l09D2FzkrC4=; b=NeP3hqKKYfu/kH
	5/4dyXgjKHFYbanEsA0RTdPzWfCq1o6071b1dwKVDrwMJRtObtSOict1ltn3L9ZozDt7ysf7czda1
	Jlco1B7W35IkzWBfWzJBvvN6NfnKbXw17fHYEImO5UhFl3JNaZJNBecAJ8GwZRvM5S3i6Ej7h5uLv
	lUytc5BOVsb/262UwW3bzex2juMj1Umh60HuZDvj8H8NOMXJ8Ws2rrPZqkPJIgUJf4XrpQQ/HtHz9
	42jNwwD5/QRSVquFUngOd5Zp6GyzJFTY3DlUO+r3LPhzHRBA2/BJSq5HxIS+KtCllGeBNbAh/VUfa
	iDJRj1dIyAUyPmbTn16g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOh5-00077X-9m; Fri, 05 Jul 2019 13:56:07 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIQI-0005BX-Dw
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 07:14:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jKOWAl4u2tQTRK5ubVL16poWaKTmqXMlN6sTZvhcaW4=; b=mc5/+J7ke8WdQ58wBLxpHz9QHD
 wtwpyeVRLp2QsOdC/poZZFqYBK0O+D8uOWfFwQsJbePr6pIWZzE5I6yt1KAbKuxSjtnQ2RqpLBcst
 pezRWUiybOMA5bvWkdpE/fAy6Q1Qc44VBKkKQ9s+eFGPJFLNGNX9PlpoXUEjbBaGXkEQzKoW9cAez
 xBKd5az+IQnk5xBpNbQE9MQFJIEyhNf9v+Mrjl5c0/Gfmai4F07sP65Qf9IfC5Tu+i//7PEkpOV8b
 YQm0dORMbP+K+Xixn6TfaYIWNSGznUL5FYecol9/9xSvJPhG7jobCRzHnLl8bSmX4r5ieFm9QiARM
 PPKrLWTw==;
Received: from mailout01.agenturserver.de ([185.15.192.32])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjIPX-0002ps-8G
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 07:13:37 +0000
Received: from mail02.agenturserver.de (mail02.internal [172.16.51.35])
 by mailout01.agenturserver.de (Postfix) with ESMTP id 2BC0166DE1;
 Fri,  5 Jul 2019 09:12:42 +0200 (CEST)
Received: from localhost (ac02.internal [172.16.51.82])
 by mail02.agenturserver.de (Postfix) with ESMTP id 1B8DB807EC;
 Fri,  5 Jul 2019 09:12:42 +0200 (CEST)
X-Spam-Level: 
Received: from mail.agenturserver.de ([172.16.51.35])
 by localhost (ac02.mittwald.de [172.16.51.82]) (amavisd-new, port 10026)
 with ESMTP id caKduJbWk4PB; Fri,  5 Jul 2019 09:12:41 +0200 (CEST)
Received: from karo-electronics.de (unknown [89.1.81.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: lw@karo-electronics.de)
 by mail.agenturserver.de (Postfix) with ESMTPSA;
 Fri,  5 Jul 2019 09:12:36 +0200 (CEST)
Date: Fri, 5 Jul 2019 09:12:35 +0200
From: Lothar =?UTF-8?B?V2HDn21hbm4=?= <LW@KARO-electronics.de>
To: Andy Duan <fugang.duan@nxp.com>
Subject: Re: [EXT] Re: [PATCH nvmem 1/1] nvmem: imx: correct the fuse word
 index
Message-ID: <20190705091235.365b93cb@karo-electronics.de>
In-Reply-To: <VI1PR0402MB360040318C9FB6656B46C566FFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
References: <20190704142015.10701-1-fugang.duan@nxp.com>
 <20190704174543.194a0158@karo-electronics.de>
 <VI1PR0402MB3600D635FF12DC861FAD9BF6FFFA0@VI1PR0402MB3600.eurprd04.prod.outlook.com>
 <VI1PR0402MB360040318C9FB6656B46C566FFF50@VI1PR0402MB3600.eurprd04.prod.outlook.com>
Organization: Ka-Ro electronics GmbH
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_081335_378084_1A4A4F1C 
X-CRM114-Status: GOOD (  26.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.15.192.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "srinivas.kandagatla@linaro.org" <srinivas.kandagatla@linaro.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIDUgSnVsIDIwMTkgMDI6NDY6MzIgKzAwMDAgQW5keSBEdWFuIHdyb3RlOgo+
IEZyb206IEFuZHkgRHVhbiBTZW50OiBGcmlkYXksIEp1bHkgNSwgMjAxOSAxMjowOCBBTQo+ID4g
RnJvbTogTG90aGFyIFdhw59tYW5uIDxMV0BLQVJPLWVsZWN0cm9uaWNzLmRlPiBTZW50OiBUaHVy
c2RheSwgSnVseSA0LAo+ID4gMjAxOSAxMTo0NiBQTSAgCj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBP
biBUaHUsICA0IEp1bCAyMDE5IDIyOjIwOjE1ICswODAwIGZ1Z2FuZy5kdWFuQG54cC5jb20gd3Jv
dGU6ICAKPiA+ID4gPiBGcm9tOiBGdWdhbmcgRHVhbiA8ZnVnYW5nLmR1YW5AbnhwLmNvbT4KPiA+
ID4gPgo+ID4gPiA+IGlNWDggZnVzZSB3b3JkIGluZGV4IHJlcHJlc2VudCBhcyBvbmUgNC1ieXRl
cyB3b3JkLCBpdCBzaG91bGQgbm90IGJlCj4gPiA+ID4gZGl2aWRlZCBieSA0Lgo+ID4gPiA+Cj4g
PiA+ID4gRXhwOgo+ID4gPiA+IC0gTUFDMCBhZGRyZXNzIGxheW91dCBpbiBmdXNlOgo+ID4gPiA+
IG9mZnNldCA3MDg6IE1BQ1szXSBNQUNbMl0gTUFDWzFdIE1BQ1swXQo+ID4gPiA+IG9mZnNldCA3
MDk6IFhYICAgICB4eCAgICAgTUFDWzVdIE1BQ1s0XQo+ID4gPiA+Cj4gPiA+ID4gU2lnbmVkLW9m
Zi1ieTogRnVnYW5nIER1YW4gPGZ1Z2FuZy5kdWFuQG54cC5jb20+Cj4gPiA+ID4gLS0tCj4gPiA+
ID4gIGRyaXZlcnMvbnZtZW0vaW14LW9jb3RwLXNjdS5jIHwgNiArKystLS0KPiA+ID4gPiAgMSBm
aWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPiA+ID4gPgo+ID4g
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL252bWVtL2lteC1vY290cC1zY3UuYwo+ID4gPiA+IGIv
ZHJpdmVycy9udm1lbS9pbXgtb2NvdHAtc2N1LmMgaW5kZXggZDlkYzQ4Mi4uYmUyZjVmMCAxMDA2
NDQKPiA+ID4gPiAtLS0gYS9kcml2ZXJzL252bWVtL2lteC1vY290cC1zY3UuYwo+ID4gPiA+ICsr
KyBiL2RyaXZlcnMvbnZtZW0vaW14LW9jb3RwLXNjdS5jCj4gPiA+ID4gQEAgLTcxLDggKzcxLDgg
QEAgc3RhdGljIGludCBpbXhfc2N1X29jb3RwX3JlYWQodm9pZCAqY29udGV4dCwKPiA+ID4gPiB1
bnNpZ25lZCAgCj4gPiA+IGludCBvZmZzZXQsICAKPiA+ID4gPiAgICAgICB2b2lkICpwOwo+ID4g
PiA+ICAgICAgIGludCBpLCByZXQ7Cj4gPiA+ID4KPiA+ID4gPiAtICAgICBpbmRleCA9IG9mZnNl
dCA+PiAyOwo+ID4gPiA+IC0gICAgIG51bV9ieXRlcyA9IHJvdW5kX3VwKChvZmZzZXQgJSA0KSAr
IGJ5dGVzLCA0KTsKPiA+ID4gPiArICAgICBpbmRleCA9IG9mZnNldDsKPiA+ID4gPiArICAgICBu
dW1fYnl0ZXMgPSByb3VuZF91cChieXRlcywgNCk7Cj4gPiA+ID4gICAgICAgY291bnQgPSBudW1f
Ynl0ZXMgPj4gMjsKPiA+ID4gPgo+ID4gPiA+ICAgICAgIGlmIChjb3VudCA+IChwcml2LT5kYXRh
LT5ucmVncyAtIGluZGV4KSkgQEAgLTEwMCw3ICsxMDAsNyBAQAo+ID4gPiA+IHN0YXRpYyBpbnQg
aW14X3NjdV9vY290cF9yZWFkKHZvaWQgKmNvbnRleHQsIHVuc2lnbmVkIGludCBvZmZzZXQsCj4g
PiA+ID4gICAgICAgICAgICAgICBidWYrKzsKPiA+ID4gPiAgICAgICB9Cj4gPiA+ID4KPiA+ID4g
PiAtICAgICBtZW1jcHkodmFsLCAodTggKilwICsgb2Zmc2V0ICUgNCwgYnl0ZXMpOwo+ID4gPiA+
ICsgICAgIG1lbWNweSh2YWwsICh1OCAqKXAsIGJ5dGVzKTsKPiA+ID4gPgo+ID4gPiA+ICAgICAg
IGtmcmVlKHApOwo+ID4gPiA+ICAKPiA+ID4gV2l0aCB0aGVzZSBjaGFuZ2VzIHlvdSBjb3VsZCB1
c2UgdGhlICd2YWwnIHBvaW50ZXIgZGlyZWN0bHkgYXMgdGhlCj4gPiA+IGRlc3RpbmF0aW9uIGZv
ciBvY290cF9yZWFkKCkgd2l0aG91dCBuZWVkIGZvciBhbiBpbnRlcm1lZGlhdGUgYnVmZmVyLgo+
ID4gPgo+ID4gPgo+ID4gPiBMb3RoYXIgV2HDn21hbm4gIAo+ID4gCj4gPiBZb3UgYXJlIHJpZ2h0
LCBpbiBmYWN0LCB3ZSBjYW4gcmVtb3ZlICJwIiBhbmQgImJ1ZiIgcG9pbnRlci4KPiA+IFRoYW5r
cyBmb3IgeW91ciByZXZpZXcsIEkgd2lsbCBzZW5kIG91dCB0aGUgVjIuICAKPiAKPiBIaSBMb3Ro
YXIsCj4gCj4gSXQgc3RpbGwgbmVlZCBpbnRlcm1lZGlhdGUgYnVmZmVyIHRvIHJlYWQgb3V0IG4g
d29yZHMgKG4gKiA0IGJ5dGVzKSBmcm9tIGVGdXNlLgo+IEJlY2F1c2UgJ3ZhbCcgYnVmZmVyIHNp
emUgaXMgcmVhbCBjb3VudCBwYXJzZWQgZnJvbSBEVCwgd2hpY2ggaXMgbm90IGFuIGludGVnZXIg
bXVsdGlwbGUgb2YgNC4KPiAKPiBGb3IgZXhhbXBsZSwgY2VsbC0+Ynl0ZXMgaXMgcGFyc2VkIGZy
b20gInJlZyIgcHJvcGVydHkgYW5kIGl0IGlzIHJlYWwgY291bnQgbGlrZSA2Lgo+ICAgICAgICAg
ICAgICAgICAgICAgICAgIGZlY19tYWMwOiBtYWNAMmM0IHsKPiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIHJlZyA9IDwweDJjNCA2PjsKPiAgICAgICAgICAgICAgICAgICAgICAgICB9
OyAKPiAKPiBTbyB3ZSBoYXZlIHRvIHVzZSBpbnRlcm1lZGlhdGUgYnVmZmVyIGhlcmUuCj4KdmFs
IGlzIGEgdTMyIHBvaW50ZXIsIHNvIGxlZ2FsbHkgaXQgY2Fubm90IHBvaW50IHRvIGFueSBidWZm
ZXIgd2hvc2UKc2l6ZSBpcyBub3QgZGl2aXNpYmxlIGJ5IGZvdXIhCgoKTG90aGFyIFdhw59tYW5u
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
