Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84D7C17C236
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:50:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5YLL33g2S2sbQUGHhPCMug10KmkziKSXDH9ytBGdlf4=; b=VNl
	owKI5xA1AxynsCg++j93WG7fZ8+w2/SRZBDBeMO7/DKj/qXW4iwP2qjYhnSY3/eoIsAEhZmMaeHGP
	TcbOQ2I7oqj9x389fCDG9UZ0RRCTz59BDpTDr3V2RSne3ffRjC0MMADxJXBbFBsH0X6zuZdtXCLy2
	VsrpxFfpHxS/olw4VSO0XSNT3ssv9nMWLyoSz0xGLSQLnw77oTTYpud9tzddedh8BekrQA5nhy20x
	q87KF7fqO38tiwqMRaKgFBSkVtsLhkp9gSneTyUZqgS4N84a2Dv82jd5DNM7hkGvBRaV9CiDuHUEa
	/ktmhEG6F1UG6FgjY4l6ZIscBZvm3tQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFFA-0006fZ-6j; Fri, 06 Mar 2020 15:50:32 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFE4-0004Oy-Al
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:49:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DBEA9200C03;
 Fri,  6 Mar 2020 16:49:13 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 617A6200BEA;
 Fri,  6 Mar 2020 16:48:56 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 2B65C40294;
 Fri,  6 Mar 2020 23:48:43 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, dmitry.torokhov@gmail.com, a.zummo@towertech.it,
 alexandre.belloni@bootlin.com, rui.zhang@intel.com,
 daniel.lezcano@linaro.org, amit.kucheria@verdurent.com,
 wim@linux-watchdog.org, linux@roeck-us.net, daniel.baluta@nxp.com,
 linux@rempel-privat.de, gregkh@linuxfoundation.org, tglx@linutronix.de,
 m.felsch@pengutronix.de, andriy.shevchenko@linux.intel.com, arnd@arndb.de,
 enric.balletbo@collabora.com, ronald@innovation.ch, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, linux-rtc@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-watchdog@vger.kernel.org
Subject: [PATCH 1/5] firmware: imx: add COMPILE_TEST support
Date: Fri,  6 Mar 2020 23:42:32 +0800
Message-Id: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_074924_509115_80484D0F 
X-CRM114-Status: UNSURE (   7.75  )
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

Add COMPILE_TEST support to i.MX SCU drivers for better compile
testing coverage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
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
