Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6F3125D86
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y+ZRpOD7ADHnwVUAPZz9GWMgqSqEaXX8QhBlV1AXqVU=; b=YQxGccz/NNlpo3
	fegArRS5g1LQzxIwp30aZFPVILs2o78Y03+bs+AcjV+Kyo2PVqjoJlkEQ/TN9taiJwGO3u3Oox6Ri
	FhX6RvRSn2fNeRJhgcZI0LywbfZsuhzIPY0dlpOQiC0TqPvX22y5HGqcLq/gH/OWMj4ejNoOh4th5
	9cficm1GdEGVC6DFvYasaD8/+2pqRBZ7xziOr/bO/8MaAcV3c3WYxZTHxLFWK7Vel+kDjDK362YvR
	Gc2bcAJEeAWHqYESWbZWp3HFQt1HYovvmcAKzeDRbM2eNfwRqmqTXwtmsWU7lBuugFcS9qFfSdLaB
	PhiwHDjqjv7ntHcfpBeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihs0A-0001QS-AY; Thu, 19 Dec 2019 09:21:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihrzy-0001On-Ne; Thu, 19 Dec 2019 09:21:36 +0000
X-UUID: 17a28ef779254a42b3132a9390f4f09c-20191219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=PzE8Jigjcr7qmAjdAVnZQtdly9WAOx8geY5bzYg6u2Q=; 
 b=QZb9yj0LnkhnqmC4RR8ekbh3yXhDDwNHGr0/HdwojNvUJHyfGf/OotALd1DbM3esGp+62titXCLGE821RYO4Mutn6uvJ+rUdMhq6sDYwWVEXLyorNJjuuAXSbzMIr9NEqTbdMzcydUjHKu0UqHDazvlj2R95gNqhWXJLBvFNie4=;
X-UUID: 17a28ef779254a42b3132a9390f4f09c-20191219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 974272369; Thu, 19 Dec 2019 01:21:28 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 01:21:30 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Dec 2019 17:20:47 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 19 Dec 2019 17:21:08 +0800
From: Michael Kao <michael.kao@mediatek.com>
To: Zhang Rui <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, Matthias Brugger
 <matthias.bgg@gmail.com>, <hsinyi@chromium.org>, <linux-pm@vger.kernel.org>,
 <srv_heupstream@mediatek.com>
Subject: [PATCH] thermal: mediatek: add suspend/resume callback
Date: Thu, 19 Dec 2019 17:21:03 +0800
Message-ID: <20191219092103.8839-2-michael.kao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191219092103.8839-1-michael.kao@mediatek.com>
References: <20191219092103.8839-1-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_012134_778433_0D3A75A0 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Louis Yu <louis.yu@mediatek.com>,
 linux-kernel@vger.kernel.org, Michael Kao <michael.kao@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
 drivers/thermal/mtk_thermal.c | 134 +++++++++++++++++++++++++++++++---
 1 file changed, 125 insertions(+), 9 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index acf4854cbb8b..2bb8b13591aa 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -22,6 +22,7 @@
 #include <linux/thermal.h>
 #include <linux/reset.h>
 #include <linux/types.h>
+#include <linux/iopoll.h>
 
 /* AUXADC Registers */
 #define AUXADC_CON1_SET_V	0x008
@@ -31,6 +32,8 @@
 
 #define APMIXED_SYS_TS_CON1	0x604
 
+#define APMIXED_SYS_TS_CON1_BUFFER_OFF	0x30
+
 /* Thermal Controller Registers */
 #define TEMP_MONCTL0		0x000
 #define TEMP_MONCTL1		0x004
@@ -38,6 +41,7 @@
 #define TEMP_MONIDET0		0x014
 #define TEMP_MONIDET1		0x018
 #define TEMP_MSRCTL0		0x038
+#define TEMP_MSRCTL1		0x03c
 #define TEMP_AHBPOLL		0x040
 #define TEMP_AHBTO		0x044
 #define TEMP_ADCPNP0		0x048
@@ -87,6 +91,9 @@
 #define TEMP_ADCVALIDMASK_VALID_HIGH		BIT(5)
 #define TEMP_ADCVALIDMASK_VALID_POS(bit)	(bit)
 
+#define TEMP_MSRCTL1_BUS_STA	(BIT(0) | BIT(7))
+#define TEMP_MSRCTL1_SENSING_POINTS_PAUSE	0x10E
+
 /* MT8173 thermal sensors */
 #define MT8173_TS1	0
 #define MT8173_TS2	1
@@ -250,6 +257,10 @@ struct mtk_thermal_data {
 struct mtk_thermal {
 	struct device *dev;
 	void __iomem *thermal_base;
+	void __iomem *apmixed_base;
+	void __iomem *auxadc_base;
+	u64 apmixed_phys_base;
+	u64 auxadc_phys_base;
 
 	struct clk *clk_peri_therm;
 	struct clk *clk_auxadc;
@@ -746,6 +757,42 @@ static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
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
@@ -868,7 +915,6 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	struct device_node *auxadc, *apmixedsys, *np = pdev->dev.of_node;
 	struct mtk_thermal *mt;
 	struct resource *res;
-	u64 auxadc_phys_base, apmixed_phys_base;
 	struct thermal_zone_device *tzdev;
 
 	mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
@@ -904,11 +950,11 @@ static int mtk_thermal_probe(struct platform_device *pdev)
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
@@ -919,11 +965,12 @@ static int mtk_thermal_probe(struct platform_device *pdev)
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
@@ -935,19 +982,19 @@ static int mtk_thermal_probe(struct platform_device *pdev)
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
 
@@ -978,11 +1025,80 @@ static int mtk_thermal_remove(struct platform_device *pdev)
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
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
