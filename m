Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 559EDF45BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 12:31:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:From:To:Subject:MIME-Version
	:References:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cqA6aY7x53MrB77N48ZAbWsXUYUq6bg8ebmHq+Qu1pU=; b=PG56DVIbJLX19g
	tYdjDQmOc+GRh2byP/4WMWYLHQrURIRxRyO8U1U/jbbgGVM4qMi5/zzo3386nTvtcIwBOGNdbK4c8
	/eazykh4ZCtu2rJZg0ytYwQVzcciKcxI4KXLqo1I/o4kXdldjEsRKixhCR1LddHgZClbuIm2F/OZI
	TbXoW+eozV3Etyr30Q3O+jD+X+eroT+ZZO2Jz0x/ixQF8vVjk2wdizP472t749VDtjZufTqLkpimd
	jhM4Xh79KxVJcUyF/As+V4c4Qm0ixDHTy4/yfX035dLlNLYKTmYJjqIKiQcgHLVOvNb9YtNrQ3otm
	wDjeo4jtAylB0kWglegQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT2Uc-0004l5-G0; Fri, 08 Nov 2019 11:31:54 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT2US-0004kX-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 11:31:45 +0000
Received: from [199.195.250.187] (port=44020 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92.3)
 (envelope-from <icenowy@aosc.io>)
 id 1iT2T2-0007Mv-7W; Fri, 08 Nov 2019 11:31:28 +0000
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id C845041447;
 Fri,  8 Nov 2019 11:29:51 +0000 (UTC)
Date: Fri, 08 Nov 2019 19:29:21 +0800
In-Reply-To: <20191107214514.kcz42mcehyrrif4o@core.my.home>
References: <20191020134229.1216351-3-megous@megous.com>
 <20191107204645.13739-1-rikard.falkeborn@gmail.com>
 <20191107214514.kcz42mcehyrrif4o@core.my.home>
MIME-Version: 1.0
Subject: Re: [PATCH] phy: allwinner: Fix GENMASK misuse
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megous@megous.com>,
 Rikard Falkeborn <rikard.falkeborn@gmail.com>
From: Icenowy Zheng <icenowy@aosc.io>
Message-ID: <F563E52E-72BF-4297-A14F-DDE2B490DADB@aosc.io>
X-BlackCat-Spam-Score: 14
X-Spam-Status: No, score=1.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_033144_595366_1A46403B 
X-CRM114-Status: GOOD (  13.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org, mripard@kernel.org,
 kishon@ti.com, paul.kocialkowski@bootlin.com, linux-sunxi@googlegroups.com,
 robh+dt@kernel.org, tglx@linutronix.de, wens@csie.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cgrkuo4gMjAxOeW5tDEx5pyIOOaXpSBHTVQrMDg6MDAg5LiK5Y2INTo0NToxNCwgIk9uZMWZZWog
SmlybWFuIiA8bWVnb3VzQG1lZ291cy5jb20+IOWGmeWIsDoKPkhlbGxvIFJpa2FyZCwKPgo+T24g
VGh1LCBOb3YgMDcsIDIwMTkgYXQgMDk6NDY6NDVQTSArMDEwMCwgUmlrYXJkIEZhbGtlYm9ybiB3
cm90ZToKPj4gQXJndW1lbnRzIGFyZSBzdXBwb3NlZCB0byBiZSBvcmRlcmVkIGhpZ2ggdGhlbiBs
b3cuCj4+IAo+PiBTaWduZWQtb2ZmLWJ5OiBSaWthcmQgRmFsa2Vib3JuIDxyaWthcmQuZmFsa2Vi
b3JuQGdtYWlsLmNvbT4KPj4gLS0tCj4+IFNwb3R0ZWQgd2hpbGUgdHJ5aW5nIHRvIGFkZCBjb21w
aWxlIHRpbWUgY2hlY2tzIG9mIEdFTk1BU0sgYXJndW1lbnRzLgo+PiBQYXRjaCBoYXMgb25seSBi
ZWVuIGNvbXBpbGUgdGVzdGVkLgo+Cj50aGFuayB5b3UhCj4KPlRlc3RlZC1ieTogT25kcmVqIEpp
cm1hbiA8bWVnb3VzQG1lZ291cy5jb20+CgpEb2VzIGl0IGFmZmVjdCBvciBmaXggdGhlIHBlcmZv
cm1hbmNlPwoKPgo+cmVnYXJkcywKPglvLgo+Cj4+ICBkcml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5
LXN1bjUwaS11c2IzLmMgfCAyICstCj4+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyks
IDEgZGVsZXRpb24oLSkKPj4gCj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9hbGx3aW5uZXIv
cGh5LXN1bjUwaS11c2IzLmMKPmIvZHJpdmVycy9waHkvYWxsd2lubmVyL3BoeS1zdW41MGktdXNi
My5jCj4+IGluZGV4IDExNjlmM2U4M2E2Zi4uYjFjMDRmNzFhMzFkIDEwMDY0NAo+PiAtLS0gYS9k
cml2ZXJzL3BoeS9hbGx3aW5uZXIvcGh5LXN1bjUwaS11c2IzLmMKPj4gKysrIGIvZHJpdmVycy9w
aHkvYWxsd2lubmVyL3BoeS1zdW41MGktdXNiMy5jCj4+IEBAIC00OSw3ICs0OSw3IEBACj4+ICAj
ZGVmaW5lIFNVTlhJX0xPU19CSUFTKG4pCQkoKG4pIDw8IDMpCj4+ICAjZGVmaW5lIFNVTlhJX0xP
U19CSUFTX01BU0sJCUdFTk1BU0soNSwgMykKPj4gICNkZWZpbmUgU1VOWElfVFhWQk9PU1RMVkwo
bikJCSgobikgPDwgMCkKPj4gLSNkZWZpbmUgU1VOWElfVFhWQk9PU1RMVkxfTUFTSwkJR0VOTUFT
SygwLCAyKQo+PiArI2RlZmluZSBTVU5YSV9UWFZCT09TVExWTF9NQVNLCQlHRU5NQVNLKDIsIDAp
Cj4+ICAKPj4gIHN0cnVjdCBzdW41MGlfdXNiM19waHkgewo+PiAgCXN0cnVjdCBwaHkgKnBoeTsK
Pj4gLS0gCj4+IDIuMjQuMAo+PiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJu
ZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
