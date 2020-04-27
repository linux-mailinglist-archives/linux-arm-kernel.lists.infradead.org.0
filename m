Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1ABD1BA2BE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 13:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Hgy9ouS9GAmRT9BMJt/8yYllevqkaqRkeJ5HrtHhd5k=; b=NngRy41Qb0FBn9V//SSSPET+H
	eItXBLXWQx+ELUInn8phHA7wEx2nZqrW33jNcf2xRh70C8tkgtkNBf1sbDGf8tkpwBIT1JgS6ICKu
	69uqWtIHyP36zszXpOEMOLOGYGbpIGtcB2qjT536bl/jLC3B5V/oa4qz5EeQPeskjw8rMi5SEHmBY
	lAOFqJtnwt43qR/WD3xbD5AyVOdRpdrW2SiuuIrwSJ9D8WDwUbPAk3c4vIJnuWR2j4NfxICFqPAHB
	pieDagCRIC/ZYQ8hVla8G9Zxc0o/UO9l6UER92dDsxjiaLmRYDoJwH0tphw36gHmE+MULEGdhlYx/
	6LV1JF3Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jT29I-00057x-Un; Mon, 27 Apr 2020 11:42:08 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jT28t-0004tD-Bp
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 11:41:44 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03RBffL2013333;
 Mon, 27 Apr 2020 06:41:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587987701;
 bh=pa3J4XQ5Erz+YsjPUom6zR5EcfQGkjqMNLYq1dzlDmY=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=fMxf9o9nAlVKqkJL0m0k0nAPeavwPckk59gQOUpabW/p8S21hdkm5CuGorHASsNDb
 5K6tDUBnWDr9vhVk1OZ7r7IlAQ3yvqA85ZnRYKTrCKeCjLgJriihQ62RiqiRZV6duR
 b6utx9JRNygshhSFeyDSa5hMq1lQwgzvDLK5mJFw=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03RBffCY027427
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 27 Apr 2020 06:41:41 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 27
 Apr 2020 06:41:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 27 Apr 2020 06:41:41 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03RBfcPU058972;
 Mon, 27 Apr 2020 06:41:39 -0500
Subject: Re: [PATCH 2/3] arm64: dts: ti: k3-j721e-main.dtsi: Add DSS node
To: Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
References: <20200422091512.950-1-tomi.valkeinen@ti.com>
 <20200422091512.950-2-tomi.valkeinen@ti.com>
 <ade3a177-f060-bc40-bcc1-494093e3071d@ti.com>
 <47b7f858-a8d9-1c3b-4dca-2cc493f6730f@ti.com>
 <fa497e8d-7911-5f3d-cf91-347370f8edaa@ti.com>
 <217c0c14-f4fb-7321-9f57-205df0cd01fe@ti.com>
 <9a4b1d0a-c871-2280-8d22-196730e9385b@ti.com>
 <3eb05f6d-523f-f7e5-a0e9-d47b852fe079@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <6427a827-9175-75ab-72fb-a62a21795bf3@ti.com>
Date: Mon, 27 Apr 2020 14:41:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <3eb05f6d-523f-f7e5-a0e9-d47b852fe079@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_044143_512554_3103F288 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjcvMDQvMjAyMCAxNDozNywgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4gT24gMjcvMDQvMjAy
MCAxNDoxNSwgVG9taSBWYWxrZWluZW4gd3JvdGU6Cj4+IE9uIDI3LzA0LzIwMjAgMTQ6MTAsIEp5
cmkgU2FyaGEgd3JvdGU6Cj4+PiBPbiAyNy8wNC8yMDIwIDEzOjUxLCBUb21pIFZhbGtlaW5lbiB3
cm90ZToKPj4+PiBPbiAyNy8wNC8yMDIwIDEzOjM3LCBKeXJpIFNhcmhhIHdyb3RlOgo+Pj4+PiBP
biAyNy8wNC8yMDIwIDEzOjA5LCBUZXJvIEtyaXN0byB3cm90ZToKPj4+Pj4+PiArwqDCoMKgwqDC
oMKgwqAgc3RhdHVzID0gImRpc2FibGVkIjsKPj4+Pj4+Cj4+Pj4+PiBBZ2Fpbiwgd2h5IGRpc2Fi
bGVkIGJ5IGRlZmF1bHQ/Cj4+Pj4+Pgo+Pj4+Pgo+Pj4+PiB0aWRzcyBkZXZpY2UgaXMgbm90IGZ1
bmN0aW9uYWwgd2l0aG91dCBhIGRlZmluZWQgdmlkZW8tcG9ydC4gVGhlIAo+Pj4+PiBkcml2ZXIK
Pj4+Pj4gaXMgbm90IGltcGxlbWVudGVkIGluIGEgd2F5IHRoYXQgaXQgd291bGQgaGFuZGxlIGEg
YnJva2VuIAo+Pj4+PiBjb25maWd1cmF0aW9uCj4+Pj4+IGdyYWNlZnVsbHkuCj4+Pj4KPj4+PiBU
aGVuIHdlIG5lZWQgdG8gZml4IGl0LiBUaGUgZHJpdmVyIHNob3VsZCBoYW5kbGUgdGhlIGNhc2Ug
d2hlcmUgdGhlcmUKPj4+PiBhcmUgbm8gcG9ydHMgZGVmaW5lZCBqdXN0IGZpbmUuCj4+Pj4KPj4+
Cj4+PiBKdXN0IGJ5IHJlYWRpbmcgdGhlIGNvZGUsIEkgd291bGQgc2F5IHRoYXQgY3VycmVudGx5
IHRoZSBwcm9iZSB3b3VsZAo+Pj4gZmFpbCB3aXRoIHJldHVybmVkIC1FTk9NRU0gYWZ0ZXIgY2Fs
bGluZyBkcm1fdmJsYW5rX2luaXQoKSB3aXRoIHplcm8gCj4+PiBDUlRDcy4KPj4+Cj4+PiBTbyBz
aG91bGQgdGhlIHByb2JlIGZhaWwgZ3JhY2VmdWxseSBhbmQgc2lsZW50bHksIG9yIHNob3VsZCB3
ZSB0cnkgdG8KPj4+IHJlZ2lzdGVyIGEgRFJNIGRldmljZSB3aXRoIG5vIENSVENzPyBJcyB0aGF0
IGV2ZW4gcG9zc2libGU/Cj4+Cj4+IE15IGZpcnN0IHRob3VnaHQgaXMgdGhhdCB0aGUgZHJpdmVy
IHNob3VsZCBleGl0IHByb2JlIHNpbGVudGx5IHdpdGggCj4+IEVOT0RFViBpZiB0aGVyZSBhcmUg
bm8gb3V0cHV0cyBkZWZpbmVkIChidXQsIG9mIGNvdXJzZSwgd2l0aCAKPj4gRVBST0JFX0RFRkVS
IGlmIHRoZXJlIGFyZSBvdXRwdXRzIHdoaWNoIGhhdmVuJ3QgYmVlbiBwcm9iZWQgeWV0KS4KPj4K
Pj4gSXQgZ2V0cyBhIGJpdCBtb3JlIGNvbXBsZXggaWYgd2UgZXZlciBzdXBwb3J0IHdyaXRlYmFj
aywgYXMgdGhhdCBjYW4gCj4+IGJlIHVzZWQgYXMgbWVtLXRvLW1lbSB3aXRob3V0IGFueSBkaXNw
bGF5cywgYnV0IEkgdGhpbmsgd2UgY2FuIGlnbm9yZSAKPj4gdGhhdCBmb3Igbm93Lgo+IAo+IElu
IGFueSBjYXNlLCB0aGF0J3Mgbm90IHRoZSByZWFzb24gZm9yIHN0YXR1cyA9ICJkaXNhYmxlZCIs
IHNvIHRoYXQgCj4gZGlzY3Vzc2lvbiBpcyBub3QgcmVsYXRlZCB0byB0aGVzZSBwYXRjaGVzIGFz
IHN1Y2guCj4gCj4gVGhlIHJlYXNvbiB0byBoYXZlIERTUyBkaXNhYmxlZCBpcyBqdXN0IHRvIHBy
ZXZlbnQgcG9pbnRsZXNzIGRyaXZlciAKPiBwcm9iaW5nLiBXaGVuIGEgYm9hcmQgZHRzIG9yIGEg
RFQgb3ZlcmxheSBhZGRzIGEgZGlzcGxheSwgdGhlIERTUyBEVCAKPiBub2RlIGhhcyB0byBiZSBt
b2RpZmllZCBhbnl3YXkgdG8gYWRkIHRoZSBEVCBncmFwaCBhbmQgdGhlIHBhbmVsL2JyaWRnZSAK
PiBkYXRhLiBTbyBvbmUgY2FuIGFzIHdlbGwgYWRkIHRoZSBzaW5nbGUgbGluZSBvZiAic3RhdHVz
ID0gZW5hYmxlZCIgdGhlcmUuCgpPaywgdGhhbmtzIGZvciB0aGUgZXhwbGFuYXRpb24sIHF1ZXVl
ZCBhbGwgdGhyZWUgcGF0Y2hlcyB0b3dhcmRzIDUuOCAKYmFzZWQgb24gdGhhdC4KCi1UZXJvCi0t
ClRleGFzIEluc3RydW1lbnRzIEZpbmxhbmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhl
bHNpbmtpLiBZLXR1bm51cy9CdXNpbmVzcyBJRDogMDYxNTUyMS00LiBLb3RpcGFpa2thL0RvbWlj
aWxlOiBIZWxzaW5raQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtYXJtLWtlcm5lbAo=
