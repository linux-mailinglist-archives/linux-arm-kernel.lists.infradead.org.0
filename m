Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7407CB67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 20:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=g0rt3BhfR+4wBYZBJxIL/libUdSbW9vEtzyZJUgPTH4=; b=YJ+xqIsoWnqwGh
	xQwYCxrBf6k/Onpz4IVkWJNQxT2I/Oqm+fpe0qKmXWiW4IAW76mmNEJnZnwRtNxpDXRf4++z0XZDs
	PbbbmgNQh3H4rQD/2A2VaXO60C7aCBd9lpsj3WUDWYvq4GwitWRpIshtkmnUAFv7zYX6z6icM+9M/
	Jdhi4l0AzbLDJy/hQ1hyIgJPPmcjS9FsIc8c7M1dT/dgMw7AmP8d/hQW1a6eiILvF9BBvbR+PzCcx
	dqWubGEFTFILPe0SHVA25NpGUKMMIEYjQy0QLJGAlanrYAfU+fMvBjma/p4O2PGjSpLuo7ztAaOdC
	/TCT9yW393quxl2YgfMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hssvP-0000ad-3B; Wed, 31 Jul 2019 18:02:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hssv4-0000OG-0N
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 18:01:47 +0000
Received: by mail-pf1-x444.google.com with SMTP id y15so32312922pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 11:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KpKMaZxCj3prCeS1ZPMOBghg4R6UQ4TDRU+j0yUbTBg=;
 b=UBlh1sCr3rG6SVjzsTsDo0hidoycdVEiuLordVZFxIusys+7giye9SeSFQs174k6TD
 KlG3+mn9GuRKTmBQHpb3txhSo7E+j3QeBMhN7NbBdk63RfS6XrTiqiYbB0i0CDt2kxgp
 hUAWrcWLyCSBUpeD5wpmswQQlJq1Y3HlMs2xu1lHcELuR1lZFZ/Eb7f4/5xg1vJyT3aN
 yJmZoQFbRTod6ZQov+aJ4I1aZZ1Lq91S7m8X2Vpwu0APBXMhvO2xR0WxgaPxjzQ/SbSD
 aOfaeyIJPM6F7J56j+ZTlnJwiP4xJVaxbvlBu4mYj5zL9o45F9N838Y4KqKLI8TrR2od
 M3nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KpKMaZxCj3prCeS1ZPMOBghg4R6UQ4TDRU+j0yUbTBg=;
 b=BD/rRkOLqMGpHMqb9pptX2HE1d1d8l6ZIMRn8mnB3N6BELOdpyrVylT1/xqNnLKLWR
 Bs0ZypXakioH4/OB0r1pbY1iCZ72F8tidpySzloNei17RV3lj6eDuN9jIUPXMCTj/Bne
 hGPdUr09VJ/tbPVLutdwC72eD3ZthLIwJNn99V/fY6AY5rfd9AdEHYbYAITqxpqNzD3U
 TUOLiWs3BHItBrd1LWpwv31CI9uO2B2qEUfdHUbCyD3eswLcGf3FesqA8xhLCNLaYez1
 CF/G9f7x2clKKiZ9J/D5Ff/uTzOntvzkng5fc+36KSpRER4eRrj01t0ImbJV9+HjJ8wi
 Ud8g==
X-Gm-Message-State: APjAAAXciUh3b3XRv0rYOmIYKymBEDUsvk1Q5iHkq4uks0U9eVjCUzDk
 Ma3kHE5kxVZlcEW1F07BP7A=
X-Google-Smtp-Source: APXvYqye8pRiT4OLmGQ49v9XCAzTGn6IwpMK8l+7uH/1/MuE4yUSSO3uCy+BPB+6ONXP5nPcrdT/8Q==
X-Received: by 2002:a17:90a:2486:: with SMTP id
 i6mr4082885pje.125.1564596104666; 
 Wed, 31 Jul 2019 11:01:44 -0700 (PDT)
Received: from localhost.localdomain ([2607:fb90:4ad:5a0b:2aff:6e0f:8973:5a26])
 by smtp.gmail.com with ESMTPSA id g92sm7328677pje.11.2019.07.31.11.01.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 31 Jul 2019 11:01:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: 
Subject: [PATCH] ARM: imx: Drop imx_anatop_init()
Date: Wed, 31 Jul 2019 11:01:31 -0700
Message-Id: <20190731180131.8597-1-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_110146_082652_CB09998F 
X-CRM114-Status: GOOD (  12.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Peter Chen <peter.chen@nxp.com>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 Fabio Estevam <festevam@gmail.com>, Chris Healy <cphealy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With commit b5bbe2235361 ("usb: phy: mxs: Disable external charger
detect in mxs_phy_hw_init()") in tree all of the necessary charger
setup is done by the USB PHY driver which covers all of the affected
i.MX6 SoCs.

NOTE: Imx_anatop_init() was also called for i.MX7D, but looking at its
datasheet it appears to have a different USB PHY IP block, so
executing i.MX6 charger disable configuration seems unnecessary.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Chris Healy <cphealy@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Peter Chen <peter.chen@nxp.com>
Cc: linux-imx@nxp.com
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/mach-imx/anatop.c      | 25 -------------------------
 arch/arm/mach-imx/common.h      |  1 -
 arch/arm/mach-imx/mach-imx6q.c  |  1 -
 arch/arm/mach-imx/mach-imx6sl.c |  1 -
 arch/arm/mach-imx/mach-imx6sx.c |  1 -
 arch/arm/mach-imx/mach-imx6ul.c |  1 -
 arch/arm/mach-imx/mach-imx7d.c  |  1 -
 7 files changed, 31 deletions(-)

diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
index 777d8c255501..f2c9fe14198a 100644
--- a/arch/arm/mach-imx/anatop.c
+++ b/arch/arm/mach-imx/anatop.c
@@ -19,8 +19,6 @@
 #define ANADIG_REG_2P5		0x130
 #define ANADIG_REG_CORE		0x140
 #define ANADIG_ANA_MISC0	0x150
-#define ANADIG_USB1_CHRG_DETECT	0x1b0
-#define ANADIG_USB2_CHRG_DETECT	0x210
 #define ANADIG_DIGPROG		0x260
 #define ANADIG_DIGPROG_IMX6SL	0x280
 #define ANADIG_DIGPROG_IMX7D	0x800
@@ -33,8 +31,6 @@
 #define BM_ANADIG_ANA_MISC0_STOP_MODE_CONFIG	0x1000
 /* Below MISC0_DISCON_HIGH_SNVS is only for i.MX6SL */
 #define BM_ANADIG_ANA_MISC0_DISCON_HIGH_SNVS	0x2000
-#define BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B	0x80000
-#define BM_ANADIG_USB_CHRG_DETECT_EN_B		0x100000
 
 static struct regmap *anatop;
 
@@ -96,16 +92,6 @@ void imx_anatop_post_resume(void)
 
 }
 
-static void imx_anatop_usb_chrg_detect_disable(void)
-{
-	regmap_write(anatop, ANADIG_USB1_CHRG_DETECT,
-		BM_ANADIG_USB_CHRG_DETECT_EN_B
-		| BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B);
-	regmap_write(anatop, ANADIG_USB2_CHRG_DETECT,
-		BM_ANADIG_USB_CHRG_DETECT_EN_B |
-		BM_ANADIG_USB_CHRG_DETECT_CHK_CHRG_B);
-}
-
 void __init imx_init_revision_from_anatop(void)
 {
 	struct device_node *np;
@@ -167,14 +153,3 @@ void __init imx_init_revision_from_anatop(void)
 	mxc_set_cpu_type(digprog >> 16 & 0xff);
 	imx_set_soc_revision(revision);
 }
-
-void __init imx_anatop_init(void)
-{
-	anatop = syscon_regmap_lookup_by_compatible("fsl,imx6q-anatop");
-	if (IS_ERR(anatop)) {
-		pr_err("%s: failed to find imx6q-anatop regmap!\n", __func__);
-		return;
-	}
-
-	imx_anatop_usb_chrg_detect_disable();
-}
diff --git a/arch/arm/mach-imx/common.h b/arch/arm/mach-imx/common.h
index 912aeceb4ff8..debeda48fb98 100644
--- a/arch/arm/mach-imx/common.h
+++ b/arch/arm/mach-imx/common.h
@@ -96,7 +96,6 @@ void imx_gpc_mask_all(void);
 void imx_gpc_restore_all(void);
 void imx_gpc_hwirq_mask(unsigned int hwirq);
 void imx_gpc_hwirq_unmask(unsigned int hwirq);
-void imx_anatop_init(void);
 void imx_anatop_pre_suspend(void);
 void imx_anatop_post_resume(void);
 int imx6_set_lpm(enum mxc_cpu_pwr_mode mode);
diff --git a/arch/arm/mach-imx/mach-imx6q.c b/arch/arm/mach-imx/mach-imx6q.c
index edd26e0ffeec..b4c2b99192c5 100644
--- a/arch/arm/mach-imx/mach-imx6q.c
+++ b/arch/arm/mach-imx/mach-imx6q.c
@@ -274,7 +274,6 @@ static void __init imx6q_init_machine(void)
 
 	of_platform_default_populate(NULL, NULL, parent);
 
-	imx_anatop_init();
 	cpu_is_imx6q() ?  imx6q_pm_init() : imx6dl_pm_init();
 	imx6q_1588_init();
 	imx6q_axi_init();
diff --git a/arch/arm/mach-imx/mach-imx6sl.c b/arch/arm/mach-imx/mach-imx6sl.c
index e00818abe54d..1f3092be03fd 100644
--- a/arch/arm/mach-imx/mach-imx6sl.c
+++ b/arch/arm/mach-imx/mach-imx6sl.c
@@ -56,7 +56,6 @@ static void __init imx6sl_init_machine(void)
 
 	if (cpu_is_imx6sl())
 		imx6sl_fec_init();
-	imx_anatop_init();
 	imx6sl_pm_init();
 }
 
diff --git a/arch/arm/mach-imx/mach-imx6sx.c b/arch/arm/mach-imx/mach-imx6sx.c
index d5310bf307ff..0f93c2e023c3 100644
--- a/arch/arm/mach-imx/mach-imx6sx.c
+++ b/arch/arm/mach-imx/mach-imx6sx.c
@@ -72,7 +72,6 @@ static void __init imx6sx_init_machine(void)
 	of_platform_default_populate(NULL, NULL, parent);
 
 	imx6sx_enet_init();
-	imx_anatop_init();
 	imx6sx_pm_init();
 }
 
diff --git a/arch/arm/mach-imx/mach-imx6ul.c b/arch/arm/mach-imx/mach-imx6ul.c
index 311f5e4ff723..d063e3b6e5da 100644
--- a/arch/arm/mach-imx/mach-imx6ul.c
+++ b/arch/arm/mach-imx/mach-imx6ul.c
@@ -64,7 +64,6 @@ static void __init imx6ul_init_machine(void)
 
 	of_platform_default_populate(NULL, NULL, parent);
 	imx6ul_enet_init();
-	imx_anatop_init();
 	imx6ul_pm_init();
 }
 
diff --git a/arch/arm/mach-imx/mach-imx7d.c b/arch/arm/mach-imx/mach-imx7d.c
index 95713450591a..dede6004bfc8 100644
--- a/arch/arm/mach-imx/mach-imx7d.c
+++ b/arch/arm/mach-imx/mach-imx7d.c
@@ -90,7 +90,6 @@ static void __init imx7d_init_machine(void)
 	if (parent == NULL)
 		pr_warn("failed to initialize soc device\n");
 
-	imx_anatop_init();
 	imx7d_enet_init();
 }
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
