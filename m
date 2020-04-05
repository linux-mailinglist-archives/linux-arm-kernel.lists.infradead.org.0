Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CD1E319E8A8
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 04:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vhXdCQ4dtdK/3iGcmQjp7sD1Di+WJOFp79UN/7A9pv8=; b=gyS3tJFk+ocVXQ
	Acm2HFVJ97zTEWUPtfh8gEWe/Ad8Gzzb3XYc+vX+aZ90loyV2Y7pgtsT21Bcbnea0Fo5FGBq4poqM
	MeNYUd5q5J1/jaOxBiX5C4FxCHDLbBBg2agHY5xCDV1JTw1sGJChvY7jEJ9x38T6MOD0fl1fN7S6c
	Ea519RTPx773O+9O82pgEjnar/L49tWcK4QUaxjo88M6NXQwQJcckA4UBEye8FWch6gLqnd72oO9c
	Yd8ImuMUO7Yz4r0/KtsQL6c/WIrV22Fk5fE4nitg5NGfV7VDX6aRa7Fb9fnicZ6iFthQ350JXI5vy
	5NS1qZRJk/i+LuAwDieg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKvOZ-0006fl-Ou; Sun, 05 Apr 2020 02:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKvNf-0005zb-EN
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 02:51:30 +0000
Received: from mail.kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBA4A20672;
 Sun,  5 Apr 2020 02:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586055084;
 bh=428hrrLxGizYnfH4HkarazHDCjrvG1Td0mnE3ucsAuY=;
 h=From:To:Cc:Subject:Date:From;
 b=Bc7UTDRuEj52rjnEs57bgWoC+e2mCZiOxvX0KNY8ZEJPxGk8GcwIKASqSyHqkJJqQ
 MsuQuLU82GKZJHqo7c9US+ROPKQ6vM9fcMvFqd67YMmQ90Xq3ga0Xa/Sl2G9umEFNb
 A+I9rRoQoBfN74UrcFzf5/gfxqmzgezvAE2cBP0c=
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 0/9] Allow COMMON_CLK to be selectable
Date: Sat,  4 Apr 2020 19:51:14 -0700
Message-Id: <20200405025123.154688-1-sboyd@kernel.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200404_195127_518559_6D24BA04 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Rich Felker <dalias@libc.org>, linux-sh@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, chenhc@lemote.com,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Alexander Shiyan <shc_work@mail.ru>,
 Russell King <linux@armlinux.org.uk>,
 Yoshinori Sato <ysato@users.sourceforge.jp>,
 Geert Uytterhoeven <geert@linux-m68k.org>, Mark Salter <msalter@redhat.com>,
 Thierry Reding <treding@nvidia.com>, uclinux-h8-devel@lists.sourceforge.jp,
 Arnd Bergmann <arnd@arndb.de>, Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Lubomir Rintel <lkundrak@v3.sk>, linux-m68k@lists.linux-m68k.org,
 Mark Brown <broonie@kernel.org>, Guan Xuetao <gxt@pku.edu.cn>,
 linux-arm-kernel@lists.infradead.org, Paul Walmsley <paul@pwsan.com>,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-kernel@vger.kernel.org,
 Tony Prisk <linux@prisktech.co.nz>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhpcyBwYXRjaCBzZXJpZXMgY2xlYW5zIHVwIGEgaGFuZGZ1bCBvZiBzZWxlY3RzIHRoYXQgd2Vy
ZSByZWR1bmRhbnQgYW5kCmRlbGV0ZXMgcHJlc3VtYWJseSBkZWFkIGNvZGUgd2l0aCB0aGUgZ29h
bCBvZiBtYWtpbmcgaXQgcG9zc2libGUgdG8gYWRkCmt1bml0IHRlc3RzIGZvciB0aGUgQ0NGIGlu
IHRoZSBmdXR1cmUuIFRvIGRvIHRoYXQsIHdlIGludHJvZHVjZSBhCiJsZWdhY3kiIGNsayBLY29u
ZmlnIG9wdGlvbiB0byBtYXJrIGNvZGUgdGhhdCBoYXNuJ3QgbWlncmF0ZWQgdG8gdGhlCmNvbW1v
biBjbGsgZnJhbWV3b3JrIGFuZCB0aGVuIG1ha2UgdGhlIENPTU1PTl9DTEsgY29uZmlnIG9wdGlv
biB2aXNpYmxlCmluIHRoZSBtZW51Y29uZmlnIGFzIGxvbmcgYXMgdGhhdCBsZWdhY3kgb3B0aW9u
IGlzbid0IGVuYWJsZWQuIEkndmUgYWxzbwppbmNsdWRlZCBhIGNvdXBsZSBwYXRjaGVzIGF0IHRo
ZSBlbmQgdGhhdCBtYXkgYmUgbW9yZSBjb250cm92ZXJzaWFsIGJ1dApoZWxwZWQgbWUgY29uc29s
aWRhdGUgYWxsIHRoaXMgbG9naWMvY29kZS4KCkkgaGF2ZW4ndCBkb25lIG1vcmUgdGhhbiBjb21w
aWxlIHRlc3QgYSBmZXcgY29uZmlncyBmb3IgYXJtLCBhcm02NCwKaDgzMDAsIGFuZCBtaXBzLiBN
b3JlIHRlc3RpbmcgaXMgd2VsY29tZS4KClRoZSBwbGFuIGlzIHRoYXQgSSdsbCBqdXN0IG1lcmdl
IHRoZSB3aG9sZSBwaWxlIHRocm91Z2ggdGhlIGNsayB0cmVlLiBJZgp0aGUgZmlyc3QgZml2ZSBw
YXRjaGVzIG9yIHRoZSBsYXN0IHRocmVlIHBhdGNoZXMgYXJlIGJldHRlciBnb2luZwp0aHJvdWdo
IGFub3RoZXIgdHJlZSBsaWtlIGFybS1zb2Mgb3IgYXJjaGl0ZWN0dXJlIHRyZWVzIHRoYXQncyBm
aW5lIHRvbywKYnV0IHRoZXJlIGFyZSBwb3RlbnRpYWwgY29uZmxpY3RzIGJldHdlZW4gdHJlZXMg
c28gbWF5YmUgaXQncyBiZXR0ZXIgdG8KanVzdCBsZWF2ZSBpdCBhbGwgaW4gb25lIHRyZWUuCgpT
dGVwaGVuIEJveWQgKDkpOgogIEFSTTogUmVtb3ZlIHJlZHVuZGFudCBDT01NT05fQ0xLIHNlbGVj
dHMKICBBUk06IFJlbW92ZSByZWR1bmRhbnQgQ0xLREVWX0xPT0tVUCBzZWxlY3RzCiAgYXJtNjQ6
IHRlZ3JhOiBSZW1vdmUgcmVkdW5kYW50IENMS0RFVl9MT09LVVAgc2VsZWN0cwogIGg4MzAwOiBS
ZW1vdmUgcmVkdW5kYW50IENMS0RFVl9MT09LVVAgc2VsZWN0cwogIE1JUFM6IFJlbW92ZSByZWR1
bmRhbnQgQ0xLREVWX0xPT0tVUCBzZWxlY3RzCiAgY2xrOiBBbGxvdyB0aGUgY29tbW9uIGNsayBm
cmFtZXdvcmsgdG8gYmUgc2VsZWN0YWJsZQogIEFSTTogbW1wOiBSZW1vdmUgbGVnYWN5IGNsayBj
b2RlCiAgTUlQUzogTG9vbmdzb242NDogRHJvcCBhc20vY2xvY2suaCBpbmNsdWRlCiAgY2xrOiBN
b3ZlIEhBVkVfQ0xLIGNvbmZpZyBvdXQgb2YgYXJjaGl0ZWN0dXJlIGxheWVyCgpDYzogQWxleGFu
ZGVyIFNoaXlhbiA8c2hjX3dvcmtAbWFpbC5ydT4KQ2M6ICJBbmRyZWFzIEbDpHJiZXIiIDxhZmFl
cmJlckBzdXNlLmRlPgpDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KQ2M6IEF1cmVs
aWVuIEphY3F1aW90IDxqYWNxdWlvdC5hdXJlbGllbkBnbWFpbC5jb20+CkNjOiBDYXRhbGluIE1h
cmluYXMgPGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgpDYzogPGNoZW5oY0BsZW1vdGUuY29tPgpD
YzogR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KQ2M6IEd1YW4gWHVl
dGFvIDxneHRAcGt1LmVkdS5jbj4KQ2M6IEppYXh1biBZYW5nIDxqaWF4dW4ueWFuZ0BmbHlnb2F0
LmNvbT4KQ2M6IDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+CkNjOiA8bGlu
dXgtYzZ4LWRldkBsaW51eC1jNngub3JnPgpDYzogPGxpbnV4LW02OGtAbGlzdHMubGludXgtbTY4
ay5vcmc+CkNjOiA8bGludXgtbWlwc0B2Z2VyLmtlcm5lbC5vcmc+CkNjOiA8bGludXgtc2hAdmdl
ci5rZXJuZWwub3JnPgpDYzogTHVib21pciBSaW50ZWwgPGxrdW5kcmFrQHYzLnNrPgpDYzogTWFu
aXZhbm5hbiBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KQ2M6
IE1hcmsgQnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KQ2M6IE1hcmsgU2FsdGVyIDxtc2FsdGVy
QHJlZGhhdC5jb20+CkNjOiBQYXVsIEJ1cnRvbiA8cGF1bGJ1cnRvbkBrZXJuZWwub3JnPgpDYzog
UGF1bCBXYWxtc2xleSA8cGF1bEBwd3Nhbi5jb20+CkNjOiBSaWNoIEZlbGtlciA8ZGFsaWFzQGxp
YmMub3JnPgpDYzogUnVzc2VsbCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+CkNjOiBUaGll
cnJ5IFJlZGluZyA8dHJlZGluZ0BudmlkaWEuY29tPgpDYzogVGhvbWFzIEJvZ2VuZG9lcmZlciA8
dHNib2dlbmRAYWxwaGEuZnJhbmtlbi5kZT4KQ2M6IFRvbnkgUHJpc2sgPGxpbnV4QHByaXNrdGVj
aC5jby5uej4KQ2M6IHVjbGludXgtaDgtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UuanAKQ2M6IFdp
bGwgRGVhY29uIDx3aWxsQGtlcm5lbC5vcmc+CkNjOiBZb3NoaW5vcmkgU2F0byA8eXNhdG9AdXNl
cnMuc291cmNlZm9yZ2UuanA+CgogYXJjaC9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgfCAg
IDYgLS0KIGFyY2gvYXJtL0tjb25maWcgICAgICAgICAgICAgICAgIHwgICA1ICstCiBhcmNoL2Fy
bS9tYWNoLWFjdGlvbnMvS2NvbmZpZyAgICB8ICAgMSAtCiBhcmNoL2FybS9tYWNoLWNscHM3MTF4
L0tjb25maWcgICB8ICAgMSAtCiBhcmNoL2FybS9tYWNoLW1tcC9LY29uZmlnICAgICAgICB8ICAg
MSAtCiBhcmNoL2FybS9tYWNoLW1tcC9NYWtlZmlsZSAgICAgICB8ICAgNiAtLQogYXJjaC9hcm0v
bWFjaC1tbXAvY2xvY2stbW1wMi5jICAgfCAxMTQgLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQogYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2stcHhhMTY4LmMgfCAgOTQgLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2stcHhhOTEwLmMgfCAgNzAgLS0t
LS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2suYyAgICAgICAgfCAxMDUg
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQogYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2suaCAg
ICAgICAgfCAgNjUgLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybS9tYWNoLXZ0ODUwMC9LY29u
ZmlnICAgICB8ICAgMSAtCiBhcmNoL2FybTY0L0tjb25maWcucGxhdGZvcm1zICAgICB8ICAgMSAt
CiBhcmNoL2M2eC9LY29uZmlnICAgICAgICAgICAgICAgICB8ICAgMSArCiBhcmNoL2g4MzAwL0tj
b25maWcgICAgICAgICAgICAgICB8ICAgMSAtCiBhcmNoL202OGsvS2NvbmZpZy5jcHUgICAgICAg
ICAgICB8ICAgMiArLQogYXJjaC9taXBzL0tjb25maWcgICAgICAgICAgICAgICAgfCAgIDggKy0t
CiBhcmNoL21pcHMvbG9vbmdzb24yZWYvS2NvbmZpZyAgICB8ICAgMiArLQogYXJjaC9taXBzL2xv
b25nc29uNjQvc21wLmMgICAgICAgfCAgIDEgLQogYXJjaC9zaC9ib2FyZHMvS2NvbmZpZyAgICAg
ICAgICAgfCAgIDUgKysKIGFyY2gvdW5pY29yZTMyL0tjb25maWcgICAgICAgICAgIHwgICAyICst
CiBkcml2ZXJzL2Nsay9LY29uZmlnICAgICAgICAgICAgICB8ICAyMyArKysrKy0tCiAyMiBmaWxl
cyBjaGFuZ2VkLCAzNCBpbnNlcnRpb25zKCspLCA0ODEgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9k
ZSAxMDA2NDQgYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2stbW1wMi5jCiBkZWxldGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2stcHhhMTY4LmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybS9tYWNoLW1tcC9jbG9jay1weGE5MTAuYwogZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gv
YXJtL21hY2gtbW1wL2Nsb2NrLmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLW1t
cC9jbG9jay5oCgoKYmFzZS1jb21taXQ6IDcxMTE5NTFiOGQ0OTczYmRhMjdmZjY2M2YyY2YxOGI2
NjNkMTViNDgKLS0gClNlbnQgYnkgYSBjb21wdXRlciwgdXNpbmcgZ2l0LCBvbiB0aGUgaW50ZXJu
ZXQKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
