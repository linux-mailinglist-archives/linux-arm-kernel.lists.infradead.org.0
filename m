Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89DE2DE9E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 12:40:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rWBFJUomIhOoLk5xzcRhQ47JJV6SZbGcp17Y3iJFc8=; b=bxF/do+C+5kHJU
	LFDuNkzHVUyNl8kqGtKZr+KVRYEclB10PGKuX6CPWg9Ruhm0GPLxOpUH215riEi7BAegtqIXqJTlA
	P6Ghlm0vvTzoq+NYGs5hvCtnFaK+RIHDQ3Bh9FI0LEesKpZ4XrZIQk95NxHkJFuiVHiyzTlu72FsA
	WW2e/d7LiyFZFPkeRFKLSGCaBVTH9rcdWcux+wstBDkc1DMTMiHr0qjl8FulaQOep45mvwW1fmcbg
	c7NbLPM2Hm9mqeYHdnaFKWzREsqAkqGJorkMzwdQrTTfEM/92SrLC48qJzzk8culOpcvmQ13BLXFd
	RlEpj4pNLwRO87KT+tJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMV7Q-0001Hi-0W; Mon, 21 Oct 2019 10:40:56 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMV74-00017g-Qb
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:40:37 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9LAeUXV130585;
 Mon, 21 Oct 2019 05:40:30 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1571654430;
 bh=DP3UladcpahT7Zd59MY2NoZO3c+JT3xElNImtfIgZNY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=wvlkMKXsPFWKk9kmbGKKYSJGMnu6J53qkEyk6YshfQBTdRCOw3L3VOBEukvOWVuzV
 VzuyNWXHtTc91eCDQdQt9KrEnF06J4RB/OKyKZMNhm1dzDiYo+4yCVtxyToq2J2U4G
 +6CSEz0Bt/qGAYeFO43KjLmHuF1YvfynCC4+mNOQ=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9LAeF7t097674
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 21 Oct 2019 05:40:15 -0500
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 21
 Oct 2019 05:40:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 21 Oct 2019 05:40:14 -0500
Received: from [192.168.2.6] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9LAdhdB119978;
 Mon, 21 Oct 2019 05:39:43 -0500
Subject: Re: [PATCH] ARM: davinci: dm365-evm: Add Fixed regulators needed for
 tlv320aic3101
To: Sekhar Nori <nsekhar@ti.com>, <bgolaszewski@baylibre.com>
References: <20190830102252.22488-1-peter.ujfalusi@ti.com>
 <e2e10e39-aa21-1c53-75b2-18013937a841@ti.com>
 <698562e3-6391-f0e3-a7a8-f64794cfa33e@ti.com>
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
Message-ID: <7a6179ab-6ef1-767d-9b19-576aa1c6dcdd@ti.com>
Date: Mon, 21 Oct 2019 13:40:44 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <698562e3-6391-f0e3-a7a8-f64794cfa33e@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_034035_000861_E2A65798 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiAxNy8xMC8yMDE5IDE2LjQ5LCBTZWtoYXIgTm9yaSB3cm90ZToKPiBPbiAxNy8xMC8xOSA0
OjM5IFBNLCBTZWtoYXIgTm9yaSB3cm90ZToKPj4gT24gMzAvMDgvMTkgMzo1MiBQTSwgUGV0ZXIg
VWpmYWx1c2kgd3JvdGU6Cj4+PiBUaGUgY29kZWMgZHJpdmVyIG5lZWRzIGNvcnJlY3QgcmVndWxh
dG9ycyBpbiBvcmRlciB0byBwcm9iZS4KPj4+IEJvdGggVkNDXzNWMyBhbmQgVkNDXzFWOCBpcyBh
bHdheXMgb24gZml4ZWQgcmVndWxhdG9ycyBvbiB0aGUgYm9hcmQuCj4+Pgo+Pj4gU2lnbmVkLW9m
Zi1ieTogUGV0ZXIgVWpmYWx1c2kgPHBldGVyLnVqZmFsdXNpQHRpLmNvbT4KPj4KPj4gQXBwbGll
ZCBmb3IgdjUuNAo+IAo+IFRoaXMgaXMgYnJlYWtpbmcgYm9vdCBvbiBETTM2NSBFVk0uCj4gCj4g
Qm9vdGluZyBMaW51eCBvbiBwaHlzaWNhbCBDUFUgMHgwICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAKPiBMaW51eCB2ZXJzaW9uIDUuNC4wLXJjMS0wMDAwMS1n
OTI3ZDEwYTg1NzkxLWRpcnR5IChhMDg3NTUxNkBwc3BsaW51eDA2MykgKGdjYyB2OQo+IENQVTog
QVJNOTI2RUotUyBbNDEwNjkyNjVdIHJldmlzaW9uIDUgKEFSTXY1VEVKKSwgY3I9MDAwNTMxN2Yg
ICAgICAgICAgICAgICAgICAgCj4gQ1BVOiBWSVZUIGRhdGEgY2FjaGUsIFZJVlQgaW5zdHJ1Y3Rp
b24gY2FjaGUgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBNYWNoaW5lOiBE
YVZpbmNpIERNMzY1IEVWTSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIAo+IE1lbW9yeSBwb2xpY3k6IERhdGEgY2FjaGUgd3JpdGV0aHJvdWdoICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gY21hOiBSZXNlcnZlZCAx
NiBNaUIgYXQgMHg4NmMwMDAwMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAKPiBEYVZpbmNpIGRtMzY1X3JldjEuMSB2YXJpYW50IDB4MCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IE9uIG5vZGUgMCB0b3RhbHBhZ2Vz
OiAzMjc2OCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCj4gICBETUEgem9uZTogMjU2IHBhZ2VzIHVzZWQgZm9yIG1lbW1hcCAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiAgIERNQSB6b25lOiAwIHBhZ2VzIHJlc2Vy
dmVkICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+
ICAgRE1BIHpvbmU6IDMyNzY4IHBhZ2VzLCBMSUZPIGJhdGNoOjcgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCj4gcGNwdS1hbGxvYzogczAgcjAgZDMyNzY4IHUzMjc2
OCBhbGxvYz0xKjMyNzY4ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBwY3B1
LWFsbG9jOiBbMF0gMCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIAo+IEJ1aWx0IDEgem9uZWxpc3RzLCBtb2JpbGl0eSBncm91cGlu
ZyBvbi4gIFRvdGFsIHBhZ2VzOiAzMjUxMiAgICAgICAgICAgICAgICAgICAgCj4gS2VybmVsIGNv
bW1hbmQgbGluZTogY29uc29sZT10dHlTMCwxMTUyMDBuOCByb290PS9kZXYvbmZzIHJ3IG5mc3Jv
b3Q9MTcyLjI0LjIxMHAKPiBEZW50cnkgY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiAxNjM4NCAo
b3JkZXI6IDQsIDY1NTM2IGJ5dGVzLCBsaW5lYXIpICAgICAgICAgIAo+IElub2RlLWNhY2hlIGhh
c2ggdGFibGUgZW50cmllczogODE5MiAob3JkZXI6IDMsIDMyNzY4IGJ5dGVzLCBsaW5lYXIpICAg
ICAgICAgICAgCj4gbWVtIGF1dG8taW5pdDogc3RhY2s6b2ZmLCBoZWFwIGFsbG9jOm9mZiwgaGVh
cCBmcmVlOm9mZiAgICAgICAgICAgICAgICAgICAgICAgICAKPiBNZW1vcnk6IDEwNjc3NksvMTMx
MDcySyBhdmFpbGFibGUgKDQ3NjBLIGtlcm5lbCBjb2RlLCAyNTNLIHJ3ZGF0YSwgMTE2MEsgcm9k
YXRhKQo+IFNMVUI6IEhXYWxpZ249MzIsIE9yZGVyPTAtMywgTWluT2JqZWN0cz0wLCBDUFVzPTEs
IE5vZGVzPTEgICAgICAgICAgICAgICAgICAgICAgCj4gcmN1OiBQcmVlbXB0aWJsZSBoaWVyYXJj
aGljYWwgUkNVIGltcGxlbWVudGF0aW9uLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK
PiAgICAgICAgIFRhc2tzIFJDVSBlbmFibGVkLiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAo+IHJjdTogUkNVIGNhbGN1bGF0ZWQgdmFsdWUgb2Yg
c2NoZWR1bGVyLWVubGlzdG1lbnQgZGVsYXkgaXMgMTAgamlmZmllcy4gICAgICAgICAgCj4gTlJf
SVJRUzogMTYsIG5yX2lycXM6IDE2LCBwcmVhbGxvY2F0ZWQgaXJxczogMTYgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKPiByYW5kb206IGdldF9yYW5kb21fYnl0ZXMgY2FsbGVkIGZy
b20gc3RhcnRfa2VybmVsKzB4MjVjLzB4NDQwIHdpdGggY3JuZ19pbml0PTAgIAo+IGNsb2Nrc291
cmNlOiB0aW1lcjBfMTogbWFzazogMHhmZmZmZmZmZiBtYXhfY3ljbGVzOiAweGZmZmZmZmZmLCBt
YXhfaWRsZV9uczogNzlzCj4gc2NoZWRfY2xvY2s6IDMyIGJpdHMgYXQgMjRNSHosIHJlc29sdXRp
b24gNDFucywgd3JhcHMgZXZlcnkgODk0Nzg0ODQ5NzFucyAgICAgICAKPiBDb25zb2xlOiBjb2xv
dXIgZHVtbXkgZGV2aWNlIDgweDMwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIAo+IENhbGlicmF0aW5nIGRlbGF5IGxvb3AuLi4gMTQ2Ljg0IEJvZ29NSVBTIChs
cGo9NzM0MjA4KSAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gcGlkX21heDogZGVmYXVsdDog
MzI3NjggbWluaW11bTogMzAxICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKPiBNb3VudC1jYWNoZSBoYXNoIHRhYmxlIGVudHJpZXM6IDEwMjQgKG9yZGVyOiAwLCA0
MDk2IGJ5dGVzLCBsaW5lYXIpICAgICAgICAgICAgIAo+IE1vdW50cG9pbnQtY2FjaGUgaGFzaCB0
YWJsZSBlbnRyaWVzOiAxMDI0IChvcmRlcjogMCwgNDA5NiBieXRlcywgbGluZWFyKSAgICAgICAg
Cj4gQ1BVOiBUZXN0aW5nIHdyaXRlIGJ1ZmZlciBjb2hlcmVuY3k6IG9rICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBTZXR0aW5nIHVwIHN0YXRpYyBpZGVudGl0eSBt
YXAgZm9yIDB4ODAwMDg0MDAgLSAweDgwMDA4NDU4ICAgICAgICAgICAgICAgICAgICAgIAo+IHJj
dTogSGllcmFyY2hpY2FsIFNSQ1UgaW1wbGVtZW50YXRpb24uICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCj4gZGV2dG1wZnM6IGluaXRpYWxpemVkICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBjbG9ja3Nv
dXJjZTogamlmZmllczogbWFzazogMHhmZmZmZmZmZiBtYXhfY3ljbGVzOiAweGZmZmZmZmZmLCBt
YXhfaWRsZV9uczogMTkxcwo+IGZ1dGV4IGhhc2ggdGFibGUgZW50cmllczogMjU2IChvcmRlcjog
LTEsIDMwNzIgYnl0ZXMsIGxpbmVhcikgICAgICAgICAgICAgICAgICAgCj4gcGluY3RybCBjb3Jl
OiBpbml0aWFsaXplZCBwaW5jdHJsIHN1YnN5c3RlbSAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAKPiBORVQ6IFJlZ2lzdGVyZWQgcHJvdG9jb2wgZmFtaWx5IDE2ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IERNQTogcHJlYWxsb2NhdGVk
IDI1NiBLaUIgcG9vbCBmb3IgYXRvbWljIGNvaGVyZW50IGFsbG9jYXRpb25zICAgICAgICAgICAg
ICAgICAgCj4gbXV4OiBpbml0aWFsaXplZCBJTlRfRURNQV9DQyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBtdXg6IFNldHRpbmcgcmVnaXN0ZXIg
SU5UX0VETUFfQ0MgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IAo+IG11eDogICAgSU5UTVVYICgweDAwMDAwMDE4KSA9IDB4MDAwMDAwMDAgLT4gMHgwMDAwMDAw
NCAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gY3B1aWRsZTogdXNpbmcgZ292ZXJub3IgbWVu
dSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBt
dXg6IGluaXRpYWxpemVkIElOVF9FTUFDX1JYVEhSRVNIICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIAo+IG11eDogU2V0dGluZyByZWdpc3RlciBJTlRfRU1BQ19S
WFRIUkVTSCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gbXV4OiAg
ICBJTlRNVVggKDB4MDAwMDAwMTgpID0gMHgwMDAwMDAwNCAtPiAweDAwMDA0MDA0ICAgICAgICAg
ICAgICAgICAgICAgICAgICAKPiBtdXg6IGluaXRpYWxpemVkIElOVF9FTUFDX1JYUFVMU0UgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IG11eDogU2V0dGlu
ZyByZWdpc3RlciBJTlRfRU1BQ19SWFBVTFNFICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgCj4gbXV4OiAgICBJTlRNVVggKDB4MDAwMDAwMTgpID0gMHgwMDAwNDAwNCAt
PiAweDAwMDBjMDA0ICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBtdXg6IGluaXRpYWxpemVk
IElOVF9FTUFDX1RYUFVMU0UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIAo+IG11eDogU2V0dGluZyByZWdpc3RlciBJTlRfRU1BQ19UWFBVTFNFICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gbXV4OiAgICBJTlRNVVggKDB4MDAw
MDAwMTgpID0gMHgwMDAwYzAwNCAtPiAweDAwMDFjMDA0ICAgICAgICAgICAgICAgICAgICAgICAg
ICAKPiBtdXg6IGluaXRpYWxpemVkIElOVF9FTUFDX01JU0NQVUxTRSAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IG11eDogU2V0dGluZyByZWdpc3RlciBJTlRf
RU1BQ19NSVNDUFVMU0UgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4g
bXV4OiAgICBJTlRNVVggKDB4MDAwMDAwMTgpID0gMHgwMDAxYzAwNCAtPiAweDAwMDNjMDA0ICAg
ICAgICAgICAgICAgICAgICAgICAgICAKPiBFVk06IHR2cDUxNDYgU0QgdmlkZW8gaW5wdXQgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IG11eDog
aW5pdGlhbGl6ZWQgSU5UX1BSVENTUyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgCj4gbXV4OiBTZXR0aW5nIHJlZ2lzdGVyIElOVF9QUlRDU1MgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBtdXg6ICAgIElO
VE1VWCAoMHgwMDAwMDAxOCkgPSAweDAwMDNjMDA0IC0+IDB4MDAwM2M0MDQgICAgICAgICAgICAg
ICAgICAgICAgICAgIAo+IG11eDogaW5pdGlhbGl6ZWQgU1BJMF9TQ0xLICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gbXV4OiBTZXR0aW5nIHJl
Z2lzdGVyIFNQSTBfU0NMSyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAKPiBtdXg6ICAgIFBJTk1VWDMgKDB4MDAwMDAwMGMpID0gMHgwMTVhZmZmZiAtPiAw
eDExNWFmZmZmICAgICAgICAgICAgICAgICAgICAgICAgIAo+IG11eDogaW5pdGlhbGl6ZWQgU1BJ
MF9TREkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgCj4gbXV4OiBTZXR0aW5nIHJlZ2lzdGVyIFNQSTBfU0RJICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBtdXg6ICAgIFBJTk1VWDMgKDB4MDAwMDAw
MGMpID0gMHgxMTVhZmZmZiAtPiAweDE1NWFmZmZmICAgICAgICAgICAgICAgICAgICAgICAgIAo+
IG11eDogaW5pdGlhbGl6ZWQgU1BJMF9TRE8gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgCj4gbXV4OiBTZXR0aW5nIHJlZ2lzdGVyIFNQSTBfU0RP
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBtdXg6
ICAgIFBJTk1VWDMgKDB4MDAwMDAwMGMpID0gMHgxNTVhZmZmZiAtPiAweDE3NWFmZmZmICAgICAg
ICAgICAgICAgICAgICAgICAgIAo+IG11eDogaW5pdGlhbGl6ZWQgU1BJMF9TREVOQTAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gbXV4OiBTZXR0
aW5nIHJlZ2lzdGVyIFNQSTBfU0RFTkEwICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAKPiBtdXg6ICAgIFBJTk1VWDMgKDB4MDAwMDAwMGMpID0gMHgxNzVhZmZm
ZiAtPiAweDM3NWFmZmZmICAgICAgICAgICAgICAgICAgICAgICAgIAo+IGVkbWEgZWRtYS4wOiBM
ZWdhY3kgbWVtY3B5IGlzIGVuYWJsZWQsIHRoaW5ncyBtaWdodCBub3Qgd29yayAgICAgICAgICAg
ICAgICAgICAgCj4gZWRtYSBlZG1hLjA6IFRJIEVETUEgRE1BIGVuZ2luZSBkcml2ZXIgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiA4PC0tLSBjdXQgaGVyZSAtLS0g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgIAo+IFVuYWJsZSB0byBoYW5kbGUga2VybmVsIE5VTEwgcG9pbnRlciBkZXJlZmVyZW5jZSBh
dCB2aXJ0dWFsIGFkZHJlc3MgMDAwMDAwYzAgICAgCj4gcGdkID0gKHB0cnZhbCkgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAK
PiBbMDAwMDAwYzBdICpwZ2Q9MDAwMDAwMDAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIAo+IEludGVybmFsIGVycm9yOiBPb3BzOiA1IFsjMV0g
UFJFRU1QVCBBUk0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gTW9k
dWxlcyBsaW5rZWQgaW46ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAKPiBDUFU6IDAgUElEOiAxIENvbW06IHN3YXBwZXIgTm90IHRh
aW50ZWQgNS40LjAtcmMxLTAwMDAxLWc5MjdkMTBhODU3OTEtZGlydHkgIzE0Ngo+IEhhcmR3YXJl
IG5hbWU6IERhVmluY2kgRE0zNjUgRVZNICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgCj4gUEMgaXMgYXQgcmVnX2ZpeGVkX3ZvbHRhZ2VfcHJvYmUrMHgzMC8w
eDJlYyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBMUiBpcyBhdCByZWdf
Zml4ZWRfdm9sdGFnZV9wcm9iZSsweDJjLzB4MmVjICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIAo+IHBjIDogWzxjMDJhOTYyOD5dICAgIGxyIDogWzxjMDJhOTYyND5dICAgIHBz
cjogNjAwMDAwNTMgICAgICAgICAgICAgICAgICAgICAgICAgCj4gc3AgOiBjNjgzN2RlMCAgaXAg
OiAwMDAwMDAwMCAgZnAgOiBjMDYyY2ZkOCAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAKPiByMTA6IGMwNWY0NGE4ICByOSA6IDAwMDAwMDAwICByOCA6IGM2OGEyNGQwICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+IHI3IDogYzA2MzEwMDggIHI2IDogYzY4
YTI0ZTAgIHI1IDogMDAwMDAwMDAgIHI0IDogYzY4YTI0ZTAgICAgICAgICAgICAgICAgICAgICAg
Cj4gcjMgOiAwMDAwMDAwMCAgcjIgOiBjMDY1YTg1NCAgcjEgOiAwMDAwMDAwMCAgcjAgOiAwMDAw
MDAwMCAgICAgICAgICAgICAgICAgICAgICAKPiBGbGFnczogblpDdiAgSVJRcyBvbiAgRklRcyBv
ZmYgIE1vZGUgU1ZDXzMyICBJU0EgQVJNICBTZWdtZW50IG5vbmUgICAgICAgICAgICAgIAo+IENv
bnRyb2w6IDAwMDUzMTdmICBUYWJsZTogODAwMDQwMDAgIERBQzogMDAwMDAwNTMgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgCj4gUHJvY2VzcyBzd2FwcGVyIChwaWQ6IDEsIHN0YWNrIGxp
bWl0ID0gMHgocHRydmFsKSkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKPiBTdGFjazog
KDB4YzY4MzdkZTAgdG8gMHhjNjgzODAwMCkgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIAo+IDdkZTA6IGM2ODliZTQwIGMwMTY3MDQ0IDAwMDAwMDAwIGM2OGY0
NzIwIGM2OGY0NjYwIGM2OGY0NjYwIGM2OGY0NzIwIGM2ODliZTQwICAgCj4gN2UwMDogYzA1NzVj
YTQgNjRkOWNiMGQgMDAwMDAwMDAgYzY4YTI0ZTAgMDAwMDAwMDAgYzA2NWE4NTQgYzA2NWE4NTQg
MDAwMDAwMDAgICAKPiA3ZTIwOiAwMDAwMDAwMCBjMDVmNDRhOCBjMDYyY2ZkOCBjMDJlMGE2NCBj
NjhhMjRlMCBjMDY4OGQwMCAwMDAwMDAwMCBjMDJkZWM1NCAgIAo+IDdlNDA6IGM2OGEyNGUwIGMw
NjVhODU0IGMwNjVhODU0IGMwNjMxMDA4IGZmZmZlMDAwIGMwNjFlODI4IGMwNWY0NGE4IGMwMmRl
ZjQ0ICAgCj4gN2U2MDogMDAwMDAwMDAgZmZmZmZmMDggZmZmZjBhMDAgYzY4YTI0ZTAgMDAwMDAw
MDAgYzA2NWE4NTQgYzA2MzEwMDggZmZmZmUwMDAgICAKPiA3ZTgwOiBjMDYxZTgyOCBjMDVmNDRh
OCBjMDYyY2ZkOCBjMDJkZjFmOCAwMDAwMDAwMCBjMDY1YTg1NCBjNjhhMjRlMCBjMDJkZjI1OCAg
IAo+IDdlYTA6IGM2ODMzN2IwIGMwNjVhODU0IGMwMmRmMjAwIGMwMmRjZWQ0IGMwNjFlODI4IGM2
ODFkYjkwIGM2ODMzN2IwIDY0ZDljYjBkICAgCj4gN2VjMDogYzA2MmNmZDggYzA2NWE4NTQgYzY4
MmFmMDAgYzA2NWVhNDggMDAwMDAwMDAgYzAyZGUwNzAgYzA1NGY5ODQgYzA0OTRjYzAgICAKPiA3
ZWUwOiBjMDY1YTg1NCBjMDY1YTg1NCBjMDYzMTAwOCBjMDYwYjA5OCAwMDAwMDAwMCBjMDJkZmIw
NCBjMDY2ZDVjMCBjMDYzMTAwOCAgIAo+IDdmMDA6IGMwNjBiMDk4IGMwMDBhNjI0IDAwMDAwMDdm
IGM3ZmZmZWE4IGMwNWQwMGM0IDAwMDAwMDAwIGM3ZmZmZWU5IGMwMDM3MmUwICAgCj4gN2YyMDog
YzA1Y2Y2ZDggYzA1NDk3MTQgMDAwMDAwMDAgMDAwMDAwMDQgMDAwMDAwMDQgMDAwMDAwMDAgMDAw
MDAwMDAgYzdmZmZlZTIgICAKPiA3ZjQwOiBjN2ZmZmVlNSA2NGQ5Y2IwZCAwMDAwMDAwMCAwMDAw
MDA3ZiBjMDYxZTg0NCA2NGQ5Y2IwZCAwMDAwMDA3ZiBjMDYxZTg0OCAgIAo+IDdmNjA6IDAwMDAw
MDA1IGMwNjZkNWMwIGMwNjZkNWMwIGMwNWY0ZTZjIDAwMDAwMDA0IDAwMDAwMDA0IDAwMDAwMDAw
IGMwNWY0NGE4ICAgCj4gN2Y4MDogMDAwMDAwMDAgMDAwMDAwMDAgYzA0YTcxYmMgMDAwMDAwMDAg
MDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgICAKPiA3ZmEwOiAwMDAwMDAwMCBj
MDRhNzFjNCAwMDAwMDAwMCBjMDAwOTBlMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAw
MDAwMCAgIAo+IDdmYzA6IDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDAwIDAwMDAwMDAwICAgCj4gN2ZlMDogMDAwMDAwMDAgMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMTMgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAg
ICAKPiBbPGMwMmE5NjI4Pl0gKHJlZ19maXhlZF92b2x0YWdlX3Byb2JlKSBmcm9tIFs8YzAyZTBh
NjQ+XSAocGxhdGZvcm1fZHJ2X3Byb2JlKzB4KQo+IFs8YzAyZTBhNjQ+XSAocGxhdGZvcm1fZHJ2
X3Byb2JlKSBmcm9tIFs8YzAyZGVjNTQ+XSAocmVhbGx5X3Byb2JlKzB4MWUwLzB4MzRjKSAgCj4g
WzxjMDJkZWM1ND5dIChyZWFsbHlfcHJvYmUpIGZyb20gWzxjMDJkZWY0ND5dIChkcml2ZXJfcHJv
YmVfZGV2aWNlKzB4NWMvMHgxNjgpICAKPiBbPGMwMmRlZjQ0Pl0gKGRyaXZlcl9wcm9iZV9kZXZp
Y2UpIGZyb20gWzxjMDJkZjFmOD5dIChkZXZpY2VfZHJpdmVyX2F0dGFjaCsweDU4KQo+IFs8YzAy
ZGYxZjg+XSAoZGV2aWNlX2RyaXZlcl9hdHRhY2gpIGZyb20gWzxjMDJkZjI1OD5dIChfX2RyaXZl
cl9hdHRhY2grMHg1OC8weGMpCj4gWzxjMDJkZjI1OD5dIChfX2RyaXZlcl9hdHRhY2gpIGZyb20g
WzxjMDJkY2VkND5dIChidXNfZm9yX2VhY2hfZGV2KzB4NzAvMHhiNCkgICAKPiBbPGMwMmRjZWQ0
Pl0gKGJ1c19mb3JfZWFjaF9kZXYpIGZyb20gWzxjMDJkZTA3MD5dIChidXNfYWRkX2RyaXZlcisw
eDE5NC8weDFjYykgIAo+IFs8YzAyZGUwNzA+XSAoYnVzX2FkZF9kcml2ZXIpIGZyb20gWzxjMDJk
ZmIwND5dIChkcml2ZXJfcmVnaXN0ZXIrMHg3NC8weDEwOCkgICAgCj4gWzxjMDJkZmIwND5dIChk
cml2ZXJfcmVnaXN0ZXIpIGZyb20gWzxjMDAwYTYyND5dIChkb19vbmVfaW5pdGNhbGwrMHg2Yy8w
eDFkOCkgICAKPiBbPGMwMDBhNjI0Pl0gKGRvX29uZV9pbml0Y2FsbCkgZnJvbSBbPGMwNWY0ZTZj
Pl0gKGtlcm5lbF9pbml0X2ZyZWVhYmxlKzB4MTBjLzB4KQo+IFs8YzA1ZjRlNmM+XSAoa2VybmVs
X2luaXRfZnJlZWFibGUpIGZyb20gWzxjMDRhNzFjND5dIChrZXJuZWxfaW5pdCsweDgvMHhlYykg
ICAgCj4gWzxjMDRhNzFjND5dIChrZXJuZWxfaW5pdCkgZnJvbSBbPGMwMDA5MGUwPl0gKHJldF9m
cm9tX2ZvcmsrMHgxNC8weDM0KSAgICAgICAgICAKPiBFeGNlcHRpb24gc3RhY2soMHhjNjgzN2Zi
MCB0byAweGM2ODM3ZmY4KSAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAo+
IDdmYTA6ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDAwMDAwMDAwIDAwMDAw
MDAwIDAwMDAwMDAwIDAwMDAwMDAwICAgCj4gN2ZjMDogMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAw
MDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgMDAwMDAwMDAgICAKPiA3ZmUw
OiAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAwMCAwMDAwMDAxMyAwMDAwMDAwMCAg
ICAgICAgICAgICAgICAgICAgIAo+IENvZGU6IGU1OTIwMDE4IGU1OGQzMDI0IGViMDJiNzFlIGUz
YTAzMDAwIChlNTkwOTBjMCkgICAgICAgICAgICAgICAgICAgICAgICAgICAgCj4gLS0tWyBlbmQg
dHJhY2UgOTBlODczNjhhMjQ4ZjdmNiBdLS0tICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAKPiBLZXJuZWwgcGFuaWMgLSBub3Qgc3luY2luZzogQXR0ZW1wdGVkIHRv
IGtpbGwgaW5pdCEgZXhpdGNvZGU9MHgwMDAwMDAwYiAgICAgIAoKSW50ZXJlc3RpbmcuClNvbWV0
aGluZyBoYXMgY2hhbmdlZCBpbiByZWd1bGF0b3JzIGNvcmUgd2hpY2ggY2F1c2VzIGNyYXNoIHdo
ZW4gbm90CmJvb3RlZCB3aXRoIERUPwoKSXQgZGlkIHdvcmtlZCB3aGVuIEkgaGF2ZSBzZW50IHRo
ZSBwYXRjaGVzLiBJJ2xsIHRha2UgYSBsb29rIHdoYXQgbWlnaHQKYmUgdGhlIGlzc3VlLgoKU2Ft
ZSBmb3IgdGhlIGRtYTY0NHgKCi0gUMOpdGVyCgpUZXhhcyBJbnN0cnVtZW50cyBGaW5sYW5kIE95
LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KWS10dW5udXMvQnVzaW5lc3MgSUQ6
IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
