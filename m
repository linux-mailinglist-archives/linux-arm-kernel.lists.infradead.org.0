Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A16D3B91
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 10:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aIiorDZJBe/jodRYgZO0Dfc/Xevr5BuHlWnw1VlfFj8=; b=JGfwoeCsXJ7DDO
	3uch8cFNxbN7TdesYDq5qVzMiMh1VKOqViC/dEXIwQEv+uRENdNFZ3jB0EeFhLoe7Q7sebwErlt30
	CYSnMifQIvq76iW+JImXhhMQWL3CK/Eh1tmXZ0RmuOymlmqxZuVC9SLQqUdluN8B4nry1X7Qt8HVn
	mtozSSJvQ/VrvKJHVhc9YEyLQQvKFkJT7LrDy4/AObJ24W7YLFqWQ4e2VEAO+fukz5wBkcD2wo7g9
	3V2lABftRBJrbmh2JfzAFqCsnhMfF7ezjEEre48LA4Gueo7fu3U9BJ9MgbgKLaCJEYTPuh/SvBWBJ
	4+74JeIfiKbpdX2tebdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIqcE-0007CG-RA; Fri, 11 Oct 2019 08:49:38 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqc7-0007BD-49
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 08:49:33 +0000
X-Originating-IP: 2.139.156.91
Received: from localhost (91.red-2-139-156.staticip.rima-tde.net
 [2.139.156.91]) (Authenticated sender: gregory.clement@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 71D486000D;
 Fri, 11 Oct 2019 08:49:17 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 <arm@kernel.org>, soc@kernel.org
Subject: [GIT PULL] ARM: mvebu: fixes for v5.4 (#1)
Date: Fri, 11 Oct 2019 10:49:16 +0200
Message-ID: <87blunsm43.fsf@FE-laptop>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_014931_301624_1B65407F 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
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

SGksCgpIZXJlIGlzIHRoZSBmaXJzdCBwdWxsIHJlcXVlc3QgZm9yIGZpeGVzIGZvciBtdmVidSBm
b3IgdjUuNC4KCkdyZWdvcnkKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgNTRl
Y2I4ZjcwMjhjNWViM2Q3NDBiYjgyYjBmMWQ5MGYyZGY2M2M1YzoKCiAgTGludXggNS40LXJjMSAo
MjAxOS0wOS0zMCAxMDozNTo0MCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBv
c2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQuaW5mcmFkZWFkLm9yZy9saW51eC1tdmVidS5naXQgdGFn
cy9tdmVidS1maXhlcy01LjQtMQoKZm9yIHlvdSB0byBmZXRjaCBjaGFuZ2VzIHVwIHRvIDE4N2Mx
OTVhYzU3ZmJiODRhODRjYTA3ZTkzYzZmMTZmZDhlZGZiZTQ6CgogIGFybTY0OiBkdHM6IGFybWFk
YS0zNzIwLXR1cnJpcy1tb3g6IGNvbnZlcnQgdXNiLXBoeSB0byBwaHktc3VwcGx5ICgyMDE5LTEw
LTA5IDA5OjA4OjA0ICswMjAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQptdmVidSBmaXhlcyBmb3IgNS40IChwYXJ0IDEp
CgpGaXggcmVncmVzc2lvbiBvbiBVU0IgZm9yIFR1cnJpcyBNb3ggKEFybWFkYSAzNzIwIGJhc2Vk
IGJvYXJkKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLQpNYXJlayBCZWjDum4gKDEpOgogICAgICBhcm02NDogZHRzOiBhcm1h
ZGEtMzcyMC10dXJyaXMtbW94OiBjb252ZXJ0IHVzYi1waHkgdG8gcGh5LXN1cHBseQoKIGFyY2gv
YXJtNjQvYm9vdC9kdHMvbWFydmVsbC9hcm1hZGEtMzcyMC10dXJyaXMtbW94LmR0cyB8IDEzICsr
KysrKystLS0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKyksIDYgZGVsZXRpb25z
KC0pCgotLSAKR3JlZ29yeSBDbGVtZW50LCBCb290bGluCkVtYmVkZGVkIExpbnV4IGFuZCBLZXJu
ZWwgZW5naW5lZXJpbmcKaHR0cDovL2Jvb3RsaW4uY29tCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdAps
aW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
