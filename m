Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9796618C3F3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 00:51:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=MsvEEJWOacpvb3M7C8XwF+zp75CfQrcx4gkvNpivFb0=; b=HkL
	ooQy0+pQQLK1CK8oLz2rA5R1XY+rw+x+Krs8VxH1I63GXg1WBd2DCRJUp9ze8edPaWEQiR8HSI823
	dM4aGpCaFGtA/RkdIno6AR+4AbaBtp93nNGSAHszuAjrKSUa6BCEofYe2o2gH0+6EoHbUS0EgSmzk
	95hNvFgkfQuHlw9ZxztEbCdmST6tnl7Iu+KQfSLhocN4E4WgnvMN+kyb/kiQ9sBUlh9Lb+C0558XV
	K5XoC0DlZdHZkhZDKq4CQjSL4jfev5SANoy4oyIjwo68LOKJy3GYRckHitEK+kkDxLM7T9iXorc1y
	YkzGcKj81WXb+mcJvMQqjMhSyPbwTnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF4wT-0005nN-NS; Thu, 19 Mar 2020 23:51:13 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF4wM-0005mm-22
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 23:51:08 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 0A8EA1A0121;
 Fri, 20 Mar 2020 00:51:04 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id F09191A0058;
 Fri, 20 Mar 2020 00:50:56 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 5E1464029F;
 Fri, 20 Mar 2020 07:50:48 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 gustavo@embeddedor.com, gregkh@linuxfoundation.org, tglx@linutronix.de,
 abel.vesa@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V2] clk: imx: clk-pllv3: Use readl_relaxed_poll_timeout() for
 PLL lock wait
Date: Fri, 20 Mar 2020 07:44:03 +0800
Message-Id: <1584661443-12032-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_165106_241706_7D368CF3 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

Use readl_relaxed_poll_timeout() for PLL lock wait which can simplify the
code a lot.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Abel Vesa <abel.vesa@nxp.com>
---
Changes since V1:
	- Use readl_relaxed_poll_timeout() instead of readl_poll_timeout().
---
 drivers/clk/imx/clk-pllv3.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index df91a82..a7db930 100644
--- a/drivers/clk/imx/clk-pllv3.c
+++ b/drivers/clk/imx/clk-pllv3.c
@@ -7,6 +7,7 @@
 #include <linux/clk-provider.h>
 #include <linux/delay.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/slab.h>
 #include <linux/jiffies.h>
 #include <linux/err.h>
@@ -25,6 +26,8 @@
 #define IMX7_ENET_PLL_POWER	(0x1 << 5)
 #define IMX7_DDR_PLL_POWER	(0x1 << 20)
 
+#define PLL_LOCK_TIMEOUT	10000
+
 /**
  * struct clk_pllv3 - IMX PLL clock version 3
  * @clk_hw:	 clock source
@@ -53,23 +56,14 @@ struct clk_pllv3 {
 
 static int clk_pllv3_wait_lock(struct clk_pllv3 *pll)
 {
-	unsigned long timeout = jiffies + msecs_to_jiffies(10);
 	u32 val = readl_relaxed(pll->base) & pll->power_bit;
 
 	/* No need to wait for lock when pll is not powered up */
 	if ((pll->powerup_set && !val) || (!pll->powerup_set && val))
 		return 0;
 
-	/* Wait for PLL to lock */
-	do {
-		if (readl_relaxed(pll->base) & BM_PLL_LOCK)
-			break;
-		if (time_after(jiffies, timeout))
-			break;
-		usleep_range(50, 500);
-	} while (1);
-
-	return readl_relaxed(pll->base) & BM_PLL_LOCK ? 0 : -ETIMEDOUT;
+	return readl_relaxed_poll_timeout(pll->base, val, val & BM_PLL_LOCK,
+					  500, PLL_LOCK_TIMEOUT);
 }
 
 static int clk_pllv3_prepare(struct clk_hw *hw)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
