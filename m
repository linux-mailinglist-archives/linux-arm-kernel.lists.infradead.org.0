Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F943E1A57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4gWhVDtnqvRbx61x5I9G/P74cCkxEKJ81xqAb6dNrgo=; b=Mt970ZgYGGaC1mTxpNPViTP2LP
	J+QGouT/IsVtHynv7gBueLhkYG4wb/QjadHSYZQfTi2dIjiswiTbgTrYXBWqy2yXDf4kZgZUscOEa
	s2s3FWHSO0bHnNF4jd+vwzif5FQiWUwgooFSUZcDa8ztGNtxZ4hzW2K/RJTbUkgE69GskYo1VawcD
	Fy+G3zeASUMqMSNz0KMrrWKpP7bJC3HIdpy7+vYENOi/Vtd74jIZQo1hRWUXjHAbtZNFruX2KwjQN
	kE4O10xjlf/R4ZgBVruhnc5kchGUIY10E1T0KNC+9RignY1m0GBdj11Wve4exJ0iKa+DV5YdwD92D
	rNx2WxbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFov-0005cP-K8; Wed, 23 Oct 2019 12:32:57 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFlu-0002Ho-Ps
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:29:53 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id H0Vl2100j05gfCL010Vm2x; Wed, 23 Oct 2019 14:29:46 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0000eV-T4; Wed, 23 Oct 2019 14:29:45 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFlp-0003E2-RP; Wed, 23 Oct 2019 14:29:45 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 3/4] clk: renesas: Rename CLK_R8A7796 to CLK_R8A77960
Date: Wed, 23 Oct 2019 14:29:40 +0200
Message-Id: <20191023122941.12342-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122941.12342-1-geert+renesas@glider.be>
References: <20191023122941.12342-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052951_026403_0794178B 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
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
Cc: devicetree@vger.kernel.org, Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org, Eugeniu Rosca <erosca@de.adit-jv.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename CONFIG_CLK_R8A7796 for R-Car M3-W (R8A77960) to
CONFIG_CLK_R8A77960, to avoid confusion with R-Car M3-W+ (R8A77961),
which will use CONFIG_CLK_R8A77961.

Extend the dependency of CONFIG_CLK_R8A77960 from CONFIG_ARCH_R8A7796 to
CONFIG_ARCH_R8A77960, to relax dependencies for a future rename of the
SoC configuration symbol.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 drivers/clk/renesas/Kconfig            | 4 ++--
 drivers/clk/renesas/Makefile           | 2 +-
 drivers/clk/renesas/renesas-cpg-mssr.c | 2 +-
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/renesas/Kconfig b/drivers/clk/renesas/Kconfig
index be03bb74801252bc..a48f75ec1400c090 100644
--- a/drivers/clk/renesas/Kconfig
+++ b/drivers/clk/renesas/Kconfig
@@ -21,7 +21,7 @@ config CLK_RENESAS
 	select CLK_R8A7792 if ARCH_R8A7792
 	select CLK_R8A7794 if ARCH_R8A7794
 	select CLK_R8A7795 if ARCH_R8A7795
-	select CLK_R8A7796 if ARCH_R8A7796
+	select CLK_R8A77960 if ARCH_R8A77960 || ARCH_R8A7796
 	select CLK_R8A77965 if ARCH_R8A77965
 	select CLK_R8A77970 if ARCH_R8A77970
 	select CLK_R8A77980 if ARCH_R8A77980
@@ -109,7 +109,7 @@ config CLK_R8A7795
 	bool "R-Car H3 clock support" if COMPILE_TEST
 	select CLK_RCAR_GEN3_CPG
 
-config CLK_R8A7796
+config CLK_R8A77960
 	bool "R-Car M3-W clock support" if COMPILE_TEST
 	select CLK_RCAR_GEN3_CPG
 
diff --git a/drivers/clk/renesas/Makefile b/drivers/clk/renesas/Makefile
index ef0fdd00d2b741b2..58211d0f04bf4d4b 100644
--- a/drivers/clk/renesas/Makefile
+++ b/drivers/clk/renesas/Makefile
@@ -18,7 +18,7 @@ obj-$(CONFIG_CLK_R8A7791)		+= r8a7791-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A7792)		+= r8a7792-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A7794)		+= r8a7794-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A7795)		+= r8a7795-cpg-mssr.o
-obj-$(CONFIG_CLK_R8A7796)		+= r8a7796-cpg-mssr.o
+obj-$(CONFIG_CLK_R8A77960)		+= r8a7796-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77965)		+= r8a77965-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77970)		+= r8a77970-cpg-mssr.o
 obj-$(CONFIG_CLK_R8A77980)		+= r8a77980-cpg-mssr.o
diff --git a/drivers/clk/renesas/renesas-cpg-mssr.c b/drivers/clk/renesas/renesas-cpg-mssr.c
index 35966678148e2c8b..c2f96e63498e14cc 100644
--- a/drivers/clk/renesas/renesas-cpg-mssr.c
+++ b/drivers/clk/renesas/renesas-cpg-mssr.c
@@ -749,7 +749,7 @@ static const struct of_device_id cpg_mssr_match[] = {
 		.data = &r8a7795_cpg_mssr_info,
 	},
 #endif
-#ifdef CONFIG_CLK_R8A7796
+#ifdef CONFIG_CLK_R8A77960
 	{
 		.compatible = "renesas,r8a7796-cpg-mssr",
 		.data = &r8a7796_cpg_mssr_info,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
