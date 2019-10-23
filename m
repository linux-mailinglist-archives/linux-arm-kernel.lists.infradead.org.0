Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38D3EE1A80
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:33:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lRHZVh/4qKy+a3z+SgoF3IRzsD3+MFuL7dS4NdezYs8=; b=R45Zmjd5jaVksQ8yy5yDtKysat
	Bl6tq51i9k9Few2aNack6BQD353jfd/Kkptgw9iahRhPVSj/CBmyAdz5gTxQc9y1mStaWEccJgSqa
	w46yNjzlwdDAHVy1AMmK2XxShFjSbBtFPZGo6G+JCZ4yvr1OeC0dPjl24dbv/ed/Od8i3oCenb4G3
	vX9B0W+U4m9vMk/2+NqdVE4Y7oKun/NgvJULkXfcbySD6HIe9nnSIJMJS8dAz1YVohyJRknXvOpPD
	Cq9EYJ6I0R/UXfeSn8c3/pSp7XEjoUE+u+cImKbI8iv+hJYRIsFLTYaMYgoZ8bnZkDN2FlFtGtTEy
	on8YuMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFpi-0006SG-K3; Wed, 23 Oct 2019 12:33:46 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFm3-0002Ho-Ar
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:30:01 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id H0Vy2100K05gfCL010Vy4o; Wed, 23 Oct 2019 14:29:58 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0000p7-Jb; Wed, 23 Oct 2019 14:29:58 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFm2-0003FB-IQ; Wed, 23 Oct 2019 14:29:58 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2 2/3] pinctrl: sh-pfc: Rename PINCTRL_PFC_R8A7796 to
 PINCTRL_PFC_R8A77960
Date: Wed, 23 Oct 2019 14:29:54 +0200
Message-Id: <20191023122955.12420-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023122955.12420-1-geert+renesas@glider.be>
References: <20191023122955.12420-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_052959_565077_75F5E33B 
X-CRM114-Status: GOOD (  10.08  )
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
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename CONFIG_PINCTRL_PFC_R8A7796 for R-Car M3-W (R8A77960) to
CONFIG_PINCTRL_PFC_R8A77960, to avoid confusion with R-Car M3-W+
(R8A77961), which will use CONFIG_PINCTRL_PFC_R8A77961.

Extend the dependency of CONFIG_PINCTRL_PFC_R8A77960 from
CONFIG_ARCH_R8A7796 to CONFIG_ARCH_R8A77960, to relax dependencies for a
future rename of the SoC configuration symbol.

Rename r8a7796_pinmux_info to r8a77960_pinmux_info, as it contains an
r8a77960-based name.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 drivers/pinctrl/sh-pfc/Kconfig       | 4 ++--
 drivers/pinctrl/sh-pfc/Makefile      | 2 +-
 drivers/pinctrl/sh-pfc/core.c        | 4 ++--
 drivers/pinctrl/sh-pfc/pfc-r8a7796.c | 4 ++--
 drivers/pinctrl/sh-pfc/sh_pfc.h      | 2 +-
 5 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/pinctrl/sh-pfc/Kconfig b/drivers/pinctrl/sh-pfc/Kconfig
index de2a33ab945bf1c2..93d6034be4ff63f2 100644
--- a/drivers/pinctrl/sh-pfc/Kconfig
+++ b/drivers/pinctrl/sh-pfc/Kconfig
@@ -27,7 +27,7 @@ config PINCTRL_SH_PFC
 	select PINCTRL_PFC_R8A7793 if ARCH_R8A7793
 	select PINCTRL_PFC_R8A7794 if ARCH_R8A7794
 	select PINCTRL_PFC_R8A7795 if ARCH_R8A7795
-	select PINCTRL_PFC_R8A7796 if ARCH_R8A7796
+	select PINCTRL_PFC_R8A77960 if ARCH_R8A77960 || ARCH_R8A7796
 	select PINCTRL_PFC_R8A77965 if ARCH_R8A77965
 	select PINCTRL_PFC_R8A77970 if ARCH_R8A77970
 	select PINCTRL_PFC_R8A77980 if ARCH_R8A77980
@@ -117,7 +117,7 @@ config PINCTRL_PFC_R8A7794
 config PINCTRL_PFC_R8A7795
 	bool "R-Car H3 pin control support" if COMPILE_TEST
 
-config PINCTRL_PFC_R8A7796
+config PINCTRL_PFC_R8A77960
 	bool "R-Car M3-W pin control support" if COMPILE_TEST
 
 config PINCTRL_PFC_R8A77965
diff --git a/drivers/pinctrl/sh-pfc/Makefile b/drivers/pinctrl/sh-pfc/Makefile
index 00b12af651ebe744..e3594cd2620386af 100644
--- a/drivers/pinctrl/sh-pfc/Makefile
+++ b/drivers/pinctrl/sh-pfc/Makefile
@@ -20,7 +20,7 @@ obj-$(CONFIG_PINCTRL_PFC_R8A7793)	+= pfc-r8a7791.o
 obj-$(CONFIG_PINCTRL_PFC_R8A7794)	+= pfc-r8a7794.o
 obj-$(CONFIG_PINCTRL_PFC_R8A7795)	+= pfc-r8a7795.o
 obj-$(CONFIG_PINCTRL_PFC_R8A7795)	+= pfc-r8a7795-es1.o
-obj-$(CONFIG_PINCTRL_PFC_R8A7796)	+= pfc-r8a7796.o
+obj-$(CONFIG_PINCTRL_PFC_R8A77960)	+= pfc-r8a7796.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77965)	+= pfc-r8a77965.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77970)	+= pfc-r8a77970.o
 obj-$(CONFIG_PINCTRL_PFC_R8A77980)	+= pfc-r8a77980.o
diff --git a/drivers/pinctrl/sh-pfc/core.c b/drivers/pinctrl/sh-pfc/core.c
index f8cbd33b4511be69..e3292abd6c9456f8 100644
--- a/drivers/pinctrl/sh-pfc/core.c
+++ b/drivers/pinctrl/sh-pfc/core.c
@@ -585,10 +585,10 @@ static const struct of_device_id sh_pfc_of_table[] = {
 	},
 #endif /* DEBUG */
 #endif
-#ifdef CONFIG_PINCTRL_PFC_R8A7796
+#ifdef CONFIG_PINCTRL_PFC_R8A77960
 	{
 		.compatible = "renesas,pfc-r8a7796",
-		.data = &r8a7796_pinmux_info,
+		.data = &r8a77960_pinmux_info,
 	},
 #endif
 #ifdef CONFIG_PINCTRL_PFC_R8A77965
diff --git a/drivers/pinctrl/sh-pfc/pfc-r8a7796.c b/drivers/pinctrl/sh-pfc/pfc-r8a7796.c
index 3689f769f2eadf93..9de2909c7ad9dff0 100644
--- a/drivers/pinctrl/sh-pfc/pfc-r8a7796.c
+++ b/drivers/pinctrl/sh-pfc/pfc-r8a7796.c
@@ -6210,8 +6210,8 @@ const struct sh_pfc_soc_info r8a774a1_pinmux_info = {
 };
 #endif
 
-#ifdef CONFIG_PINCTRL_PFC_R8A7796
-const struct sh_pfc_soc_info r8a7796_pinmux_info = {
+#ifdef CONFIG_PINCTRL_PFC_R8A77960
+const struct sh_pfc_soc_info r8a77960_pinmux_info = {
 	.name = "r8a77960_pfc",
 	.ops = &r8a7796_pinmux_ops,
 	.unlock_reg = 0xe6060000, /* PMMR */
diff --git a/drivers/pinctrl/sh-pfc/sh_pfc.h b/drivers/pinctrl/sh-pfc/sh_pfc.h
index 12d15b646da4cd1d..a7eb527fdc60ae25 100644
--- a/drivers/pinctrl/sh-pfc/sh_pfc.h
+++ b/drivers/pinctrl/sh-pfc/sh_pfc.h
@@ -320,7 +320,7 @@ extern const struct sh_pfc_soc_info r8a7793_pinmux_info;
 extern const struct sh_pfc_soc_info r8a7794_pinmux_info;
 extern const struct sh_pfc_soc_info r8a7795_pinmux_info;
 extern const struct sh_pfc_soc_info r8a7795es1_pinmux_info;
-extern const struct sh_pfc_soc_info r8a7796_pinmux_info;
+extern const struct sh_pfc_soc_info r8a77960_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77965_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77970_pinmux_info;
 extern const struct sh_pfc_soc_info r8a77980_pinmux_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
