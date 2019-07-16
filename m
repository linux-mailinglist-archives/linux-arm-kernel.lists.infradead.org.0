Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9EAF6AD69
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 19:09:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaBOni5UG6WqC6Gv+JshC18rIdMngYXAZz/0/fM5iLI=; b=tDt4lYoeHtZYGn
	+76FmTYGGYTHAi10+vZc+PIQAZo7Ish9zR4+g3vhEZUzmc/zoxmafzwL8Ffma0MChrBfU8uL4bmRs
	zJkELkHoYYxLs6+CUZaBNHlf3cS64qzGRF/oln7iPNGkkD4s+K+gWqiGktGcdppagbbcP7FcVsMRI
	kNeI4Chh5p0yvGUM5t0XQMQ+iz5SlgZbz5X59hVLVuV1d2kNrBcSwNq0SB7d2qGvsmJg2PdYZa2ZK
	zmBAzEZH13hOUNzbp9QvnH0R7p59SRdeuMJ8xs4iKJbJQ4SzSmLr0G+Z+472CUlTS4c/Tux4j880Z
	vPlGwhcbkHtRShG1Y9DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnQxJ-0001vt-Ry; Tue, 16 Jul 2019 17:09:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnQx5-0001vC-Qj
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 17:09:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6GH7wGu022595;
 Tue, 16 Jul 2019 12:07:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563296879;
 bh=VQ/fp5ABUyt0fOaHGKlhXyBUzQD3cI800FDzOaTcw8o=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=yd5g/CALb31GGT87CeoGnogbhZ/u8y5VHXCC2ySvjip0C0JxwGiCfWx5k3o6XuSsq
 nJ/1uakbglW4rgoUvz+E3GC2qf+LEKFIrzkBmVEiv8RD2yhCwHGLcsJwFGowMwGhXz
 EC4HfAzbmWLuC5Nwe0BqmE0yyr2DA0Dglgg8Cjqg=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6GH7w4v032498
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jul 2019 12:07:58 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 16
 Jul 2019 12:07:58 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 16 Jul 2019 12:07:58 -0500
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6GH7wZu122924;
 Tue, 16 Jul 2019 12:07:58 -0500
Subject: Re: [PATCH 1/6] dt-bindings: irqchip: Add PRUSS interrupt controller
 bindings
To: David Lechner <david@lechnology.com>, "Andrew F. Davis" <afd@ti.com>, Marc
 Zyngier <marc.zyngier@arm.com>, Rob Herring <robh+dt@kernel.org>, Thomas
 Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>
References: <20190708035243.12170-1-s-anna@ti.com>
 <20190708035243.12170-2-s-anna@ti.com>
 <b67e8ce6-a291-ce4c-9972-b7fc7cd08bb4@ti.com>
 <53868885-a78d-448a-1f2a-03a16251d028@ti.com>
 <c3f0061f-22b0-c281-b8ff-4a2cb7e91aba@lechnology.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <2eb76f94-3d01-2620-89a0-207a4084be1b@ti.com>
Date: Tue, 16 Jul 2019 12:07:58 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <c3f0061f-22b0-c281-b8ff-4a2cb7e91aba@lechnology.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_100919_995780_33989F5D 
X-CRM114-Status: GOOD (  29.09  )
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
 linux-kernel@vger.kernel.org, Lokesh Vutla <lokeshvutla@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgRGF2aWQsCgpPbiA3LzEwLzE5IDEyOjA4IFBNLCBEYXZpZCBMZWNobmVyIHdyb3RlOgo+IAo+
Pj4+ICstIGludGVycnVwdHPCoMKgwqDCoMKgwqDCoMKgwqDCoCA6IGFsbCB0aGUgaW50ZXJydXB0
cyBnZW5lcmF0ZWQgdG93YXJkcyB0aGUKPj4+PiBtYWluIGhvc3QKPj4+PiArwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHByb2Nlc3NvciBpbiB0aGUgU29D
LiBUaGUgZm9ybWF0IGRlcGVuZHMKPj4+PiBvbiB0aGUKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGludGVycnVwdCBzcGVjaWZpZXIgZm9yIHRo
ZSBwYXJ0aWN1bGFyCj4+Pj4gU29DJ3MgQVJNIEdJQwo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcGFyZW50IGludGVycnVwdCBjb250cm9sbGVy
LiBBIHNoYXJlZAo+Pj4+IGludGVycnVwdCBjYW4KPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGJlIHNraXBwZWQgaWYgdGhlIGRlc2lyZWQgZGVz
dGluYXRpb24gYW5kCj4+Pj4gdXNhZ2UgaXMgYnkKPj4+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIGEgZGlmZmVyZW50IHByb2Nlc3Nvci9kZXZpY2Uu
Cj4+Pj4gKy0gaW50ZXJydXB0LW5hbWVzwqDCoMKgwqDCoCA6IHNob3VsZCB1c2Ugb25lIG9mIHRo
ZSBmb2xsb3dpbmcgbmFtZXMgZm9yCj4+Pj4gZWFjaCB2YWxpZAo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaW50ZXJydXB0IGNvbm5lY3RlZCB0
byBBUk0gR0lDLCB0aGUgbmFtZQo+Pj4+IHNob3VsZCBtYXRjaAo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgdGhlIGNvcnJlc3BvbmRpbmcgaG9z
dCBpbnRlcnJ1cHQgbnVtYmVyLAo+Pj4+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaG9zdDAiLCAiaG9zdDEiLCAiaG9zdDIiLCAiaG9z
dDMiLAo+Pj4+ICJob3N0NCIsCj4+Pj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgICJob3N0NSIsICJob3N0NiIgb3IgImhvc3Q3Igo+Pj4+
ICstIGludGVycnVwdC1jb250cm9sbGVyIDogbWFyayB0aGlzIG5vZGUgYXMgYW4gaW50ZXJydXB0
IGNvbnRyb2xsZXIKPj4+PiArLSAjaW50ZXJydXB0LWNlbGxzwqDCoMKgwqAgOiBzaG91bGQgYmUg
MS4gQ2xpZW50IHVzZXJzIHNoYWxsIHVzZSB0aGUKPj4+PiBQUlUgU3lzdGVtCj4+Pj4gK8KgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBldmVudCBudW1iZXIg
KHRoZSBpbnRlcnJ1cHQgc291cmNlIHRoYXQKPj4+PiB0aGUgY2xpZW50Cj4+Pj4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpcyBpbnRlcmVzdGVkIGlu
KSBhcyB0aGUgdmFsdWUgb2YgdGhlCj4+Pj4gaW50ZXJydXB0cwo+Pj4+ICvCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgcHJvcGVydHkgaW4gdGhlaXIgbm9k
ZQo+Pj4+ICsKPj4+PiArT3B0aW9uYWwgUHJvcGVydGllczoKPj4+PiArLS0tLS0tLS0tLS0tLS0t
LS0tLS0KPj4+PiArVGhlIGZvbGxvd2luZyBwcm9wZXJ0aWVzIGFyZSBfcmVxdWlyZWRfIG9ubHkg
Zm9yIHNvbWUgU29Dcy4gSWYgbm9uZQo+Pj4+IG9mIHRoZSBiZWxvdwo+Pj4+ICtwcm9wZXJ0aWVz
IGFyZSBkZWZpbmVkLCBpdCBpbXBsaWVzIHRoYXQgYWxsIHRoZSBob3N0IGludGVycnVwdHMgMgo+
Pj4+IHRocm91Z2ggOSBhcmUKPj4+PiArY29ubmVjdGVkIGV4Y2x1c2l2ZWx5IHRvIHRoZSBBUk0g
R0lDLgo+Pj4+ICsKPj4+PiArLSB0aSxpcnFzLXJlc2VydmVkwqDCoMKgwqAgOiBhbiBhcnJheSBv
ZiA4LWJpdCBlbGVtZW50cyBvZiBob3N0Cj4+Pj4gaW50ZXJydXB0cyBiZXR3ZWVuCj4+Pj4gK8Kg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAwIGFuZCA3IChj
b3JyZXNwb25kaW5nIHRvIFBSVVNTIElOVEMKPj4+PiBvdXRwdXQgaW50ZXJydXB0cwo+Pj4+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgMiB0aHJvdWdo
IDkpIHRoYXQgYXJlIG5vdCBjb25uZWN0ZWQgdG8gdGhlCj4+Pj4gQVJNIEdJQy4KPj4+Cj4+PiBU
aGUgcmVhc29uIGZvciAwLTcgbWFwcGluZyB0byAyLTkgaXMgbm90IGluc3RhbnRseSBjbGVhciB0
byBzb21lb25lCj4+PiByZWFkaW5nIHRoaXMuIElmIHlvdSByZXNwaW4gdGhpcyBjb3VsZCB5b3Ug
bm90ZSB0aGF0IHJlYXNvbiBpcwo+Pj4gaW50ZXJydXB0cyAwIGFuZCAxIGFyZSBhbHdheXMgcm91
dGVkIGJhY2sgaW50byB0aGUgUFJVU1MuCj4+Cj4+IFllYWgsIHRoaXMgaXMgYWx3YXlzIGdvaW5n
IHRvIGJlIHNvbWV3aGF0IGNvbmZ1c2luZyBzaW5jZSB0aGUgZHJpdmVyIGhhcwo+PiB0byBkZWFs
IHdpdGggYWxsIGhvc3RzIGZyb20gY2hhbm5lbC1tYXBwaW5nIHBlcnNwZWN0aXZlLCBidXQgb25s
eSB0aGUgOAo+PiBpbnRlcnJ1cHRzIGF0IG1vc3QgdGhhdCByZWFjaCBNUFUgZm9yIGhhbmRsaW5n
IGludGVycnVwdHMuIFRSTSBoYXMKPj4KPj4gQW55d2F5LCBJIGhhdmUgYWxyZWFkeSBtZW50aW9u
ZWQgdGhlIGZpcnN0IDIgaW50ZXJydXB0IHJvdXRpbmcgaW4gdGhlCj4+IGZpcnN0IHBhcmFncmFw
aCBhYm92ZS4KPj4KPj4gVGhpbmtpbmcgbW9yZQo+Pj4gb24gdGhhdCwgdGhlIHNhbWUgaXMgdHJ1
ZSBmb3IgaW50ZXJydXB0IDcgKCJob3N0NSIpIG9uIEFNNDM3eC82NkFLMkcgeWV0Cj4+PiB3ZSBk
b24ndCBza2lwIHRoYXQgaW4gdGhlIG5hbWluZy4uIG5vdyB0aGF0IHdlIGhhdmUgdGhlIHJlc2Vy
dmVkIElSUQo+Pj4gbWVjaGFuaXNtIGFib3ZlLCB3aHkgbm90IGxlYXZlIHRoZSBvbmUtdG8tb25l
IGludGVycnVwdCB0byBuYW1lIG1hcHBpbmcsCj4+PiBidXQgYWx3YXlzIGhhdmUgYXQgbGVhc3Qg
dGhlIGZpcnN0IHR3byBtYXJrZWQgYXMgcmVzZXJ2ZWQgZm9yIGFsbCB0aGUKPj4+IGN1cnJlbnQg
ZGV2aWNlczoKPj4+Cj4+PiB0aSxpcnFzLXJlc2VydmVkID0gL2JpdHMvIDggPDAgMT47Cj4+Pgo+
Pj4gVGhlbiBhbnkgImhvc3R4IiBsaXN0ZWQgYXMgcmVzZXJ2ZWQgbmVlZCBub3QgYmUgcHJlc2Vu
dCBpbiB0aGUgaG9zdAo+Pj4gaW50ZXJydXB0cyBwcm9wZXJ0eSBhcnJheS4gVG8gbWUgdGhhdCB3
b3VsZCBzb2x2ZSB0aGUgIm1hbmFnaW5nCj4+PiBpbnRlcnJ1cHRzIG5vdCB0YXJnZXRpbmcgdGhl
IExpbnV4IHJ1bm5pbmcgY29yZSIgcHJvYmxlbSBhbmQga2VlcCB0aGUKPj4+IG5hbWVzIGNvbnNp
c3RlbnQsIGUuZy46Cj4+Cj4+IEkgaGFkIGFjdHVhbGx5IHVzZWQgdGhlIGludGVycnVwdC1uYW1l
cyBhbHdheXMgc3RhcnRpbmcgZnJvbSAiaG9zdDIiCj4+IHRocm91Z2ggImhvc3Q5IiAobmFtZXMg
ZnJvbSBQUlUgcGVyc3BlY3RpdmUpIHByZXZpb3VzbHksIGFuZCBJIGhhdmUKPj4gY2hhbmdlZCB0
aGlzIHRvIHN0YXJ0IGluZGV4aW5nIGZyb20gMCBpbiB0aGlzIHNlcmllcyB0byBhZGRyZXNzIGFu
Cj4+IGludGVybmFsIHJldmlldyBjb21tZW50IGZyb20gR3J5Z29yaWkgYW5kIHRvIGFsaWduIHdp
dGggVFJNLiBBbGwgdGhlCj4+IFRSTXMgKGV4Y2VwdCBmb3IgQU01NzJ4KSBhY3R1YWxseSB1c2Ug
dGhlIG5hbWVzL3NpZ25hbHMgImhvc3RfaW50cjAiLAo+PiAiaG9zdF9pbnRyMSIuLiJob3N0X2lu
dHI3IiBldGMgZm9yIHRoZSBpbnRlcnJ1cHRzIGdvaW5nIHRvd2FyZHMgTVBVLgo+PiBNYXliZSBJ
IHNob3VsZCBhY3R1YWxseSByZW5hbWUgdGhlIGludGVycnVwdC1uYW1lcyB0byBiZSBob3N0X2lu
dHJYCj4+IGluc3RlYWQgb2YgaG9zdFggdG8gYXZvaWQgY29uZnVzaW9uIGFuZCBiZSBleGFjdGx5
IGFsaWduZWQgd2l0aCB0aGUgVFJNCj4+IG5hbWVzLiBJIHdpbGwgZmlsZSBhIGJ1ZyBhZ2FpbnN0
IEFNNTd4eCBUUk0gdG8gYWxpZ24gdGhlIG5hbWVzIHdpdGggYWxsCj4+IG90aGVyIFNvQyBUUk1z
Lgo+Pgo+PiBJIGFtIHVzaW5nICJvdXRwdXQgaW50ZXJydXB0IGxpbmVzIiB0byBpbXBseSBuYW1l
cyB3LnIudCBQUlUgdnMgImhvc3QKPj4gaW50ZXJydXB0IiB0byBpbXBseSBBUk0gR0lDIG5hbWVz
Lgo+Pgo+PiByZWdhcmRzCj4+IFN1bWFuCj4+Cj4gCj4gRldJVywgdGhlIEFNMTgwOCBUUk0gb25s
eSB1c2VzIFBSVV9FVlRPVVQwIHRvIFBSVV9FVlRPVVQ3IGFuZCBkb2VzIG5vdAo+IG1lbnRpb24g
Imhvc3QiIGluIHJlbGF0aW9uIHRvIHRoZXNlIGludGVycnVwdHMuIFRoZSBBTTN4eHggYW5kIEFN
NHh4eAo+IGFsc28gdXNlIHNpbWlsYXIgbmFtZXMgKFBSVV9JQ1NTX0VWVE9VVDAsIFBSVV9JQ1NT
MV9FVlRPVVQwKSBhbHRob3VnaAo+IHRoZXkgZG8gbWVudGlvbiB0aGF0IHRoZSBzb3VyY2UgaXMg
InByMV9ob3N0WzBdIG91dHB1dC9ldmVudHMgZXhwb3J0ZWQKPiBmcm9tIFBSVV9JQ1NTMSIuIChB
bHNvLCB0aGUgb2xkZXIgcHJvY2Vzc29ycyBoYXZlIEFJTlRDIGluc3RlYWQgb2YgR0lDKS4KCklu
ZGVlZCwgRVZUT1VUIHdhcyBvbmx5IHVzZWQgaW4gdGhlIEludGVycnVwdHMgY2hhcHRlciBvbiBB
TTE4MDgsIEFNMzM1eAphbmQgQU00Mzd4LiBUaGVzZSBUUk1zIGFyZSBvbmx5IGdldHRpbmcgdmVy
eSBpbmZyZXF1ZW50IHVwZGF0ZXMsIHNvIEkKZG91YnQgd2Ugd2lsbCBoYXZlIHRoZXNlIG5hbWVz
IHN5bmNocm9uaXplZCB0byB0aGUgb3RoZXIgU29Dcy4KClRoZSBkZXNjcmlwdGlvbnMgaW4gUFJV
U1MgSU5UQyBzZWN0aW9ucyB0aGVtc2VsdmVzIGFsd2F5cyB1c2UgdGhlIHRlcm0KaG9zdCBpbnRl
cnJ1cHRzIGZvciBhbGwgaG9zdCBldmVudHMsIGJ1dCB0aGUgb3V0cHV0IHNpZ25hbHMgZ2V0CnJl
LWluZGV4ZWQgdG8gMCwgd2hpY2ggdGVuZHMgdG8gYmUgY29uZnVzaW5nLgoKPiAKPiBNYXliZSB0
byBoZWxwIGNsYXJpZnkgaGVyZSB3ZSBjb3VsZCBtZW50aW9uICJldmVudCIgaW4gdGhlIGRvY3M6
Cj4gCj4gCj4gKy0gaW50ZXJydXB0LW5hbWVzwqDCoMKgwqDCoCA6IHNob3VsZCB1c2Ugb25lIG9m
IHRoZSBmb2xsb3dpbmcgbmFtZXMgZm9yIGVhY2gKPiB2YWxpZAo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgaG9zdCBldmVudCBpbnRlcnJ1cHQgY29u
bmVjdGVkIHRvIEFSTSBpbnRlcnJ1cHQKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgIGNvbnRyb2xsZXIsdGhlIG5hbWUgc2hvdWxkIG1hdGNoIHRoZQo+
IGNvcnJlc3BvbmRpbmcKPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIGhvc3QgZXZlbnQgaW50ZXJydXB0IG51bWJlciwKClllYWgsIEkgbGlrZSB5b3Vy
IHJld29yZGluZy4gV2lsbCB1cGRhdGUgZm9yIHRoZSBuZXh0IHZlcnNpb24uCgo+ICvCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaG9zdDAi
LCAiaG9zdDEiLCAiaG9zdDIiLCAiaG9zdDMiLCAiaG9zdDQiLAo+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCAiaG9zdDUiLCAiaG9zdDYi
IG9yICJob3N0NyIKCkkgd2lsbCBiZSB1cGRhdGluZyB0aGVzZSBuYW1lcyBhcyB3ZWxsIHRvIGFk
ZCBlaXRoZXIgYSBpbnQgb3IgaW50ciBzdWZmaXguCgo+IAo+IAo+IAo+IC4uLgo+IAo+Pj4+ICsK
Pj4+PiArRXhhbXBsZToKPj4+PiArLS0tLS0tLS0KPj4+PiArCj4+Pj4gKzEuwqDCoMKgIC8qIEFN
MzN4eCBQUlUtSUNTUyAqLwo+Pj4+ICvCoMKgwqAgcHJ1c3M6IHBydXNzQDAgewo+IAo+IEkgZG9u
J3Qgc3VwcG9zZSB0aGVyZSBpcyBhIGdlbmVyaWMgbmFtZSB0aGF0IGNvdWxkIGJlIHVzZWQgaGVy
ZQo+IGluc3RlYWQgb2YgcHJ1c3M/IEl0IHNlZW1zIGxpa2UgdGhlcmUgc2hvdWxkIGJlIG9uZSBm
b3IgcmVtb3RlCj4gcHJvY2Vzc29ycyB0aGF0IGFyZW4ndCBEU1BzIG9yIG90aGVyIHNwZWNpYWxp
emVkIHByb2Nlc3NvcnMuCj4gCgpZZWFoLCB0aGVyZSBpcyBub25lLiBJdCBpcyB0aGUgb3ZlcmFs
bCBQUlUgc3Vic3lzdGVtLCB0aGUgaW5kaXZpZHVhbApjb3JlcyBhcmUgY2FsbGVkIFBSVS4gVGhl
IHN1YnN5c3RlbXMgYXJlIHVzdWFsbHkgcmVmZXJyZWQgdG8gYXMgUFJVU1MsClBSVS1JQ1NTIGFu
ZCBJQ1NTRyAob24gdGhlIG5ld2VyIEszIFNvQ3MpLCBzbyBJIHNpbXBseSBjaG9zZSB0aGUgc2hv
cnRlcgpwcnVzcy4KCnJlZ2FyZHMKU3VtYW4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgt
YXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
