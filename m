Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A2D1B94C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 02:31:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yvtktpz/UBiPOD1go4ntmNgPbRa1s0L0/r6tmcMlA4I=; b=Knyip+5PBuTSfk
	A2cOftBqLatPAokTdv2I+Bkuxp2yqsdu6xFBcTp0txZF4719pkfVTzQgarZzdBsbrPYqT0ePsvm3X
	3bfoqimAsjH0CGQ2Rsz0iIlkHIa/YG7bnWT1db4hBVe3mdkSayrqI1JVhfeXMAeHLf3mBKXJJMjcO
	o5lbdtbiR6ZRZtvbT0gAkhPFlOE99nP8lWgh3dMs0opZ8mwUtzyHPjUCD52alvxmIsy4NoM5YLYds
	dMRyQmr0HBBnAmAHJk78ev1qUTzC7zv8sRZ+Njngx1Pif023QzKcfmHMhI8n1uimCzU3vaNmcZ/wF
	hnsewymdAx8+7Khzb9ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSrgF-0007Cs-BV; Mon, 27 Apr 2020 00:31:27 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSrg7-0007BW-CT
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 00:31:21 +0000
Received: from oscar.flets-west.jp (softbank126090202047.bbtec.net
 [126.90.202.47]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id 03R0UU6B004529;
 Mon, 27 Apr 2020 09:30:30 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com 03R0UU6B004529
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1587947431;
 bh=/hnzYFLI9+qR1davcKYHLKruhyO2aUJ2eWiG1hDurfQ=;
 h=From:To:Cc:Subject:Date:From;
 b=T3RySsHK8hJijhax1EOM8uNKiEbMvrRhOJ9gaeG1NRoey93aTWPkoyqCDgR0XmsHJ
 De4ebIvjWZeobnHaElfetMZoeMmbK6lvP5novgD+JcjdyAQ6KbzLBBcgY90tDqHjDc
 lwkjQSHl1ct++HGoUYlTVNS7JgK3X9OpZrxhS/4EI7tccSZeJk6/NgS84TjhdxDAez
 Gis1QU1rgOW4/otBN2DS45iD6AI8aDrHkw6Qly6o1cDKiIztE8YJ4dbhR5vlwzvWXd
 GVcfJzbQCLETTJxnYUWPC9aygE8t+p9MO0qBPDUlrfDO0pasiMIfyCzpIWXQdioPrF
 bha6OjcZpRuPA==
X-Nifty-SrcIP: [126.90.202.47]
From: Masahiro Yamada <masahiroy@kernel.org>
To: linux-kbuild@vger.kernel.org
Subject: [PATCH] kbuild: remove unused AS assignment
Date: Mon, 27 Apr 2020 09:30:19 +0900
Message-Id: <20200427003019.2401592-1-masahiroy@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200426_173119_771161_FB67B52C 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.131.2.76 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Arnd Bergmann <arnd@arndb.de>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, Nathan Huckleberry <nhuck15@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

$(AS) is not used anywhere, hence commit aa824e0c962b ("kbuild: remove
AS variable") killed it.

Remove the left-over code in arch/{arm,arm64}/Makefile.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/arm/Makefile   | 2 --
 arch/arm64/Makefile | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 7d5cd0f85461..cd28211f1418 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -45,12 +45,10 @@ endif
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__ARMEB__
-AS		+= -EB
 KBUILD_LDFLAGS	+= -EB
 else
 KBUILD_CPPFLAGS	+= -mlittle-endian
 CHECKFLAGS	+= -D__ARMEL__
-AS		+= -EL
 KBUILD_LDFLAGS	+= -EL
 endif
 
diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
index 85e4149cc5d5..d86cc9137539 100644
--- a/arch/arm64/Makefile
+++ b/arch/arm64/Makefile
@@ -84,7 +84,6 @@ KBUILD_CFLAGS += $(branch-prot-flags-y)
 ifeq ($(CONFIG_CPU_BIG_ENDIAN), y)
 KBUILD_CPPFLAGS	+= -mbig-endian
 CHECKFLAGS	+= -D__AARCH64EB__
-AS		+= -EB
 # Prefer the baremetal ELF build target, but not all toolchains include
 # it so fall back to the standard linux version if needed.
 KBUILD_LDFLAGS	+= -EB $(call ld-option, -maarch64elfb, -maarch64linuxb)
@@ -92,7 +91,6 @@ UTS_MACHINE	:= aarch64_be
 else
 KBUILD_CPPFLAGS	+= -mlittle-endian
 CHECKFLAGS	+= -D__AARCH64EL__
-AS		+= -EL
 # Same as above, prefer ELF but fall back to linux target if needed.
 KBUILD_LDFLAGS	+= -EL $(call ld-option, -maarch64elf, -maarch64linux)
 UTS_MACHINE	:= aarch64
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
