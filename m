Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 529B66C137
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 20:58:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XEUjNodWWYgc475KHhsxYcU1VMSy5R+IR4k+JRZ5nHo=; b=CzEt22GhtQ0O8z
	fsK1I4nlMNW2Pfy9P2z673A2E7xnZd40bjDqjQEQJUi3rD0uWHEzujpeEMlyAILJpx0SMswhk7Yhm
	8UulydBavBB0XhOVMmjODzzvgYsTIVOregIuJh4cxzrgbyC5rR8aNi3yx2LC162kr9f/DQFV8w/c3
	uhhhNkAarO+q2aLbMh56UbI1SZHqrPU1faAb5t7tRVIDq2OTcUz3HFCLcgFOr7T5dDOQglPpt4yhK
	9Ivt8El4+OznCGDGc866wEmrgLcj168XPFaIc1yrJGc1L3a9yNwgj9sQAwlyB/eOABtf938flVKpI
	2GnuFB5IC8tI8zeZBpxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnp81-0001r9-Dj; Wed, 17 Jul 2019 18:58:13 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnp7X-0001qX-W8
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 18:57:45 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6HIuQxQ105360;
 Wed, 17 Jul 2019 13:56:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563389786;
 bh=9xrHanN7wF+YEAMH0DerryN6ZokQ2ri0VkKUaA0rV4I=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=cBBnA7aTZ4VPZfscvEOQuCnHvT5AP+s+fEiBczChHtQnDNvh6ExpY3XYSlB+KJJDM
 og/XKQmFHPFJwsScGRCE6o/xRlpRQQErIhx9K4b/QcIVd3CUNfIsWAWYeg3kXvQYgj
 SyX5mwxHgxece3D+jXC6bEfCDkcGrwvQYnHD6gK0=
Received: from DLEE111.ent.ti.com (dlee111.ent.ti.com [157.170.170.22])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6HIuPGB066992
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 17 Jul 2019 13:56:25 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE111.ent.ti.com
 (157.170.170.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Wed, 17
 Jul 2019 13:56:25 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Wed, 17 Jul 2019 13:56:25 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6HIuP8I051629;
 Wed, 17 Jul 2019 13:56:25 -0500
Subject: Re: [PATCH 2/6] irqchip/irq-pruss-intc: Add a PRUSS irqchip driver
 for PRUSS interrupts
To: David Lechner <david@lechnology.com>, Marc Zyngier <marc.zyngier@arm.com>, 
 Rob Herring <robh+dt@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-3-s-anna@ti.com>
 <3d91800b-e858-8c73-5ea8-e99e5ea30e8e@lechnology.com>
 <54e871a8-dfa4-f65b-5869-d1661144cbf0@ti.com>
 <5241ecb9-4ab2-b01c-367c-38c554c056c4@lechnology.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <0c81706f-3a86-8e84-312a-5001e34fc5a2@ti.com>
Date: Wed, 17 Jul 2019 13:56:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <5241ecb9-4ab2-b01c-367c-38c554c056c4@lechnology.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_115744_143263_F6FECC3F 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Grygorii Strashko <grygorii.strashko@ti.com>,
 Tony Lindgren <tony@atomide.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-kernel@vger.kernel.org, "Andrew F. Davis" <afd@ti.com>,
 Lokesh Vutla <lokeshvutla@ti.com>, Murali Karicheri <m-karicheri2@ti.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gNy8xNy8xOSAxMjoyMSBQTSwgRGF2aWQgTGVjaG5lciB3cm90ZToKPiBPbiA3LzE2LzE5IDEy
OjIxIFBNLCBTdW1hbiBBbm5hIHdyb3RlOgo+Pj4+ICtzdGF0aWMgaW50IHBydXNzX2ludGNfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPj4+PiArewo+Pj4+ICvCoMKgwqAgc3Rh
dGljIGNvbnN0IGNoYXIgKiBjb25zdCBpcnFfbmFtZXNbXSA9IHsKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgICJob3N0MCIsICJob3N0MSIsICJob3N0MiIsICJob3N0MyIsCj4+
Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaG9zdDQiLCAiaG9zdDUiLCAiaG9z
dDYiLCAiaG9zdDciLCB9Owo+Pj4+ICvCoMKgwqAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBkZXYt
PmRldjsKPj4+PiArwqDCoMKgIHN0cnVjdCBwcnVzc19pbnRjICppbnRjOwo+Pj4+ICvCoMKgwqAg
c3RydWN0IHJlc291cmNlICpyZXM7Cj4+Pj4gK8KgwqDCoCBzdHJ1Y3QgaXJxX2NoaXAgKmlycWNo
aXA7Cj4+Pj4gK8KgwqDCoCBpbnQgaSwgaXJxOwo+Pj4+ICsKPj4+PiArwqDCoMKgIGludGMgPSBk
ZXZtX2t6YWxsb2MoZGV2LCBzaXplb2YoKmludGMpLCBHRlBfS0VSTkVMKTsKPj4+PiArwqDCoMKg
IGlmICghaW50YykKPj4+PiArwqDCoMKgwqDCoMKgwqAgcmV0dXJuIC1FTk9NRU07Cj4+Pj4gK8Kg
wqDCoCBwbGF0Zm9ybV9zZXRfZHJ2ZGF0YShwZGV2LCBpbnRjKTsKPj4+PiArCj4+Pj4gK8KgwqDC
oCByZXMgPSBwbGF0Zm9ybV9nZXRfcmVzb3VyY2UocGRldiwgSU9SRVNPVVJDRV9NRU0sIDApOwo+
Pj4+ICvCoMKgwqAgaW50Yy0+YmFzZSA9IGRldm1faW9yZW1hcF9yZXNvdXJjZShkZXYsIHJlcyk7
Cj4+Pj4gK8KgwqDCoCBpZiAoSVNfRVJSKGludGMtPmJhc2UpKSB7Cj4+Pj4gK8KgwqDCoMKgwqDC
oMKgIGRldl9lcnIoZGV2LCAiZmFpbGVkIHRvIHBhcnNlIGFuZCBtYXAgaW50YyBtZW1vcnkKPj4+
PiByZXNvdXJjZVxuIik7Cj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVybiBQVFJfRVJSKGludGMt
PmJhc2UpOwo+Pj4+ICvCoMKgwqAgfQo+Pj4+ICsKPj4+PiArwqDCoMKgIGRldl9kYmcoZGV2LCAi
aW50YyBtZW1vcnk6IHBhICVwYSBzaXplIDB4JXp4IHZhICVwS1xuIiwKPj4+PiAmcmVzLT5zdGFy
dCwKPj4+PiArwqDCoMKgwqDCoMKgwqAgKHNpemVfdClyZXNvdXJjZV9zaXplKHJlcyksIGludGMt
PmJhc2UpOwo+Pj4+ICsKPj4+PiArwqDCoMKgIG11dGV4X2luaXQoJmludGMtPmxvY2spOwo+Pj4+
ICsKPj4+PiArwqDCoMKgIHBydXNzX2ludGNfaW5pdChpbnRjKTsKPj4+PiArCj4+Pj4gK8KgwqDC
oCBpcnFjaGlwID0gZGV2bV9remFsbG9jKGRldiwgc2l6ZW9mKCppcnFjaGlwKSwgR0ZQX0tFUk5F
TCk7Cj4+Pj4gK8KgwqDCoCBpZiAoIWlycWNoaXApCj4+Pj4gK8KgwqDCoMKgwqDCoMKgIHJldHVy
biAtRU5PTUVNOwo+Pj4+ICsKPj4+PiArwqDCoMKgIGlycWNoaXAtPmlycV9hY2sgPSBwcnVzc19p
bnRjX2lycV9hY2s7Cj4+Pj4gK8KgwqDCoCBpcnFjaGlwLT5pcnFfbWFzayA9IHBydXNzX2ludGNf
aXJxX21hc2s7Cj4+Pj4gK8KgwqDCoCBpcnFjaGlwLT5pcnFfdW5tYXNrID0gcHJ1c3NfaW50Y19p
cnFfdW5tYXNrOwo+Pj4+ICvCoMKgwqAgaXJxY2hpcC0+aXJxX3JldHJpZ2dlciA9IHBydXNzX2lu
dGNfaXJxX3JldHJpZ2dlcjsKPj4+PiArwqDCoMKgIGlycWNoaXAtPmlycV9yZXF1ZXN0X3Jlc291
cmNlcyA9IHBydXNzX2ludGNfaXJxX3JlcXJlczsKPj4+PiArwqDCoMKgIGlycWNoaXAtPmlycV9y
ZWxlYXNlX3Jlc291cmNlcyA9IHBydXNzX2ludGNfaXJxX3JlbHJlczsKPj4+PiArwqDCoMKgIGly
cWNoaXAtPm5hbWUgPSBkZXZfbmFtZShkZXYpOwo+Pj4KPj4+IFNob3VsZCB3ZSBhbHNvIHNldCBg
aXJxY2hpcC0+cGFyZW50X2RldmljZSA9IGRldjtgIGhlcmU/Cj4+Pgo+Pj4gSSB0cmllZCBpdCBh
bmQgaGFkIHRvIGFkZCBwbSBydW50aW1lIHN0dWZmIGFzIHdlbGwsIG90aGVyd2lzZQo+Pj4gcmVx
dWVzdGluZyBpcnFzIHdvdWxkIGZhaWwuCj4+Cj4+IEkgaGF2ZW4ndCBzZWVuIGFueSBkdXJpbmcg
bXkgbG9jYWwgdGVzdGluZy4gV2hhdCBzb3J0IG9mIGZhaWx1cmUgYXJlIHlvdQo+PiBzZWVpbmc/
Cj4+Cj4+IFRoZSBjbG9ja2luZyBmb3IgdGhlIG92ZXJhbGwgUFJVU1MgbW9kdWxlIHdpbGwgYmUg
aGFuZGxlZCBpbiBlaXRoZXIgdGhlCj4+IHRpLXN5c2MgZHJpdmVyIGZvciBPTUFQIFNvQ3Mgb3Ig
aW4gdGhlIHBydXNzIHBsYXRmb3JtIGRyaXZlci4KPj4KPiBJIHdhcyBnZXR0aW5nIC1FQUNDRVNT
IGJ1YmJsaW5nIHVwIGZyb20gcnBtX3Jlc3VtZSgpIGluIGRyaXZlcnMvYmFzZS8KPiBwb3dlci9y
dW50aW1lLmMuIEl0IHdhcyBwcm9iYWJseSBhIG1peCBvZiBob3cgSSBzZXQgdXAgdGhlIGRldmlj
ZSB0cmVlCj4gYW5kIHRoZSBkdW1teSBQUlVTUyBidXMgZHJpdmVyIEkgbWFkZS4KPiAKPiBJJ20g
c3VyZSBpdCB3aWxsIGJlIGZpbmUgd2l0aCBhIHByb3BlciBQUlVTUyBwbGF0Zm9ybSBkcml2ZXIu
CgpZZWFoLCBvay4gWW91IGp1c3QgbmVlZCB0byBoYXZlIHRoZSBwb3dlci1kb21haW5zIHByb3Bl
cnR5IGFkZGVkIGluIHRoZQpwcnVzcyBub2RlLCBhbmQgdGhlIHBtX3J1bnRpbWUgY2FsbHMgaW4g
dGhlIHBydXNzIHBsYXRmb3JtIGRyaXZlciB3aGljaAphcmUgbWlzc2luZyBpbiBSb2dlcidzIHNl
cmllcy4KCkkgaGF2ZSB0aGUgZm9sbG93aW5nIGxpbmUgb24gbXkgZGE4NTAgcHJ1c3Mgbm9kZS4K
cG93ZXItZG9tYWlucyA9IDwmcHNjMCAxMz47CgpyZWdhcmRzClN1bWFuCgoKX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWls
aW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
