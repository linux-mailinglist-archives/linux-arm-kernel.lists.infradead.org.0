Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6FD17D77D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 01:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rNS2KcVEIC1YpOk3Qis6gnAU1Ee4oSt2Zorn9UExNWA=; b=aKO+yVxSPaZuRojIbG/zUk14QE
	aWZviSAx/sffMFrXsF6Y3eV8LXlB988a0glf5bna3xXGFeFQlu9cC6E+G1MLOEqBhX4DgTjuDwk7L
	ureTPGoEdY7N8vJgmIH+4gSU+ydRb1r/EQtvaNW/esHB6y0nvSF4SkS7pEVfbnBkgfzIjCdJ2QFnW
	y3FtJlSat3oWlCn1A7pLnr2o2MlUci2ZVkMGsKQUES2+tDskS5OD+V/tLBI0HYZ7aT3GfHrK/XpZ3
	GpqIOjhQ9HtMwbGDlItO5prsiMgHGuFSKkFwICB+9PiV7CPVqNMJpZIub7d5vs3Y07NxzEBAR4/59
	V75eqUig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jB6Xz-0005dX-KQ; Mon, 09 Mar 2020 00:45:31 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jB6Xc-00056A-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 00:45:10 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id B5DE71A169E;
 Mon,  9 Mar 2020 01:45:07 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1D8651A0B31;
 Mon,  9 Mar 2020 01:44:49 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 4FDD4402A5;
 Mon,  9 Mar 2020 08:44:35 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, dmitry.torokhov@gmail.com, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, linux@roeck-us.net, daniel.baluta@nxp.com,
 gregkh@linuxfoundation.org, linux@rempel-privat.de, tglx@linutronix.de,
 m.felsch@pengutronix.de, andriy.shevchenko@linux.intel.com, arnd@arndb.de,
 ronald@innovation.ch, krzk@kernel.org, robh@kernel.org,
 leonard.crestez@nxp.com, aisheng.dong@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH V3 2/7] firmware: imx: add COMPILE_TEST support
Date: Mon,  9 Mar 2020 08:38:15 +0800
Message-Id: <1583714300-19085-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
References: <1583714300-19085-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_174509_154639_DD3E35A2 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

Add COMPILE_TEST support to i.MX SCU drivers for better compile
testing coverage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 drivers/firmware/imx/Kconfig | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
index 1d2e5b8..116707a 100644
--- a/drivers/firmware/imx/Kconfig
+++ b/drivers/firmware/imx/Kconfig
@@ -12,7 +12,7 @@ config IMX_DSP
 
 config IMX_SCU
 	bool "IMX SCU Protocol driver"
-	depends on IMX_MBOX
+	depends on IMX_MBOX || COMPILE_TEST
 	help
 	  The System Controller Firmware (SCFW) is a low-level system function
 	  which runs on a dedicated Cortex-M core to provide power, clock, and
@@ -24,6 +24,6 @@ config IMX_SCU
 
 config IMX_SCU_PD
 	bool "IMX SCU Power Domain driver"
-	depends on IMX_SCU
+	depends on IMX_SCU || COMPILE_TEST
 	help
 	  The System Controller Firmware (SCFW) based power domain driver.
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
