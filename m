Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B99BAAE4A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 09:27:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MG4dFyinYqNJQpcOcFNgeL4KwS2kprO9pxDFQW6b9lg=; b=LJyaOKiLkpL9TEUw0HRkGLqcq
	0HKr2gCZqCVXaXhknu1nOsuXkFgmTVylZ3KDuGCUcRuTuKtAka1jQ4ihrji1gxTDKa7yGovicQJsF
	HzK1HfRBfHBkBV9uqpQ3h/SjqWJo2i+XmEH9igER8vVLmVo0q3ibtll0d9ekSBEeFEBxqfgC0zKdz
	75r15CExek1PZDkNRG6HCpj5HA+RLybASu0fqoggM570oduQRCwfbwxjA17HkvnscE7+Z0u08yjkU
	7Prq/g1C67OHK3HOcLH6qMOmnCm0s+Lm/Uye5eGAJJz/f36+14gx37hRu5EFo1yRbp3qAxrkDzlxa
	d89x5TrSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aYw-0003CV-Q4; Tue, 10 Sep 2019 07:27:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aYi-0003C9-QD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 07:27:30 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8A7RMsQ110822;
 Tue, 10 Sep 2019 02:27:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568100442;
 bh=2FCd0oZbRrdPCe62KstnW9at/OLpq3YSA6a8smnF4tk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Q5pfHFxDCfgC6N02F5/G2haKPQ50rdZTL5YUbgXbo7+W399JruszDiz+L8SKbx8YE
 +dgQTtIpRXpjpvSkISqBImURt1DxtqbU+TiTFyyLVeL4c83VE4F2/fjXp6IEfbYhdp
 KZWUYDJYaxIhbw8O/4oQM5Yu8viW1Cw7ZK6y3bS4=
Received: from DLEE103.ent.ti.com (dlee103.ent.ti.com [157.170.170.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8A7RMXw082532
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 10 Sep 2019 02:27:22 -0500
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 10
 Sep 2019 02:27:21 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 10 Sep 2019 02:27:21 -0500
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8A7RH75031075;
 Tue, 10 Sep 2019 02:27:18 -0500
Subject: Re: [PATCH v2 08/14] dmaengine: ti: New driver for K3 UDMA - split#1:
 defines, structs, io func
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, <vkoul@kernel.org>,
 <robh+dt@kernel.org>, <nm@ti.com>, <ssantosh@kernel.org>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
 <20190730093450.12664-9-peter.ujfalusi@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <2081d1fb-dfa5-d7ca-2dd3-bdf42b60e51c@ti.com>
Date: Tue, 10 Sep 2019 10:27:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190730093450.12664-9-peter.ujfalusi@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_002728_931010_9070A00E 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAzMC8wNy8yMDE5IDEyOjM0LCBQZXRlciBVamZhbHVzaSB3cm90ZToKPiBTcGxpdCBwYXRj
aCBmb3IgcmV2aWV3IGNvbnRhaW5pbmc6IGRlZmluZXMsIHN0cnVjdHMsIGlvIGFuZCBsb3cgbGV2
ZWwKPiBmdW5jdGlvbnMgYW5kIGludGVycnVwdCBjYWxsYmFja3MuCj4gCj4gRE1BIGRyaXZlciBm
b3IKPiBUZXhhcyBJbnN0cnVtZW50cyBLMyBOQVZTUyBVbmlmaWVkIERNQSDigJMgUGVyaXBoZXJh
bCBSb290IENvbXBsZXggKFVETUEtUCkKPiAKPiBUaGUgVURNQS1QIGlzIGludGVuZGVkIHRvIHBl
cmZvcm0gc2ltaWxhciAoYnV0IHNpZ25pZmljYW50bHkgdXBncmFkZWQpIGZ1bmN0aW9ucwo+IGFz
IHRoZSBwYWNrZXQtb3JpZW50ZWQgRE1BIHVzZWQgb24gcHJldmlvdXMgU29DIGRldmljZXMuIFRo
ZSBVRE1BLVAgbW9kdWxlCj4gc3VwcG9ydHMgdGhlIHRyYW5zbWlzc2lvbiBhbmQgcmVjZXB0aW9u
IG9mIHZhcmlvdXMgcGFja2V0IHR5cGVzLiBUaGUgVURNQS1QIGlzCj4gYXJjaGl0ZWN0ZWQgdG8g
ZmFjaWxpdGF0ZSB0aGUgc2VnbWVudGF0aW9uIGFuZCByZWFzc2VtYmx5IG9mIFNvQyBETUEgZGF0
YQo+IHN0cnVjdHVyZSBjb21wbGlhbnQgcGFja2V0cyB0by9mcm9tIHNtYWxsZXIgZGF0YSBibG9j
a3MgdGhhdCBhcmUgbmF0aXZlbHkKPiBjb21wYXRpYmxlIHdpdGggdGhlIHNwZWNpZmljIHJlcXVp
cmVtZW50cyBvZiBlYWNoIGNvbm5lY3RlZCBwZXJpcGhlcmFsLiBNdWx0aXBsZQo+IFR4IGFuZCBS
eCBjaGFubmVscyBhcmUgcHJvdmlkZWQgd2l0aGluIHRoZSBETUEgd2hpY2ggYWxsb3cgbXVsdGlw
bGUgc2VnbWVudGF0aW9uCj4gb3IgcmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIG9uZ29pbmcu
IFRoZSBETUEgY29udHJvbGxlciBtYWludGFpbnMgc3RhdGUKPiBpbmZvcm1hdGlvbiBmb3IgZWFj
aCBvZiB0aGUgY2hhbm5lbHMgd2hpY2ggYWxsb3dzIHBhY2tldCBzZWdtZW50YXRpb24gYW5kCj4g
cmVhc3NlbWJseSBvcGVyYXRpb25zIHRvIGJlIHRpbWUgZGl2aXNpb24gbXVsdGlwbGV4ZWQgYmV0
d2VlbiBjaGFubmVscyBpbiBvcmRlcgo+IHRvIHNoYXJlIHRoZSB1bmRlcmx5aW5nIERNQSBoYXJk
d2FyZS4gQW4gZXh0ZXJuYWwgRE1BIHNjaGVkdWxlciBpcyB1c2VkIHRvCj4gY29udHJvbCB0aGUg
b3JkZXJpbmcgYW5kIHJhdGUgYXQgd2hpY2ggdGhpcyBtdWx0aXBsZXhpbmcgb2NjdXJzIGZvciBU
cmFuc21pdAo+IG9wZXJhdGlvbnMuIFRoZSBvcmRlcmluZyBhbmQgcmF0ZSBvZiBSZWNlaXZlIG9w
ZXJhdGlvbnMgaXMgaW5kaXJlY3RseSBjb250cm9sbGVkCj4gYnkgdGhlIG9yZGVyIGluIHdoaWNo
IGJsb2NrcyBhcmUgcHVzaGVkIGludG8gdGhlIERNQSBvbiB0aGUgUnggUFNJLUwgaW50ZXJmYWNl
Lgo+IAo+IFRoZSBVRE1BLVAgYWxzbyBzdXBwb3J0cyBhY3RpbmcgYXMgYm90aCBhIFVUQyBhbmQg
VURNQS1DIGZvciBpdHMgaW50ZXJuYWwKPiBjaGFubmVscy4gQ2hhbm5lbHMgaW4gdGhlIFVETUEt
UCBjYW4gYmUgY29uZmlndXJlZCB0byBiZSBlaXRoZXIgUGFja2V0LUJhc2VkIG9yCj4gVGhpcmQt
UGFydHkgY2hhbm5lbHMgb24gYSBjaGFubmVsIGJ5IGNoYW5uZWwgYmFzaXMuCj4gCj4gVGhlIGlu
aXRpYWwgZHJpdmVyIHN1cHBvcnRzOgo+IC0gTUVNX1RPX01FTSAoVFIgbW9kZSkKPiAtIERFVl9U
T19NRU0gKFBhY2tldCAvIFRSIG1vZGUpCj4gLSBNRU1fVE9fREVWIChQYWNrZXQgLyBUUiBtb2Rl
KQo+IC0gQ3ljbGljIChQYWNrZXQgLyBUUiBtb2RlKQo+IC0gTWV0YWRhdGEgZm9yIGRlc2NyaXB0
b3JzCj4gCj4gU2lnbmVkLW9mZi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRp
LmNvbT4KPiAtLS0KClsuLi5dCgo+ICsKPiArLyogR2VuZXJpYyByZWdpc3RlciBhY2Nlc3MgZnVu
Y3Rpb25zICovCj4gK3N0YXRpYyBpbmxpbmUgdTMyIHVkbWFfcmVhZCh2b2lkIF9faW9tZW0gKmJh
c2UsIGludCByZWcpCj4gK3sKPiArCXJldHVybiBfX3Jhd19yZWFkbChiYXNlICsgcmVnKTsKPiAr
fQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkIHVkbWFfd3JpdGUodm9pZCBfX2lvbWVtICpiYXNl
LCBpbnQgcmVnLCB1MzIgdmFsKQo+ICt7Cj4gKwlfX3Jhd193cml0ZWwodmFsLCBiYXNlICsgcmVn
KTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkIHVkbWFfdXBkYXRlX2JpdHModm9pZCBf
X2lvbWVtICpiYXNlLCBpbnQgcmVnLAo+ICsJCQkJICAgIHUzMiBtYXNrLCB1MzIgdmFsKQo+ICt7
Cj4gKwl1MzIgdG1wLCBvcmlnOwo+ICsKPiArCW9yaWcgPSBfX3Jhd19yZWFkbChiYXNlICsgcmVn
KTsKPiArCXRtcCA9IG9yaWcgJiB+bWFzazsKPiArCXRtcCB8PSAodmFsICYgbWFzayk7Cj4gKwo+
ICsJaWYgKHRtcCAhPSBvcmlnKQo+ICsJCV9fcmF3X3dyaXRlbCh0bXAsIGJhc2UgKyByZWcpOwo+
ICt9CgpQbHMsIGRvIG5vdCB1c2UgIF9yYXcgQVBJcyBpbiBkcml2ZXJzLgoKWy4uLl0KCi0tIApC
ZXN0IHJlZ2FyZHMsCmdyeWdvcmlpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
