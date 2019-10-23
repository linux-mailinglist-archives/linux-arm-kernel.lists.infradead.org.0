Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56074E1AD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 23 Oct 2019 14:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OfP0i6zsw6Vm1O5Pps0mUulLpBUhHiJNWNE/1C4wvvM=; b=V87UPSXgXHAQFvtGbBrObJqpNI
	TrmZ/bPTU/fzGXwNkcdv7F3l3IMof+pKEJrH6cdxqdGpM7CNvrHncSbjIFLBEY9oI8YrHzYdBGKhG
	8aMHTdVuDX9orbbNIIU9Q5Y5CPsNPxninCQ23SjsAhy1UWL6Qj6r13IQuYU6FDlGnWyMWWeVO7BKt
	eeL1jQYpEZ0MkHHJ2sllDbkUb0U26ayLWrrqoiheoMOcxaClpQVyHj3xrIG864s5fW6GnuNBwezLj
	YjFgWGYiqtN+MYhmMW0hZbg08SwGS+E+na7jbPZU8ZSqt3ruDOwuNHBr/18BIs5f0NoWR10ZaBpTR
	0oZ82oEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNFtz-0002hm-QT; Wed, 23 Oct 2019 12:38:11 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNFpi-0006mP-2n
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 12:33:52 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id H0Zj2100d05gfCL060ZkVE; Wed, 23 Oct 2019 14:33:44 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpf-0003tY-S7; Wed, 23 Oct 2019 14:33:43 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNFpf-0003QE-R5; Wed, 23 Oct 2019 14:33:43 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 01/11] soc: renesas: Rename SYSC_R8A7796 to SYSC_R8A77960
Date: Wed, 23 Oct 2019 14:33:32 +0200
Message-Id: <20191023123342.13100-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191023123342.13100-1-geert+renesas@glider.be>
References: <20191023123342.13100-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_053346_324766_E7C2D470 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename CONFIG_SYSC_R8A7796 for R-Car M3-W (R8A77960) to
CONFIG_SYSC_R8A77960, to avoid confusion with R-Car M3-W+ (R8A77961),
which will use CONFIG_SYSC_R8A77961.

Rename r8a7796_sysc_info and r8a7796_sysc_init for consistency.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
v2:
  - New.
---
 drivers/soc/renesas/Kconfig        | 4 ++--
 drivers/soc/renesas/Makefile       | 2 +-
 drivers/soc/renesas/r8a7796-sysc.c | 8 ++++----
 drivers/soc/renesas/rcar-sysc.c    | 4 ++--
 drivers/soc/renesas/rcar-sysc.h    | 2 +-
 5 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/soc/renesas/Kconfig b/drivers/soc/renesas/Kconfig
index 3bd0c218bf30992a..328d7c409202e6a5 100644
--- a/drivers/soc/renesas/Kconfig
+++ b/drivers/soc/renesas/Kconfig
@@ -202,7 +202,7 @@ config ARCH_R8A7795
 config ARCH_R8A7796
 	bool "Renesas R-Car M3-W SoC Platform"
 	select ARCH_RCAR_GEN3
-	select SYSC_R8A7796
+	select SYSC_R8A77960
 	help
 	  This enables support for the Renesas R-Car M3-W SoC.
 
@@ -292,7 +292,7 @@ config SYSC_R8A7795
 	bool "R-Car H3 System Controller support" if COMPILE_TEST
 	select SYSC_RCAR
 
-config SYSC_R8A7796
+config SYSC_R8A77960
 	bool "R-Car M3-W System Controller support" if COMPILE_TEST
 	select SYSC_RCAR
 
diff --git a/drivers/soc/renesas/Makefile b/drivers/soc/renesas/Makefile
index e99dc37ea1209444..d8a7cfdc9c9cc45f 100644
--- a/drivers/soc/renesas/Makefile
+++ b/drivers/soc/renesas/Makefile
@@ -15,7 +15,7 @@ obj-$(CONFIG_SYSC_R8A7791)	+= r8a7791-sysc.o
 obj-$(CONFIG_SYSC_R8A7792)	+= r8a7792-sysc.o
 obj-$(CONFIG_SYSC_R8A7794)	+= r8a7794-sysc.o
 obj-$(CONFIG_SYSC_R8A7795)	+= r8a7795-sysc.o
-obj-$(CONFIG_SYSC_R8A7796)	+= r8a7796-sysc.o
+obj-$(CONFIG_SYSC_R8A77960)	+= r8a7796-sysc.o
 obj-$(CONFIG_SYSC_R8A77965)	+= r8a77965-sysc.o
 obj-$(CONFIG_SYSC_R8A77970)	+= r8a77970-sysc.o
 obj-$(CONFIG_SYSC_R8A77980)	+= r8a77980-sysc.o
diff --git a/drivers/soc/renesas/r8a7796-sysc.c b/drivers/soc/renesas/r8a7796-sysc.c
index d374622a667bbfbd..c2accd8d76686ef4 100644
--- a/drivers/soc/renesas/r8a7796-sysc.c
+++ b/drivers/soc/renesas/r8a7796-sysc.c
@@ -47,16 +47,16 @@ static const struct soc_device_attribute r8a7796es1[] __initconst = {
 	{ /* sentinel */ }
 };
 
-static int __init r8a7796_sysc_init(void)
+static int __init r8a77960_sysc_init(void)
 {
 	if (soc_device_match(r8a7796es1))
-		r8a7796_sysc_info.extmask_val = 0;
+		r8a77960_sysc_info.extmask_val = 0;
 
 	return 0;
 }
 
-struct rcar_sysc_info r8a7796_sysc_info __initdata = {
-	.init = r8a7796_sysc_init,
+struct rcar_sysc_info r8a77960_sysc_info __initdata = {
+	.init = r8a77960_sysc_init,
 	.areas = r8a7796_areas,
 	.num_areas = ARRAY_SIZE(r8a7796_areas),
 	.extmask_offs = 0x2f8,
diff --git a/drivers/soc/renesas/rcar-sysc.c b/drivers/soc/renesas/rcar-sysc.c
index d4f2ed52b2b363be..5f17b12e9d0c6a87 100644
--- a/drivers/soc/renesas/rcar-sysc.c
+++ b/drivers/soc/renesas/rcar-sysc.c
@@ -313,8 +313,8 @@ static const struct of_device_id rcar_sysc_matches[] __initconst = {
 #ifdef CONFIG_SYSC_R8A7795
 	{ .compatible = "renesas,r8a7795-sysc", .data = &r8a7795_sysc_info },
 #endif
-#ifdef CONFIG_SYSC_R8A7796
-	{ .compatible = "renesas,r8a7796-sysc", .data = &r8a7796_sysc_info },
+#ifdef CONFIG_SYSC_R8A77960
+	{ .compatible = "renesas,r8a7796-sysc", .data = &r8a77960_sysc_info },
 #endif
 #ifdef CONFIG_SYSC_R8A77965
 	{ .compatible = "renesas,r8a77965-sysc", .data = &r8a77965_sysc_info },
diff --git a/drivers/soc/renesas/rcar-sysc.h b/drivers/soc/renesas/rcar-sysc.h
index e4c9854f5dc00492..379a6b2661ebce87 100644
--- a/drivers/soc/renesas/rcar-sysc.h
+++ b/drivers/soc/renesas/rcar-sysc.h
@@ -61,7 +61,7 @@ extern const struct rcar_sysc_info r8a7791_sysc_info;
 extern const struct rcar_sysc_info r8a7792_sysc_info;
 extern const struct rcar_sysc_info r8a7794_sysc_info;
 extern struct rcar_sysc_info r8a7795_sysc_info;
-extern struct rcar_sysc_info r8a7796_sysc_info;
+extern struct rcar_sysc_info r8a77960_sysc_info;
 extern const struct rcar_sysc_info r8a77965_sysc_info;
 extern const struct rcar_sysc_info r8a77970_sysc_info;
 extern const struct rcar_sysc_info r8a77980_sysc_info;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
