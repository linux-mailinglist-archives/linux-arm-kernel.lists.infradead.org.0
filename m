Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3C7A68B7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 14:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1MNj8gwNReVlC7Be0TcSDTKUPCc7SuMTmHqiazqYeMw=; b=U+ISaApyHQBO9o
	rEcITJDgSGylxTs9tKyyHnsidIRCXqJO9+/RkrZv8hQfnBW6IbPsyaHtTEW9yJADmkJMwuinDegMW
	26YWYBbQkgrZzFrvuy3/HBrF0miKuo9shhl5PCgb1ZSksHQjcrL9seiX/7ZNBv0dAEjeVkmUHDaYS
	9ZI5Es8jPUwP+d1vXGB0IH15xkEoi4ir6YkhKJeMjRLB0KwqY7dmEyR/xXStuGqenLP/sajO5trHi
	iNSxQvju2o3iw/237SfgWg1+vRYprl3CNmWk5hX2/wHtVU6JWc7CPFE4US+mG1UFZQVFLeFUF4Won
	j8laathrO7O0YiEXhHfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i587w-0005FH-Hp; Tue, 03 Sep 2019 12:41:40 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i587k-0005EU-4T
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 12:41:29 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 466BD1BF207;
 Tue,  3 Sep 2019 12:41:09 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: dt64 for v5.4 (#2)
Date: Tue, 03 Sep 2019 14:41:08 +0200
Message-ID: <87h85two0r.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_054128_329139_7E185B6F 
X-CRM114-Status: GOOD (  10.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-arm-kernel@lists.infradead.org,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpIZXJlIGlzIHRoZSBzZWNvbmQgcHVsbCByZXF1ZXN0IGZvciBkdDY0IGZvciBtdmVidSBm
b3IgdjUuNC4KCkZvciB0aGUgVHVycmlzIE1veCBib2FyZCB0aGVyZSB3YXMgZGVwZW5kZW5jaWVz
IHdpdGggbW94dGV0IGhlYWRlciB3aGljaAp3YXMgYWxyZWFkeSBtZXJnZWQgaW4geW91ciBhcm0v
ZHJpdmVycyBicmFuY2guIFRoYXQgdGhlIHJlYXNvbiB3aHkgSQptZXJnZWQgdGhpcyBicmFuY2gg
aW4gbXkgbXZlYnUvZHQ2NCBicmFuY2guCgpMZXQgbWUga25vdyBpZiBpdCBpcyBhIHByb2JsZW0g
YW5kIGlmIHlvdSB3YW50IHRoYXQgSSBkbyBpdCBpbiBhCmRpZmZlcmVudCB3YXkuCgpHcmVnb3J5
CgpUaGUgZm9sbG93aW5nIGNoYW5nZXMgc2luY2UgY29tbWl0IDRlNDhmZjQzOGZjYTk4YTcwZDhl
ODEzZDE4ZTMzNmYyNWRhNzNlZDg6CgogIE1lcmdlIHJlbW90ZS10cmFja2luZyBicmFuY2ggJ2Fy
bS1zb2MvYXJtL2RyaXZlcnMnIGludG8gSEVBRCAoMjAxOS0wOC0zMSAwOToyNDoxMyArMDIwMCkK
CmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQuaW5m
cmFkZWFkLm9yZy9saW51eC1tdmVidS5naXQgdGFncy9tdmVidS1kdDY0LTUuNC0yCgpmb3IgeW91
IHRvIGZldGNoIGNoYW5nZXMgdXAgdG8gNzEwOWQ4MTdkYjJlMDIwMzc5ZDBmMjQ1MzAwYjhmZmU2
NTFjNWMwNDoKCiAgYXJtNjQ6IGR0czogbWFydmVsbDogYWRkIERUUyBmb3IgVHVycmlzIE1veCAo
MjAxOS0wOC0zMSAwOToyNDozMSArMDIwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KbXZlYnUgZHQ2NCBmb3IgNS40IChw
YXJ0IDIpCgpBZGQgc3VwcG9ydCBmb3IgVHVycmlzIE1veCBib2FyZCAoQXJtYWRhIDM3MjAgU29D
IGJhc2VkKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQpNYXJlayBCZWjDum4gKDMpOgogICAgICBhcm02NDogZHRzOiBtYXJ2
ZWxsOiBhcm1hZGEtMzd4eDogYWRkIFNQSSBDUzEgcGluY3RybAogICAgICBkdC1iaW5kaW5nczog
bWFydmVsbDogZG9jdW1lbnQgVHVycmlzIE1veCBjb21wYXRpYmxlCiAgICAgIGFybTY0OiBkdHM6
IG1hcnZlbGw6IGFkZCBEVFMgZm9yIFR1cnJpcyBNb3gKCiAuLi4vYmluZGluZ3MvYXJtL21hcnZl
bGwvYXJtYWRhLTM3eHgudHh0ICAgICAgICAgICB8ICAgOCArCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L21hcnZlbGwvTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArCiAuLi4vYm9vdC9kdHMvbWFy
dmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyAgICB8IDg0MCArKysrKysrKysrKysrKysr
KysrKysKIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzd4eC5kdHNpICAgICAg
IHwgICA1ICsKIDQgZmlsZXMgY2hhbmdlZCwgODU0IGluc2VydGlvbnMoKykKIGNyZWF0ZSBtb2Rl
IDEwMDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL21hcnZlbGwvYXJtYWRhLTM3MjAtdHVycmlzLW1v
eC5kdHMKCi0tIApHcmVnb3J5IENsZW1lbnQsIEJvb3RsaW4KRW1iZWRkZWQgTGludXggYW5kIEtl
cm5lbCBlbmdpbmVlcmluZwpodHRwOi8vYm9vdGxpbi5jb20KCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0
CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
