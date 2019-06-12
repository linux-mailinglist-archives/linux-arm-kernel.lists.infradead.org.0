Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 454D741F83
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 10:44:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8vux2EidERzGOUsCqViRBGsRm5idN4daRJ7f91/R2Q0=; b=Tt/z6SAhYCrHJ0
	KnnLISlDnW1uoFu/FyQo5S6PTJ3JY1i1mBCgSS49XurccoEupHOh3xGxPcaQM1l1aFpZMwNNpfTiX
	4GGkIXAE8kRGCYrEcP8zd3OllcgYpna2qoTfpWnvaimaa7U34bajAXmpcK7Ih3w6U5fPhwGU5LWRP
	uatnu5V8GRraoEYB8JfhSXQUvYuI+fmW+YnWZseFug0eCfJQOjsgLW8P8YonF+V0+Gy3Kt+EPLET9
	bVhNI985xER5AuyyCGS/qPkgm7gVuWXDqwBlpBMAwyelH+wzr97tpaD69NSTy4KCnX2NqLLYBtnTZ
	a2JZYaq4t4xniOP7fFZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hayrv-0000md-HN; Wed, 12 Jun 2019 08:44:31 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayri-0000lv-4F
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 08:44:19 +0000
Received: from localhost (unknown [131.228.32.190])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id E27C6200006;
 Wed, 12 Jun 2019 08:44:06 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Jan =?utf-8?Q?Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>, Russell King - ARM
 Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
In-Reply-To: <44a6f83c-f59a-4a6a-b38f-a204b38946c0@cesnet.cz>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
 <87mujkzwkr.fsf@FE-laptop> <0609d750-de5e-49cb-97b5-43772c5bbe0d@cesnet.cz>
 <0f5e7886-f722-44ac-b64f-1f372a52938d@cesnet.cz> <87wohspdi7.fsf@FE-laptop>
 <20190611143239.3v2cpg5o4u5gxzzw@shell.armlinux.org.uk>
 <87pnnkp3i1.fsf@FE-laptop> <537260c6-184e-421e-8d29-414da62a747d@cesnet.cz>
 <20190611153147.djcbzgeea2chn7ic@shell.armlinux.org.uk>
 <44a6f83c-f59a-4a6a-b38f-a204b38946c0@cesnet.cz>
Date: Wed, 12 Jun 2019 10:44:04 +0200
Message-ID: <87muinp50r.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_014418_333188_A265EE6A 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Baruch Siach <baruch@tkos.co.il>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SmFuIEt1bmRyw6F0IDxqYW4ua3VuZHJhdEBjZXNuZXQuY3o+IHdyaXRlczoKCj4+PiBJIGhhdmUg
bm90IGJpc2VjdGVkLCBidXQgSSB0aGluayB0aGF0IGl0IGlzIGR1ZSB0byAKPj4+IGh0dHBzOi8v
Z2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4Lmdp
dC9jb21taXQvP2lkPWExMGMxYzgxOTFlMDRjMjE3Njk2NTZjMmNhOGUxYzY5YTYyMTg5NTQKPj4+
IAo+Pj4gTm8gZ3VhcmFudGVlcyB0aGVyZSwgdGhvdWdoLgo+Pgo+PiBDb3JyZWN0LCB3aGljaCBt
ZWFucyBpdCBkb2VzIG5lZWQgYmFja3BvcnRpbmcgdG8gNS4xLCBzaW5jZSB0aGF0IHdhcwo+PiBp
bnRyb2R1Y2VkIGluIHRoZSA1LjEgbWVyZ2Ugd2luZG93Lgo+Cj4gLi4ud2hpY2ggbWVhbnMgdGhh
dCBJIG1hZGUgYSBtaXN0YWtlIGR1cmluZyBteSBpbml0aWFsIHJlcG9ydC4gSWYgaXQncyBpbiAK
PiA1LjEgYWxyZWFkeSwgdGhlbiA1LjEgY291bGQgbm90IGhhdmUgd29ya2VkIGZvciBtZS4gU29y
cnkgZm9yIGNvbmZ1c2lvbiwgCj4gaXQncyBxdWl0ZSBwb3NzaWJsZSB0aGF0IEkgY29tcGFyZWQg
NS4yLXJjWCB3aXRoIDUuMC55LgoKU28gSSBhZGRlZCB0aGUgRml4ZXMgdGFnIGFuZCBjb3JyZWN0
IHRoZSBjb21taXQgbG9nLCBtZW50aW9uaW5nIDUuMQppbnN0ZWFkIG9mIDUuMi4KClRoZSBjb21t
aXQgaXMgaW4gbXZlYnUvZml4ZXMgYW5kIGZvci1uZXh0IG9uCmdpdDovL2dpdC5pbmZyYWRlYWQu
b3JnL2xpbnV4LW12ZWJ1LmdpdCBhbmQgd2lsbCBiZSBwYXJ0IG9mIHRoZSBGaXhlcwpwdWxsIHJl
cXVlc3QgSSB3aWxsIGRvIGF0IHRoZSBlbmQgb2YgdGhlIHdlZWsuCgpHcmVnb3J5Cgo+Cj4gSmFu
Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+IGxp
bnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cj4gbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCgotLSAKR3JlZ29yeSBDbGVtZW50LCBCb290bGluCkVtYmVkZGVkIExp
bnV4IGFuZCBLZXJuZWwgZW5naW5lZXJpbmcKaHR0cDovL2Jvb3RsaW4uY29tCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
