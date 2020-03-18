Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97279189487
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 04:33:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tE0W8jfqgOvXeO0AMjNlZRMO80xFnxrRrSDja44XA44=; b=jBq
	2BQeyZQhWwWgyQ48POZ5kwMAOrewPUIP6gMiAAQYzB24TrhABgR4o8VyPfcuhut+oQq9/tbxq0KqM
	ExMqwVgBlx+dkLmulWXKwXHX7Uc0x1ot7ALZrFvhD3oNnjPvovB/+Y08Lwg6hO19FO/VaslsDfAPK
	m01kl/xOv6P8Kihj79P2oCJNmf/0OoEyD+UdA1BGYTb/wIgLko/A1w4ihQFKbrySjzpEAw3s5Aexy
	SbCkJN9HhYb0/is4W0pbkao16J1PAToxDTkr1B8LujHVM0wbqTPLGxs1nY4XpMHmoSg0cH+cw5fn1
	Sa5iNTnip0BCA2p+qdy6gI8bM31K/kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEPSo-0005I8-3p; Wed, 18 Mar 2020 03:33:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEPSg-0005HO-JK
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 03:33:44 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 772C71A104F;
 Wed, 18 Mar 2020 04:33:40 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E95E61A1050;
 Wed, 18 Mar 2020 04:33:32 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 8E1A5402C1;
 Wed, 18 Mar 2020 11:33:23 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 allison@lohutok.net, gustavo@embeddedor.com, kstewart@linuxfoundation.org,
 tglx@linutronix.de, abel.vesa@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] clk: imx: clk-pllv3: Use readl_poll_timeout() for PLL lock
 wait
Date: Wed, 18 Mar 2020 11:26:44 +0800
Message-Id: <1584502004-11349-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_203342_775513_2A2266AC 
X-CRM114-Status: UNSURE (   9.91  )
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

Use readl_poll_timeout() for PLL lock wait which can simplify the
code a lot.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-pllv3.c | 16 +++++-----------
 1 file changed, 5 insertions(+), 11 deletions(-)

diff --git a/drivers/clk/imx/clk-pllv3.c b/drivers/clk/imx/clk-pllv3.c
index df91a82..3dfa9c3 100644
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
+	return readl_poll_timeout(pll->base, val, val & BM_PLL_LOCK, 500,
+				  PLL_LOCK_TIMEOUT);
 }
 
 static int clk_pllv3_prepare(struct clk_hw *hw)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
