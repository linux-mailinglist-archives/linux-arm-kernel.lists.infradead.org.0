Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1488721ECD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 21:54:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dPL8WSw/iItjN8P/HuaVZN7Hidqo40wa9pK5uShpbGo=; b=trmvrwC9MpscAE
	DXxlxB8Sh7LMctx67cAQVB5RuRheBBpPRsaAzUwH2jTUpoK1TklLqVd1o4YizAUD+7i52wr02azbM
	G0SohPT/mB1sc1P+863c1pdnkJljGqqc6eaZkr1962R2fTTaWrBMz+ASR4mqsSiT6qai9hU+at5Yp
	wRVI5HPb3eBi4r3TR810daGgvgPVbSBiPE/TpLiw/ikUgQ9hFbJc6HzWA85a1aQyPVI29Jh2EoO5Q
	rlDm5SwIFQSjewz5exh6n14pSDvuumJwLmpH4lZSwPaLcGLbffxr9XVnyz9luVIp6jPbGrBzZJRb9
	nr2Mr6U7ijoL8ZFIV+tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRivo-0004rh-UA; Fri, 17 May 2019 19:54:16 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRivh-0004rK-Nm
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 19:54:11 +0000
Received: from localhost (87-231-134-186.rev.numericable.fr [87.231.134.186])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 97FAB20000C;
 Fri, 17 May 2019 19:53:56 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Jan =?utf-8?Q?Kundr=C3=A1t?= <jan.kundrat@cesnet.cz>
Subject: Re: [PATCH] ARM: mvebu_v7_defconfig: fix Ethernet on Clearfog
In-Reply-To: <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
References: <8f2f4c517f1664f362badc2a0f9af8e3531cba87.1558105715.git.jan.kundrat@cesnet.cz>
 <87pnogzxmy.fsf@FE-laptop> <871fc85b-5f0a-40a4-ade2-0701796bcd9a@cesnet.cz>
Date: Fri, 17 May 2019 21:53:56 +0200
Message-ID: <87mujkzwkr.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_125409_921442_943A1EDD 
X-CRM114-Status: UNSURE (   7.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Russell King <rmk+kernel@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SmFuIEt1bmRyw6F0IDxqYW4ua3VuZHJhdEBjZXNuZXQuY3o+IHdyaXRlczoKCj4+IEFwcGxpZWQg
b24gbXZlYnUvYXJtLTUuMwo+Cj4gVG8gbWUgdGhpcyBsb29rcyBsaWtlIGEgNS4yIG1hdGVyaWFs
IGJlY2F1c2UgaXQgZml4ZXMgYSByZWdyZXNzaW9uIHRoYXQgZ290IAo+IGludHJvZHVjZWQgd2l0
aGluIHRoZSA1LjIgY3ljbGUuIE9yIGRpZCBJIGdldCB0aGUgcHJvY2VzcyB3cm9uZyBhbmQgdGhp
cyBpcyAKPiBwZXJoYXBzIGp1c3QgYSBmaXJzdCBzdGVwPwoKV2VsbCwgdGhpcyBpcyBqdXN0IGFi
b3V0IGNvbmZpZ3VyYXRpb24sIEkgZG9uJ3QgY29uc2lkZXIgdGhpcyBpcwpzb21ldGhpbmcgdGhh
dCBpcyBhIGNhbmRpZGF0ZSBmb3IgYSBmaXguCgpJZiB0aGVyZSBpcyBhIHJlZ3Jlc3Npb24sIHRo
ZW4sIGl0IGlzIG1heWJlIGxvY2F0ZWQgaW4gdGhlIEtjb25maWcKZGVwZW5kZW5jeS4KCk9mIGNv
dXJzZSBJIGNhbiBjaGFuZ2UgbXkgbWluZCB3aXRoIGdvb2QgYXJndW1lbnRzIDopCgpHcmVnb3J5
Cgo+Cj4gQ2hlZXJzLAo+IEphbgoKLS0gCkdyZWdvcnkgQ2xlbWVudCwgQm9vdGxpbgpFbWJlZGRl
ZCBMaW51eCBhbmQgS2VybmVsIGVuZ2luZWVyaW5nCmh0dHA6Ly9ib290bGluLmNvbQoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
