Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9417130C62
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YuIN6g7xAGtKqQbQT+TVa/h3atWg01tNQT1tZHLvHF8=; b=RMXPYPee95XSRb
	mb2bfKgYxPG3xPtMjC38tNWi4Xnruft5XL3FnA+dQzO0WF/qLpvmeODR3YXctOiuj9lZBc34RtcUk
	f6+C0N0MakVI6RRA5n4gU4nz+2KyhbklhdOPrtN+q5S/uqFeEj3+NpnN6ZEA5wugeXA2LwcqJyj5t
	9LO4GjBTcRD+Ns+wkALEie7dJYwhSxU5hhCadFK7cfrSRT5jWSseJpZayMnrGGRCttLT6k42zDpJw
	R8mq49qcu/zmdW2mb3s4Xu9HagzsrX47jLPUGB68DGS/dESDzm5qi/3dV0JuHXi+EQK2EN9nC5Uss
	IcgxARqDf/7iHof7U2fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioIm1-0008Pu-Q1; Mon, 06 Jan 2020 03:09:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioIls-0008PB-IZ
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 03:09:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1ECE121582;
 Mon,  6 Jan 2020 03:09:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578280174;
 bh=xHb/l1cvNs4OtUnPX8KlTG+ZY0RxRjIS8lEPUdRsFp4=;
 h=From:To:Cc:Subject:Date:From;
 b=ioZ57txjBXqosSU9+Ua4EgHyFFQfvl4lq5y80vmH/+c9SxRuX1WgaS/CW2TXJt5NL
 prb5JK5IJD55HfssQNZ54rTSF5XrkpnkfdaJjyAuHeEd8rxtG/HcM6hJbsqUxrwGS3
 Vgk0yz4WaQlt0kYEXbE6rwxdNmV5MUYe5p7Bh6pc=
Received: by wens.tw (Postfix, from userid 1000)
 id 34AEB5FCEC; Mon,  6 Jan 2020 11:09:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: "David S. Miller" <davem@davemloft.net>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH netdev] net: stmmac: dwmac-sunxi: Allow all RGMII modes
Date: Mon,  6 Jan 2020 11:09:22 +0800
Message-Id: <20200106030922.19721-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_190936_631799_9FDE78AA 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: netdev@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Allow all the RGMII modes to be used. This would allow us to represent
the hardware better in the device tree with RGMII_ID where in most
cases the PHY's internal delay for both RX and TX are used.

Fixes: af0bd4e9ba80 ("net: stmmac: sunxi platform extensions for GMAC in Allwinner A20 SoC's")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---

Maybe CC stable so future device trees can be used with stable kernels?
---
 drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
index 26353ef616b8..7d40760e9ba8 100644
--- a/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
+++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-sunxi.c
@@ -44,7 +44,7 @@ static int sun7i_gmac_init(struct platform_device *pdev, void *priv)
 	 * rate, which then uses the auto-reparenting feature of the
 	 * clock driver, and enabling/disabling the clock.
 	 */
-	if (gmac->interface == PHY_INTERFACE_MODE_RGMII) {
+	if (phy_interface_mode_is_rgmii(gmac->interface)) {
 		clk_set_rate(gmac->tx_clk, SUN7I_GMAC_GMII_RGMII_RATE);
 		clk_prepare_enable(gmac->tx_clk);
 		gmac->clk_enabled = 1;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
