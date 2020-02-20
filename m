Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81FA716559A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 04:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Gz2vKkjteSJGGaueZvj7cSwwD3TDtpFaKp2AdwDzFbk=; b=JjxYk4h9OZ9gZh2UOcclxGK+D
	Qge0RIlohrH7Bcx48nEHlBeZkDTTgRdxwniMDb5AbKuov2S4969PIgalBOe2///I9dP2ZmlJJGxYV
	SFzQ4USGAHfDSS+cwnxBvSoJb8P64ykLXAVT+TQ4Cf9+z6TYe/8xyV7JOAMD4Yzrj8xsbsf/zUVIi
	GB+qFX1mpmYWqK3RTFk+5sZVxSuVvjvad7nwhqPz5l2Z8tTnq3L0dSCrE0cszM3HoA89Zz5g1VIFK
	uc1arFyp5gCz8zATvme0uI3hkd+rZjm0ANM9y1dwwKfWEhsfH2g8YBy04BoOgHR7NBm+PvanY/uRo
	YxCNVD26A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4cTT-0003H1-Oj; Thu, 20 Feb 2020 03:26:03 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4cTI-0003Ga-HJ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 03:25:55 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 51068A1533B41914DC60;
 Thu, 20 Feb 2020 11:25:49 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.439.0; Thu, 20 Feb 2020
 11:25:43 +0800
Subject: Re: [PATCH v4 06/20] irqchip/gic-v4.1: Add initial SGI configuration
To: Marc Zyngier <maz@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-7-maz@kernel.org>
 <e47baffb-83a5-57d7-1721-eaee28aaaabf@huawei.com>
 <4a64bf17c015cb10e62d9c1a1ff64db5@kernel.org>
From: Zenghui Yu <yuzenghui@huawei.com>
Message-ID: <5d511c78-2339-2aea-8bfc-e13ed464af11@huawei.com>
Date: Thu, 20 Feb 2020 11:25:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <4a64bf17c015cb10e62d9c1a1ff64db5@kernel.org>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_192552_744965_A885700D 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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

SGkgTWFyYywKCk9uIDIwMjAvMi8xOCAxNzo0NiwgTWFyYyBaeW5naWVyIHdyb3RlOgo+IEhpIFpl
bmdodWksCj4gCj4gT24gMjAyMC0wMi0xOCAwNzoyNSwgWmVuZ2h1aSBZdSB3cm90ZToKPj4gSGkg
TWFyYywKPiAKPiBbLi4uXQo+IAo+Pj4gwqDCoMKgIHN0YXRpYyB2b2lkIGl0c19zZ2lfaXJxX2Rv
bWFpbl9kZWFjdGl2YXRlKHN0cnVjdCBpcnFfZG9tYWluICpkb21haW4sCj4+PiDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVjdCBpcnFfZGF0YSAqZCkK
Pj4+IMKgIHsKPj4+IC3CoMKgwqAgLyogTm90aGluZyB0byBkbyAqLwo+Pj4gK8KgwqDCoCBzdHJ1
Y3QgaXRzX3ZwZSAqdnBlID0gaXJxX2RhdGFfZ2V0X2lycV9jaGlwX2RhdGEoZCk7Cj4+PiArCj4+
PiArwqDCoMKgIHZwZS0+c2dpX2NvbmZpZ1tkLT5od2lycV0uZW5hYmxlZCA9IGZhbHNlOwo+Pj4g
K8KgwqDCoCBpdHNfY29uZmlndXJlX3NnaShkLCB0cnVlKTsKPj4KPj4gVGhlIHNwZWMgc2F5cywg
d2hlbiBDPT0xLCBWU0dJIGNsZWFycyB0aGUgcGVuZGluZyBzdGF0ZSBvZiB0aGUgdlNHSSwKPj4g
bGVhdmluZyB0aGUgY29uZmlndXJhdGlvbiB1bmNoYW5nZWQuwqAgU28gc2hvdWxkIHdlIGZpcnN0
IGNsZWFyIHRoZQo+PiBwZW5kaW5nIHN0YXRlIGFuZCB0aGVuIGRpc2FibGUgdlNHSSAobGV0IEU9
PTApPwo+IAo+IFJpZ2h0IHlvdSBhcmUgYWdhaW4uIFdlIG5lZWQgdHdvIGNvbW1hbmRzLCBub3Qg
anVzdCBvbmUgKHRoZSBwc2V1ZG9jb2RlIGlzCj4gcHJldHR5IGV4cGxpY2l0KS4KCldpdGggdGhh
dCBjaGFuZ2UsCgpSZXZpZXdlZC1ieTogWmVuZ2h1aSBZdSA8eXV6ZW5naHVpQGh1YXdlaS5jb20+
CgoKVGhhbmtzCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
