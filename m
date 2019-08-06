Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF4C382C21
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 08:56:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3dZfpQZCbseLfEtdvojIVbcN5nm66+zLfWoTKmSX4i0=; b=LlpvUu5A8qpiPrSgbCXdLB4sox
	hDrkOTZBJMPV58jsFN07PZxNUGmBPEJjXZ2zZFnKvZv49R0eqrt9e95O/3UerRIKaFQds6jQN6uy0
	bg4+2dQBXlDkk8erU6EcoAnE+bwJbrHzjTcLPeX2abxX3PV5r26li9V5DJJd6fLdxFZsvlf8IcAxg
	5cZIIE3HGc2erZyWK23Zh0p2xvGqUwrbn62X6JY/AmnoegjF9K7hlW8y17kO8j+xEsro5I9E8ZpPg
	R1oL0AOivpwTsEZZpuGyhW0DU0KBv0SnHnQgnCIBIlOehbhH5ONGI0zq6LKueF0yn7FJoXXZLB/1/
	0tNZZY7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hutOV-0004nV-30; Tue, 06 Aug 2019 06:56:27 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hutOC-0004ei-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 06:56:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D7A6200074;
 Tue,  6 Aug 2019 08:56:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D54F2200005;
 Tue,  6 Aug 2019 08:55:55 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 509A9402DB;
 Tue,  6 Aug 2019 14:55:45 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, peng.fan@nxp.com, leonard.crestez@nxp.com,
 ping.bai@nxp.com, jun.li@nxp.com, chen.fang@nxp.com, agx@sigxcpu.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] clk: imx8mq: Unregister clks when of_clk_add_provider
 failed
Date: Tue,  6 Aug 2019 14:46:14 +0800
Message-Id: <20190806064614.20294-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.9.5
In-Reply-To: <20190806064614.20294-1-Anson.Huang@nxp.com>
References: <20190806064614.20294-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_235608_668207_3AABE845 
X-CRM114-Status: UNSURE (   8.70  )
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
 drivers/clk/imx/clk-imx8mq.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 04302f2..81a0249 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -562,10 +562,18 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clk_data.clk_num = ARRAY_SIZE(clks);
 
 	err = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
-	WARN_ON(err);
+	if (err < 0) {
+		dev_err(dev, "failed to register clks for i.MX8MQ\n");
+		goto unregister_clks;
+	}
 
 	imx_register_uart_clocks(uart_clks);
 
+	return 0;
+
+unregister_clks:
+	imx_unregister_clocks(clks, ARRAY_SIZE(clks));
+
 	return err;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
