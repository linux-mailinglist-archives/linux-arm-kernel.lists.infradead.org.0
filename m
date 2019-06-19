Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A3A4B1AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 07:52:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kIx+osEo/ZsM3WTVkOedvoVOZLIBMIoxZutu6EFoKBU=; b=ATd7Pw+XI6egRSQPnz1AAfrqRv
	kx06MHSUxCWFb/e6vkkZB2Q6RlYhsl2Tuqa2y3Mn0qfPsOGGa3S8vGsNWhjn7Ttlpzd6CtmT8ZUPW
	LxUfzP8IOwMWI1dRbXYTnUaLXPMk3WE+XXKCK2BI92S6MY9iyvRvHGIAEpM8aCX/MVkSnxag5bl0S
	fEwaXuq6AcGMrQrVr7HLe7bYTLICdDei1+8LNneXCx7dxwrP/r8l9/hUfoGacNG4PITilhF8IxbpV
	9XlRQnhHl8Gjc4WppJqs5jH15C/80Xl0pIZylL10JWe6YQmrNl+/SA6EJqFPN2MHNIXi0OYExQWFi
	/IaRZVHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdTW4-00032t-6J; Wed, 19 Jun 2019 05:52:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdTVE-0002aj-9S
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 05:51:25 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id EDB8C200166;
 Wed, 19 Jun 2019 07:51:22 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 71836200E3B;
 Wed, 19 Jun 2019 07:51:10 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 12C67402F7;
 Wed, 19 Jun 2019 13:50:57 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, catalin.marinas@arm.com,
 will.deacon@arm.com, maxime.ripard@bootlin.com, olof@lixom.net,
 horms+renesas@verge.net.au, jagan@amarulasolutions.com,
 leonard.crestez@nxp.com, bjorn.andersson@linaro.org, dinguyen@kernel.org,
 enric.balletbo@collabora.com, aisheng.dong@nxp.com, ping.bai@nxp.com,
 abel.vesa@nxp.com, l.stach@pengutronix.de, peng.fan@nxp.com,
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V5 3/5] clk: imx: Add API for clk unregister when driver probe
 fail
Date: Wed, 19 Jun 2019 13:52:45 +0800
Message-Id: <20190619055247.35771-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619055247.35771-1-Anson.Huang@nxp.com>
References: <20190619055247.35771-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_225124_501596_2C2887F6 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

From: Anson Huang <Anson.Huang@nxp.com>

For i.MX clock drivers probe fail case, clks should be unregistered
in the return path, this patch adds a common API for i.MX clock
drivers to unregister clocks when fail.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 drivers/clk/imx/clk.c | 8 ++++++++
 drivers/clk/imx/clk.h | 1 +
 2 files changed, 9 insertions(+)

diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
index f241189..8616967 100644
--- a/drivers/clk/imx/clk.c
+++ b/drivers/clk/imx/clk.c
@@ -13,6 +13,14 @@
 
 DEFINE_SPINLOCK(imx_ccm_lock);
 
+void imx_unregister_clocks(struct clk *clks[], unsigned int count)
+{
+	unsigned int i;
+
+	for (i = 0; i < count; i++)
+		clk_unregister(clks[i]);
+}
+
 void __init imx_mmdc_mask_handshake(void __iomem *ccm_base,
 				    unsigned int chn)
 {
diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
index 19d7b8b..bb4ec1b 100644
--- a/drivers/clk/imx/clk.h
+++ b/drivers/clk/imx/clk.h
@@ -12,6 +12,7 @@ void imx_check_clk_hws(struct clk_hw *clks[], unsigned int count);
 void imx_register_uart_clocks(struct clk ** const clks[]);
 void imx_register_uart_clocks_hws(struct clk_hw ** const hws[]);
 void imx_mmdc_mask_handshake(void __iomem *ccm_base, unsigned int chn);
+void imx_unregister_clocks(struct clk *clks[], unsigned int count);
 
 extern void imx_cscmr1_fixup(u32 *val);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
