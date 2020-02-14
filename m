Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3635E15D9B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 15:46:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0PsN21q3PMvZETch6HlDVebSDBuBILBD5RcI0I16UM=; b=KVH1MsL9hIzmts
	j9DDhpNl7lnv9c4KfniwjSN2a5pC4QYpVv2tldZklkCkpfg1Patab88H1eFESx1JkxNwbcAOMcSj1
	yReyHWoHjE4h5mknFztQObs2m0Sv5wqVkuaT1WP/VoD0f0XfcoWKPma0LUDL64gvwhVXGpBxWpZHU
	fqjxsWevXE6AmCzrnSUThqf1NqieJI5tikHMbo/H+olkj/W2HmJbNAljpZBWw9JfL5i9y6+RgL026
	4fIRlgWVswNoiTMGURspPaAv2pr19lT3ZaY4WSxfLc52Gi8syv4RiX/g9cE40frArmwH0LG8rH8/4
	JybiUE2CnJXybBdf5B6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2cEP-0007Wx-0O; Fri, 14 Feb 2020 14:46:13 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2cEH-0007WD-GI
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 14:46:07 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 19CCDB028;
 Fri, 14 Feb 2020 14:46:02 +0000 (UTC)
Message-ID: <e3d851477d569ccb66294b2292495778a3a24c09.camel@suse.de>
Subject: Re: [PATCH] clocksource: owl: Improve owl_timer_init fail messages
From: Andreas =?ISO-8859-1?Q?F=E4rber?= <afaerber@suse.de>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Matheus
 Castello <matheus@castello.eng.br>
Date: Fri, 14 Feb 2020 15:46:05 +0100
In-Reply-To: <20200214141714.GA30872@Mani-XPS-13-9360>
References: <20200214064923.190035-1-matheus@castello.eng.br>
 <20200214141714.GA30872@Mani-XPS-13-9360>
Organization: SUSE Linux GmbH
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_064605_687124_F8F0C3B9 
X-CRM114-Status: GOOD (  22.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: tglx@linutronix.de, daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSBGcmVpdGFnLCBkZW4gMTQuMDIuMjAyMCwgMTk6NDcgKzA1MzAgc2NocmllYiBNYW5p
dmFubmFuIFNhZGhhc2l2YW06Cj4gT24gRnJpLCBGZWIgMTQsIDIwMjAgYXQgMDM6NDk6MjNBTSAt
MDMwMCwgTWF0aGV1cyBDYXN0ZWxsbyB3cm90ZToKPiA+IEFkZGluZyBlcnJvciBtZXNzYWdlcywg
aW4gY2FzZSBvZiBub3QgaGF2aW5nIGEgZGVmaW5lZCBjbG9jawo+ID4gcHJvcGVydHkKPiA+IGFu
ZCBpbiBjYXNlIG9mIGFuIGVycm9yIGluIGNsb2Nrc291cmNlX21taW9faW5pdCwgd2hpY2ggbWF5
IG5vdCBiZQo+ID4gZmF0YWwsIHNvIGp1c3QgYWRkaW5nIGEgcHJfZXJyIHRvIG5vdGlmeSB0aGF0
IGl0IGZhaWxlZC4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogTWF0aGV1cyBDYXN0ZWxsbyA8bWF0
aGV1c0BjYXN0ZWxsby5lbmcuYnI+Cj4gPiAtLS0KPiA+IAo+ID4gVGVzdGVkIG9uIG15IENhbmlu
b3MgTGFicmFkb3IgczUwMCBiYXNlZCBib2FyZC4gSWYgdGhlIGNsb2NrCj4gPiBwcm9wZXJ0eSBp
cyBub3QKPiA+IHNldCB0aGlzIG1lc3NhZ2Ugd291bGQgaGVscCBkZWJ1ZzoKPiA+IAo+ID4gLi4u
Cj4gPiBbICAgIDAuMDAwMDAwXSBGYWlsZWQgdG8gZ2V0IE9GIGNsb2NrIGZvciBjbG9ja3NvdXJj
ZQo+ID4gWyAgICAwLjAwMDAwMF0gRmFpbGVkIHRvIGluaXRpYWxpemUgJy9zb2MvdGltZXJAYjAx
NjgwMDAnOiAtMgo+ID4gWyAgICAwLjAwMDAwMF0gdGltZXJfcHJvYmU6IG5vIG1hdGNoaW5nIHRp
bWVycyBmb3VuZAo+ID4gLi4uCj4gPiAKPiA+ICBkcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW93
bC5jIHwgMTEgKysrKysrKystLS0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgOCBpbnNlcnRpb25zKCsp
LCAzIGRlbGV0aW9ucygtKQo+ID4gCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9jbG9ja3NvdXJj
ZS90aW1lci1vd2wuYwo+ID4gYi9kcml2ZXJzL2Nsb2Nrc291cmNlL3RpbWVyLW93bC5jCj4gPiBp
bmRleCA5MDBmZTczNjE0NWQuLmY1MzU5NmY5ZTg2YyAxMDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMv
Y2xvY2tzb3VyY2UvdGltZXItb3dsLmMKPiA+ICsrKyBiL2RyaXZlcnMvY2xvY2tzb3VyY2UvdGlt
ZXItb3dsLmMKPiA+IEBAIC0xMzUsOCArMTM1LDEwIEBAIHN0YXRpYyBpbnQgX19pbml0IG93bF90
aW1lcl9pbml0KHN0cnVjdAo+ID4gZGV2aWNlX25vZGUgKm5vZGUpCj4gPiAgCX0KPiA+IAo+ID4g
IAljbGsgPSBvZl9jbGtfZ2V0KG5vZGUsIDApOwo+ID4gLQlpZiAoSVNfRVJSKGNsaykpCj4gPiAr
CWlmIChJU19FUlIoY2xrKSkgewo+ID4gKwkJcHJfZXJyKCJGYWlsZWQgdG8gZ2V0IE9GIGNsb2Nr
IGZvciBjbG9ja3NvdXJjZVxuIik7Cj4gCj4gTm8gbmVlZCB0byBtZW50aW9uIE9GIGhlcmUuIEp1
c3QsICJGYWlsZWQgdG8gZ2V0IGNsb2NrIGZvcgo+IGNsb2Nrc291cmNlIgo+IGlzIGdvb2QgZW5v
dWdoLgoKV2Ugc2hvdWxkIGJlIGNvbnNpc3RlbnQgdGhlbiBhbmQgb3V0cHV0IFBUUl9FUlIoY2xr
KSwgdG9vLgoKaS5lLiwgIkZhaWxlZCB0byBnZXQgY2xvY2sgZm9yIGNsb2Nrc291cmNlICglZClc
biIKCj4gCj4gPiAgCQlyZXR1cm4gUFRSX0VSUihjbGspOwo+ID4gKwl9Cj4gPiAKPiA+ICAJcmF0
ZSA9IGNsa19nZXRfcmF0ZShjbGspOwo+ID4gCj4gPiBAQCAtMTQ0LDggKzE0NiwxMSBAQCBzdGF0
aWMgaW50IF9faW5pdCBvd2xfdGltZXJfaW5pdChzdHJ1Y3QKPiA+IGRldmljZV9ub2RlICpub2Rl
KQo+ID4gIAlvd2xfdGltZXJfc2V0X2VuYWJsZWQob3dsX2Nsa3NyY19iYXNlLCB0cnVlKTsKPiA+
IAo+ID4gIAlzY2hlZF9jbG9ja19yZWdpc3Rlcihvd2xfdGltZXJfc2NoZWRfcmVhZCwgMzIsIHJh
dGUpOwo+ID4gLQljbG9ja3NvdXJjZV9tbWlvX2luaXQob3dsX2Nsa3NyY19iYXNlICsgT1dMX1R4
X1ZBTCwgbm9kZS0+bmFtZSwKPiA+IC0JCQkgICAgICByYXRlLCAyMDAsIDMyLAo+ID4gY2xvY2tz
b3VyY2VfbW1pb19yZWFkbF91cCk7Cj4gPiArCXJldCA9IGNsb2Nrc291cmNlX21taW9faW5pdChv
d2xfY2xrc3JjX2Jhc2UgKyBPV0xfVHhfVkFMLCBub2RlLQo+ID4gPm5hbWUsCj4gPiArCQkJCSAg
ICByYXRlLCAyMDAsIDMyLAo+ID4gY2xvY2tzb3VyY2VfbW1pb19yZWFkbF91cCk7Cj4gPiArCj4g
PiArCWlmIChyZXQpCj4gPiArCQlwcl9lcnIoIkZhaWxlZCB0byByZWdpc3RlciBjbG9ja3NvdXJj
ZSAlZFxuIiwgcmV0KTsKCkl0J3Mgbm90IGEgbnVtZXJpYyBjbG9ja3NvdXJjZSwgc28gZm9yIGh1
bWFucyBwbGVhc2UgdXNlICIuLi4gKCVkKVxuIi4KCj4gPiAKPiAKPiBEbyB5b3Ugd2FudCB0byBj
b250aW51ZSBpZiBpdCBmYWlscz8gSSdkIGJhaWwgb3V0LgoKQWdyZWVkLCBidXQgSSdkIHN1Z2dl
c3QgdG8gY2hlY2sgdW5kZXIgd2hpY2ggY2lyY3Vtc3RhbmNlcyB0aGlzIGNhbgphY3R1YWxseSBm
YWlsIGFuZCBob3cgb3RoZXIgZHJpdmVycyBoYW5kbGUgaXQsIGdpdmVuIHRoYXQgaXQgd2FzIG5v
dApjaGVja2VkIGJlZm9yZS4gV2FzIHRoaXMgbWlzc2VkIGR1cmluZyBvcmlnaW5hbCByZXZpZXcs
IG9yIGlzIHRoZQpyZXR1cm4gdmFsdWUgbmV3PwoKQ2hlZXJzLApBbmRyZWFzCgotLSAKU1VTRSBT
b2Z0d2FyZSBTb2x1dGlvbnMgR2VybWFueSBHbWJICk1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJu
YmVyZywgR2VybWFueQpHRjogRmVsaXggSW1lbmTDtnJmZmVyCkhSQiAzNjgwOSAoQUcgTsO8cm5i
ZXJnKQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFk
ZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LWFybS1rZXJuZWwK
