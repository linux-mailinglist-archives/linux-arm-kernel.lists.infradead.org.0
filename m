Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20D84D2B25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 15:21:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S2dbUbM5DtSWFPnAzvHj553Jf3Ekfd/rSNt6jx9TTeo=; b=EG5
	ZJFoFb0bo5wjltu7z+waBZuO9apO89o+/+kX8mTFF/nZgUZ8xlkHK3vRL6G1z6i8Yf5UnLIJRA426
	HZoH1TiHRQgrjiC/R+e8GFjXsJMo+sr9jatozY+fPl1Ge16osRn2mGJLfIjuK3Xwc1Mlc1X336a8a
	LnoBurA1l5u/vuYECSn8tBKXqIejb5p0es04BYaTmdo+/BekqM7KlTNxN3QuoxPLULOYkM6J0uo61
	gbawwk8yk1KSpT74W1Qu62C7AGQCgggf34yG/lL+mEtnpGAQpBPEb/Z2VatuLRZepxbBNgylrt630
	aTILrpbaixVPmNH+riJZLx0zEtOV2sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIYO5-00031F-8W; Thu, 10 Oct 2019 13:21:49 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIYNy-00030R-1m
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 13:21:43 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id BpMW2100205gfCL01pMWmZ; Thu, 10 Oct 2019 15:21:32 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iIYNl-0008Qb-Tp; Thu, 10 Oct 2019 15:21:29 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iIXai-0003zW-86; Thu, 10 Oct 2019 14:30:48 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] MAINTAINERS: Remove Simon as Renesas SoC Co-Maintainer
Date: Thu, 10 Oct 2019 14:30:46 +0200
Message-Id: <20191010123046.15291-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_062142_250312_89772842 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Simon Horman <horms@verge.net.au>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the end of the v5.3 upstream kernel development cycle, Simon stepped
down from his role as Renesas SoC maintainer.

Remove his maintainership, git repository, and branch from the
MAINTAINERS file, and add an entry to the CREDITS file to honor his
work.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 CREDITS     | 4 ++++
 MAINTAINERS | 4 ----
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/CREDITS b/CREDITS
index 8b67a85844b55d88..031605d46b4d5cc1 100644
--- a/CREDITS
+++ b/CREDITS
@@ -1637,6 +1637,10 @@ S: Panoramastrasse 18
 S: D-69126 Heidelberg
 S: Germany
 
+N: Simon Horman
+M: horms@verge.net.au
+D: Renesas ARM/ARM64 SoC maintainer
+
 N: Christopher Horn
 E: chorn@warwick.net
 D: Miscellaneous sysctl hacks
diff --git a/MAINTAINERS b/MAINTAINERS
index 94ce075907a0b9aa..d44d6732510df746 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2165,12 +2165,10 @@ F:	arch/arm64/boot/dts/realtek/
 F:	Documentation/devicetree/bindings/arm/realtek.yaml
 
 ARM/RENESAS ARM64 ARCHITECTURE
-M:	Simon Horman <horms@verge.net.au>
 M:	Geert Uytterhoeven <geert+renesas@glider.be>
 M:	Magnus Damm <magnus.damm@gmail.com>
 L:	linux-renesas-soc@vger.kernel.org
 Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
-T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
 S:	Supported
 F:	arch/arm64/boot/dts/renesas/
@@ -2282,12 +2280,10 @@ S:	Maintained
 F:	drivers/media/platform/s5p-mfc/
 
 ARM/SHMOBILE ARM ARCHITECTURE
-M:	Simon Horman <horms@verge.net.au>
 M:	Geert Uytterhoeven <geert+renesas@glider.be>
 M:	Magnus Damm <magnus.damm@gmail.com>
 L:	linux-renesas-soc@vger.kernel.org
 Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
-T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
 S:	Supported
 F:	arch/arm/boot/dts/emev2*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
