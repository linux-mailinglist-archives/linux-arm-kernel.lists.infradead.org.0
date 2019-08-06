Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8801A836F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:30:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JuGIgDn09AlXjofPibJAWRsHj3x29FR8EFI+DE4crIs=; b=g+ZlYMudtr14pj1pMk0OH2ph55
	n6C0CixQyA6HFrd3KDFqEkcnmmdpF/Xf9tA99zSztlzt1lURGT0FfIicYq0NygcbewxYZvHgrKD8W
	VA4lOMF9v7FVTa/Z6a29AsYXDHzsBETmAlU/Dp9TwiMSUiRspNyWu/7MJIlLPToyA+PGV/aCQ5YL2
	kFG+3es2uZisUW9rcfeuqMIztGTs8NWWqD+2a2lBZ0l5eR0EwOOyCFUFRXgCZ0FwaAGKKXM3HYNm0
	omLin9TV++xKiGNJv4zFJ3jNz9e3Vx+7DpSONInkGK3mphSewaJv+gQefgVmBMziAdsIvQD+8mFQ3
	7fBq8DTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Lw-000326-4D; Tue, 06 Aug 2019 16:30:24 +0000
Received: from mout.gmx.net ([212.227.17.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2KT-0000TZ-IS; Tue, 06 Aug 2019 16:28:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108889;
 bh=JOUQ+oPDKcgPIIjUYlOez/IGFEXhWH3PKrXpZ/Nj0Pw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iZL6rIKkgpSRvIyMJ7yrjA1AvAGWJeQUirgBbXGAm2djIScT7P1VbcGWwAYsyjJVX
 /Ou8ir8pEc6TsXU+9CPn+sk0JaVDzBPqENOVYqoCIbnYfvZQf5wXsmyEinlA5s75VD
 ux5tlFXELueinyIkBF7heHsH/HCMBOOJO52dfs1Q=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0MS5jy-1hkbwp1SOo-00TGKh; Tue, 06 Aug 2019 18:28:09 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v4 04/10] rtc: mt6397: improvements of rtc driver
Date: Tue,  6 Aug 2019 18:27:39 +0200
Message-Id: <20190806162745.8414-5-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806162745.8414-1-frank-w@public-files.de>
References: <20190806162745.8414-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:Fo7b1eCTmtbEceNwBLDjCvbnWHtd4rgJki9dQjNxSmpo7n+DzFO
 6t+DoUaDcg1ZnqfqkptI6EYT1AkV9a+JcNZFDn6akif1zuOloZoIuqUcOEvJE+xc6IpmC69
 yul5ZHuc/3dJYrkQyZHwfAIJg9NM/OdUBNNLJWh0anxKOOf3rT10idQ/mJD2y6zQOyAtMew
 egld+N2kVA/30bFa7BObg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AbPc73zCr+k=:tTtvNHVMujzgME3Cq+L3Gt
 cQgc4Xk9AOFahoyHHEqmUkzRr2E2p91APx2A/Ib0UKADE0t1zG/dZZkH8WjQRtEszbQ49aX2u
 c6Jq3vI2g3FjnANQ/197dcqwTJ0oaU+0NGOsGuGeG45ClWTovd/Ju0QaUCiUinAraUJjk+6o2
 lOm6PMIXslC3t9xqLhtOh8lRxKPfeixR4i3GLKkucXoToW6E2MJpwE2szKwB6rA+Ucl/JGsu4
 VrsbmX5C/EfRnLGgYfSv4JR2itePj4WdKfNXQA0viVYYOLWkxs7z0YT6B3cZTAwJVm14ocbGC
 KSUUtLIVKQWqDQ/hBAqr3FguJ+pTlaZoabYrgslHBvbeytGaQJEngFhsZZqM+rZbCCOcUfzGi
 KGpGAyYgMlLyIhu+XX3lscrwRYuHW9yTotsHQA1W2nA7Vtlf0x9mOfcPtH8rYsFPfh+cDZ78E
 P3njoqHFBXaOm5jPEwkvtANw6Us2cTcHEMfSI4XSUv0IJTfaukLbunpItOEZr0IlYDwwgSWCn
 o66/NYiWQ9uUmMWUSurpaBnSkyHepr88eh54D9+YlcjElK4usnwDswjVxOjZVJzN6DKzrEe53
 r6z2itizisGr7ZYQRgDd1KX7jo29ei7N03HSI5xpGm2n1x7EwNVycim2lpzAV+7z4gRiNuNx3
 5GkrioMqExCxUDkDZMqapJXzcPriFEXU9KYA2pUHB1TKbQJAlpDS8oeBeYHHggpH5qYoDxJU6
 slzQZOPoWLmG60y9lFklbWjDfNgsBH/iTN9ymDgkhegRyYIOvDRsXshnbo++c3OIoBh0aYdrh
 NubfVq5LGHFue4fQL9Ys8RxwdnNYIC5GsXe199Mp/NkmZMVuMhv7cR3pVoVR8dVCFreyWFiAq
 qplgDMZ24R+uovA37Rm0YWABHLWz3pH84P86liMg5nh+/TQXpVTw9OJ5S8wlT3tF1cfaFJZAG
 epEPr6kykVOLm3dgy4d8wWRXDC5/X7W17XRZ9UDMY28fPyt6v64FHSwA4V2puBnpQvC0XmoPG
 UE07pbFu2E+vfMQyz94yIWdI0MPY9U8Q1BqAozNN5ubluhZCjWc55K+ZE4A32ayDCb0V2STln
 9VagosHuyciUb65sEFfPOgLKGw1HMFX3xXQ94VcYcBH2nDsXOxVm3/pNA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092853_930019_10A5383A 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.20 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

- use regmap_read_poll_timeout to drop while-loop
- use devm-api to drop remove-callback

Suggested-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v3: none
changes since v2:
- fix allocation after irq-request
- compatible for mt6323 in separate commit => part 5

 drivers/rtc/rtc-mt6397.c | 51 +++++++++++++++-------------------------
 1 file changed, 19 insertions(+), 32 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index c08ee5edf865..9370b7fc9f81 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -4,16 +4,19 @@
 * Author: Tianping.Fang <tianping.fang@mediatek.com>
 */

-#include <linux/delay.h>
-#include <linux/init.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/mt6397/core.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/rtc.h>
 #include <linux/mfd/mt6397/rtc.h>
+#include <linux/mod_devicetable.h>

 static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 {
-	unsigned long timeout = jiffies + HZ;
 	int ret;
 	u32 data;

@@ -21,19 +24,13 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 	if (ret < 0)
 		return ret;

-	while (1) {
-		ret = regmap_read(rtc->regmap, rtc->addr_base + RTC_BBPU,
-				  &data);
-		if (ret < 0)
-			break;
-		if (!(data & RTC_BBPU_CBUSY))
-			break;
-		if (time_after(jiffies, timeout)) {
-			ret = -ETIMEDOUT;
-			break;
-		}
-		cpu_relax();
-	}
+	ret = regmap_read_poll_timeout(rtc->regmap,
+					rtc->addr_base + RTC_BBPU, data,
+					!(data & RTC_BBPU_CBUSY),
+					MTK_RTC_POLL_DELAY_US,
+					MTK_RTC_POLL_TIMEOUT);
+	if (ret < 0)
+		dev_err(rtc->dev, "failed to write WRTGE: %d\n", ret);

 	return ret;
 }
@@ -266,19 +263,19 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 		return rtc->irq;

 	rtc->regmap = mt6397_chip->regmap;
-	rtc->dev = &pdev->dev;
 	mutex_init(&rtc->lock);

 	platform_set_drvdata(pdev, rtc);

-	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
+	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
 	if (IS_ERR(rtc->rtc_dev))
 		return PTR_ERR(rtc->rtc_dev);

-	ret = request_threaded_irq(rtc->irq, NULL,
-				   mtk_rtc_irq_handler_thread,
-				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
-				   "mt6397-rtc", rtc);
+	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
+					mtk_rtc_irq_handler_thread,
+					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
+					"mt6397-rtc", rtc);
+
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
 			rtc->irq, ret);
@@ -302,15 +299,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	return ret;
 }

-static int mtk_rtc_remove(struct platform_device *pdev)
-{
-	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
-
-	free_irq(rtc->irq, rtc);
-
-	return 0;
-}
-
 #ifdef CONFIG_PM_SLEEP
 static int mt6397_rtc_suspend(struct device *dev)
 {
@@ -349,7 +337,6 @@ static struct platform_driver mtk_rtc_driver = {
 		.pm = &mt6397_pm_ops,
 	},
 	.probe	= mtk_rtc_probe,
-	.remove = mtk_rtc_remove,
 };

 module_platform_driver(mtk_rtc_driver);
--
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
