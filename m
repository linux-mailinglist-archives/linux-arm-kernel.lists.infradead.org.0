Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3062C13E1A0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:50:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V95rBI8Lsakt7oFXE7AKMnHytxS4X53ExgcT1S/YOb8=; b=bFcRIyUhLm4hhj
	WxW+UYm9+ZUclD6+zAhK0VS7pTqPHPuuepeSGFN+IyQfGQ4Vhh/zmzJHAMM/jhzW7n9hMFFVqe2Wr
	tSpVlTsPpS/VYqNYQY1zL2UfpR+xgHlm1VJZUVWNDXKqOi7ayz97C996TxuG+cZTD19EcLIrrYiG+
	WmZpM8iidwesCQUEfnD0TknWj54nlzB6TOjWE/rzbQhJpzkvdm74Thy6jFa4IXryznpSFN5GlCZ6l
	9EM+K7A7r7CkajO0tAC4IJEn+OkNIiTC4SxAJUNilp1a4Laul1Nb2fbnsVB0MnQZ0SE3O63zGoeB/
	N6uGo7lK1KgkoQy2J3cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Ln-00065V-A0; Thu, 16 Jan 2020 16:50:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8Jb-0002ly-Ge
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 16:48:20 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9200B20663;
 Thu, 16 Jan 2020 16:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193295;
 bh=waNVBhksyA0mkdyrEbwbIzA9lgS4ZemC8XaZvfRZVvY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vK8wcv5fslg2MCjEAi2BvW3XOTzKVtz9C6ocDvxK7Ioj4+kEvIt8uSPPhKgT+AK+o
 mV7OvzGL+JkeQIlopiJ0/y1yAaZ2w+lZl5fGJ71di8J2bblT8ZmjimJWeEyMOo8gqD
 R484xmrCC4/kZOVGzl2qcD0jHj2G5RRXCNFx2lb0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 068/205] clk: imx7ulp: Correct DDR clock mux
 options
Date: Thu, 16 Jan 2020 11:40:43 -0500
Message-Id: <20200116164300.6705-68-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084815_614205_C1850DCA 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Anson Huang <Anson.Huang@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Anson Huang <Anson.Huang@nxp.com>

[ Upstream commit 2e2b928a04bd74ea410da72bd60e1c5b06398276 ]

In the latest reference manual Rev.0,06/2019, the DDR clock mux
is extended to 2 bits, and the clock options are also changed,
correct them accordingly.

Fixes: b1260067ac3d ("clk: imx: add imx7ulp clk driver")
Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
Reviewed-by: Fabio Estevam <festevam@gmail.com>
Signed-off-by: Shawn Guo <shawnguo@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/imx/clk-imx7ulp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx7ulp.c b/drivers/clk/imx/clk-imx7ulp.c
index d2c49fbd0563..04a3ae979281 100644
--- a/drivers/clk/imx/clk-imx7ulp.c
+++ b/drivers/clk/imx/clk-imx7ulp.c
@@ -25,7 +25,7 @@ static const char * const spll_sels[]		= { "spll", "spll_pfd_sel", };
 static const char * const apll_pfd_sels[]	= { "apll_pfd0", "apll_pfd1", "apll_pfd2", "apll_pfd3", };
 static const char * const apll_sels[]		= { "apll", "apll_pfd_sel", };
 static const char * const scs_sels[]		= { "dummy", "sosc", "sirc", "firc", "dummy", "apll_sel", "spll_sel", "dummy", };
-static const char * const ddr_sels[]		= { "apll_pfd_sel", "upll", };
+static const char * const ddr_sels[]		= { "apll_pfd_sel", "dummy", "dummy", "dummy", };
 static const char * const nic_sels[]		= { "firc", "ddr_clk", };
 static const char * const periph_plat_sels[]	= { "dummy", "nic1_bus_clk", "nic1_clk", "ddr_clk", "apll_pfd2", "apll_pfd1", "apll_pfd0", "upll", };
 static const char * const periph_bus_sels[]	= { "dummy", "sosc_bus_clk", "mpll", "firc_bus_clk", "rosc", "nic1_bus_clk", "nic1_clk", "spll_bus_clk", };
@@ -119,7 +119,7 @@ static void __init imx7ulp_clk_scg1_init(struct device_node *np)
 	clks[IMX7ULP_CLK_SYS_SEL]	= imx_clk_hw_mux2("scs_sel", base + 0x14, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
 	clks[IMX7ULP_CLK_HSRUN_SYS_SEL] = imx_clk_hw_mux2("hsrun_scs_sel", base + 0x1c, 24, 4, scs_sels, ARRAY_SIZE(scs_sels));
 	clks[IMX7ULP_CLK_NIC_SEL]	= imx_clk_hw_mux2("nic_sel", base + 0x40, 28, 1, nic_sels, ARRAY_SIZE(nic_sels));
-	clks[IMX7ULP_CLK_DDR_SEL]	= imx_clk_hw_mux_flags("ddr_sel", base + 0x30, 24, 1, ddr_sels, ARRAY_SIZE(ddr_sels), CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
+	clks[IMX7ULP_CLK_DDR_SEL]	= imx_clk_hw_mux_flags("ddr_sel", base + 0x30, 24, 2, ddr_sels, ARRAY_SIZE(ddr_sels), CLK_SET_RATE_PARENT | CLK_OPS_PARENT_ENABLE);
 
 	clks[IMX7ULP_CLK_CORE_DIV]	= imx_clk_hw_divider_flags("divcore",	"scs_sel",  base + 0x14, 16, 4, CLK_SET_RATE_PARENT);
 	clks[IMX7ULP_CLK_HSRUN_CORE_DIV] = imx_clk_hw_divider_flags("hsrun_divcore", "hsrun_scs_sel", base + 0x1c, 16, 4, CLK_SET_RATE_PARENT);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
