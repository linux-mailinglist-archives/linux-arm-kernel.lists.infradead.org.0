Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08358188D63
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 19:43:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OPSsd9gMPyMFeXCLIVklKkeRKGu7vCL4ECaLFMVCEHI=; b=CgiIQLXTE/SQv8dHh7r0IL/Tv
	+wUMzgUxxEyqTVBIWYTJv9ti4zHNy7VypIBwJ91zlRtWfgXmzds9UI8ymTFPJcQwBc6U5YAd/ocLs
	3ah6sH9ZZpBrqfT9G330H+wU1axekNjbKNtlDy9806qKWjHbKjSi4RCFjis7qsrPCzBbtAn5OgWuY
	tylqOXUTEJAjaXNxnYLfMUPjrYRYpouvaarb9LhK+DFo4F2LYDp1n1kQcfsIU2G2eOq6lCItHHGC5
	EHzPJyh0B2lMZnenvBE1pmEXO1YCjn4QdIO/XwA2krSKx1qy+bxP/ORWFNJfrW7nGhKYORY3YwUmJ
	amv3BpLjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEHBe-00041G-9z; Tue, 17 Mar 2020 18:43:34 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEHBV-0003zp-Sz
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 18:43:27 +0000
Received: from LHREML710-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 5FC839EFDF2C5FC1B4AC;
 Tue, 17 Mar 2020 18:43:13 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML710-CAH.china.huawei.com (10.201.108.33) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 17 Mar 2020 18:43:12 +0000
Received: from [127.0.0.1] (10.47.11.44) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 17 Mar
 2020 18:43:11 +0000
Subject: Re: [PATCH v3 2/2] irqchip/gic-v3-its: Balance initial LPI affinity
 across CPUs
To: Marc Zyngier <maz@kernel.org>
References: <20200316115433.9017-1-maz@kernel.org>
 <20200316115433.9017-3-maz@kernel.org>
 <2c367508-f81b-342e-eb05-8bbd1b056279@huawei.com>
 <9ce0b23455a06d92161c5302ac28152e@kernel.org>
From: John Garry <john.garry@huawei.com>
Message-ID: <8b141d09-ac11-34ec-0922-c21c22f94f36@huawei.com>
Date: Tue, 17 Mar 2020 18:43:01 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <9ce0b23455a06d92161c5302ac28152e@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.47.11.44]
X-ClientProxiedBy: lhreml721-chm.china.huawei.com (10.201.108.72) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_114326_084507_D09161E1 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jason Cooper <jason@lakedaemon.net>, chenxiang <chenxiang66@hisilicon.com>,
 luojiaxing@huawei.com, linux-kernel@vger.kernel.org,
 Ming Lei <ming.lei@redhat.com>, Zhou Wang <wangzhou1@hisilicon.com>, Thomas
 Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Pj4KPj4+ICvCoMKgwqDCoMKgwqDCoCBpbnQgdGhpc19jb3VudCA9IGl0c19yZWFkX2xwaV9jb3Vu
dChkLCB0bXApOwo+Pgo+PiBOb3Qgc3VyZSBpZiBpdCdzIGludGVudGlvbmFsLCBidXQgbm93IHRo
ZXJlIHNlZW1zIHRvIGJlIGEgc3VidGxlCj4+IGRpZmZlcmVuY2UgdG8gd2hhdCBUaG9tYXMgZGVz
Y3JpYmVkIGZvciBub24tbWFuYWdlZCBpbnRlcnJ1cHRzIC0gZm9yCj4+IG5vbi1tYW5hZ2VkIGlu
dGVycnVwdHMsIHg4NiBzZWxlY3RzIHRoZSBDUFUgYmFzZWQgb24gdGhlIHRvdGFsCj4+IGludGVy
cnVwdCBsb2FkIHBlciBDUFUgKG9yLCBtb3JlIHNwZWNpZmljYWxseSwgbG93ZXN0IHZlY3Rvcgo+
PiBhbGxvY2F0aW9uIGNvdW50KSwgYW5kIG5vdCBqdXN0IHRoZSBub24tbWFuYWdlZCBsb2FkLiBP
ciBtYXliZSBJCj4+IG1pc3JlYWQgaXQuCj4gCj4gU28gZmFyLCBJJ20gdHJ5aW5nIHRvIGtlZXAg
dGhlIHR3byBhbGxvY2F0aW9uIHBhdGhzIHNlcGFyYXRlLCBhcyB0aGUKPiB0d28gc3lzdGVtcyBJ
IGhhdmUgYWNjZXNzIHRvIGhhdmUgdmVyeSBkaWZmZXJlbnQgYmVoYXZpb3VyczogRDA1IGhhcwo+
IG5vIG1hbmFnZWQgaW50ZXJydXB0cyB0byBzcGVhayBvZiwgYW5kIG15IHRvcC1zZWNyZXQgd29y
ayBtYWNoaW5lCj4gaGFzIGFsbW9zdCBubyB1bm1hbmFnZWQgaW50ZXJydXB0cywgc28gdGhlIHR3
byBzZXRzIGFyZSBhbG1vc3QKPiBjb21wbGV0ZWx5IGRpc2pvaW50LgoKU3VyZSwgYnV0IEknZCBz
YXkgdGhhdCBpdCB3b3VsZCBiZSBhIG1vcmUgY29tbW9uIHNjZW5hcmlvIHRvIGhhdmUgYSAKbWl4
dHVyZSBvZiBib3RoLgoKPiAKPiBBbHNvLCBpdCBhbGwgZGVwZW5kcyBvbiB0aGUgaW50ZXJydXB0
IGFsbG9jYXRpb24gb3JkZXIsIGFuZCB3aGV0aGVyCj4gc29tZXRoaW5nIHdpbGwgcmViYWxhbmNl
IHRoZSBub24tbWFuYWdlZCBpbnRlcnJ1cHRzIGF0IGEgbGF0ZXIgdGltZS4KPiBBdCBsZWFzdCwg
dGhlc2UgdHdvIHBhdGNoZXMgbWFrZSBpdCBlYXN5IHRvIGFsdGVyIHRoZSBwbGFjZW1lbnQgcG9s
aWN5Cj4gKHRoZSBiZWhhdmlvdXIgeW91IGRlc2NyaWJlIGFib3ZlIGlzIGEgMiBsaW5lIGNoYW5n
ZSkuCj4gCj4+IEFueXdheSwgd2UgY2FuIHRlc3QgdGhpcyBub3cgZm9yIE5WTWUgd2l0aCBpdHMg
bWFuYWdlZCBpbnRlcnJ1cHRzLgo+IAo+IExvb2tpbmcgZm9yd2FyZCB0byBoZWFyaW5nIGZyb20g
eW91IQo+CgpPbiBteSBEMDZDUyBib2FyZCAoMTI4IGNvcmUpLCB0aGVyZSBzZWVtcyB0byBiZSBz
b21ldGhpbmcgd3JvbmcsIGFzIHRoZSAKcTAgYWZmaW5pdHkgbWFzayBsb29rcyBpbmNvcnJlY3Q6
CgpQQ0kgbmFtZSBpcyA4MTowMC4wOiBudm1lMG4xIAogCgogICAgICAgICBpcnEgMzIyLCBjcHUg
bGlzdCA2OSwgZWZmZWN0aXZlIGxpc3QgNjkgCiAKCiAgICAgICAgIGlycSAzMjUsIGNwdSBsaXN0
IDMyLTM4LCBlZmZlY3RpdmUgbGlzdCAzMiAKIAoKICAgICAgICAgaXJxIDMyNiwgY3B1IGxpc3Qg
MzktNDUsIGVmZmVjdGl2ZSBsaXN0IDQwIAogCgogICAgICAgICBpcnEgMzI3LCBjcHUgbGlzdCA0
Ni01MSwgZWZmZWN0aXZlIGxpc3QgNDcgCiAKCiAgICAgICAgIGlycSAzMjgsIGNwdSBsaXN0IDUy
LTU3LCBlZmZlY3RpdmUgbGlzdCA1MyAKIAoKICAgICAgICAgaXJxIDMyOSwgY3B1IGxpc3QgNTgt
NjMsIGVmZmVjdGl2ZSBsaXN0IDU5CgoKQW5kIHNvbWV0aGluZyBzdHJhbmdlciBmb3IgbXkgY29s
bGVhZ3VlIEx1byBKaWF4aW5nLCBzcGVjaWZpY2FsbHkgdGhlIAplZmZlY3RpdmUgYWZmaW5pdHk6
CgpQQ0kgbmFtZSBpcyA4NTowMC4wOiBudm1lMm4xCmlycSAxOTYsIGNwdSBsaXN0IDAtMzEsIGVm
ZmVjdGl2ZSBsaXN0IDgyCmlycSAzNzcsIGNwdSBsaXN0IDMyLTM4LCBlZmZlY3RpdmUgbGlzdCAz
MgppcnEgMzc4LCBjcHUgbGlzdCAzOS00NSwgZWZmZWN0aXZlIGxpc3QgMzkKaXJxIDM3OSwgY3B1
IGxpc3QgNDYtNTEsIGVmZmVjdGl2ZSBsaXN0IDQ2CgpCdXQgdGhlbiB2NS42LXJjNSB2YW5pbGxh
IGFsc28gbG9va3MgdG8gaGF2ZSB0aGlzIGlzc3VlIHdoZW4gSSB0ZXN0ZWQgb24gCm15IGJvYXJk
OgoKam9obkB1YnVudHU6fiQgbW9yZSAvcHJvYy9pcnEvMzIyL3NtcF9hZmZpbml0eV9saXN0IAog
Cgo2OQoKTXkgRDA2RVMgKDk2IGNvcmUpIGJvYXJkIGxvb2tzIHNlbnNpYmxlIGZvciB0aGUgYWZm
aW5pdHkgaW4gdGhpcyByZWdhcmQgCihJIGRpZCBub3QgdHJ5IHZhbmlsbGEgdjUuNi1yYzUsIGJ1
dCBvbmx5IHdpdGggeW91ciBwYXRjaGVzIG9uIHRvcCkuIApJJ2xsIG5lZWQgdG8gZGVidWcgdGhp
cy4KCkNoZWVycywKSm9obgoKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
