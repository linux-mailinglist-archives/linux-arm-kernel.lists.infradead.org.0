Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7B64E0D5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 09:06:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S1iumuC/3grpS7D69jHe3N6MttZg8rJEfNsF5WKxcmA=; b=lEvHrPenMDm+6JTrkj+eCqX4V2
	E3eHTWIEmlCZnwz4NDMGOH/jcHuMk7d+7HHB0U+Sit6ClGA2VLyrBPivoDywzm4+TO8yqcJaAjqSh
	EMV/YnTNPOPlUqXDAB7KSPDyBeEQLjGFysgI6OUhdsb62Zh+AV1fEl1JKr/ompzbZf0PuoSr7ENHN
	SyMkOte0JS67ybwSgo5xB1T4yzr7pogbz7q70N+OMI27TMywhM+5TDoKhSWuJTqXQ7vBjPaQ+dpgw
	WsxWbEPsWNXz6dY0Wn7XZg6hERgq4yAzedDWFGnR1MpmK87eSLqY73v8NYeBf7IpfsYyoHUhXtyk7
	JXP4jQ7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heDdA-0000id-Ut; Fri, 21 Jun 2019 07:06:41 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heDcF-0000LJ-0k
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 07:05:44 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C96DD200909;
 Fri, 21 Jun 2019 09:05:41 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8B42C20090A;
 Fri, 21 Jun 2019 09:05:31 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 75281402F3;
 Fri, 21 Jun 2019 15:05:19 +0800 (SGT)
From: Anson.Huang@nxp.com
To: catalin.marinas@arm.com, will@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, mturquette@baylibre.com,
 sboyd@kernel.org, leonard.crestez@nxp.com, aisheng.dong@nxp.com,
 ping.bai@nxp.com, daniel.baluta@nxp.com, peng.fan@nxp.com,
 abel.vesa@nxp.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 3/4] clk: imx8mm: Add system counter to clock tree
Date: Fri, 21 Jun 2019 15:07:19 +0800
Message-Id: <20190621070720.12395-3-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190621070720.12395-1-Anson.Huang@nxp.com>
References: <20190621070720.12395-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_000543_391932_EAD086CF 
X-CRM114-Status: UNSURE (   6.71  )
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

i.MX8MM timer-imx-sysctr driver needs system counter clock
for proper function, add it into clock tree.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index 43fa9c3..56d53dd 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -645,6 +645,8 @@ static int __init imx8mm_clocks_init(struct device_node *ccm_node)
 	clks[IMX8MM_CLK_DRAM_ALT_ROOT] = imx_clk_fixed_factor("dram_alt_root", "dram_alt", 1, 4);
 	clks[IMX8MM_CLK_DRAM_CORE] = imx_clk_mux2_flags("dram_core_clk", base + 0x9800, 24, 1, imx8mm_dram_core_sels, ARRAY_SIZE(imx8mm_dram_core_sels), CLK_IS_CRITICAL);
 
+	clks[IMX8MM_CLK_SYS_CTR] = imx_clk_fixed_factor("sys_ctr", "osc_24m", 1, 3);
+
 	clks[IMX8MM_CLK_ARM] = imx_clk_cpu("arm", "arm_a53_div",
 					   clks[IMX8MM_CLK_A53_DIV],
 					   clks[IMX8MM_CLK_A53_SRC],
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
