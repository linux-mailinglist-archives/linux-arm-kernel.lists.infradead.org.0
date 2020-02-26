Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5864916F668
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 05:23:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5MssDp3ivqNdMB5GsQVgFet0AR3xfgNzeTo3CXQUDTU=; b=cOn
	wyOI1GUspnEOmPVYnrPm63TvAEzrVvYyuxPLkrP7/nITH/jDqoMSKGebDv53rFlQr/QlOsCUH7VnO
	CQT+plplH5zqZi7WHgfMkdJAUr7F+PvdYhaUGW6WPFXUqDR7kqKq5bjgPlg7gaLaf7Bk7bVEdColn
	peI69wlMSFf50qZtkRMsqXFPp79yKCSIIPXi7lbsqdmcLkpmZP+zq21J8/0k/TzJIR/oLdwkbBTUd
	WvC+cLpW1X8s/OFp6WxaG8uH3WcjkveppaJN9bLn7VTgqxIcc42qFNDOu5ZcY9zKH3zBPGQpALfxS
	yvihTsohE7WIxKswGP+gPWatIzZQ/zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6oDz-000359-1Q; Wed, 26 Feb 2020 04:23:07 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6oDq-00034q-KE
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 04:23:00 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B3F1216284;
 Wed, 26 Feb 2020 05:22:52 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 34CF2216279;
 Wed, 26 Feb 2020 05:22:45 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8380F40246;
 Wed, 26 Feb 2020 12:22:36 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, allison@lohutok.net,
 tglx@linutronix.de, andrew.smirnov@gmail.com, gregkh@linuxfoundation.org,
 kstewart@linuxfoundation.org, info@metux.net,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx: Remove unnecessary blank lines
Date: Wed, 26 Feb 2020 12:16:57 +0800
Message-Id: <1582690617-27989-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_202258_805385_B5A7498A 
X-CRM114-Status: UNSURE (   7.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove unnecessary blank lines for cleanup.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/anatop.c      | 1 -
 arch/arm/mach-imx/gpc.c         | 1 -
 arch/arm/mach-imx/mach-imx6ul.c | 1 -
 3 files changed, 3 deletions(-)

diff --git a/arch/arm/mach-imx/anatop.c b/arch/arm/mach-imx/anatop.c
index ea4a596..d841bed 100644
--- a/arch/arm/mach-imx/anatop.c
+++ b/arch/arm/mach-imx/anatop.c
@@ -89,7 +89,6 @@ void imx_anatop_post_resume(void)
 
 	if (cpu_is_imx6sl())
 		imx_anatop_disconnect_high_snvs(false);
-
 }
 
 void __init imx_init_revision_from_anatop(void)
diff --git a/arch/arm/mach-imx/gpc.c b/arch/arm/mach-imx/gpc.c
index fb3cba8..ebc4339 100644
--- a/arch/arm/mach-imx/gpc.c
+++ b/arch/arm/mach-imx/gpc.c
@@ -111,7 +111,6 @@ void imx_gpc_mask_all(void)
 		gpc_saved_imrs[i] = readl_relaxed(reg_imr1 + i * 4);
 		writel_relaxed(~0, reg_imr1 + i * 4);
 	}
-
 }
 
 void imx_gpc_restore_all(void)
diff --git a/arch/arm/mach-imx/mach-imx6ul.c b/arch/arm/mach-imx/mach-imx6ul.c
index 311f5e4..3b0e16c 100644
--- a/arch/arm/mach-imx/mach-imx6ul.c
+++ b/arch/arm/mach-imx/mach-imx6ul.c
@@ -25,7 +25,6 @@ static void __init imx6ul_enet_clk_init(void)
 				   IMX6UL_GPR1_ENET_CLK_OUTPUT);
 	else
 		pr_err("failed to find fsl,imx6ul-iomux-gpr regmap\n");
-
 }
 
 static int ksz8081_phy_fixup(struct phy_device *dev)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
