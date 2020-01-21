Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637C4143A38
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 11:02:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=74LavAhjxsMk+K+hNosiOafbZ+awoDO1lz7W8OV5mZ8=; b=k2p
	2weWCDatFHVph2vEadYyspqUo38AIMnbHaR4Px6mCSFWOi/tgIQKZP0LtsbTEPNaXV4yM5wuhnmif
	rSzVlltBClIEgwcCAbXA0oGKrw1gG/i2ieSS+xh7VCT7pVg2iFmd8/zAd85aYl9V7T/diRBCCmV9x
	RXHZdMY8kOOhEWgq9tA+yJjiLE1EZbHzrpvlfW0NDZUnueH3HgkRjplCSHxnaSj/xoJbu9YOKlxpK
	bwWwUzb46qsHaJfYQ946mUL+l189ivkqOcw21MEPuOOJFzI9FUaAlWTWxa2CIatxT4pJujhRTvHiw
	NORDcoaMNMzxat+NLgf8UOwW1V199bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itqMm-0005Jy-Jh; Tue, 21 Jan 2020 10:02:36 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itqME-00052R-TH
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 10:02:08 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id sy1r210095USYZQ06y1rgt; Tue, 21 Jan 2020 11:01:54 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itqM3-0000P5-D9; Tue, 21 Jan 2020 11:01:51 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1itqM3-0008FN-Ar; Tue, 21 Jan 2020 11:01:51 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH] arm64: bcm2835: Drop select of nonexistent HAVE_ARM_ARCH_TIMER
Date: Tue, 21 Jan 2020 11:01:50 +0100
Message-Id: <20200121100150.31660-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_020203_154825_EE0562D1 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.9 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:1a listed in] [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.5 SUBJ_OBFU_PUNCT_FEW    Possible punctuation-obfuscated Subject:
 header
 1.1 SUBJ_OBFU_PUNCT_MANY   Punctuation-obfuscated Subject: header
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Eric Anholt <eric@anholt.net>,
 bcm-kernel-feedback-list@broadcom.com, Gerd Hoffmann <kraxel@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Unlike on arm32, the HAVE_ARM_ARCH_TIMER config symbol does not exist on
arm64.

Note that the toplevel ARM64 symbol always selects ARM_ARCH_TIMER, so
support for it is always included.

Fixes: 628d30d1ccb897fe ("arm64: Add platform selection for BCM2835.")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Manually reverting f072181e6403b0fe ("kconfig: drop the ""trying to assign
nonexistent symbol" warning") does not help.

 arch/arm64/Kconfig.platforms | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
index b2b504ea6fd69495..ad4335122e70a3b7 100644
--- a/arch/arm64/Kconfig.platforms
+++ b/arch/arm64/Kconfig.platforms
@@ -39,7 +39,6 @@ config ARCH_BCM2835
 	select ARM_AMBA
 	select ARM_GIC
 	select ARM_TIMER_SP804
-	select HAVE_ARM_ARCH_TIMER
 	help
 	  This enables support for the Broadcom BCM2837 and BCM2711 SoC.
 	  These SoCs are used in the Raspberry Pi 3 and 4 devices.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
