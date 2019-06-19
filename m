Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D82B74B2C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 09:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UeSEWu1ZwlEGKUHv+/mo0e05tU+s3w1xbFXSr2Mfnck=; b=RoHdSocMBObWzeDjIREuunyIxG
	b+lyjNjD2q0H8fDkiWtdZ4kX30uWpwHxID5FtwdGHasRbT+DsOoEW1tIr3GD1u5NbMknfdy5rdO7P
	JxrRvM7WMgMn1SFfcssraGUUzQUFV9wh4MNtsrMLjqmjK76hPDPx3RkDJQC0aJVqas5MOLF0MNjQM
	O4Zl5NB9DaTlYX5ayO/AqaTxKuwES4jZWEZcswRuI5SiHD09nfupYdn+uM1zU2fbDe1em9dT9wJAl
	w42vyFbeI31TBySUNDA3alNCQ2+GdYvodHW0u1C7v+w2l6+1wsNBPqa6dAaU0Yup+tF0DXU961/+w
	le9SNjNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdUkp-00063k-BB; Wed, 19 Jun 2019 07:11:35 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdUkH-0005r6-K2
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 07:11:02 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 9E26120017D;
 Wed, 19 Jun 2019 09:10:59 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 881702005B3;
 Wed, 19 Jun 2019 09:10:53 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C70FC402F6;
 Wed, 19 Jun 2019 15:10:45 +0800 (SGT)
From: Anson.Huang@nxp.com
To: mturquette@baylibre.com, sboyd@kernel.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 abel.vesa@nxp.com, ccaione@baylibre.com, leonard.crestez@nxp.com,
 aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] clk: imx8mq: Keep uart clocks on during system boot
Date: Wed, 19 Jun 2019 15:12:40 +0800
Message-Id: <20190619071240.38503-2-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619071240.38503-1-Anson.Huang@nxp.com>
References: <20190619071240.38503-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_001101_799394_B17CE876 
X-CRM114-Status: UNSURE (   9.17  )
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

Call imx_register_uart_clocks() API to keep uart clocks enabled
when earlyprintk or earlycon is active.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index 5fbc2a7..d407a07 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -272,6 +272,14 @@ static const char * const imx8mq_clko2_sels[] = {"osc_25m", "sys2_pll_200m", "sy
 
 static struct clk_onecell_data clk_data;
 
+static struct clk ** const uart_clks[] = {
+	&clks[IMX8MQ_CLK_UART1_ROOT],
+	&clks[IMX8MQ_CLK_UART2_ROOT],
+	&clks[IMX8MQ_CLK_UART3_ROOT],
+	&clks[IMX8MQ_CLK_UART4_ROOT],
+	NULL
+};
+
 static int imx8mq_clocks_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -555,6 +563,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	err = of_clk_add_provider(np, of_clk_src_onecell_get, &clk_data);
 	WARN_ON(err);
 
+	imx_register_uart_clocks(uart_clks);
+
 	return err;
 }
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
