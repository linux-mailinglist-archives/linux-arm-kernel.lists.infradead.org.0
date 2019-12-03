Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E4C10F905
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Dec 2019 08:41:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Z+Ocs4LHnSPNmJGTSpQsSweQo+VDhwpwG82LgOnPldE=; b=EBA
	4rGHTU8K/5hlOg4AepM2qZgIAJTW3mJHj+g+30JE2/5XtOdLTh2HNE3zT7pKQDN0aBHPjAMJF/9dO
	UsMl9AltAXHOujFfA8ygXk56gkId7OGwMDTkljRwOOtuuHQ68Mhi40wH+1JUTaKcjj9MR6KKXTAHd
	oPWxFiF7nJ2G/kURQFMjppCAPoWoiY1PGE1flG2zQtgSrbA3kOkQGsrgiNVd43gy4q7/zb+Lh10qH
	WyzirurfysTQgO3bqD8QXW6jbHPG2lL2sN8f7bNluUiNXlProIHI2fE7grNwBwAwfj8qKu58YihNa
	XymeEUAu22NMeIIN+ia+teYLn1qLBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic2nw-0004z7-9v; Tue, 03 Dec 2019 07:41:04 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic2nm-0004yL-S9
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Dec 2019 07:40:56 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 325FC1A0348;
 Tue,  3 Dec 2019 08:40:51 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 403D41A0971;
 Tue,  3 Dec 2019 08:40:46 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E06E5402BC;
 Tue,  3 Dec 2019 15:40:39 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: linux@armlinux.org.uk, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, arnd@arndb.de,
 aisheng.dong@nxp.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: imx: Enable ARM_ERRATA_814220 for i.MX6UL and i.MX7D
Date: Tue,  3 Dec 2019 15:38:40 +0800
Message-Id: <1575358720-27624-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_234055_049596_E58639C2 
X-CRM114-Status: UNSURE (   6.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

i.MX6UL and i.MX7D have Cortex-A7 inside, need to enable ARM_ERRATA_814220
for proper workaround.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 593bf15..4326c8f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -520,6 +520,7 @@ config SOC_IMX6UL
 	bool "i.MX6 UltraLite support"
 	select PINCTRL_IMX6UL
 	select SOC_IMX6
+	select ARM_ERRATA_814220
 
 	help
 	  This enables support for Freescale i.MX6 UltraLite processor.
@@ -556,6 +557,7 @@ config SOC_IMX7D
 	select PINCTRL_IMX7D
 	select SOC_IMX7D_CA7 if ARCH_MULTI_V7
 	select SOC_IMX7D_CM4 if ARM_SINGLE_ARMV7M
+	select ARM_ERRATA_814220
 	help
 		This enables support for Freescale i.MX7 Dual processor.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
