Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C84131755A1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:18:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RXNHhv4IExIod7rZB9jgz45jPBMclLUKs9IptaBoldE=; b=anGR28SHFx1fSgI2voCcU06w2
	tBp0SrsOr7ygVVP2k9zQs/q7n4GsvY+mruQpHRNQUHxrzlgxGttkjOxEFgiGz2cymWYF5a0rEb170
	PIyioeffKJnou327jfee2WlaBnoMt0IhvwlVH4rTTbnKn0I88dywVOL1tRvx6ID4vGMKwqn+W+k+/
	8T80px7iVrriqcKMnWKPjM4rMhZG1uGMMKoMGkHCjqYDHBLH5QM/dvEb4NL3A9tJw+1CoOd0WKgfy
	7dBnbUnatUuUs4rTPnYgOwNkFi6YCpv1Q59RUXBtOE1S48LHM+BSOZTMC0X+yP+9qtImQMJAzOB61
	7wmaiV7Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gHY-0007Ht-RW; Mon, 02 Mar 2020 08:18:32 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gHQ-0007Gt-B9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:18:26 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id BEDB48D133E4FD5F10B3;
 Mon,  2 Mar 2020 16:18:17 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Mon, 2 Mar 2020
 16:18:09 +0800
Subject: Re: [PATCH v4 08/20] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
To: Marc Zyngier <maz@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-9-maz@kernel.org>
 <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
 <75597af0d2373ac4d92d8162a1338cbb@kernel.org>
 <19a7c193f0e4b97343e822a35f0911ed@kernel.org>
 <3d725ede-6631-59fb-1a10-9fb9890f3df6@huawei.com>
 <dd9f1224b3b21ad793862406bd8855ba@kernel.org>
 <54c52057161f925c818446953050c951@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <4f8f3958-2976-b0a7-8d17-440ecaba0fc8@huawei.com>
Date: Mon, 2 Mar 2020 16:18:07 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <54c52057161f925c818446953050c951@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_001824_554820_39FC5757 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org, Eric
 Auger <eric.auger@redhat.com>, Robert
 Richter <rrichter@marvell.com>, James Morse <james.morse@arm.com>, Julien
 Thierry <julien.thierry.kdev@gmail.com>, Thomas Gleixner <tglx@linutronix.de>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAyMC8zLzIgMzowMCwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIwMjAtMDItMjggMTk6
MzcsIE1hcmMgWnluZ2llciB3cm90ZToKPj4gT24gMjAyMC0wMi0yMCAwMzoxMSwgWmVuZ2h1aSBZ
dSB3cm90ZToKPiAKPj4+IERvIHdlIHJlYWxseSBuZWVkIHRvIGdyYWIgdGhlIHZwZV9sb2NrIGZv
ciB0aG9zZSB3aGljaCBhcmUgYmVsb25nIHRvCj4+PiB0aGUgc2FtZSBpcnFjaGlwIHdpdGggaXRz
X3ZwZV9zZXRfYWZmaW5pdHkoKT8gVGhlIElSUSBjb3JlIGNvZGUgc2hvdWxkCj4+PiBhbHJlYWR5
IGVuc3VyZSB0aGUgbXV0dWFsIGV4Y2x1c2lvbiBhbW9uZyB0aGVtLCB3cm9uZz8KPj4KPj4gSSd2
ZSBiZWVuIHRyeWluZyB0byB0aGluayBhYm91dCB0aGF0LCBidXQgamV0LWxhZyBrZWVwcyBnZXR0
aW5nIGluIHRoZSAKPj4gd2F5Lgo+PiBJIGVtcGlyaWNhbGx5IHRoaW5rIHRoYXQgeW91IGFyZSBy
aWdodCwgYnV0IEkgbmVlZCB0byBnbyBhbmQgY2hlY2sgdGhlIAo+PiB2YXJpb3VzCj4+IGNvZGUg
cGF0aHMgdG8gYmUgc3VyZS4gSG9wZWZ1bGx5IEknbGwgaGF2ZSBhIGJpdCBtb3JlIGJyYWluIHNw
YWNlIG5leHQgCj4+IHdlZWsuCj4gCj4gU28gSSBzbGVwdCBvbiBpdCBhbmQgY2FtZSBiYWNrIHRv
IG15IHNlbnNlcy4gVGhlIG9ubHkgY2FzZSB3ZSBhY3R1YWxseSBuZWVkCj4gdG8gZGVhbCB3aXRo
IGlzIHdoZW4gYW4gYWZmaW5pdHkgY2hhbmdlIGltcGFjdHMgKmFub3RoZXIqIGludGVycnVwdC4K
PiAKPiBUaGVyZSBpcyBvbmx5IHR3byBpbnN0YW5jZXMgb2YgdGhpcyBpc3N1ZToKPiAKPiAtIHZM
UElzIGhhdmUgdGhlaXIgKnBoeXNpY2FsKiBhZmZpbml0eSBpbXBhY3RlZCBieSB0aGUgYWZmaW5p
dHkgb2YgdGhlCj4gIMKgIHZQRS4gVGhlaXIgdmlydHVhbCBhZmZpbml0eSBpcyBvZiBjb3Vyc2Ug
dW5jaGFuZ2VkLCBidXQgdGhlIHBoeXNpY2FsCj4gIMKgIG9uZSBiZWNvbWVzIGltcG9ydGFudCB3
aXRoIGRpcmVjdCBpbnZhbGlkYXRpb24uIFRha2luZyBhIHBlci1WUEUgbG9jawo+ICDCoCBpbiBz
dWNoIGNvbnRleHQgc2hvdWxkIGFkZHJlc3MgdGhlIGlzc3VlLgo+IAo+IC0gdlNHSXMgaGF2ZSB0
aGUgZXhhY3Qgc2FtZSBpc3N1ZSwgcGx1cyB0aGUgbWF0dGVyIG9mIHJlcXVpcmluZyBzb21lCj4g
IMKgICpleHRyYSogb25lIHdoZW4gcmVhZGluZyB0aGUgcGVuZGluZyBzdGF0ZSwgd2hpY2ggcmVx
dWlyZXMgYSBSTVcKPiAgwqAgb24gdHdvIGRpZmZlcmVudCByZWdpc3RlcnMuIFRoaXMgcmVxdWly
ZXMgYW4gZXh0cmEgcGVyLVJEIGxvY2suCgpBZ3JlZWQgd2l0aCBib3RoIQoKPiAKPiBNeSBvcmln
aW5hbCBwYXRjaCB3YXMgc3R1cGlkbHkgY29tcGxleCwgYW5kIHRoZSBpcnFfZGVzYyBsb2NrIGlz
Cj4gcGVyZmVjdGx5IGVub3VnaCB0byBkZWFsIHdpdGggYW55dGhpbmcgdGhhdCBvbmx5IGFmZmVj
dHMgdGhlIGludGVycnVwdAo+IHN0YXRlIGl0c2VsZi4KPiAKPiBHSUN2NCArIGRpcmVjdCBpbnZh
bGlkYXRpb24gZm9yIHZMUElzIGJyZWFrcyB0aGlzIGJ5IGJ5cGFzc2luZyB0aGUKPiBzZXJpYWxp
emF0aW9uIGluaXRpYWxseSBwcm92aWRlZCBieSB0aGUgSVRTLCBhcyB0aGUgUkQgaXMgY29tcGxl
dGVseQo+IG91dCBvZiBiYW5kLiBUaGUgcGVyLXZQRSBsb2NrIGJyaW5ncyBiYWNrIHRoaXMgc2Vy
aWFsaXphdGlvbi4KPiAKPiBJJ3ZlIHVwZGF0ZWQgdGhlIGJyYW5jaCwgd2hpY2ggc2VlbXMgdG8g
cnVuIE9LIG9uIEQwNS4gSSBzdGlsbCBuZWVkCj4gdG8gcnVuIHRoZSB1c3VhbCB0ZXN0cyBvbiB0
aGUgRlZQIG1vZGVsIHRob3VnaC4KCkkgaGF2ZSBwdWxsZWQgdGhlIGxhdGVzdCBicmFuY2ggYW5k
IGl0IGxvb2tzIGdvb2QgdG8gbWUsIGV4Y2VwdCBmb3IKb25lIHJlbWFpbmluZyBjb25jZXJuOgoK
R0lDUl9JTlZ7TFBJLCBBTEx9UiArIEdJQ1JfU1lOQ1IgY2FuIGFsc28gYmUgYWNjZXNzZWQgY29u
Y3VycmVudGx5CmJ5IG11bHRpcGxlIGRpcmVjdCBpbnZhbGlkYXRpb24sIHNob3VsZCB3ZSBhbHNv
IHVzZSB0aGUgcGVyLVJEIGxvY2sKdG8gZW5zdXJlIG11dHVhbCBleGNsdXNpb24/ICBJdCBsb29r
cyBub3Qgc28gaGFybWZ1bCB0aG91Z2gsIGFzIHRoaXMKd2lsbCBvbmx5IGluY3JlYXNlIG9uZSdz
IHBvbGxpbmcgdGltZSBhZ2FpbnN0IHRoZSBCdXN5IGJpdCAoaW4gbXkgdmlldykuCgpCdXQgSSBw
b2ludCBpdCBvdXQgYWdhaW4gZm9yIGNvbmZpcm1hdGlvbi4KCgpUaGFua3MsClplbmdodWkKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
