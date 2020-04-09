Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0F4B1A2F6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 08:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OkqQJdr5tb8YhYPrE40+6feDdF7i/xuxfp8IiHcNlTM=; b=JOOZyE7OAX5afG
	lUY1QdgzJQPVQ8q70G+kfl/41R8fsTuFfJQKStTs3Au6BEjbqxg427wqMUfIdN2tGuJ6R1cS9T0iW
	SUuURMRl6RgjwDGyZK0qJF47DQROqCog/SDFQPpqESyctKfAPT/kQcwmlo+isiGDDKaD+L9WVfdyD
	dFAFpiE1FHIpRwV7PDP8x6ynMQ2IB41iC4nhiNSkyDrkoIiyCwwm7sZUHsBGKZSHekFqsBmhwEIYu
	UbJvJNdVGW74MNDX76gkZ8SFScG2EwPO5Vf+3nmDczDaJLjsU4L91AcYszjRh7B5HTc4kHVvh0BBz
	ztvyoYsZw/uFEjH1vSMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMQwG-0004wV-W4; Thu, 09 Apr 2020 06:45:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMQvF-00048L-AI
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 06:44:24 +0000
Received: from mail.kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5DD14206F7;
 Thu,  9 Apr 2020 06:44:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586414658;
 bh=F/JmU3GTrtOwoY/DqKHIQ/xPGXNoOD3KdlAlsXkovuw=;
 h=From:To:Cc:Subject:Date:From;
 b=VIFA9hMRljgDWPtZhApOTUcSlKy7rTtE9Mmhq1LB5x7Likj7e2tXJaNJ9W8MXvE9t
 CZL/0G5QvGLjZRcsREw1PN23JK4jeNSM9qcqHSNxNPdfDbvECcHtH0Wn8jZsGHrqU7
 saKjrha9GrGBY38FOlE8Xe6y+RCzgknxI8nYenKE=
From: Stephen Boyd <sboyd@kernel.org>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH v2 00/10] Allow COMMON_CLK to be selectable
Date: Wed,  8 Apr 2020 23:44:06 -0700
Message-Id: <20200409064416.83340-1-sboyd@kernel.org>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_234421_398267_A44EE277 
X-CRM114-Status: GOOD (  15.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, Rich Felker <dalias@libc.org>,
 linux-sh@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, linux-mips@vger.kernel.org,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, chenhc@lemote.com,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 linux-c6x-dev@linux-c6x.org, Alexander Shiyan <shc_work@mail.ru>,
 Neil Armstrong <narmstrong@baylibre.com>, Russell King <linux@armlinux.org.uk>,
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
c28gbWF5YmUgaXQncyBiZXR0ZXIgdG8KanVzdCBsZWF2ZSBpdCBhbGwgaW4gb25lIHRyZWUuCgpD
aGFuZ2VzIGZyb20gdjE6CiAqIEZpeGVkIE1JUFMgcmFsaW5rIGJ1aWxkIHByb2JsZW0gcG9pbnRl
ZCBvdXQgYnkgQXJuZAogKiBGaXhlZCBtZXNvbiBteCBzZGlvIGJ1aWxkIGR1ZSB0byBiYWQgS2Nv
bmZpZyBleHBvc2VkIGJ5IHRoaXMgY2hhbmdlCiAqIFBpY2tlZCB1cCBhY2tzCgpTdGVwaGVuIEJv
eWQgKDEwKToKICBBUk06IFJlbW92ZSByZWR1bmRhbnQgQ09NTU9OX0NMSyBzZWxlY3RzCiAgQVJN
OiBSZW1vdmUgcmVkdW5kYW50IENMS0RFVl9MT09LVVAgc2VsZWN0cwogIGFybTY0OiB0ZWdyYTog
UmVtb3ZlIHJlZHVuZGFudCBDTEtERVZfTE9PS1VQIHNlbGVjdHMKICBoODMwMDogUmVtb3ZlIHJl
ZHVuZGFudCBDTEtERVZfTE9PS1VQIHNlbGVjdHMKICBNSVBTOiBSZW1vdmUgcmVkdW5kYW50IENM
S0RFVl9MT09LVVAgc2VsZWN0cwogIG1tYzogbWVzb24tbXgtc2RpbzogRGVwZW5kIG9uIE9GX0FE
RFJFU1MgYW5kIG5vdCBqdXN0IE9GCiAgY2xrOiBBbGxvdyB0aGUgY29tbW9uIGNsayBmcmFtZXdv
cmsgdG8gYmUgc2VsZWN0YWJsZQogIEFSTTogbW1wOiBSZW1vdmUgbGVnYWN5IGNsayBjb2RlCiAg
TUlQUzogTG9vbmdzb242NDogRHJvcCBhc20vY2xvY2suaCBpbmNsdWRlCiAgY2xrOiBNb3ZlIEhB
VkVfQ0xLIGNvbmZpZyBvdXQgb2YgYXJjaGl0ZWN0dXJlIGxheWVyCgpDYzogQWxleGFuZGVyIFNo
aXlhbiA8c2hjX3dvcmtAbWFpbC5ydT4KQ2M6ICJBbmRyZWFzIEbDpHJiZXIiIDxhZmFlcmJlckBz
dXNlLmRlPgpDYzogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KQ2M6IEF1cmVsaWVuIEph
Y3F1aW90IDxqYWNxdWlvdC5hdXJlbGllbkBnbWFpbC5jb20+CkNjOiBDYXRhbGluIE1hcmluYXMg
PGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tPgpDYzogPGNoZW5oY0BsZW1vdGUuY29tPgpDYzogR2Vl
cnQgVXl0dGVyaG9ldmVuIDxnZWVydEBsaW51eC1tNjhrLm9yZz4KQ2M6IEd1YW4gWHVldGFvIDxn
eHRAcGt1LmVkdS5jbj4KQ2M6IEppYXh1biBZYW5nIDxqaWF4dW4ueWFuZ0BmbHlnb2F0LmNvbT4K
Q2M6IDxsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmc+CkNjOiA8bGludXgtYzZ4
LWRldkBsaW51eC1jNngub3JnPgpDYzogPGxpbnV4LW02OGtAbGlzdHMubGludXgtbTY4ay5vcmc+
CkNjOiA8bGludXgtbWlwc0B2Z2VyLmtlcm5lbC5vcmc+CkNjOiA8bGludXgtc2hAdmdlci5rZXJu
ZWwub3JnPgpDYzogTHVib21pciBSaW50ZWwgPGxrdW5kcmFrQHYzLnNrPgpDYzogTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4KQ2M6IE1hcmsg
QnJvd24gPGJyb29uaWVAa2VybmVsLm9yZz4KQ2M6IE1hcmsgU2FsdGVyIDxtc2FsdGVyQHJlZGhh
dC5jb20+CkNjOiBOZWlsIEFybXN0cm9uZyA8bmFybXN0cm9uZ0BiYXlsaWJyZS5jb20+CkNjOiBQ
YXVsIEJ1cnRvbiA8cGF1bGJ1cnRvbkBrZXJuZWwub3JnPgpDYzogUGF1bCBXYWxtc2xleSA8cGF1
bEBwd3Nhbi5jb20+CkNjOiBSaWNoIEZlbGtlciA8ZGFsaWFzQGxpYmMub3JnPgpDYzogUnVzc2Vs
bCBLaW5nIDxsaW51eEBhcm1saW51eC5vcmcudWs+CkNjOiBUaGllcnJ5IFJlZGluZyA8dHJlZGlu
Z0BudmlkaWEuY29tPgpDYzogVGhvbWFzIEJvZ2VuZG9lcmZlciA8dHNib2dlbmRAYWxwaGEuZnJh
bmtlbi5kZT4KQ2M6IFRvbnkgUHJpc2sgPGxpbnV4QHByaXNrdGVjaC5jby5uej4KQ2M6IHVjbGlu
dXgtaDgtZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UuanAKQ2M6IFVsZiBIYW5zc29uIDx1bGYuaGFu
c3NvbkBsaW5hcm8ub3JnPgpDYzogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4KQ2M6IFlv
c2hpbm9yaSBTYXRvIDx5c2F0b0B1c2Vycy5zb3VyY2Vmb3JnZS5qcD4KCiBhcmNoL0tjb25maWcg
ICAgICAgICAgICAgICAgICAgICB8ICAgNiAtLQogYXJjaC9hcm0vS2NvbmZpZyAgICAgICAgICAg
ICAgICAgfCAgIDUgKy0KIGFyY2gvYXJtL21hY2gtYWN0aW9ucy9LY29uZmlnICAgIHwgICAxIC0K
IGFyY2gvYXJtL21hY2gtY2xwczcxMXgvS2NvbmZpZyAgIHwgICAxIC0KIGFyY2gvYXJtL21hY2gt
bW1wL0tjb25maWcgICAgICAgIHwgICAxIC0KIGFyY2gvYXJtL21hY2gtbW1wL01ha2VmaWxlICAg
ICAgIHwgICA2IC0tCiBhcmNoL2FybS9tYWNoLW1tcC9jbG9jay1tbXAyLmMgICB8IDExNCAtLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybS9tYWNoLW1tcC9jbG9jay1weGEx
NjguYyB8ICA5NCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybS9tYWNoLW1tcC9j
bG9jay1weGE5MTAuYyB8ICA3MCAtLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNoL2FybS9tYWNoLW1t
cC9jbG9jay5jICAgICAgICB8IDEwNSAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCiBhcmNo
L2FybS9tYWNoLW1tcC9jbG9jay5oICAgICAgICB8ICA2NSAtLS0tLS0tLS0tLS0tLS0tLS0KIGFy
Y2gvYXJtL21hY2gtdnQ4NTAwL0tjb25maWcgICAgIHwgICAxIC0KIGFyY2gvYXJtNjQvS2NvbmZp
Zy5wbGF0Zm9ybXMgICAgIHwgICAxIC0KIGFyY2gvYzZ4L0tjb25maWcgICAgICAgICAgICAgICAg
IHwgICAxICsKIGFyY2gvaDgzMDAvS2NvbmZpZyAgICAgICAgICAgICAgIHwgICAxIC0KIGFyY2gv
bTY4ay9LY29uZmlnLmNwdSAgICAgICAgICAgIHwgICAyICstCiBhcmNoL21pcHMvS2NvbmZpZyAg
ICAgICAgICAgICAgICB8ICAgNyArLQogYXJjaC9taXBzL2xvb25nc29uMmVmL0tjb25maWcgICAg
fCAgIDIgKy0KIGFyY2gvbWlwcy9sb29uZ3NvbjY0L3NtcC5jICAgICAgIHwgICAxIC0KIGFyY2gv
bWlwcy9yYWxpbmsvS2NvbmZpZyAgICAgICAgIHwgICA0ICsrCiBhcmNoL3NoL2JvYXJkcy9LY29u
ZmlnICAgICAgICAgICB8ICAgNSArKwogYXJjaC91bmljb3JlMzIvS2NvbmZpZyAgICAgICAgICAg
fCAgIDIgKy0KIGRyaXZlcnMvY2xrL0tjb25maWcgICAgICAgICAgICAgIHwgIDIzICsrKysrLS0K
IGRyaXZlcnMvbW1jL2hvc3QvS2NvbmZpZyAgICAgICAgIHwgICAyICstCiAyNCBmaWxlcyBjaGFu
Z2VkLCAzOCBpbnNlcnRpb25zKCspLCA0ODIgZGVsZXRpb25zKC0pCiBkZWxldGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm0vbWFjaC1tbXAvY2xvY2stbW1wMi5jCiBkZWxldGUgbW9kZSAxMDA2NDQgYXJj
aC9hcm0vbWFjaC1tbXAvY2xvY2stcHhhMTY4LmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2Fy
bS9tYWNoLW1tcC9jbG9jay1weGE5MTAuYwogZGVsZXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL21h
Y2gtbW1wL2Nsb2NrLmMKIGRlbGV0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLW1tcC9jbG9j
ay5oCgoKYmFzZS1jb21taXQ6IDcxMTE5NTFiOGQ0OTczYmRhMjdmZjY2M2YyY2YxOGI2NjNkMTVi
NDgKLS0gClNlbnQgYnkgYSBjb21wdXRlciwgdXNpbmcgZ2l0LCBvbiB0aGUgaW50ZXJuZXQKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
