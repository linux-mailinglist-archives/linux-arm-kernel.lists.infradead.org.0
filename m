Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2CD171542
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 11:43:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8MlOA35pT9KiGUtTcBVHEd7Eq95HUaEGUCoeyZ6FXA=; b=Xu9Ik7rtjV6+J5
	fMAu6R1iDyoVaaynItPDbjEv1KTl9093PxSP5DNjXS0zG5bKKWWHQGEOh9Z+n/mGdAXe7kS/WHZKs
	jIpt+dXReAlX2N98XcX5uq4qJzZ1CqVjczrwvvdCfJAymQV38XGY1+qnfeYwxDKi2rLrNVZPdE0t8
	EYEZVU1NqBzl3DWBKOzS7TpXW6IpZ8otODD6PRHqDGSSxT48IFCEIbJL441T77ushlGWtMNsejFua
	OHJtjgpisORnIpuCxvEGktbmnKKdZA1/9Ry/WPvL2Y1Rsscodjm4/BaBoWa2rycyxPuGiNGBAK8oD
	ms/NCwuQYXGqK1lUY0xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7GdW-0002MW-2a; Thu, 27 Feb 2020 10:43:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7GcZ-0001gG-73
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 10:42:25 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcR-0003f8-Ay; Thu, 27 Feb 2020 11:42:15 +0100
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1j7GcP-0004o4-6a; Thu, 27 Feb 2020 11:42:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Peter.Chen@nxp.com, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 linux-imx@nxp.com, stern@rowland.harvard.edu, jun.li@freescale.com
Subject: [PATCH 3/3] Revert "usb: chipidea: add a flag for turn on vbus early
 for host"
Date: Thu, 27 Feb 2020 11:42:12 +0100
Message-Id: <20200227104212.12562-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200227104212.12562-1-m.felsch@pengutronix.de>
References: <20200227104212.12562-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_024223_252892_BFF6D4D8 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-usb@vger.kernel.org, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The flag is no longer needed and can be removed since the quirk is now
handled within the port_power() callback.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/usb/chipidea/ci_hdrc_imx.c | 10 ++--------
 include/linux/usb/chipidea.h       | 17 ++++++++---------
 2 files changed, 10 insertions(+), 17 deletions(-)

diff --git a/drivers/usb/chipidea/ci_hdrc_imx.c b/drivers/usb/chipidea/ci_hdrc_imx.c
index d8e7eb2f97b9..5c66921bbb9b 100644
--- a/drivers/usb/chipidea/ci_hdrc_imx.c
+++ b/drivers/usb/chipidea/ci_hdrc_imx.c
@@ -23,8 +23,7 @@ struct ci_hdrc_imx_platform_flag {
 };
 
 static const struct ci_hdrc_imx_platform_flag imx23_usb_data = {
-	.flags = CI_HDRC_TURN_VBUS_EARLY_ON |
-		CI_HDRC_DISABLE_STREAMING,
+	.flags = CI_HDRC_DISABLE_STREAMING,
 };
 
 static const struct ci_hdrc_imx_platform_flag imx27_usb_data = {
@@ -33,31 +32,26 @@ static const struct ci_hdrc_imx_platform_flag imx27_usb_data = {
 
 static const struct ci_hdrc_imx_platform_flag imx28_usb_data = {
 	.flags = CI_HDRC_IMX28_WRITE_FIX |
-		CI_HDRC_TURN_VBUS_EARLY_ON |
 		CI_HDRC_DISABLE_STREAMING,
 };
 
 static const struct ci_hdrc_imx_platform_flag imx6q_usb_data = {
 	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM |
-		CI_HDRC_TURN_VBUS_EARLY_ON |
 		CI_HDRC_DISABLE_STREAMING,
 };
 
 static const struct ci_hdrc_imx_platform_flag imx6sl_usb_data = {
 	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM |
-		CI_HDRC_TURN_VBUS_EARLY_ON |
 		CI_HDRC_DISABLE_HOST_STREAMING,
 };
 
 static const struct ci_hdrc_imx_platform_flag imx6sx_usb_data = {
 	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM |
-		CI_HDRC_TURN_VBUS_EARLY_ON |
 		CI_HDRC_DISABLE_HOST_STREAMING,
 };
 
 static const struct ci_hdrc_imx_platform_flag imx6ul_usb_data = {
-	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM |
-		CI_HDRC_TURN_VBUS_EARLY_ON,
+	.flags = CI_HDRC_SUPPORTS_RUNTIME_PM,
 };
 
 static const struct ci_hdrc_imx_platform_flag imx7d_usb_data = {
diff --git a/include/linux/usb/chipidea.h b/include/linux/usb/chipidea.h
index edd89b7c8f18..fa373aafa80e 100644
--- a/include/linux/usb/chipidea.h
+++ b/include/linux/usb/chipidea.h
@@ -53,15 +53,14 @@ struct ci_hdrc_platform_data {
 #define CI_HDRC_DUAL_ROLE_NOT_OTG	BIT(4)
 #define CI_HDRC_IMX28_WRITE_FIX		BIT(5)
 #define CI_HDRC_FORCE_FULLSPEED		BIT(6)
-#define CI_HDRC_TURN_VBUS_EARLY_ON	BIT(7)
-#define CI_HDRC_SET_NON_ZERO_TTHA	BIT(8)
-#define CI_HDRC_OVERRIDE_AHB_BURST	BIT(9)
-#define CI_HDRC_OVERRIDE_TX_BURST	BIT(10)
-#define CI_HDRC_OVERRIDE_RX_BURST	BIT(11)
-#define CI_HDRC_OVERRIDE_PHY_CONTROL	BIT(12) /* Glue layer manages phy */
-#define CI_HDRC_REQUIRES_ALIGNED_DMA	BIT(13)
-#define CI_HDRC_IMX_IS_HSIC		BIT(14)
-#define CI_HDRC_PMQOS			BIT(15)
+#define CI_HDRC_SET_NON_ZERO_TTHA	BIT(7)
+#define CI_HDRC_OVERRIDE_AHB_BURST	BIT(8)
+#define CI_HDRC_OVERRIDE_TX_BURST	BIT(9)
+#define CI_HDRC_OVERRIDE_RX_BURST	BIT(10)
+#define CI_HDRC_OVERRIDE_PHY_CONTROL	BIT(11) /* Glue layer manages phy */
+#define CI_HDRC_REQUIRES_ALIGNED_DMA	BIT(12)
+#define CI_HDRC_IMX_IS_HSIC		BIT(13)
+#define CI_HDRC_PMQOS			BIT(14)
 	enum usb_dr_mode	dr_mode;
 #define CI_HDRC_CONTROLLER_RESET_EVENT		0
 #define CI_HDRC_CONTROLLER_STOPPED_EVENT	1
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
