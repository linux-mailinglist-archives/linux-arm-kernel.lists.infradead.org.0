Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F8ABC122
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 06:46:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JQzCDRBAQbqjyL+67o9aX5fuE+ehG3h+Y7LjFHC6nNI=; b=BzcWukiJkNmMXT
	ZdRPd+ZrdUCddM5nuWDG6LCbdC6HmFmGAKsvNZwo7LnDCHbnACQ2smCUhOYQa1Gi9Evyq8vpjUbNq
	PQQDqfY4U8k/aRYfCPagIJVcS1qq7ttLTPUaKZqHAHXOL3FbhJtdOum6hLtxH1af7QQ3m7wPX8o26
	NDzHNF1nqA7v+NI7SMDUKv/ya5quoOlBAxTFREwbus5kutq2OAus606cpzs5OBcK3TEyWs7pF+pPs
	ALTRba9H1jQ1bkh+xy0a3XPxYkKZhidg0JrGvNXMJABZzestj0wMgMciwm6eFafYzARfxCkQyyZSf
	N9/KPp3th9XXgl2wt7ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCciQ-0008RR-0x; Tue, 24 Sep 2019 04:46:18 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCciI-0008Qy-Tc
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 04:46:12 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8O4k6Uv045498;
 Mon, 23 Sep 2019 23:46:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1569300366;
 bh=PpjY/Lxy9bSuFa3Jpi2N8qMP9moraJH7SmbdKqrHpJQ=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=u/1CwT5Oci3QoOiWLiRaxJl4BgCWQFm4krmVUeRQQzEVmTteUFpPrWxsMuss37xkp
 g2GO4jVZ5o5U/Qs4mVGzED94hH0FdXNwIjROoeVcUrdyOaYVzxecMBEj7VGCBwe5At
 qV/zn+Qc8ia0raVfiioF0rrgOs/srzaW4msuhMXg=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8O4k64q082059
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Sep 2019 23:46:06 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 23
 Sep 2019 23:46:05 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 23 Sep 2019 23:46:05 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8O4k37R052645;
 Mon, 23 Sep 2019 23:46:04 -0500
Subject: Re: [PATCH] soc: ti: ti_sci_pm_domains: Store device id in platform
 device
To: Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>, Santosh
 Shilimkar <ssantosh@kernel.org>
References: <20190923033439.20070-1-lokeshvutla@ti.com>
 <ff2919a1-1330-31e2-7c96-ecfb0c727f7d@ti.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <ee2df4ea-b414-8c20-9a55-fa759673806a@ti.com>
Date: Tue, 24 Sep 2019 10:15:15 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <ff2919a1-1330-31e2-7c96-ecfb0c727f7d@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190923_214611_064150_89EAFFDB 
X-CRM114-Status: GOOD (  18.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

SGkgVGVybywKCk9uIDIzLzA5LzE5IDEyOjA3IFBNLCBUZXJvIEtyaXN0byB3cm90ZToKPiBPbiAy
My8wOS8yMDE5IDA2OjM0LCBMb2tlc2ggVnV0bGEgd3JvdGU6Cj4+IERldmljZSBJRCB0aGF0IGlz
IHBhc3NlZCBmcm9tIHBvd2VyLWRvbWFpbnMgaXMgdXNlZCBieSBwZXJpcGhlcmFsCj4+IGRyaXZl
cnMgZm9yIGNvbW11bmljYXRpbmcgd2l0aCBzeXNmdy4gSW5zdGVhZCBvZiBpbmRpdmlkdWFsIGRy
aXZlcnMKPj4gdHJhdmVyc2luZyBwb3dlci1kb21haW5zIGVudHJ5IGluIERUIG5vZGUsIHN0b3Jl
IHRoZSBkZXZpY2UgSUQgaW4KPj4gcGxhdGZvcm1fZGV2aWNlIHNvIHRoYXQgZHJpdmVycyBjYW4g
ZGlyZWN0bHkgYWNjZXNzIGl0Lgo+IAo+IFVobSwgaXNuJ3QgdGhpcyBraW5kIG9mIHdyb25nIHBs
YWNlIHRvIGFsbG9jYXRlIHRoZSBJRD8gVGhlIHBvd2VyIGRvbWFpbgoKSSBkbyBhZ3JlZSB0aGF0
IHRoaXMgbWlnaHQgbm90IGJlIGEgcmlnaHQgcGxhY2UsIGJ1dCBJIGNvdWxkbid0IGZpbmQgYSBi
ZXR0ZXIKcGxhY2UgdG8gcG9wdWxhdGUgaWQuIEJlbG93IGlzIHRoZSBmbG93IG9uIGhvdyBwbGF0
Zm9ybV9kZXZpY2UgZ2V0cyBjcmVhdGVkLgpvZl9wbGF0Zm9ybV9kZWZhdWx0X3BvcHVsYXRlX2lu
aXQKCS0+b2ZfcGxhdGZvcm1fZGVmYXVsdF9wb3B1bGF0ZQoJCS0+IG9mX3BsYXRmb3JtX3BvcHVs
YXRlCgkJCS0+b2ZfcGxhdGZvcm1fYnVzX2NyZWF0ZQoJCQkJLT4gb2ZfcGxhdGZvcm1fZGV2aWNl
X2NyZWF0ZV9wZGF0YQoJCQkJCS0+IG9mX2RldmljZV9hbGxvYwoJCQkJCQktPiBwbGF0Zm9ybV9k
ZXZpY2VfYWxsb2MoIiIsIFBMQVRGT1JNX0RFVklEX05PTkUpOwoKQXQgdGhpcyBwb2ludCBwbGF0
Zm9ybV9kZXZpY2UgZ2V0cyBjcmVhdGVkIHdpdGggZHVtbXkgZGV2aWNlX2lkLiBBbHNvIHRoZXJl
IGFyZQpubyBob29rcyB0byBhZGQgY3VzdG9tIGRldmljZV9pZHMuCgo+IHNvbHV0aW9uIGl0c2Vs
ZiBpcyBhIGNsaWVudCBhbHNvLiBJbiB0aGVvcnksIHNvbWVvbmUgY291bGQgYWNjZXNzIHRoZSBw
ZGV2LT5pZAoKTm9wZSwgdGhpcyBpcyBkb25lIGluIGRldl9wbV9kb21haW5fYXR0YWNoIHdoaWNo
IGlzIGNhbGxlZCBiZWZvcmUgZHJpdmVyIHByb2JlCmluIHBsYXRmb3JtX2Rydl9wcm9iZSgpLgoK
PiBiZWZvcmUgdGhpcy4gcGRldi0+aWQgc2hvdWxkIGJlIGFzc2lnbmVkIGJ5IGJ1cyBkcml2ZXIg
c28gdGhhdCBpdCBjYW4gYmUKPiBwcm9wZXJseSBoYW5kbGVkIHdpdGhpbiBwbGF0Zm9ybV9kZXZp
Y2VfYWRkLgoKRFQgZG9lc24ndCBwcm92aWRlIGFueSBzdWNoIGZhY2lsaXR5IGZvciBwb3B1bGF0
aW5nIGRldmljZV9hZGQuIEkgYW0gb3BlbiBmb3IKYW55IHN1Z2dlc3Rpb25zIDopCgpUaGFua3Mg
YW5kIHJlZ2FyZHMsCkxva2VzaAoKPiAKPiAtVGVybwo+IAo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBM
b2tlc2ggVnV0bGEgPGxva2VzaHZ1dGxhQHRpLmNvbT4KPj4gLS0tCj4+IMKgIGRyaXZlcnMvc29j
L3RpL3RpX3NjaV9wbV9kb21haW5zLmMgfCAyICsrCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKykKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvc29jL3RpL3RpX3NjaV9wbV9k
b21haW5zLmMKPj4gYi9kcml2ZXJzL3NvYy90aS90aV9zY2lfcG1fZG9tYWlucy5jCj4+IGluZGV4
IDhjMmEyZjIzOTgyYy4uYTEyNGFjNDA5MTI0IDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3NvYy90
aS90aV9zY2lfcG1fZG9tYWlucy5jCj4+ICsrKyBiL2RyaXZlcnMvc29jL3RpL3RpX3NjaV9wbV9k
b21haW5zLmMKPj4gQEAgLTExNiw2ICsxMTYsNyBAQCBzdGF0aWMgaW50IHRpX3NjaV9wZF9hdHRh
Y2hfZGV2KHN0cnVjdCBnZW5lcmljX3BtX2RvbWFpbgo+PiAqZG9tYWluLAo+PiDCoMKgwqDCoMKg
IHN0cnVjdCBvZl9waGFuZGxlX2FyZ3MgcGRfYXJnczsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdGlf
c2NpX3BtX2RvbWFpbiAqdGlfc2NpX2dlbnBkID0gZ2VucGRfdG9fdGlfc2NpX3BkKGRvbWFpbik7
Cj4+IMKgwqDCoMKgwqAgY29uc3Qgc3RydWN0IHRpX3NjaV9oYW5kbGUgKnRpX3NjaSA9IHRpX3Nj
aV9nZW5wZC0+dGlfc2NpOwo+PiArwqDCoMKgIHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYg
PSB0b19wbGF0Zm9ybV9kZXZpY2UoZGV2KTsKPj4gwqDCoMKgwqDCoCBzdHJ1Y3QgdGlfc2NpX2dl
bnBkX2Rldl9kYXRhICpzY2lfZGV2X2RhdGE7Cj4+IMKgwqDCoMKgwqAgc3RydWN0IGdlbmVyaWNf
cG1fZG9tYWluX2RhdGEgKmdlbnBkX2RhdGE7Cj4+IMKgwqDCoMKgwqAgaW50IGlkeCwgcmV0ID0g
MDsKPj4gQEAgLTEyOSw2ICsxMzAsNyBAQCBzdGF0aWMgaW50IHRpX3NjaV9wZF9hdHRhY2hfZGV2
KHN0cnVjdCBnZW5lcmljX3BtX2RvbWFpbgo+PiAqZG9tYWluLAo+PiDCoMKgwqDCoMKgwqDCoMKg
wqAgcmV0dXJuIC1FSU5WQUw7Cj4+IMKgIMKgwqDCoMKgwqAgaWR4ID0gcGRfYXJncy5hcmdzWzBd
Owo+PiArwqDCoMKgIHBkZXYtPmlkID0gaWR4Owo+PiDCoCDCoMKgwqDCoMKgIC8qCj4+IMKgwqDC
oMKgwqDCoCAqIENoZWNrIHRoZSB2YWxpZGl0eSBvZiB0aGUgcmVxdWVzdGVkIGlkeCwgaWYgdGhl
IGluZGV4IGlzIG5vdCB2YWxpZAo+Pgo+IAo+IC0tIAo+IFRleGFzIEluc3RydW1lbnRzIEZpbmxh
bmQgT3ksIFBvcmtrYWxhbmthdHUgMjIsIDAwMTgwIEhlbHNpbmtpLgo+IFktdHVubnVzL0J1c2lu
ZXNzIElEOiAwNjE1NTIxLTQuIEtvdGlwYWlra2EvRG9taWNpbGU6IEhlbHNpbmtpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVs
IG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
