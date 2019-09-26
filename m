Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39E5BEBE7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 08:21:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wDd2RsiQTzrlswwByDiq+16p7JUfWZQI6a8iVHT4/vg=; b=H2gxYS2RQVfk6M6vfuK6cOax+
	f58phriyf/4XtxMaOexmYOI8YRXohRM8GnCUnINeJpK2PVYWJmQavWF4h3Y+mXGdABdD5VskbhL/S
	jSEAtpnm/WXFLY593kl2SFc5CqlsicSAP+CWo0H6bxgVjrRvj1Z4q0Zxn3lEVvSQwPadGZA/ksILj
	18G3IrrsPfwhVs1Zx2dkxK5t2/ZFZw9MsQ+0YYMUroGHVzIvcpgj7jMZsNETCZNR3g1TDpEMUGR93
	BU0cBsZN/ZF4UUhtCmmNkmAeQWv3hWLKWDC4fCsSUyp7bRMa4pLsHdPKvR2neNMpo7aBrBHJfIWLY
	DbjX0BlRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDN9B-0000jt-6Q; Thu, 26 Sep 2019 06:21:01 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDN8y-0000jU-AR
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 06:20:50 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8Q6KjXp072253;
 Thu, 26 Sep 2019 01:20:45 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569478845;
 bh=JSnS/tIggkLJdMFOWfglNNZgTF+6FyrKfLOOfOVb6wA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=IiUXiUY1tIXNpb/gbX/DV5MCIfHzZFhukiHIJ+GwpHYJCPorpZdoBIYWYuwZV0ceF
 vtrfcxnoF6J3U0BapQG/9HuSyhYwjapWMWdkJZDU2WhoPX/dWqw1LVUPS+qwG4DbKp
 /oCEj0ySbxlkl0XuL98cZ+854zdFBVTrbsNsqnTI=
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8Q6Kjd1023812;
 Thu, 26 Sep 2019 01:20:45 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 26
 Sep 2019 01:20:37 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 26 Sep 2019 01:20:37 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8Q6Ke1t043995;
 Thu, 26 Sep 2019 01:20:43 -0500
Subject: Re: [PATCH] soc: ti: ti_sci_pm_domains: Store device id in platform
 device
To: Lokesh Vutla <lokeshvutla@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
References: <20190923033439.20070-1-lokeshvutla@ti.com>
 <ff2919a1-1330-31e2-7c96-ecfb0c727f7d@ti.com>
 <ee2df4ea-b414-8c20-9a55-fa759673806a@ti.com>
 <42e35997-24d5-22d6-28f6-63e4aeac230d@ti.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <88e0cb92-58c8-dabf-be0f-33851f2ad38c@ti.com>
Date: Thu, 26 Sep 2019 09:20:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <42e35997-24d5-22d6-28f6-63e4aeac230d@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_232048_471448_AD7AFEEA 
X-CRM114-Status: GOOD (  22.40  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [198.47.19.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjYvMDkvMjAxOSAwNjozMywgTG9rZXNoIFZ1dGxhIHdyb3RlOgo+IEhpIFRlcm8sCj4gCj4g
T24gMjQvMDkvMTkgMTA6MTUgQU0sIExva2VzaCBWdXRsYSB3cm90ZToKPj4gSGkgVGVybywKPj4K
Pj4gT24gMjMvMDkvMTkgMTI6MDcgUE0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+Pj4gT24gMjMvMDkv
MjAxOSAwNjozNCwgTG9rZXNoIFZ1dGxhIHdyb3RlOgo+Pj4+IERldmljZSBJRCB0aGF0IGlzIHBh
c3NlZCBmcm9tIHBvd2VyLWRvbWFpbnMgaXMgdXNlZCBieSBwZXJpcGhlcmFsCj4+Pj4gZHJpdmVy
cyBmb3IgY29tbXVuaWNhdGluZyB3aXRoIHN5c2Z3LiBJbnN0ZWFkIG9mIGluZGl2aWR1YWwgZHJp
dmVycwo+Pj4+IHRyYXZlcnNpbmcgcG93ZXItZG9tYWlucyBlbnRyeSBpbiBEVCBub2RlLCBzdG9y
ZSB0aGUgZGV2aWNlIElEIGluCj4+Pj4gcGxhdGZvcm1fZGV2aWNlIHNvIHRoYXQgZHJpdmVycyBj
YW4gZGlyZWN0bHkgYWNjZXNzIGl0Lgo+Pj4KPj4+IFVobSwgaXNuJ3QgdGhpcyBraW5kIG9mIHdy
b25nIHBsYWNlIHRvIGFsbG9jYXRlIHRoZSBJRD8gVGhlIHBvd2VyIGRvbWFpbgo+Pgo+PiBJIGRv
IGFncmVlIHRoYXQgdGhpcyBtaWdodCBub3QgYmUgYSByaWdodCBwbGFjZSwgYnV0IEkgY291bGRu
J3QgZmluZCBhIGJldHRlcgo+PiBwbGFjZSB0byBwb3B1bGF0ZSBpZC4gQmVsb3cgaXMgdGhlIGZs
b3cgb24gaG93IHBsYXRmb3JtX2RldmljZSBnZXRzIGNyZWF0ZWQuCj4+IG9mX3BsYXRmb3JtX2Rl
ZmF1bHRfcG9wdWxhdGVfaW5pdAo+PiAJLT5vZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRlCj4+
IAkJLT4gb2ZfcGxhdGZvcm1fcG9wdWxhdGUKPj4gCQkJLT5vZl9wbGF0Zm9ybV9idXNfY3JlYXRl
Cj4+IAkJCQktPiBvZl9wbGF0Zm9ybV9kZXZpY2VfY3JlYXRlX3BkYXRhCj4+IAkJCQkJLT4gb2Zf
ZGV2aWNlX2FsbG9jCj4+IAkJCQkJCS0+IHBsYXRmb3JtX2RldmljZV9hbGxvYygiIiwgUExBVEZP
Uk1fREVWSURfTk9ORSk7Cj4+Cj4+IEF0IHRoaXMgcG9pbnQgcGxhdGZvcm1fZGV2aWNlIGdldHMg
Y3JlYXRlZCB3aXRoIGR1bW15IGRldmljZV9pZC4gQWxzbyB0aGVyZSBhcmUKPj4gbm8gaG9va3Mg
dG8gYWRkIGN1c3RvbSBkZXZpY2VfaWRzLgo+Pgo+Pj4gc29sdXRpb24gaXRzZWxmIGlzIGEgY2xp
ZW50IGFsc28uIEluIHRoZW9yeSwgc29tZW9uZSBjb3VsZCBhY2Nlc3MgdGhlIHBkZXYtPmlkCj4+
Cj4+IE5vcGUsIHRoaXMgaXMgZG9uZSBpbiBkZXZfcG1fZG9tYWluX2F0dGFjaCB3aGljaCBpcyBj
YWxsZWQgYmVmb3JlIGRyaXZlciBwcm9iZQo+PiBpbiBwbGF0Zm9ybV9kcnZfcHJvYmUoKS4KPiAK
PiBJZiB0aGVyZSBhcmUgbm8gb2JqZWN0aW9ucywgY2FuIHRoaXMgcGF0Y2ggYmUgcGlja2VkPwoK
SSBkb24ndCB0aGluayB0aGlzIHBhdGNoIGlzIHN0aWxsIHF1aXRlIHJpZ2h0LCBhcyBpdCBpcyBj
bGVhcmx5IGEgaGFjayAKKHlvdSBtb2RpZnkgYSBwbGF0Zm9ybSBkZXZpY2UgZmllbGQgb3V0c2lk
ZSB0aGUgY2hhaW4gdGhhdCBhY3R1YWxseSAKYWxsb2NhdGVzIGl0IGFuZCB1c2VzIGl0IGZvciBz
b21lIHB1cnBvc2UuKQoKVGhlIGlzc3VlIEkgc2VlIGhlcmUgaXMgcmVhbGx5IGVhc3kgcG90ZW50
aWFsIGJyZWFrYWdlIGlmIHRoZSBwZGV2LT5pZCAKaXMgY2hhbmdlZCB0byBiZSB1c2VkIHNvbWV0
aGluZyBpbiB0aGUgT0YgcGxhdGZvcm0gZGV2aWNlIGNoYWluLiBUaGlzIApoYWNrIHdvdWxkIHRo
ZW4gYnJlYWsgYXMgaXQgaXMgY29tcGxldGVseSBUSSBLMyBzcGVjaWZpYywgYW5kIGlmIGFueSAK
ZHJpdmVycyBkZXBlbmQgb24gaXQsIHRoZXkgd291bGQgYnJlYWsgYWxzby4KClNvLCBJTUhPIGl0
IGlzIGEgTkFLIGZvciB0aGlzIHBhdGNoIGZyb20gbXkgc2lkZS4gSXQgaXMgdG9vIGhhY2tpc2gs
IGFuZCAKdGhlcmUgaXMgYSB3YXkgdG8gaGFuZGxlIHRoaXMgZnJvbSBkcml2ZXJzIGN1cnJlbnRs
eSAoeWVzLCB0aGUgCmFsdGVybmF0aXZlIGlzIGJpdCBtb3JlIHBhaW5mdWwgYnV0IGl0IGlzIGNl
cnRhaW4gdG8gd29yayBnb2luZyBmb3J3YXJkIAphbHNvLikKCi1UZXJvCgo+IAo+IFRoYW5rcyBh
bmQgcmVnYXJkcywKPiBMb2tlc2gKPiAKPj4KPj4+IGJlZm9yZSB0aGlzLiBwZGV2LT5pZCBzaG91
bGQgYmUgYXNzaWduZWQgYnkgYnVzIGRyaXZlciBzbyB0aGF0IGl0IGNhbiBiZQo+Pj4gcHJvcGVy
bHkgaGFuZGxlZCB3aXRoaW4gcGxhdGZvcm1fZGV2aWNlX2FkZC4KPj4KPj4gRFQgZG9lc24ndCBw
cm92aWRlIGFueSBzdWNoIGZhY2lsaXR5IGZvciBwb3B1bGF0aW5nIGRldmljZV9hZGQuIEkgYW0g
b3BlbiBmb3IKPj4gYW55IHN1Z2dlc3Rpb25zIDopCj4+Cj4+IFRoYW5rcyBhbmQgcmVnYXJkcywK
Pj4gTG9rZXNoCj4+Cj4+Pgo+Pj4gLVRlcm8KPj4+Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBM
b2tlc2ggVnV0bGEgPGxva2VzaHZ1dGxhQHRpLmNvbT4KPj4+PiAtLS0KPj4+PiAgwqAgZHJpdmVy
cy9zb2MvdGkvdGlfc2NpX3BtX2RvbWFpbnMuYyB8IDIgKysKPj4+PiAgwqAgMSBmaWxlIGNoYW5n
ZWQsIDIgaW5zZXJ0aW9ucygrKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3Rp
L3RpX3NjaV9wbV9kb21haW5zLmMKPj4+PiBiL2RyaXZlcnMvc29jL3RpL3RpX3NjaV9wbV9kb21h
aW5zLmMKPj4+PiBpbmRleCA4YzJhMmYyMzk4MmMuLmExMjRhYzQwOTEyNCAxMDA2NDQKPj4+PiAt
LS0gYS9kcml2ZXJzL3NvYy90aS90aV9zY2lfcG1fZG9tYWlucy5jCj4+Pj4gKysrIGIvZHJpdmVy
cy9zb2MvdGkvdGlfc2NpX3BtX2RvbWFpbnMuYwo+Pj4+IEBAIC0xMTYsNiArMTE2LDcgQEAgc3Rh
dGljIGludCB0aV9zY2lfcGRfYXR0YWNoX2RldihzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4KPj4+
PiAqZG9tYWluLAo+Pj4+ICDCoMKgwqDCoMKgIHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgcGRfYXJn
czsKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgdGlfc2NpX3BtX2RvbWFpbiAqdGlfc2NpX2dlbnBk
ID0gZ2VucGRfdG9fdGlfc2NpX3BkKGRvbWFpbik7Cj4+Pj4gIMKgwqDCoMKgwqAgY29uc3Qgc3Ry
dWN0IHRpX3NjaV9oYW5kbGUgKnRpX3NjaSA9IHRpX3NjaV9nZW5wZC0+dGlfc2NpOwo+Pj4+ICvC
oMKgwqAgc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiA9IHRvX3BsYXRmb3JtX2RldmljZShk
ZXYpOwo+Pj4+ICDCoMKgwqDCoMKgIHN0cnVjdCB0aV9zY2lfZ2VucGRfZGV2X2RhdGEgKnNjaV9k
ZXZfZGF0YTsKPj4+PiAgwqDCoMKgwqDCoCBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW5fZGF0YSAq
Z2VucGRfZGF0YTsKPj4+PiAgwqDCoMKgwqDCoCBpbnQgaWR4LCByZXQgPSAwOwo+Pj4+IEBAIC0x
MjksNiArMTMwLDcgQEAgc3RhdGljIGludCB0aV9zY2lfcGRfYXR0YWNoX2RldihzdHJ1Y3QgZ2Vu
ZXJpY19wbV9kb21haW4KPj4+PiAqZG9tYWluLAo+Pj4+ICDCoMKgwqDCoMKgwqDCoMKgwqAgcmV0
dXJuIC1FSU5WQUw7Cj4+Pj4gIMKgIMKgwqDCoMKgwqAgaWR4ID0gcGRfYXJncy5hcmdzWzBdOwo+
Pj4+ICvCoMKgwqAgcGRldi0+aWQgPSBpZHg7Cj4+Pj4gIMKgIMKgwqDCoMKgwqAgLyoKPj4+PiAg
wqDCoMKgwqDCoMKgICogQ2hlY2sgdGhlIHZhbGlkaXR5IG9mIHRoZSByZXF1ZXN0ZWQgaWR4LCBp
ZiB0aGUgaW5kZXggaXMgbm90IHZhbGlkCj4+Pj4KPj4+Cj4+PiAtLSAKPj4KPj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPj4gbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKPj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4+
IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo+PgoKLS0KVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0dSAy
MiwgMDAxODAgSGVsc2lua2kuIFktdHVubnVzL0J1c2luZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlw
YWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
