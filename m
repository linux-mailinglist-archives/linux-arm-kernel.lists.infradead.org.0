Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808B21048F6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 04:19:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ispmtTKXansxEIYqSpusaAfsCyL7ml2zb9iE/pbF9jk=; b=nHF
	pfJvfHt/kT7ou5pV5a4r8YihZFZRz1zZzhJ3Wx4ZMyLI6LILVWISQlZtXlks+0ItGoNSeocPBGcXa
	H+IBsHl1TCAk61fD2zMzjK7AaCUQ4McQncTrqyGP+q7Iyp+8UVDMfW6c+yCdSymCxMyEX/TPjT2cw
	dSvfpO3uurDGrh4x/c4wrD0KN3g/vNz7TmLIY1YJbsOJFN+zCa2x6AsWVy6fSpqTY6JukseyFSqca
	ciL2TTp7BGfbYRXcE7PnjNanDajHccCN9lenf9Dg08GM4b34eTaCvFF0IFhXOrCss6O8r34WiRM7M
	O5aYMYTMrRYX5f36K4DGN6WHZIjb5EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXczu-0002Qp-9u; Thu, 21 Nov 2019 03:19:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXczk-0002QA-NI; Thu, 21 Nov 2019 03:19:02 +0000
Received: from PC-kkoz.proceq.com (unknown [213.160.61.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B2A6820898;
 Thu, 21 Nov 2019 03:18:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574306340;
 bh=9Ksqhhd1L7R8tO8N1qP062uhuD/S93g4xX+3n7nrjuk=;
 h=From:To:Cc:Subject:Date:From;
 b=dhjxDrCGeRc2byEQxgwNLsSWWxA7ebiuc5DOawNk7mBXmN8SBRIeMGPYM1L+rtUsk
 jw5AuZek5sXPBBufjND8mFIc8AMxc1Xv0+fQ4GjTQqcegDJyr8JlxRHhMzoDZbTaWx
 V8psmrv+ovo0Q7Mfd7RsK//vg6HkD+Uq/hzXOUYc=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2] clk: Fix Kconfig indentation
Date: Thu, 21 Nov 2019 04:18:55 +0100
Message-Id: <1574306335-29026-1-git-send-email-krzk@kernel.org>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_191900_802567_D2F5743D 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Andy Gross <agross@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
	$ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Fix also 7-space and tab+1 space indentation issues.
---
 drivers/clk/Kconfig           |  2 +-
 drivers/clk/mediatek/Kconfig  | 44 +++++++++++++++++++++----------------------
 drivers/clk/mvebu/Kconfig     |  2 +-
 drivers/clk/qcom/Kconfig      |  4 ++--
 drivers/clk/versatile/Kconfig |  2 +-
 5 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index 0530bebfc25a..b8ebf7b93d63 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -27,7 +27,7 @@ config COMMON_CLK_WM831X
 	tristate "Clock driver for WM831x/2x PMICs"
 	depends on MFD_WM831X
 	---help---
-          Supports the clocking subsystem of the WM831x/2x series of
+	  Supports the clocking subsystem of the WM831x/2x series of
 	  PMICs from Wolfson Microelectronics.
 
 source "drivers/clk/versatile/Kconfig"
diff --git a/drivers/clk/mediatek/Kconfig b/drivers/clk/mediatek/Kconfig
index 7efc3617bbd5..e4c7cb518cda 100644
--- a/drivers/clk/mediatek/Kconfig
+++ b/drivers/clk/mediatek/Kconfig
@@ -174,36 +174,36 @@ config COMMON_CLK_MT6779_AUDSYS
 	  This driver supports Mediatek MT6779 audsys clocks.
 
 config COMMON_CLK_MT6797
-       bool "Clock driver for MediaTek MT6797"
-       depends on (ARCH_MEDIATEK && ARM64) || COMPILE_TEST
-       select COMMON_CLK_MEDIATEK
-       default ARCH_MEDIATEK && ARM64
-       ---help---
-         This driver supports MediaTek MT6797 basic clocks.
+	bool "Clock driver for MediaTek MT6797"
+	depends on (ARCH_MEDIATEK && ARM64) || COMPILE_TEST
+	select COMMON_CLK_MEDIATEK
+	default ARCH_MEDIATEK && ARM64
+	---help---
+	 This driver supports MediaTek MT6797 basic clocks.
 
 config COMMON_CLK_MT6797_MMSYS
-       bool "Clock driver for MediaTek MT6797 mmsys"
-       depends on COMMON_CLK_MT6797
-       ---help---
-         This driver supports MediaTek MT6797 mmsys clocks.
+	bool "Clock driver for MediaTek MT6797 mmsys"
+	depends on COMMON_CLK_MT6797
+	---help---
+	 This driver supports MediaTek MT6797 mmsys clocks.
 
 config COMMON_CLK_MT6797_IMGSYS
-       bool "Clock driver for MediaTek MT6797 imgsys"
-       depends on COMMON_CLK_MT6797
-       ---help---
-         This driver supports MediaTek MT6797 imgsys clocks.
+	bool "Clock driver for MediaTek MT6797 imgsys"
+	depends on COMMON_CLK_MT6797
+	---help---
+	 This driver supports MediaTek MT6797 imgsys clocks.
 
 config COMMON_CLK_MT6797_VDECSYS
-       bool "Clock driver for MediaTek MT6797 vdecsys"
-       depends on COMMON_CLK_MT6797
-       ---help---
-         This driver supports MediaTek MT6797 vdecsys clocks.
+	bool "Clock driver for MediaTek MT6797 vdecsys"
+	depends on COMMON_CLK_MT6797
+	---help---
+	 This driver supports MediaTek MT6797 vdecsys clocks.
 
 config COMMON_CLK_MT6797_VENCSYS
-       bool "Clock driver for MediaTek MT6797 vencsys"
-       depends on COMMON_CLK_MT6797
-       ---help---
-         This driver supports MediaTek MT6797 vencsys clocks.
+	bool "Clock driver for MediaTek MT6797 vencsys"
+	depends on COMMON_CLK_MT6797
+	---help---
+	 This driver supports MediaTek MT6797 vencsys clocks.
 
 config COMMON_CLK_MT7622
 	bool "Clock driver for MediaTek MT7622"
diff --git a/drivers/clk/mvebu/Kconfig b/drivers/clk/mvebu/Kconfig
index 415e6906a113..ded07b0bd0d5 100644
--- a/drivers/clk/mvebu/Kconfig
+++ b/drivers/clk/mvebu/Kconfig
@@ -29,7 +29,7 @@ config ARMADA_39X_CLK
 	select MVEBU_CLK_COMMON
 
 config ARMADA_37XX_CLK
-       bool
+	bool
 
 config ARMADA_XP_CLK
 	bool
diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
index 3b33ef129274..f37f3cd615f2 100644
--- a/drivers/clk/qcom/Kconfig
+++ b/drivers/clk/qcom/Kconfig
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config KRAIT_CLOCKS
-       bool
-       select KRAIT_L2_ACCESSORS
+	bool
+	select KRAIT_L2_ACCESSORS
 
 config QCOM_GDSC
 	bool
diff --git a/drivers/clk/versatile/Kconfig b/drivers/clk/versatile/Kconfig
index ac766855ba16..c2618f1477a2 100644
--- a/drivers/clk/versatile/Kconfig
+++ b/drivers/clk/versatile/Kconfig
@@ -9,7 +9,7 @@ config COMMON_CLK_VERSATILE
 		COMPILE_TEST
 	select REGMAP_MMIO
 	---help---
-          Supports clocking on ARM Reference designs:
+	  Supports clocking on ARM Reference designs:
 	  - Integrator/AP and Integrator/CP
 	  - RealView PB1176, EB, PB11MP and PBX
 	  - Versatile Express
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
