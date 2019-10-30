Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3C06E9590
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 05:10:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZR5Me7siVz26CIyNNgXlFScROn8IHiQjW8D/EWJnnI=; b=jpkiURXCqUAe6s
	n9YjxBZ6epzZ6elTwn7PiXKv7X+YaHCEtmseaD1abBba9uYzYIRgnHDDhnO/18d9oL4u6N663+U53
	otoqFttHRRO/rkLA3nAuC8I6OzL9HYusr5Y1ofpKKAT5Nne6Djuqt2iCzT4F65xXGbPHHmR3hUva2
	aT8F+kwb5HSTDjCS1fMxOfsyLrffrmzBZBcFO/PrrfXd7CekXyYkKyselETgN9Egt6kdWcUNSzJK5
	IhI1sRwdwc0M1Yv1hL7g2fFzdXNVaIhDAoZBZakHxDKVVX38lHCYc4R/GarYcseKJMhRtaDXv0sIv
	E1QQ3LljCcu5WuZ1PhMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPfJf-0002lf-Ue; Wed, 30 Oct 2019 04:10:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPfJE-0002cC-Ty; Wed, 30 Oct 2019 04:10:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 71EFCB378;
 Wed, 30 Oct 2019 04:10:11 +0000 (UTC)
From: =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>
To: soc@kernel.org
Subject: [GIT PULL] ARM: realtek: dt64 for v5.5
Date: Wed, 30 Oct 2019 05:10:00 +0100
Message-Id: <20191030041000.31848-2-afaerber@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20191030041000.31848-1-afaerber@suse.de>
References: <20191030041000.31848-1-afaerber@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_211013_114215_59C6A355 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Olof Johansson <olof@lixom.net>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
 linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>,
 linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQXJuZCBhbmQgT2xvZiwKCkhlcmUncyBhIGR0NjQgcHVsbCBmb3IgUmVhbHRlay4KClJlZ2Fy
ZHMsCkFuZHJlYXMKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNTRlY2I4Zjcw
MjhjNWViM2Q3NDBiYjgyYjBmMWQ5MGYyZGY2M2M1YzoKCiAgTGludXggNS40LXJjMSAoMjAxOS0w
OS0zMCAxMDozNTo0MCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5
IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvYWZh
ZXJiZXIvbGludXgtcmVhbHRlay5naXQgdGFncy9yZWFsdGVrLWFybTY0LWR0LWZvci01LjUKCmZv
ciB5b3UgdG8gZmV0Y2ggY2hhbmdlcyB1cCB0byAwMmY0NTk3ZTdlYmU3M2Y0M2ZiNGEyODAwZDUw
ZTk4NWE4YmY4ZjA4OgoKICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTI5eCBVQVJUIHJl
c2V0cyAoMjAxOS0xMC0yOSAwNToyNzo0MSArMDEwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KUmVhbHRlayBBUk02NCBi
YXNlZCBTb0MgRFQgZm9yIHY1LjUKCkFkZCBSVEQxMjkzIGFuZCBSVEQxMjk2IERUcy4gQWRkIHRo
ZSB3YXRjaGRvZyBmb3IgYWxsIG9mIFJURDEyOXggRFRzLgpBZGQgcmVzZXQgY29udHJvbGxlcnMg
Zm9yIFJURDEyOXggYW5kIHN0YXJ0IHVzaW5nIHRoZW0gZm9yIFVBUlRzLgoKLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpBbmRy
ZWFzIEbDpHJiZXIgKDExKToKICAgICAgZHQtYmluZGluZ3M6IGFybTogcmVhbHRlazogVGlkeSB1
cCBjb252ZXJzaW9uIHRvIGpzb24tc2NoZW1hCiAgICAgIGR0LWJpbmRpbmdzOiBhcm06IHJlYWx0
ZWs6IERvY3VtZW50IFJURDEyOTMgYW5kIFN5bm9sb2d5IERTNDE4agogICAgICBhcm02NDogZHRz
OiByZWFsdGVrOiBDaGFuZ2UgZHVhbC1saWNlbnNlIGZyb20gTUlUIHRvIEJTRAogICAgICBhcm02
NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTI5MyBhbmQgU3lub2xvZ3kgRFM0MThqCiAgICAgIGR0
LWJpbmRpbmdzOiBhcm06IHJlYWx0ZWs6IERvY3VtZW50IFJURDEyOTYgYW5kIFN5bm9sb2d5IERT
NDE4CiAgICAgIGFybTY0OiBkdHM6IHJlYWx0ZWs6IEFkZCBSVEQxMjk2IGFuZCBTeW5vbG9neSBE
UzQxOAogICAgICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgb3NjaWxsYXRvciBmb3IgUlREMTI5
eAogICAgICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgd2F0Y2hkb2cgbm9kZSBmb3IgUlREMTI5
eAogICAgICBkdC1iaW5kaW5nczogcmVzZXQ6IEFkZCBSZWFsdGVrIFJURDEyOTUKICAgICAgYXJt
NjQ6IGR0czogcmVhbHRlazogQWRkIFJURDEyOXggcmVzZXQgY29udHJvbGxlciBub2RlcwogICAg
ICBhcm02NDogZHRzOiByZWFsdGVrOiBBZGQgUlREMTI5eCBVQVJUIHJlc2V0cwoKIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcmVhbHRlay55YW1sIHwgIDI3ICsrKy0tCiBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgNSAr
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My1kczQxOGouZHRzICAgICB8ICAz
MCArKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLmR0c2kgICAgICAg
ICAgIHwgIDUxICsrKysrKysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjk1
LXppZG9vLXg5cy5kdHMgIHwgICAzICstCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRk
MTI5NS5kdHNpICAgICAgICAgICB8ICAgMyArLQogYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVr
L3J0ZDEyOTYtZHM0MTguZHRzICAgICAgfCAgMzAgKysrKysrCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JlYWx0ZWsvcnRkMTI5Ni5kdHNpICAgICAgICAgICB8ICA2NSArKysrKysrKysrKysKIGFyY2gv
YXJtNjQvYm9vdC9kdHMvcmVhbHRlay9ydGQxMjl4LmR0c2kgICAgICAgICAgIHwgIDUwICsrKysr
KysrKy0KIGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1LmggICAgICAg
IHwgMTExICsrKysrKysrKysrKysrKysrKysrKwogMTAgZmlsZXMgY2hhbmdlZCwgMzYyIGluc2Vy
dGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtNjQv
Ym9vdC9kdHMvcmVhbHRlay9ydGQxMjkzLWRzNDE4ai5kdHMKIGNyZWF0ZSBtb2RlIDEwMDY0NCBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JlYWx0ZWsvcnRkMTI5My5kdHNpCiBjcmVhdGUgbW9kZSAxMDA2
NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYtZHM0MTguZHRzCiBjcmVhdGUg
bW9kZSAxMDA2NDQgYXJjaC9hcm02NC9ib290L2R0cy9yZWFsdGVrL3J0ZDEyOTYuZHRzaQogY3Jl
YXRlIG1vZGUgMTAwNjQ0IGluY2x1ZGUvZHQtYmluZGluZ3MvcmVzZXQvcmVhbHRlayxydGQxMjk1
LmgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4
LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFy
bS1rZXJuZWwK
