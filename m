Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E61EE98288
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 20:15:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DtS18Ieh7ge3tSHj/iGFnpXmHNiKNOQT8Gamd6PiaNU=; b=cJiOW9gt5ApBo3mfbTc5hSd6K
	TuCAY9CuMXqCQZ49w7oudlNusvCNRV48TmgvJGdTAE18/oL1sXNlFQBCtooekQ1UcPBb7i+FBlJYo
	TGBeTF9Xkt5QOHjh/sihBt/38Uj9aMH1HtZG22BWTfvIvA6Xli2bJ/I0oBSrM9ZnVjwv+PsIAIIN6
	kmhFRxvJs8BATa3rNfzU3XDi/Ow8o5Tn1i1cos8iQUlkoxamc18MjnEar765d/O5iUNO4il3no44J
	mTC+8Imk11q1TIICRMr3tC2lCRWEjP+bu9vQEkLzQvgCLvv6fpjxoOG/pqckGMIq/mA2tf1j3Rsas
	XRH2emvvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0V92-0005xC-Ar; Wed, 21 Aug 2019 18:15:40 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0V8r-0005wh-Is
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 18:15:31 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7LIFPgZ035714;
 Wed, 21 Aug 2019 13:15:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566411325;
 bh=EJgWeht0tfw95rnLz1mKglxOZ8qTNPtBMstzT0kwq5A=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=l7LquM1aejt/W4l8GAFcyMTH/6mc+9Ip37dXdgteIOvRRHfMxNYRRvhRrMc3q2JsV
 Obl0yLfeiHhtTBCKGwIcPdCQst/rE+7XQhjjIri9+E8c+42Sz+4fLeWlT8+lw1XSpB
 FEwWK7klP6PrpVM6oDvdFqr/nwQVEa3rcPdv2nQo=
Received: from DFLE111.ent.ti.com (dfle111.ent.ti.com [10.64.6.32])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7LIFP6r121230
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 21 Aug 2019 13:15:25 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 21
 Aug 2019 13:15:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 21 Aug 2019 13:15:25 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7LIFMC8065498;
 Wed, 21 Aug 2019 13:15:23 -0500
Subject: Re: [PATCH 2/8] soc: ti: add initial PRM driver with reset control
 support
To: Suman Anna <s-anna@ti.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Keerthy <j-keerthy@ti.com>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <1565164139-21886-1-git-send-email-t-kristo@ti.com>
 <1565164139-21886-3-git-send-email-t-kristo@ti.com>
 <3b76f0e0-7530-e7b5-09df-2de9956f30ee@ti.com>
 <59709a2d-f13a-bd55-8aba-864c1cf2f19e@ti.com>
 <9372957c-9ab9-b0dd-fe07-815eb2cb2f16@ti.com>
 <0f335aec-bfdf-345a-8dfb-dad70aef1af6@ti.com>
 <a4196b73-63a0-f9d8-1c43-e6c4d1c1d6a4@ti.com>
 <1566400237.4193.15.camel@pengutronix.de>
 <5e82199f-2f75-ee05-ba65-1595d0526572@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <e75eed22-1bed-4c8a-930d-e05890d58c47@ti.com>
Date: Wed, 21 Aug 2019 21:15:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <5e82199f-2f75-ee05-ba65-1595d0526572@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_111529_765483_980A4B32 
X-CRM114-Status: GOOD (  19.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEuOC4yMDE5IDE4LjQ1LCBTdW1hbiBBbm5hIHdyb3RlOgo+IE9uIDgvMjEvMTkgMTA6MTAg
QU0sIFBoaWxpcHAgWmFiZWwgd3JvdGU6Cj4+IE9uIFR1ZSwgMjAxOS0wOC0yMCBhdCAxMTo0NyAt
MDUwMCwgU3VtYW4gQW5uYSB3cm90ZToKPj4+IE9uIDgvMjAvMTkgMjozNyBBTSwgVGVybyBLcmlz
dG8gd3JvdGU6Cj4+Pj4gT24gMjAuOC4yMDE5IDIuMDEsIFN1bWFuIEFubmEgd3JvdGU6Cj4+Pj4+
IEhpIFRlcm8sCj4+Pj4+Cj4+Pj4+IE9uIDgvMTkvMTkgNDozMiBBTSwgVGVybyBLcmlzdG8gd3Jv
dGU6Cj4+IFsuLi5dCj4+Pj4+Pj4+ICt7Cj4+Pj4+Pj4+ICvCoMKgwqAgc3RydWN0IG9tYXBfcmVz
ZXRfZGF0YSAqcmVzZXQ7Cj4+Pj4+Pj4+ICsKPj4+Pj4+Pj4gK8KgwqDCoCAvKgo+Pj4+Pj4+PiAr
wqDCoMKgwqAgKiBDaGVjayBpZiB3ZSBoYXZlIHJlc2V0cy4gSWYgZWl0aGVyIHJzdGN0bCBvciBy
c3RzdCBpcwo+Pj4+Pj4+PiArwqDCoMKgwqAgKiBub24temVybywgd2UgaGF2ZSByZXNldCByZWdp
c3RlcnMgaW4gcGxhY2UuIEFkZGl0aW9uYWxseQo+Pj4+Pj4+PiArwqDCoMKgwqAgKiB0aGUgZmxh
ZyBPTUFQX1BSTV9OT19SU1RTVCBpbXBsaWVzIHRoYXQgd2UgaGF2ZSByZXNldHMuCj4+Pj4+Pj4+
ICvCoMKgwqDCoCAqLwo+Pj4+Pj4+PiArwqDCoMKgIGlmICghcHJtLT5kYXRhLT5yc3RjdGwgJiYg
IXBybS0+ZGF0YS0+cnN0c3QgJiYKPj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgICEocHJtLT5kYXRh
LT5mbGFncyAmIE9NQVBfUFJNX05PX1JTVFNUKSkKPj4+Pj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJl
dHVybiAwOwo+Pj4+Pj4+PiArCj4+Pj4+Pj4+ICvCoMKgwqAgcmVzZXQgPSBkZXZtX2t6YWxsb2Mo
JnBkZXYtPmRldiwgc2l6ZW9mKCpyZXNldCksIEdGUF9LRVJORUwpOwo+Pj4+Pj4+PiArwqDCoMKg
IGlmICghcmVzZXQpCj4+Pj4+Pj4+ICvCoMKgwqDCoMKgwqDCoCByZXR1cm4gLUVOT01FTTsKPj4+
Pj4+Pj4gKwo+Pj4+Pj4+PiArwqDCoMKgIHJlc2V0LT5yY2Rldi5vd25lciA9IFRISVNfTU9EVUxF
Owo+Pj4+Pj4+PiArwqDCoMKgIHJlc2V0LT5yY2Rldi5vcHMgPSAmb21hcF9yZXNldF9vcHM7Cj4+
Pj4+Pj4+ICvCoMKgwqAgcmVzZXQtPnJjZGV2Lm9mX25vZGUgPSBwZGV2LT5kZXYub2Zfbm9kZTsK
Pj4+Pj4+Pj4gK8KgwqDCoCByZXNldC0+cmNkZXYubnJfcmVzZXRzID0gT01BUF9NQVhfUkVTRVRT
Owo+Pj4+Pgo+Pj4+PiBTdWdnZXN0IGFkZGluZyBhIG51bWJlciBvZiByZXNldHMgdG8gcHJtLT5k
YXRhLCBhbmQgdXNpbmcgaXQgc28gdGhhdCB3ZQo+Pj4+PiBkb24ndCBldmVuIGVudGVydGFpbiBh
bnkgcmVzZXRzIGJleW9uZCB0aGUgYWN0dWFsIG51bWJlciBvZiByZXNldHMuCj4+Pj4KPj4+PiBI
bW0gd2h5IGJvdGhlcj8gQWNjZXNzaW5nIGEgc3RhbGUgcmVzZXQgYml0IHdpbGwganVzdCBjYXVz
ZSBhY2Nlc3MgdG8gYQo+Pj4+IHJlc2VydmVkIGJpdCBpbiB0aGUgcmVzZXQgcmVnaXN0ZXIsIGRv
aW5nIGJhc2ljYWxseSBub3RoaW5nLiBBbHNvLCB0aGlzCj4+Pj4gd291bGQgbm90IHdvcmsgZm9y
IGFtMy9hbTQgd2t1cCwgYXMgdGhlcmUgaXMgYSBzaW5nbGUgcmVzZXQgYml0IGF0IGFuCj4+Pj4g
YXJiaXRyYXJ5IHBvc2l0aW9uLgo+Pj4KPj4+IFRoZSBnZW5lcmljIGNvbnZlbnRpb24gc2VlbXMg
dG8gYmUgZGVmaW5pbmcgYSByZXNldCBpZCB2YWx1ZSBkZWZpbmVkCj4+PiBmcm9tIGluY2x1ZGUv
ZHQtYmluZGluZ3MvcmVzZXQvIHRoYXQgY2FuIGJlIHVzZWQgdG8gbWF0Y2ggYmV0d2VlbiB0aGUK
Pj4+IGR0LW5vZGVzIGFuZCB0aGUgcmVzZXQtY29udHJvbGxlciBkcml2ZXIuCj4+Pgo+Pj4gUGhp
bGlwcCwKPj4+IEFueSBjb21tZW50cz8KPj4KPj4gQXJlIHRoZXJlIG9ubHkgcmVzZXQgYml0cyBh
bmQgcmVzZXJ2ZWQgYml0cyBpbiB0aGUgcmFuZ2UgYWNjZXNzaWJsZSBieQo+PiBbMC4uT01BUF9N
QVhfUkVTRVRTXSBvciBhcmUgdGhlciBiaXRzIHdpdGggYW5vdGhlciBmdW5jdGlvbiBhcyB3ZWxs
Pwo+IAo+IFRoYW5rcyBQaGlsaXBwLCB0aGVzZSBhcmUganVzdCByZXNldCBiaXRzIGFuZCByZXNl
cnZlZCBiaXRzLgo+IAo+PiBJZiB0aGUgbGF0dGVyIGlzIHRoZSBjYXNlLCBJIHdvdWxkIHByZWZl
ciBlbnVtZXJhdGluZyB0aGUgcmVzZXRzIGluIGEKPj4gZHQtYmluZGluZ3MgaGVhZGVyLCB3aXRo
IHRoZSBkcml2ZXIgY29udGFpbmluZyBhbiBlbnVtIC0+IHJlZy9iaXQKPj4gcG9zaXRpb24gbG9v
a3VwIHRhYmxlLgo+Pgo+PiBJbiBnZW5lcmFsLCBhc3N1bWluZyB0aGUgZGV2aWNlIHRyZWUgY29u
dGFpbnMgbm8gZXJyb3JzLCB0aGlzIHNob3VsZCBub3QKPj4gbWF0dGVyIG11Y2gsIGJ1dCBJIHRo
aW5rIGl0IGlzIG5pY2UgaWYgdGhlIHJlc2V0IGRyaXZlciwgZXZlbiB3aXRoIGEKPj4gbWlzY29u
ZmlndXJlZCBkZXZpY2UgdHJlZSwgY2FuJ3Qgd3JpdGUgaW50byBhcmJpdHJhcnkgYml0IGZpZWxk
cy4KPiAKPiBUZXJvLAo+IENhbiB5b3UgYWRkIGEgY2hlY2sgZm9yIHRoaXMgaWYgcG9zc2libGU/
CgpXZWxsLCBJIGNhbiBlbmZvcmNlIHRoZSB1c2FnZSBvZiByZXNldCBiaXQgbWFwcGluZywgd2hp
Y2ggSSBoYXZlIGFscmVhZHkgCmltcGxlbWVudGVkIGZvciBzb21lIFNvQ3MgbGlrZSBhbTMzeHgu
IElmIHRoZSBzcGVjaWZpYyBJRCBpcyBub3QgZm91bmQsIApJIGNhbiBiYWlsIG91dC4gU28sIGJh
c2ljYWxseSBpbiB0aGlzIGV4YW1wbGUgcmVxdWVzdGluZyByZXNldCBhdCBpbmRleCAKMyB3b3Vs
ZCBzdWNjZWVkLCBidXQgaXQgd291bGQgZmFpbCBmb3IgYW55IG90aGVyIElEOyB0aGlzIHdvdWxk
IGJlIApkaXJlY3QgSFcgYml0IG1hcHBpbmcuCgotVGVybwotLQpUZXhhcyBJbnN0cnVtZW50cyBG
aW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4gWS10dW5udXMvQnVz
aW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
