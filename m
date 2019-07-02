Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC285CC7F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 11:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aJ6c2MeHRJOKoeYBhJnB325VjzRQ0N25RWf/25KL8xs=; b=JA2JJh92xhIi0P
	3b66WZHL/FPeOLwpj7fMuhuHBLRr/JfsmiabC8ku5x97AnRVyx5CQOoeBNSqrGmzvPABT2OUeB8CR
	hFvD2SostTHrprGfCb+9mse1zu+bF0jK74nR3KyL2/e+bJKMa3RHbmJkbBcDRh/hBngBHxQYKhZWP
	qkl/67mG2noqG5acCMfZVeKTSnpXSxoYFescNgSHGRFeyKr1V7IyrsHxcalvbTpFSjeQEet5lZaJA
	2aE4CCPcZHXNzG229r3+qyE9uUGqYguBpS/xvHRstdqCyB5bTzkYLZPunelaL1qr/fmqTXfAIPdER
	KEx4OV4cUnTd0h6Tf34g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiEug-0000Wl-A0; Tue, 02 Jul 2019 09:17:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiEuT-0000Ub-LO; Tue, 02 Jul 2019 09:17:11 +0000
X-UUID: 539d3a4eadb4452e82d9bbba3bfc1b15-20190702
X-UUID: 539d3a4eadb4452e82d9bbba3bfc1b15-20190702
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 933282346; Tue, 02 Jul 2019 01:17:01 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 2 Jul 2019 02:17:00 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 2 Jul 2019 17:16:57 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 2 Jul 2019 17:16:54 +0800
From: <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>
Subject: [PATCH] thermal: mediatek: add suspend/resume callback
Date: Tue, 2 Jul 2019 17:16:25 +0800
Message-ID: <1562058985-27538-1-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2429C06C9BA8443CC21FB4AA74AF25B9765795EBA3F7023FE9599D20290EBFD22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_021709_705676_D73ED4A9 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Louis Yu <louis.yu@mediatek.com>, linux-kernel@vger.kernel.org,
 Michael Kao <michael.kao@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Louis Yu <louis.yu@mediatek.com>

Add suspend/resume callback to disable/enable Mediatek thermal sensor
respectively. Since thermal power domain is off in suspend, thermal driver
needs re-initialization during resume.

Signed-off-by: Louis Yu <louis.yu@mediatek.com>
Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
This patch series base on these patches [1][2][3].

[1]thermal: mediatek: mt8183: fix bank number settings (https://patchwork.kernel.org/patch/10938817/)
[2]thermal: mediatek: add another get_temp ops for thermal sensors (https://patchwork.kernel.org/patch/10938829/)
[3]thermal: mediatek: use spinlock to protect PTPCORESEL (https://patchwork.kernel.org/patch/10938841/)

 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index 3d01153..61d4114 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -30,6 +30,7 @@
 #include <linux/thermal.h>
 #include <linux/reset.h>
 #include <linux/types.h>
+#include <linux/iopoll.h>
 
 /* AUXADC Registers */
 #define AUXADC_CON1_SET_V	0x008
@@ -39,6 +40,8 @@
 
 #define APMIXED_SYS_TS_CON1	0x604
 
+#define APMIXED_SYS_TS_CON1_BUFFER_OFF	0x30
+
 /* Thermal Controller Registers */
 #define TEMP_MONCTL0		0x000
 #define TEMP_MONCTL1		0x004
@@ -46,6 +49,7 @@
 #define TEMP_MONIDET0		0x014
 #define TEMP_MONIDET1		0x018
 #define TEMP_MSRCTL0		0x038
+#define TEMP_MSRCTL1		0x03c
 #define TEMP_AHBPOLL		0x040
 #define TEMP_AHBTO		0x044
 #define TEMP_ADCPNP0		0x048
@@ -95,6 +99,9 @@
 #define TEMP_ADCVALIDMASK_VALID_HIGH		BIT(5)
 #define TEMP_ADCVALIDMASK_VALID_POS(bit)	(bit)
 
+#define TEMP_MSRCTL1_BUS_STA	(BIT(0) | BIT(7))
+#define TEMP_MSRCTL1_SENSING_POINTS_PAUSE	0x10E
+
 /* MT8173 thermal sensors */
 #define MT8173_TS1	0
 #define MT8173_TS2	1
@@ -266,6 +273,10 @@ struct mtk_thermal_data {
 struct mtk_thermal {
 	struct device *dev;
 	void __iomem *thermal_base;
+	void __iomem *apmixed_base;
+	void __iomem *auxadc_base;
+	u64 apmixed_phys_base;
+	u64 auxadc_phys_base;
 
 	struct clk *clk_peri_therm;
 	struct clk *clk_auxadc;
@@ -795,6 +806,42 @@ static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
 	mtk_thermal_put_bank(bank);
 }
 
+static int mtk_thermal_disable_sensing(struct mtk_thermal *mt, int num)
+{
+	struct mtk_thermal_bank *bank = &mt->banks[num];
+	u32 val;
+	unsigned long timeout;
+	void __iomem *addr;
+	int ret = 0;
+
+	bank->id = num;
+	bank->mt = mt;
+
+	mtk_thermal_get_bank(bank);
+
+	val = readl(mt->thermal_base + TEMP_MSRCTL1);
+	/* pause periodic temperature measurement for sensing points */
+	writel(val | TEMP_MSRCTL1_SENSING_POINTS_PAUSE,
+	       mt->thermal_base + TEMP_MSRCTL1);
+
+	/* wait until temperature measurement bus idle */
+	timeout = jiffies + HZ;
+	addr = mt->thermal_base + TEMP_MSRCTL1;
+
+	ret = readl_poll_timeout(addr, val, (val & TEMP_MSRCTL1_BUS_STA) == 0x0,
+				 0, timeout);
+	if (ret < 0)
+		goto out;
+
+	/* disable periodic temperature meausrement on sensing points */
+	writel(0x0, mt->thermal_base + TEMP_MONCTL0);
+
+out:
+	mtk_thermal_put_bank(bank);
+
+	return ret;
+}
+
 static u64 of_get_phys_base(struct device_node *np)
 {
 	u64 size64;
@@ -917,7 +964,6 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	struct device_node *auxadc, *apmixedsys, *np = pdev->dev.of_node;
 	struct mtk_thermal *mt;
 	struct resource *res;
-	u64 auxadc_phys_base, apmixed_phys_base;
 	struct thermal_zone_device *tzdev;
 	struct mtk_thermal_zone *tz;
 
@@ -954,11 +1000,11 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	auxadc_phys_base = of_get_phys_base(auxadc);
+	mt->auxadc_phys_base = of_get_phys_base(auxadc);
 
 	of_node_put(auxadc);
 
-	if (auxadc_phys_base == OF_BAD_ADDR) {
+	if (mt->auxadc_phys_base == OF_BAD_ADDR) {
 		dev_err(&pdev->dev, "Can't get auxadc phys address\n");
 		return -EINVAL;
 	}
@@ -969,11 +1015,12 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 		return -ENODEV;
 	}
 
-	apmixed_phys_base = of_get_phys_base(apmixedsys);
+	mt->apmixed_phys_base = of_get_phys_base(apmixedsys);
+	mt->apmixed_base = of_iomap(apmixedsys, 0);
 
 	of_node_put(apmixedsys);
 
-	if (apmixed_phys_base == OF_BAD_ADDR) {
+	if (mt->apmixed_phys_base == OF_BAD_ADDR) {
 		dev_err(&pdev->dev, "Can't get auxadc phys address\n");
 		return -EINVAL;
 	}
@@ -985,19 +1032,19 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	ret = clk_prepare_enable(mt->clk_auxadc);
 	if (ret) {
 		dev_err(&pdev->dev, "Can't enable auxadc clk: %d\n", ret);
-		return ret;
+		goto err_disable_clk_auxadc;
 	}
 
 	ret = clk_prepare_enable(mt->clk_peri_therm);
 	if (ret) {
 		dev_err(&pdev->dev, "Can't enable peri clk: %d\n", ret);
-		goto err_disable_clk_auxadc;
+		goto err_disable_clk_peri_therm;
 	}
 
 	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
 		for (i = 0; i < mt->conf->num_banks; i++)
-			mtk_thermal_init_bank(mt, i, apmixed_phys_base,
-					      auxadc_phys_base, ctrl_id);
+			mtk_thermal_init_bank(mt, i, mt->apmixed_phys_base,
+					      mt->auxadc_phys_base, ctrl_id);
 
 	platform_set_drvdata(pdev, mt);
 
@@ -1041,11 +1088,80 @@ static int mtk_thermal_remove(struct platform_device *pdev)
 	return 0;
 }
 
+static int __maybe_unused mtk_thermal_suspend(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct mtk_thermal *mt = platform_get_drvdata(pdev);
+	int i, ret;
+
+	for (i = 0; i < mt->conf->num_banks; i++) {
+		ret = mtk_thermal_disable_sensing(mt, i);
+		if (ret)
+			goto out;
+	}
+
+	/* disable buffer */
+	writel(readl(mt->apmixed_base + APMIXED_SYS_TS_CON1) |
+	       APMIXED_SYS_TS_CON1_BUFFER_OFF,
+	       mt->apmixed_base + APMIXED_SYS_TS_CON1);
+
+	clk_disable_unprepare(mt->clk_peri_therm);
+	clk_disable_unprepare(mt->clk_auxadc);
+
+	return 0;
+
+out:
+	dev_err(&pdev->dev, "Failed to wait until bus idle\n");
+
+	return ret;
+}
+
+static int __maybe_unused mtk_thermal_resume(struct device *dev)
+{
+	struct platform_device *pdev = to_platform_device(dev);
+	struct mtk_thermal *mt = platform_get_drvdata(pdev);
+	int i, ret, ctrl_id;
+
+	ret = device_reset(&pdev->dev);
+	if (ret)
+		return ret;
+
+	ret = clk_prepare_enable(mt->clk_auxadc);
+	if (ret) {
+		dev_err(&pdev->dev, "Can't enable auxadc clk: %d\n", ret);
+		goto err_disable_clk_auxadc;
+	}
+
+	ret = clk_prepare_enable(mt->clk_peri_therm);
+	if (ret) {
+		dev_err(&pdev->dev, "Can't enable peri clk: %d\n", ret);
+		goto err_disable_clk_peri_therm;
+	}
+
+	for (ctrl_id = 0; ctrl_id < mt->conf->num_controller ; ctrl_id++)
+		for (i = 0; i < mt->conf->num_banks; i++)
+			mtk_thermal_init_bank(mt, i, mt->apmixed_phys_base,
+					      mt->auxadc_phys_base, ctrl_id);
+
+	return 0;
+
+err_disable_clk_peri_therm:
+	clk_disable_unprepare(mt->clk_peri_therm);
+err_disable_clk_auxadc:
+	clk_disable_unprepare(mt->clk_auxadc);
+
+	return ret;
+}
+
+static SIMPLE_DEV_PM_OPS(mtk_thermal_pm_ops,
+			 mtk_thermal_suspend, mtk_thermal_resume);
+
 static struct platform_driver mtk_thermal_driver = {
 	.probe = mtk_thermal_probe,
 	.remove = mtk_thermal_remove,
 	.driver = {
 		.name = "mtk-thermal",
+		.pm = &mtk_thermal_pm_ops,
 		.of_match_table = mtk_thermal_of_match,
 	},
 };
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
