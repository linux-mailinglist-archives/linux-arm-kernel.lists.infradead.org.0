Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07BA6162577
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 12:25:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8fvmDCzYWnqVxdgEpKzS+t931LUPbdztu6G1Dl3H2OU=; b=QwY
	y3fvOZLA7qyUiY3+FLfptsv1mZAO13zbGgWYnJWXH9xhBCatbHntl/+h4A5PNi1sTyIPKJPeqHesf
	wng5bWZuPaW9kpON4MxPPHXxLfkEaKSq5cAsiIpOVCqjVWGnNlKvlwCmbnXBB3AhD32UU0qG2wjcU
	jIjK9Ysn+/biDyTf6tAsdvBfcZse1E3sjiZAB1iMGhhyu+op8f2Xzhet0h02hfArWDQMG9PHgR7Oh
	HFnWZmWxCXGA9UCleJbLoobl7EeZIa4QV2PjzLlyCXPNm6niVuZd7YsjgWxlaXx1eDMLIR+jDfEpd
	+VeSCGBe22n4L7oYAOc5k+enrx6pCCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4106-0003PK-Ed; Tue, 18 Feb 2020 11:25:14 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j40zs-0002dj-UU
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 11:25:04 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id 4BQq2200W5USYZQ06BQqvp; Tue, 18 Feb 2020 12:24:50 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j40zi-00043M-IS; Tue, 18 Feb 2020 12:24:50 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j40zi-0001V3-GB; Tue, 18 Feb 2020 12:24:50 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] soc: renesas: Remove ARCH_R8A7795
Date: Tue, 18 Feb 2020 12:24:49 +0100
Message-Id: <20200218112449.5723-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_032502_192636_AE9ABADB 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace the final user of CONFIG_ARCH_R8A7795 by CONFIG_ARCH_R8A77950 ||
CONFIG_ARCH_R8A77951, and remove the now unused CONFIG_ARCH_R8A7795
symbol definition.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.7.
---
 drivers/soc/renesas/Kconfig       | 16 ++++++++--------
 drivers/soc/renesas/renesas-soc.c |  2 +-
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index de5cfe3fddd335d5..1982c7fb45fa2556 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -195,19 +195,19 @@ config ARCH_R8A774C0
 	  This enables support for the Renesas RZ/G2E SoC.
 
 config ARCH_R8A77950
-	bool
+	bool "Renesas R-Car H3 ES1.x SoC Platform"
+	select ARCH_RCAR_GEN3
+	select SYSC_R8A7795
+	help
+	  This enables support for the Renesas R-Car H3 SoC (revision 1.x).
 
 config ARCH_R8A77951
-	bool
-
-config ARCH_R8A7795
-	bool "Renesas R-Car H3 SoC Platform"
-	select ARCH_R8A77950
-	select ARCH_R8A77951
+	bool "Renesas R-Car H3 ES2.0+ SoC Platform"
 	select ARCH_RCAR_GEN3
 	select SYSC_R8A7795
 	help
-	  This enables support for the Renesas R-Car H3 SoC.
+	  This enables support for the Renesas R-Car H3 SoC (revisions 2.0 and
+	  later).
 
 config ARCH_R8A77960
 	bool "Renesas R-Car M3-W SoC Platform"
diff --git a/drivers/soc/renesas/renesas-soc.c b/drivers/soc/renesas/renesas-soc.c
index 850f5733dc880a2d..c43e910b869d1ccf 100644
--- a/drivers/soc/renesas/renesas-soc.c
+++ b/drivers/soc/renesas/renesas-soc.c
@@ -259,7 +259,7 @@ static const struct of_device_id renesas_socs[] __initconst = {
 #ifdef CONFIG_ARCH_R8A7794
 	{ .compatible = "renesas,r8a7794",	.data = &soc_rcar_e2 },
 #endif
-#ifdef CONFIG_ARCH_R8A7795
+#if defined(CONFIG_ARCH_R8A77950) || defined(CONFIG_ARCH_R8A77951)
 	{ .compatible = "renesas,r8a7795",	.data = &soc_rcar_h3 },
 #endif
 #ifdef CONFIG_ARCH_R8A77960
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
