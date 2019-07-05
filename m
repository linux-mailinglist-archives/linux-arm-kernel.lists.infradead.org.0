Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 552FC607FB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=S+pGE/gsoGyUax7qNKs79/PHTSQNeluLsrQJm06WaQY=; b=Ak6puz0foNzwFJSPFDzQuhqUT1
	5soNEi0eIAK3iYO5bfjSeHXb1p7UsAn2nTA7esNwqnNheQ0NJc0KW3PiPbr75mYFaEkWpSTqDBWk9
	H35+Yil1qO5NHbbRwvV6CP0aeFbepNWwX/Asysc0+4A83Q0SSDa1sVo02J+GheZhpTBsid8hetaDr
	L8ineYJpzk4YmVyURiNWeaxFZUFvJk2zjPddjVQlYJoykki/HA2nhm79FroFpD0l7vsB8MT2CcZYF
	cMRU5o6+jbkkhyt8m/RP7iupC/ZyL6cBFbK+HkItI1wEduZ/6P3g0TbV3sOMC51Hy1m0S9MkAhiFA
	FjshRucg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjPL5-0006v0-MT; Fri, 05 Jul 2019 14:37:27 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjPJy-00064e-QW
 for linux-arm-kernel@bombadil.infradead.org; Fri, 05 Jul 2019 14:36:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=349icFZEIRXhts3oLahywVo6tZbmxxowg2O2I7EZbNA=; b=VRZ+N99nmyrwfPfGxcS0PArMr
 375ccS/z7ZH0/vtokgvzjchtsfki6p6AAKxuTeaK+eFMbvoJ+hWh7IRN4KB5nNa59tg5IomVKswV7
 hMcHuvOOF3wHc5EtxqKn9FIGzv+c0W2fxEgwpJgbBNNsOslomOUeSuwfW+HHLTiy3WGA7mpO8ebxn
 68xJZ5e/eS/zYV4rqaEOq14Gv/iSiIstHc330uJEPY2hjirHJKYbLYNUwFJpcPPtAjc2D1FPYGtyK
 Oq2DDOa/3smqds86sUVgwEN9mFqwFtv6jzBtQpawFzfWy9acBtMLUn/6C1uXTb4f0TrXtyQY97oPA
 pW5V2ADww==;
Received: from inva020.nxp.com ([92.121.34.13])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjGPw-0007NR-FH
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 05:05:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 604BB1A0E89;
 Fri,  5 Jul 2019 07:05:39 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 459BC1A006E;
 Fri,  5 Jul 2019 07:05:27 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E7391402DF;
 Fri,  5 Jul 2019 13:05:13 +0800 (SGT)
From: Anson.Huang@nxp.com
To: rui.zhang@intel.com, edubezval@gmail.com, daniel.lezcano@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 mturquette@baylibre.com, sboyd@kernel.org, l.stach@pengutronix.de,
 abel.vesa@nxp.com, andrew.smirnov@gmail.com, angus@akkea.ca,
 ccaione@baylibre.com, agx@sigxcpu.org, leonard.crestez@nxp.com,
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org
Subject: [PATCH 4/6] thermal: qoriq: Add clock operations
Date: Fri,  5 Jul 2019 12:56:10 +0800
Message-Id: <20190705045612.27665-4-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.14.1
In-Reply-To: <20190705045612.27665-1-Anson.Huang@nxp.com>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_060552_544127_3F6169CD 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-2.3 points, 5.0 required)
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

From: Anson Huang <Anson.Huang@nxp.com>

Some platforms like i.MX8MQ has clock control for this module,
need to add clock operations to make sure the driver is working
properly.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/thermal/qoriq_thermal.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/thermal/qoriq_thermal.c b/drivers/thermal/qoriq_thermal.c
index 2b2f79b..0813c1b 100644
--- a/drivers/thermal/qoriq_thermal.c
+++ b/drivers/thermal/qoriq_thermal.c
@@ -2,6 +2,7 @@
 //
 // Copyright 2016 Freescale Semiconductor, Inc.
 
+#include <linux/clk.h>
 #include <linux/module.h>
 #include <linux/platform_device.h>
 #include <linux/err.h>
@@ -72,6 +73,7 @@ struct qoriq_sensor {
 
 struct qoriq_tmu_data {
 	struct qoriq_tmu_regs __iomem *regs;
+	struct clk *clk;
 	bool little_endian;
 	struct qoriq_sensor	*sensor[SITES_MAX];
 };
@@ -208,6 +210,19 @@ static int qoriq_tmu_probe(struct platform_device *pdev)
 		return PTR_ERR(data->regs);
 	}
 
+	data->clk = devm_clk_get(&pdev->dev, NULL);
+	if (IS_ERR(data->clk)) {
+		if (PTR_ERR(data->clk) == -EPROBE_DEFER)
+			return -EPROBE_DEFER;
+		data->clk = NULL;
+	}
+
+	ret = clk_prepare_enable(data->clk);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to enable clock\n");
+		return ret;
+	}
+
 	qoriq_tmu_init_device(data);	/* TMU initialization */
 
 	ret = qoriq_tmu_calibration(pdev);	/* TMU calibration */
@@ -235,6 +250,8 @@ static int qoriq_tmu_remove(struct platform_device *pdev)
 	/* Disable monitoring */
 	tmu_write(data, TMR_DISABLE, &data->regs->tmr);
 
+	clk_disable_unprepare(data->clk);
+
 	platform_set_drvdata(pdev, NULL);
 
 	return 0;
@@ -250,14 +267,21 @@ static int __maybe_unused qoriq_tmu_suspend(struct device *dev)
 	tmr &= ~TMR_ME;
 	tmu_write(data, tmr, &data->regs->tmr);
 
+	clk_disable_unprepare(data->clk);
+
 	return 0;
 }
 
 static int __maybe_unused qoriq_tmu_resume(struct device *dev)
 {
 	u32 tmr;
+	int ret;
 	struct qoriq_tmu_data *data = dev_get_drvdata(dev);
 
+	ret = clk_prepare_enable(data->clk);
+	if (ret)
+		return ret;
+
 	/* Enable monitoring */
 	tmr = tmu_read(data, &data->regs->tmr);
 	tmr |= TMR_ME;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
