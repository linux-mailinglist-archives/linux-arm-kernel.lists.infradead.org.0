Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191C0164856
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 16:18:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/7KxuMSx7KUB1cdg5GziKJEfLnuvmWBtf7wPHYJksQU=; b=uNUkP8IKGc3Xx2BOgFb5g5yAO
	V4qw+uA4Xo7F0WosTC+kruh0KnDaOjNp7pzfG5GFReMNS0GEMhfyPaWdWzjSaLIuQuyPioU18ZClu
	dhy4VPHp85h3TkxKHYO9UKAbIg7yDe/xTVx4+Ty9Hs2hbGjegqxZVlCtJXOJK42RxNMW0qAMzDdtZ
	v9/FoCTl9tDxeSckMcNejuIh5yzj1Hc8TMBCfV4eKgFkNOkfyI4hKVkZ7lFiJSbtqaEPsNZRqjKB8
	7LB9zrRyBUBUl6KqAqI5lLIDHszcfyW98Gjm0BIhAUMAItgYLJeBeYeU+JpP4qLcYSfwgPnKs9bZf
	Cgu7CQENg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4R7g-0003Ne-KC; Wed, 19 Feb 2020 15:18:48 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4R7V-0003Ee-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 15:18:39 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 8FBB9C63BB00B34477CF;
 Wed, 19 Feb 2020 23:18:27 +0800 (CST)
Received: from [127.0.0.1] (10.173.222.27) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Wed, 19 Feb 2020
 23:18:19 +0800
Subject: Re: [PATCH v4 08/20] irqchip/gic-v4.1: Plumb get/set_irqchip_state
 SGI callbacks
From: Zenghui Yu <yuzenghui@huawei.com>
To: Marc Zyngier <maz@kernel.org>
References: <20200214145736.18550-1-maz@kernel.org>
 <20200214145736.18550-9-maz@kernel.org>
 <4b7f71f1-5e7f-e6af-f47d-7ed0d3a8739f@huawei.com>
 <75597af0d2373ac4d92d8162a1338cbb@kernel.org>
 <19a7c193f0e4b97343e822a35f0911ed@kernel.org>
 <8db95a86-0981-710b-6c82-be7f7f844151@huawei.com>
Message-ID: <8c538d2e-5ec8-0fd0-8999-e43a847df4c1@huawei.com>
Date: Wed, 19 Feb 2020 23:18:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <8db95a86-0981-710b-6c82-be7f7f844151@huawei.com>
Content-Language: en-US
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_071837_935590_7CF67A8B 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

T24gMjAyMC8yLzE5IDE5OjUwLCBaZW5naHVpIFl1IHdyb3RlOgo+IDMuIGl0IGxvb2tzIGxpa2Ug
S1ZNIG1ha2VzIHRoZSBhc3N1bXB0aW9uIHRoYXQgdGhlIHBlci1SRCBNTUlPIHJlZ2lvbgo+IHdp
bGwgb25seSBiZSBhY2Nlc3NlZCBieSB0aGUgYXNzb2NpYXRlZCBWQ1BVP8KgIEJ1dCBJIHRoaW5r
IHRoaXMncyBub3QKPiByZXN0cmljdGVkIGJ5IHRoZSBhcmNoaXRlY3R1cmUsIHdlIGNhbiBkbyBp
dCBiZXR0ZXIuwqAgT3IgSSd2ZSBqdXN0Cj4gbWlzc2VkIHNvbWUgaW1wb3J0YW50IHBvaW50cyBo
ZXJlLgoKKEFmdGVyIHNvbWUgYmFzaWMgdGVzdHMsIEtWTSBhY3R1YWxseSBkb2VzIHRoZSByaWdo
dCB0aGluZyEpClNvIEkgbXVzdCBoYXZlIHNvbWUgbWlzLXVuZGVyc3RhbmRpbmcgb24gdGhpcyBw
b2ludCwgcGxlYXNlCmlnbm9yZSBpdC4gIEknbGwgZGlnIGl0IGZ1cnRoZXIgbXlzZWxmLCBzb3Jy
eSBmb3IgdGhlIG5vaXN5LgoKClRoYW5rcywKWmVuZ2h1aQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
