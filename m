Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A0817C230
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 16:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9exTfth3XOoVsVi5dp4RIrfztQ39uelwFBiltIe4K44=; b=CnBV6StVJPuGULyNKlg3tWjS7W
	6N0NtzoLhRGE7s20sSNwJlF7H1jm6//5xrDMc4PKJM1v4EPrUTuQJR38xxyI14LuuwZGUKOkjmZXC
	5Y03/429ljdwjsBmesdSxHBOKKP5M1Vr0FiNJBKsDtSrePeRyuitMauBOL9sy/nf3BJ9Xq2nlwPnG
	RGXzXcIibhwXkQk+6QRgenBB5Ocsvcju60fvNQWVDFNkgrGqZ0tr8dy7H0mIOBE+nNY2JhQuQ2leO
	7zK0bb1pQB2x/QWhjDnS2DfEhiVJPZTScVqGR//ulg16Ts4738doMl4mEGpiiZl99Mf/Gv//NQ8bf
	VCkZKdMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFEP-0004a6-G8; Fri, 06 Mar 2020 15:49:45 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFE2-0004Pj-30
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 15:49:23 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 50E141A0BBD;
 Fri,  6 Mar 2020 16:49:20 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5037A1A0BD1;
 Fri,  6 Mar 2020 16:49:03 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id A2C7F402A0;
 Fri,  6 Mar 2020 23:48:49 +0800 (SGT)
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
Subject: [PATCH 4/5] watchdog: add COMPILE_TEST support for IMX_SC_WDT
Date: Fri,  6 Mar 2020 23:42:35 +0800
Message-Id: <1583509356-8265-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
References: <1583509356-8265-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_074922_275528_4FE75E38 
X-CRM114-Status: GOOD (  10.31  )
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

Add COMPILE_TEST support to i.MX SC watchdog driver for better compile
testing coverage.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/watchdog/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index 9ea2b43..6388154 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -712,7 +712,7 @@ config IMX2_WDT
 config IMX_SC_WDT
 	tristate "IMX SC Watchdog"
 	depends on HAVE_ARM_SMCCC
-	depends on IMX_SCU
+	depends on IMX_SCU || COMPILE_TEST
 	select WATCHDOG_CORE
 	help
 	  This is the driver for the system controller watchdog
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
