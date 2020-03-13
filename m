Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4794C183EB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 02:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F4//RSOoGudPTjuaU8m5axA/j0j3EVbi02Zy1XYkLRc=; b=E+jd+BaZ9+kPItKsFVo5GIi3p
	KOo6gpApSC8zLF/C7HGza9dRhSur/tdXzwzUWV3VRrYJDWOu0Fhm+bU5jeW2tlfXf0DBzrQ+BtQG6
	5C7FpRrmsopZrkAnfalfRL0IggGePy234WVPJAINtWmNE6FVHpJF/UIoTkOdj2/gvgcbONDia7IEo
	RwzXoYntr3JpEaQopDOOleL2jmz0TYh9L7jB1Qysj+4LShCPDow2u27cbDo98c0+Gh+yNSsgjFbeS
	LhCnkp8MT/P5UwZUSgogqdic5yldgMjUKd8/19qddtmFL5XxbHIZlVw4NsRIOB85N4/nVkGLlDVGK
	E3pQn77+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCZIZ-0008Gi-Iu; Fri, 13 Mar 2020 01:39:39 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCZIP-0008FW-OU
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 01:39:31 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id F35E4EF00CE69FBB0358;
 Fri, 13 Mar 2020 09:39:17 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.487.0; Fri, 13 Mar 2020
 09:39:10 +0800
Subject: Re: [PATCH v5 01/23] irqchip/gic-v3: Use SGIs without active state if
 offered
To: Marc Zyngier <maz@kernel.org>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-2-maz@kernel.org>
 <63f6530a-9369-31e6-88d0-5337173495b9@huawei.com>
 <51b2c74fdbcca049cc01be6d78c7c693@kernel.org>
 <1bff1835ba7d6e22edb836d38cf16a14@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <3e20f3c3-0312-bd29-dcfc-2afee764ef19@huawei.com>
Date: Fri, 13 Mar 2020 09:39:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <1bff1835ba7d6e22edb836d38cf16a14@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_183929_956237_2997AAE1 
X-CRM114-Status: GOOD (  14.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

SGkgTWFyYywKCk9uIDIwMjAvMy8xMiAyMDowNSwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IE9uIDIw
MjAtMDMtMTIgMDk6MjgsIE1hcmMgWnluZ2llciB3cm90ZToKPj4gSGkgWmVuZ2h1aSwKPj4KPj4g
T24gMjAyMC0wMy0xMiAwNjozMCwgWmVuZ2h1aSBZdSB3cm90ZToKPj4+IEhpIE1hcmMsCj4+Pgo+
Pj4gT24gMjAyMC8zLzUgNDozMywgTWFyYyBaeW5naWVyIHdyb3RlOgo+Pj4+IFRvIGFsbG93IHRo
ZSBkaXJlY3QgaW5qZWN0aW9uIG9mIFNHSXMgaW50byBhIGd1ZXN0LCB0aGUgR0lDdjQuMQo+Pj4+
IGFyY2hpdGVjdHVyZSBoYXMgdG8gc2FjcmlmaWNlIHRoZSBBY3RpdmUgc3RhdGUgc28gdGhhdCBT
R0lzIGxvb2sKPj4+PiBhIGxvdCBsaWtlIExQSXMgKHRoZXkgYXJlIGluamVjdGVkIGJ5IHRoZSBz
YW1lIG1lY2hhbmlzbSkuCj4+Pj4KPj4+PiBJbiBvcmRlciBub3QgdG8gYnJlYWsgZXhpc3Rpbmcg
c29mdHdhcmUsIHRoZSBhcmNoaXRlY3R1cmUgZ2l2ZXMKPj4+PiBvZmZlcnMgZ3Vlc3RzIE9TcyB0
aGUgY2hvaWNlOiBTR0lzIHdpdGggb3Igd2l0aG91dCBhbiBhY3RpdmUKPj4+PiBzdGF0ZS4gSXQg
aXMgdGhlIGh5cGVydmlzb3JzIGR1dHkgdG8gaG9ub3IgdGhlIGd1ZXN0J3MgY2hvaWNlLgo+Pj4+
Cj4+Pj4gRm9yIHRoaXMsIHRoZSBhcmNoaXRlY3R1cmUgb2ZmZXJzIGEgZGlzY292ZXJ5IGJpdCBp
bmRpY2F0aW5nIHdoZXRoZXIKPj4+PiB0aGUgR0lDIHN1cHBvcnRzIEdJQ3Y0LjEgU0dJcyAoR0lD
RF9UWVBFUjIubkFTU0dJY2FwKSwgYW5kIGFub3RoZXIKPj4+PiBiaXQgaW5kaWNhdGluZyB3aGV0
aGVyIHRoZSBndWVzdCB3YW50cyBBY3RpdmUtbGVzcyBTR0lzIG9yIG5vdAo+Pj4+IChjb250cm9s
bGVkIGJ5IEdJQ0RfQ1RMUi5uQVNTR0lyZXEpLgo+Pj4KPj4+IEkgc3RpbGwgY2FuJ3QgZmluZCB0
aGUgZGVzY3JpcHRpb24gb2YgdGhlc2UgdHdvIGJpdHMgaW4gSUhJMDA2OUYuCj4+PiBBcmUgdGhl
eSBhY3R1YWxseSBhcmNoaXRlY3RlZCBhbmQgd2lsbCBiZSBhdmFpbGFibGUgaW4gdGhlIGZ1dHVy
ZQo+Pj4gdmVyc2lvbiBvZiB0aGUgc3BlYz/CoCBJIHdhbnQgdG8gY29uZmlybSBpdCBhZ2FpbiBz
aW5jZSB0aGlzIGhhcyBhCj4+PiBncmVhdCBpbXBhY3Qgb24gdGhlIEtWTSBjb2RlLCBhbnkgcG9p
bnRlcnM/Cj4+Cj4+IERhbW4uIFRoZSBiaXRzICphcmUqIGluIHRoZSBlbmdpbmVlcmluZyBzcGVj
IHZlcnNpb24gMTkgKHVuZm9ydHVuYXRlbHkKPj4gbm90IGEgcHVibGljIGRvY3VtZW50LCBidXQg
SSBiZWxpZXZlIHlvdSBzaG91bGQgaGF2ZSBhY2Nlc3MgdG8gaXQpLgo+Pgo+PiBJZiB0aGUgYml0
cyBoYXZlIGVmZmVjdGl2ZWx5IGJlZW4gcmVtb3ZlZCBmcm9tIHRoZSBzcGVjLCBJJ2xsIGRyb3Ag
dGhlCj4+IEdJQ3Y0LjEgY29kZSBmcm9tIHRoZSA1LjcgcXVldWUgdW50aWwgd2UgZmluZCBhIHdh
eSB0byBhY2hpZXZlIHRoZSBzYW1lCj4+IGxldmVsIG9mIHN1cHBvcnQuCj4+Cj4+IEkndmUgZW1h
aWxlZCBwZW9wbGUgaW5zaWRlIEFSTSB0byBmaW5kIG91dC4KPiAKPiBJJ3ZlIG5vdyBoYWQgd3Jp
dHRlbiBjb25maXJtYXRpb24gdGhhdCB0aGUgYml0cyBhcmUgc3RpbGwgdGhlcmUuCj4gCj4gSXQg
aXMganVzdCB0aGF0IHRoZSBjdXJyZW50IHJldmlzaW9uIG9mIHRoZSBkb2N1bWVudGF0aW9uIHdh
cyBjdXQgKmJlZm9yZSoKPiB0aGV5IG1hZGUgaXQgaW50byB0aGUgYXJjaGl0ZWN0dXJlICh0aGVy
ZSBzZWVtIHRvIGJlIGEgNiBtb250aCBkZWxheSAKPiBiZXR3ZWVuCj4gdGhlIGFyY2hpdGVjdHVy
ZSBiZWluZyBzYW1wbGVkIGFuZCB0aGUgZG9jdW1lbnRhdGlvbiBiZWluZyByZWxlYXNlZCkuCgpJ
IHNlZS4gVGhhbmtzIGZvciB0aGUgY29uZmlybWF0aW9uIQoKClplbmdodWkKCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
