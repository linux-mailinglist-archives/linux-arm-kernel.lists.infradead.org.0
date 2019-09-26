Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6737FBEAE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 05:34:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DKRcGUumeeSDF80ZwUn+a4frt6p9vwdCHuva+6FXklA=; b=mPCgqteuroaftD
	1u06vDk+obud1dQsMHqQ+4Gi8u51AJNDkPXt/xi93Ru2L3csaWC6d2t28z4s2EDVzNN2/Trs6Zh9A
	60Ma7jZP2eU6B40D2vHN5K0qHyhbmfkBnV70f9VIKF5OHrVOO2RU7nS6rc5xkAgvO7kowQXUWNbz5
	XHML8umu+sx953UG9Em0n+I2aZVuj9FNuibv05yVvNa5pmt0UBb+WPHoqN3E7Atr7FvJ189PcJLQj
	Xh3hmQ2XvwK+B9Lz60ZDbRQuhTm2YO20fJLRmd/3uCZz7Fih40Rs31CL6wCB93PwrJ5Z3q3vmdgmj
	BEc20rSd5Z18Texc7tAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDKYE-0006LV-NS; Thu, 26 Sep 2019 03:34:42 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDKXy-0006L6-5d
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 03:34:27 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8Q3YGGY035538;
 Wed, 25 Sep 2019 22:34:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569468856;
 bh=eEBA9M28g4Rs84WnW+Zv1EMcEoEdKCZsaf1AI5X6A7w=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=k8byF05uL0mibVr6hkDLPO9F8dhRlrzB2XK+11v0lHwhelP2q8TTDvbnfTMjKD/Nq
 3asaTpXVoqWzN3HVEOjNVe2Ddf3LKFdOsXwvDM7BUSvEMnyhAZzeLXlkP8AQ0f7XEF
 8qpPK5tLbo4IANonUZAPEMFhffvz7D761yOsxCN0=
Received: from DFLE107.ent.ti.com (dfle107.ent.ti.com [10.64.6.28])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8Q3YFCx002065
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 25 Sep 2019 22:34:15 -0500
Received: from DFLE106.ent.ti.com (10.64.6.27) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 25
 Sep 2019 22:34:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 25 Sep 2019 22:34:15 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8Q3YDHc012345;
 Wed, 25 Sep 2019 22:34:14 -0500
Subject: Re: [PATCH] soc: ti: ti_sci_pm_domains: Store device id in platform
 device
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
References: <20190923033439.20070-1-lokeshvutla@ti.com>
 <ff2919a1-1330-31e2-7c96-ecfb0c727f7d@ti.com>
 <ee2df4ea-b414-8c20-9a55-fa759673806a@ti.com>
Message-ID: <42e35997-24d5-22d6-28f6-63e4aeac230d@ti.com>
Date: Thu, 26 Sep 2019 09:03:24 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <ee2df4ea-b414-8c20-9a55-fa759673806a@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_203426_358144_BFFEB986 
X-CRM114-Status: GOOD (  20.68  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGVybywKCk9uIDI0LzA5LzE5IDEwOjE1IEFNLCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4gSGkg
VGVybywKPiAKPiBPbiAyMy8wOS8xOSAxMjowNyBQTSwgVGVybyBLcmlzdG8gd3JvdGU6Cj4+IE9u
IDIzLzA5LzIwMTkgMDY6MzQsIExva2VzaCBWdXRsYSB3cm90ZToKPj4+IERldmljZSBJRCB0aGF0
IGlzIHBhc3NlZCBmcm9tIHBvd2VyLWRvbWFpbnMgaXMgdXNlZCBieSBwZXJpcGhlcmFsCj4+PiBk
cml2ZXJzIGZvciBjb21tdW5pY2F0aW5nIHdpdGggc3lzZncuIEluc3RlYWQgb2YgaW5kaXZpZHVh
bCBkcml2ZXJzCj4+PiB0cmF2ZXJzaW5nIHBvd2VyLWRvbWFpbnMgZW50cnkgaW4gRFQgbm9kZSwg
c3RvcmUgdGhlIGRldmljZSBJRCBpbgo+Pj4gcGxhdGZvcm1fZGV2aWNlIHNvIHRoYXQgZHJpdmVy
cyBjYW4gZGlyZWN0bHkgYWNjZXNzIGl0Lgo+Pgo+PiBVaG0sIGlzbid0IHRoaXMga2luZCBvZiB3
cm9uZyBwbGFjZSB0byBhbGxvY2F0ZSB0aGUgSUQ/IFRoZSBwb3dlciBkb21haW4KPiAKPiBJIGRv
IGFncmVlIHRoYXQgdGhpcyBtaWdodCBub3QgYmUgYSByaWdodCBwbGFjZSwgYnV0IEkgY291bGRu
J3QgZmluZCBhIGJldHRlcgo+IHBsYWNlIHRvIHBvcHVsYXRlIGlkLiBCZWxvdyBpcyB0aGUgZmxv
dyBvbiBob3cgcGxhdGZvcm1fZGV2aWNlIGdldHMgY3JlYXRlZC4KPiBvZl9wbGF0Zm9ybV9kZWZh
dWx0X3BvcHVsYXRlX2luaXQKPiAJLT5vZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRlCj4gCQkt
PiBvZl9wbGF0Zm9ybV9wb3B1bGF0ZQo+IAkJCS0+b2ZfcGxhdGZvcm1fYnVzX2NyZWF0ZQo+IAkJ
CQktPiBvZl9wbGF0Zm9ybV9kZXZpY2VfY3JlYXRlX3BkYXRhCj4gCQkJCQktPiBvZl9kZXZpY2Vf
YWxsb2MKPiAJCQkJCQktPiBwbGF0Zm9ybV9kZXZpY2VfYWxsb2MoIiIsIFBMQVRGT1JNX0RFVklE
X05PTkUpOwo+IAo+IEF0IHRoaXMgcG9pbnQgcGxhdGZvcm1fZGV2aWNlIGdldHMgY3JlYXRlZCB3
aXRoIGR1bW15IGRldmljZV9pZC4gQWxzbyB0aGVyZSBhcmUKPiBubyBob29rcyB0byBhZGQgY3Vz
dG9tIGRldmljZV9pZHMuCj4gCj4+IHNvbHV0aW9uIGl0c2VsZiBpcyBhIGNsaWVudCBhbHNvLiBJ
biB0aGVvcnksIHNvbWVvbmUgY291bGQgYWNjZXNzIHRoZSBwZGV2LT5pZAo+IAo+IE5vcGUsIHRo
aXMgaXMgZG9uZSBpbiBkZXZfcG1fZG9tYWluX2F0dGFjaCB3aGljaCBpcyBjYWxsZWQgYmVmb3Jl
IGRyaXZlciBwcm9iZQo+IGluIHBsYXRmb3JtX2Rydl9wcm9iZSgpLgoKSWYgdGhlcmUgYXJlIG5v
IG9iamVjdGlvbnMsIGNhbiB0aGlzIHBhdGNoIGJlIHBpY2tlZD8KClRoYW5rcyBhbmQgcmVnYXJk
cywKTG9rZXNoCgo+IAo+PiBiZWZvcmUgdGhpcy4gcGRldi0+aWQgc2hvdWxkIGJlIGFzc2lnbmVk
IGJ5IGJ1cyBkcml2ZXIgc28gdGhhdCBpdCBjYW4gYmUKPj4gcHJvcGVybHkgaGFuZGxlZCB3aXRo
aW4gcGxhdGZvcm1fZGV2aWNlX2FkZC4KPiAKPiBEVCBkb2Vzbid0IHByb3ZpZGUgYW55IHN1Y2gg
ZmFjaWxpdHkgZm9yIHBvcHVsYXRpbmcgZGV2aWNlX2FkZC4gSSBhbSBvcGVuIGZvcgo+IGFueSBz
dWdnZXN0aW9ucyA6KQo+IAo+IFRoYW5rcyBhbmQgcmVnYXJkcywKPiBMb2tlc2gKPiAKPj4KPj4g
LVRlcm8KPj4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBMb2tlc2ggVnV0bGEgPGxva2VzaHZ1dGxh
QHRpLmNvbT4KPj4+IC0tLQo+Pj4gwqAgZHJpdmVycy9zb2MvdGkvdGlfc2NpX3BtX2RvbWFpbnMu
YyB8IDIgKysKPj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGluc2VydGlvbnMoKykKPj4+Cj4+PiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9zb2MvdGkvdGlfc2NpX3BtX2RvbWFpbnMuYwo+Pj4gYi9kcml2
ZXJzL3NvYy90aS90aV9zY2lfcG1fZG9tYWlucy5jCj4+PiBpbmRleCA4YzJhMmYyMzk4MmMuLmEx
MjRhYzQwOTEyNCAxMDA2NDQKPj4+IC0tLSBhL2RyaXZlcnMvc29jL3RpL3RpX3NjaV9wbV9kb21h
aW5zLmMKPj4+ICsrKyBiL2RyaXZlcnMvc29jL3RpL3RpX3NjaV9wbV9kb21haW5zLmMKPj4+IEBA
IC0xMTYsNiArMTE2LDcgQEAgc3RhdGljIGludCB0aV9zY2lfcGRfYXR0YWNoX2RldihzdHJ1Y3Qg
Z2VuZXJpY19wbV9kb21haW4KPj4+ICpkb21haW4sCj4+PiDCoMKgwqDCoMKgIHN0cnVjdCBvZl9w
aGFuZGxlX2FyZ3MgcGRfYXJnczsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHRpX3NjaV9wbV9kb21h
aW4gKnRpX3NjaV9nZW5wZCA9IGdlbnBkX3RvX3RpX3NjaV9wZChkb21haW4pOwo+Pj4gwqDCoMKg
wqDCoCBjb25zdCBzdHJ1Y3QgdGlfc2NpX2hhbmRsZSAqdGlfc2NpID0gdGlfc2NpX2dlbnBkLT50
aV9zY2k7Cj4+PiArwqDCoMKgIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYgPSB0b19wbGF0
Zm9ybV9kZXZpY2UoZGV2KTsKPj4+IMKgwqDCoMKgwqAgc3RydWN0IHRpX3NjaV9nZW5wZF9kZXZf
ZGF0YSAqc2NpX2Rldl9kYXRhOwo+Pj4gwqDCoMKgwqDCoCBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21h
aW5fZGF0YSAqZ2VucGRfZGF0YTsKPj4+IMKgwqDCoMKgwqAgaW50IGlkeCwgcmV0ID0gMDsKPj4+
IEBAIC0xMjksNiArMTMwLDcgQEAgc3RhdGljIGludCB0aV9zY2lfcGRfYXR0YWNoX2RldihzdHJ1
Y3QgZ2VuZXJpY19wbV9kb21haW4KPj4+ICpkb21haW4sCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqAg
cmV0dXJuIC1FSU5WQUw7Cj4+PiDCoCDCoMKgwqDCoMKgIGlkeCA9IHBkX2FyZ3MuYXJnc1swXTsK
Pj4+ICvCoMKgwqAgcGRldi0+aWQgPSBpZHg7Cj4+PiDCoCDCoMKgwqDCoMKgIC8qCj4+PiDCoMKg
wqDCoMKgwqAgKiBDaGVjayB0aGUgdmFsaWRpdHkgb2YgdGhlIHJlcXVlc3RlZCBpZHgsIGlmIHRo
ZSBpbmRleCBpcyBub3QgdmFsaWQKPj4+Cj4+Cj4+IC0tIAo+PiBUZXhhcyBJbnN0cnVtZW50cyBG
aW5sYW5kIE95LCBQb3Jra2FsYW5rYXR1IDIyLCAwMDE4MCBIZWxzaW5raS4KPj4gWS10dW5udXMv
QnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4gS290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPiAK
PiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRl
YWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
