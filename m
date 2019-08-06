Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23C4782C20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:56:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=HVeUkYVx/Sj6L0bX9pbcfIiGj/yh3DUcfJhFu2CpvMg=; b=ST9
	0H1QLZxhxA1yEfgw28YqbhTXERxiID4jp2FPVHxQkWR4de+jqWAyv+vW+7AckAw/fdSiELCf65R5E
	qBQG0D9I2rwplvwAuzw5NMY1KxBmNGbw4Q9WRUUk8TNKQUJ+2g4sqYfjtpyNfqcE8yUjycj3kBCIE
	v8KRLxHEkATKkCrYMu+HAv+Yzy+bnl4wgl7RHYGi+cy+iMt7Un581tZJ2acpHlM6f40F01sZ/vRF6
	5LpAwZ4uvfljQ1PzUWPSimziuiaXFJApkiMFHYLqUvyHHncsyycga9Mwesu6ZakzRUIMmYA1QSAis
	lokgTrHMKtXEuoZZxJm2mAUdCSVGvZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutOK-0004fP-L8; Tue, 06 Aug 2019 06:56:16 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutOC-0004eh-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:56:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CA47C200052;
 Tue,  6 Aug 2019 08:56:02 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 40B9E200074;
 Tue,  6 Aug 2019 08:55:54 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id AFB1840293;
 Tue,  6 Aug 2019 14:55:43 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, peng.fan@nxp.com, leonard.crestez@nxp.com,
 ping.bai@nxp.com, jun.li@nxp.com, chen.fang@nxp.com, agx@sigxcpu.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] clk: imx8mm: Unregister clks when of_clk_add_provider
 failed
Date: Tue,  6 Aug 2019 14:46:13 +0800
Message-Id: <20190806064614.20294-1-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_235608_669398_AE3B98E5 
X-CRM114-Status: UNSURE (   7.61  )
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

When of_clk_add_provider failed, all clks should be unregistered.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mm.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
index e494e99..49ad761 100644
--- a/drivers/clk/imx/clk-imx8mm.c
+++ b/drivers/clk/imx/clk-imx8mm.c
@@ -661,12 +661,17 @@ static int imx8mm_clocks_probe(struct platform_device *pdev)
 	ret = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
 	if (ret < 0) {
 		pr_err("failed to register clks for i.MX8MM\n");
-		return -EINVAL;
+		goto unregister_clks;
 	}
 
 	imx_register_uart_clocks(uart_clks);
 
 	return 0;
+
+unregister_clks:
+	imx_unregister_clocks(clks, ARRAY_SIZE(clks));
+
+	return ret;
 }
 
 static const struct of_device_id imx8mm_clk_of_match[] = {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
