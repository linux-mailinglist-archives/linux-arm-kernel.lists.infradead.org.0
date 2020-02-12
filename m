Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1243615A899
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:03:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JkrO7ozG6M3zoaZx5OanV3Yw9mVTyGnV4a9WpcE/KJg=; b=Uq0yy79Kg/u6/g/s3AapbejAny
	uTOuqT7IobIJKPuNEUI/azI5lJCN13IQ6wrObtaaWmNQb1D+p7e6mFzVKcBiYkDOrB1wvBv+4yESQ
	JdGdiUb14jMGcO4d+53ZwyQ1ei2NOo+NMgu6UjB0INg+WeJlm7IVDudFOXHxAb0xJbU/+QYq4UY2p
	yXlVKbhIGKAVAP36jSlHyRCygciPM8dZzFdKGn/XUQWfmfHn2tSSPQ0Zw+Do2rgXwLtePNe/xekQU
	HvKVGq2YT3zGZPRLVlzJGiG6zoINzd2AgxP7wUsIOdDBtwaVXACfIMXQBsQ+lSJ+uLbW9vd7HFMX4
	VntbWG4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qkA-0000pz-Ib; Wed, 12 Feb 2020 12:03:50 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qjg-0000T1-Iy
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:03:21 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9B7BC2041C6;
 Wed, 12 Feb 2020 13:03:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 260B62041BD;
 Wed, 12 Feb 2020 13:03:10 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E0660402B7;
 Wed, 12 Feb 2020 20:02:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 allison@lohutok.net, gregkh@linuxfoundation.org, tglx@linutronix.de,
 abel.vesa@nxp.com, leonard.crestez@nxp.com, peng.fan@nxp.com,
 ping.bai@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/5] clk: imx8mq: Add missing of_node_put()
Date: Wed, 12 Feb 2020 19:57:34 +0800
Message-Id: <1581508657-12107-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581508657-12107-1-git-send-email-Anson.Huang@nxp.com>
References: <1581508657-12107-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040320_810723_80B13138 
X-CRM114-Status: UNSURE (   7.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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

After finishing using device node got from of_find_compatible_node(),
of_node_put() needs to be called.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 8c82e7a..831ce71 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -305,6 +305,7 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 
 	np = of_find_compatible_node(NULL, NULL, "fsl,imx8mq-anatop");
 	base = of_iomap(np, 0);
+	of_node_put(np);
 	if (WARN_ON(!base))
 		return -ENOMEM;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
