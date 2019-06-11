Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 852453D07F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 17:13:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-ID:MIME-Version:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fpt1cbLtmkPS/ko7yY+xh9ABgus2AccDLcWiNv6+1tw=; b=thvuZaYcSTnG4sHzSCMHDKr8b
	8PKZ/uX3t8zwde527RqWsvMv4PMpa2N/ISzq3xEmYBD+uXUupvVubVANvVlldCrBc1rK7quBEQGas
	QfgcujHFX1vXHezHBXkznfoD0mGmDcgv4pAISmB9qgH6I28Y1jnpWoYjNDg02exnrodivR7dT7Kvc
	CX9W7rDgum4aA739hUVdYB0LzqxzfG+6YHq/chMscfyEQEEJ3VrIl6QBj9eHm+sz8GhF/oUraOAwO
	Be4slxxShPs5qAARxjHKhvImGsbFDhbnFNZvqCV7zN/Mnz7jRwEdRktdFoKgXyIOV2WnhY6fCzgOT
	P+AZrD8TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haiSK-00010w-NU; Tue, 11 Jun 2019 15:13:00 +0000
Received: from office2.cesnet.cz ([2001:718:1:101::144:244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haiS8-00010P-6m
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 15:12:49 +0000
Received: from localhost (ip-78-45-211-99.net.upcbroadband.cz [78.45.211.99])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by office2.cesnet.cz (Postfix) with ESMTPSA id 5B69C400073;
 Tue, 11 Jun 2019 17:12:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cesnet.cz;
 s=office2; t=1560265965;
 bh=viRMmmv5jL+7nfy7AiyXOy4AJQ/JwpNjurf8VOHo06E=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=g3C7p0yQyOuc6YJ5OXB44jTG4BCqNl4p+LJDLj84b9zgyaIHNbcSKnZoFiWw/L8ux
 bsdUOCgOryHUkm9xqNFs6mgswNN20pvNKBGK5vAqN6FRBJwMjzbRJJgeiFeJZSMyMX
 j0dmMS0Wh3BcgW77QHti4ouMmwZNiRCm/HB33Uek=
From: =?iso-8859-1?Q?Jan_Kundr=E1t?= <jan.kundrat@cesnet.cz>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] ARM:
 =?iso-8859-1?Q?mvebu=5Fv7=5Fdefconfig:_fix_Ethernet_on_Clearfog?=
Date: Tue, 11 Jun 2019 17:12:45 +0200
MIME-Version: 1.0
Message-ID: <537260c6-184e-421e-8d29-414da62a747d@cesnet.cz>
In-Reply-To: <87pnnkp3i1.fsf@FE-laptop>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz> <87wohspdi7.fsf@FE-laptop>
 <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
 <87pnnkp3i1.fsf@FE-laptop>
Organization: CESNET
User-Agent: Trojita/v0.7-402-g68ee77c9; Qt/5.13.0; xcb; Linux;
 Gentoo Base System release 2.4.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_081248_400600_4B13107A 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:718:1:101:0:0:144:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gw7p0ZXLDvSAxMS4gxI1lcnZuYSAyMDE5IDE3OjA0OjM4IENFU1QsIEdyZWdvcnkgQ0xFTUVO
VCB3cm90ZToKPiBKYW4sIGRvIHlvdSBmaW5kIHdoaWNoIGV4YWN0IGNvbW1pdCBjYXVzZSB0aGlz
IHJlZ3Jlc3Npb24/CgpJIGhhdmUgbm90IGJpc2VjdGVkLCBidXQgSSB0aGluayB0aGF0IGl0IGlz
IGR1ZSB0byAKaHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQv
dG9ydmFsZHMvbGludXguZ2l0L2NvbW1pdC8/aWQ9YTEwYzFjODE5MWUwNGMyMTc2OTY1NmMyY2E4
ZTFjNjlhNjIxODk1NAoKTm8gZ3VhcmFudGVlcyB0aGVyZSwgdGhvdWdoLgoKQ2hlZXJzLApKYW4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
