Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAACE1D9115
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 09:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6vIWPaEGpK4HVYDLPLYbDA1TMy2MTvFqPWwUNnCSEJM=; b=kzPhX0p679HDWH
	a1haOiDoxaqy0y4l+iJWjT7C/vPU+nwtfmkhLoVTTbwYrgNuwxtniku+9opq3SREcq3VpyjIS0uYh
	pNVHXNhUB+vhMareBOFZpY3i8aWKCUDVLLZ0MoZgTyzsqo7Cep2UtcY9/N7yhjI3l2TPmAu/o0nKi
	9zeimKNyKr2PZo0LAhlRoyDm+/cw1jX5lg8SCgpUaVfEhMg7gDCUgfuJo5KbLRHZk/nSYtIZ+ihAj
	3Q1ZO6f+Gqppd6tuOX5BFnZh6tjrEhIYw/WhwhfxwDQOSrR8Q1w9aantLY2Gww5ZAjvNCVZ5sJckM
	HFlyViCKo0aH3AEn2jSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jawhh-0003cB-FW; Tue, 19 May 2020 07:30:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawhY-0003VY-UO
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 07:30:14 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04J7U99W030707;
 Tue, 19 May 2020 02:30:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589873409;
 bh=7QK68xeNmUeDODH2mIzX/+6Cxr5S9voQlodrRmQYvn0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=Bk6mLRftQCSM16fIXNsdzxsMRCC0rXySbJovpNJlULe4zsm4m6WpbM/D7bSoHpBLh
 ckvPUuZbmadH91pY802PADokkqyWL4QEzOdrQHnv8LCK97M005UfPeO+iCpP6IpeYP
 AIGBwXH/AxzIBdrm1SUhgSSVT1zJWSAQTQuqSLvU=
Received: from DLEE104.ent.ti.com (dlee104.ent.ti.com [157.170.170.34])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04J7U9g3098123
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 02:30:09 -0500
Received: from DLEE106.ent.ti.com (157.170.170.36) by DLEE104.ent.ti.com
 (157.170.170.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 02:30:09 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 02:30:09 -0500
Received: from [10.250.232.87] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04J7U6Yi063839;
 Tue, 19 May 2020 02:30:07 -0500
Subject: Re: [PATCH v2] arm64: dts: ti: k3-am654-main: Update otap-del-sel
 values
To: Tero Kristo <t-kristo@ti.com>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
References: <20200507181526.12529-1-faiz_abbas@ti.com>
 <c59653d0-2e24-8917-f5b9-8c1044786bc9@ti.com>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <fae18e36-2292-b607-fa4c-fdedb7040216@ti.com>
Date: Tue, 19 May 2020 13:00:02 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <c59653d0-2e24-8917-f5b9-8c1044786bc9@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_003013_108951_192BC079 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, robh+dt@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVGVybywKCk9uIDE1LzA1LzIwIDM6NDQgcG0sIFRlcm8gS3Jpc3RvIHdyb3RlOgo+IE9uIDA3
LzA1LzIwMjAgMjE6MTUsIEZhaXogQWJiYXMgd3JvdGU6Cj4+IEFjY29yZGluZyB0byB0aGUgbGF0
ZXN0IEFNNjV4IERhdGEgTWFudWFsWzFdLCBhIGRpZmZlcmVudCBvdXRwdXQgdGFwCj4+IGRlbGF5
IHZhbHVlIGlzIG9wdGltdW0gZm9yIGEgZ2l2ZW4gc3BlZWQgbW9kZS4gVXBkYXRlIHRoZXNlIHZh
bHVlcy4KPj4KPj4gWzFdIGh0dHA6Ly93d3cudGkuY29tL2xpdC9ncG4vYW02NTI2Cj4+Cj4+IFNp
Z25lZC1vZmYtYnk6IEZhaXogQWJiYXMgPGZhaXpfYWJiYXNAdGkuY29tPgo+PiAtLS0KPj4gdjI6
IFJlYmFzZWQgdG8gdGhlIGxhdGVzdCBtYWlubGluZSBrZXJuZWwKPj4KPj4gwqAgYXJjaC9hcm02
NC9ib290L2R0cy90aS9rMy1hbTY1LW1haW4uZHRzaSB8IDEyICsrKysrKysrKysrLQo+PiDCoCAx
IGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1LW1haW4uZHRzaSBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvdGkvazMtYW02NS1tYWluLmR0c2kKPj4gaW5kZXggMTE4ODdjNzJmMjNh
Li42Y2Q5NzAxZTRlYWQgMTAwNjQ0Cj4+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvdGkvazMt
YW02NS1tYWluLmR0c2kKPj4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy90aS9rMy1hbTY1LW1h
aW4uZHRzaQo+PiBAQCAtMjQ0LDcgKzI0NCwxNyBAQAo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgaW50
ZXJydXB0cyA9IDxHSUNfU1BJIDEzNiBJUlFfVFlQRV9MRVZFTF9ISUdIPjsKPj4gwqDCoMKgwqDC
oMKgwqDCoMKgIG1tYy1kZHItMV84djsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIG1tYy1oczIwMC0x
Xzh2Owo+PiAtwqDCoMKgwqDCoMKgwqAgdGksb3RhcC1kZWwtc2VsID0gPDB4Mj47Cj4+ICvCoMKg
wqDCoMKgwqDCoCB0aSxvdGFwLWRlbC1zZWwtbGVnYWN5ID0gPDB4MD47Cj4+ICvCoMKgwqDCoMKg
wqDCoCB0aSxvdGFwLWRlbC1zZWwtbW1jLWhzID0gPDB4MD47Cj4+ICvCoMKgwqDCoMKgwqDCoCB0
aSxvdGFwLWRlbC1zZWwtc2QtaHMgPSA8MHgwPjsKPj4gK8KgwqDCoMKgwqDCoMKgIHRpLG90YXAt
ZGVsLXNlbC1zZHIxMiA9IDwweDA+Owo+PiArwqDCoMKgwqDCoMKgwqAgdGksb3RhcC1kZWwtc2Vs
LXNkcjI1ID0gPDB4MD47Cj4+ICvCoMKgwqDCoMKgwqDCoCB0aSxvdGFwLWRlbC1zZWwtc2RyNTAg
PSA8MHg4PjsKPj4gK8KgwqDCoMKgwqDCoMKgIHRpLG90YXAtZGVsLXNlbC1zZHIxMDQgPSA8MHg1
PjsKPiAKPiBJc24ndCB0aGlzIHdyb25nPyBEb2MgY2xhaW1zIHRoZSB2YWx1ZSBmb3Igc2RyMTA0
IHNob3VsZCBiZSAweDc/Cj4gCgpZZXMuIFRoZXJlIHNlZW1zIHRvIGJlIGFuIHVwZGF0ZSB0byB0
aGUgZG9jdW1lbnQgc2luY2UgSSBsYXN0IHVwZGF0ZWQgdGhlIHZhbHVlLgpUaGFua3MgZm9yIGNh
dGNoaW5nLiBJIHdpbGwgcG9zdCBhbm90aGVyIHZlcnNpb24gc29vbi4KClRoYW5rcywKRmFpegoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
