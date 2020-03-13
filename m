Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1C5184568
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:01:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EDMHgq01quFsZziAjfu6xZM4FnMxWimBR8ZxeTPWT4U=; b=nzoDB4+nKstYkp
	nSsx3/iAZwhL8h0F4FpgT2s6Wrv7S05Of4KOKfu/YC7lQy/n/0H7cEJm2qAVcj79UHDb9HWwXPvgV
	mf0cDirLPWMIoyD5YcUQ0od8EbmHHI/QvTp2wMQtx2FTfzmogmQ9ADEpQbwSOSZkfQnaei7GCCztj
	fyUcYF1LmppnWX9XJuOq2m/mHynkId+8jjevZE8X/7JDjWF1fp4aALH9MOutpAvLoRvsngaWk/VPX
	wsyj+4xliOoWQyTxLgC1Aqr3yh/XfBJ8rVFsG+bVPSXsCqZxq/Fj0G4Pqo5fPvS///sKoioztyNW6
	cSxGm/DzCWcym872oy4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi4e-0000DR-Tk; Fri, 13 Mar 2020 11:01:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi4W-0000Cy-Jh
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:01:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1jCi4T-00023f-3E; Fri, 13 Mar 2020 12:01:41 +0100
From: Lucas Stach <l.stach@pengutronix.de>
To: Zhang Rui <rui.zhang@intel.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Amit Kucheria <amit.kucheria@verdurent.com>
Subject: [PATCH resend] thermal: imx: register as OF sensor
Date: Fri, 13 Mar 2020 12:01:39 +0100
Message-Id: <20200313110139.28558-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040144_649551_2608C8CD 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: patchwork-lst@pengutronix.de, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To make the internal sensor usable with a thermal zone description
provided via DT, also register out device as a OF sensor.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/thermal/imx_thermal.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/thermal/imx_thermal.c b/drivers/thermal/imx_thermal.c
index bb6754a5342c..714be941fe6c 100644
--- a/drivers/thermal/imx_thermal.c
+++ b/drivers/thermal/imx_thermal.c
@@ -202,7 +202,7 @@ static struct thermal_soc_data thermal_imx7d_data = {
 
 struct imx_thermal_data {
 	struct cpufreq_policy *policy;
-	struct thermal_zone_device *tz;
+	struct thermal_zone_device *tz, *sensor;
 	struct thermal_cooling_device *cdev;
 	enum thermal_device_mode mode;
 	struct regmap *tempmon;
@@ -338,6 +338,13 @@ static int imx_get_temp(struct thermal_zone_device *tz, int *temp)
 	return 0;
 }
 
+static int imx_of_sensor_get_temp(void *data, int *temp)
+{
+	struct imx_thermal_data *thermal_data = data;
+
+	return imx_get_temp(thermal_data->tz, temp);
+}
+
 static int imx_get_mode(struct thermal_zone_device *tz,
 			enum thermal_device_mode *mode)
 {
@@ -482,6 +489,10 @@ static struct thermal_zone_device_ops imx_tz_ops = {
 	.set_trip_temp = imx_set_trip_temp,
 };
 
+static const struct thermal_zone_of_device_ops imx_tz_of_ops = {
+	.get_temp = imx_of_sensor_get_temp,
+};
+
 static int imx_init_calib(struct platform_device *pdev, u32 ocotp_ana1)
 {
 	struct imx_thermal_data *data = platform_get_drvdata(pdev);
@@ -816,6 +827,9 @@ static int imx_thermal_probe(struct platform_device *pdev)
 		goto clk_disable;
 	}
 
+	data->sensor = thermal_zone_of_sensor_register(&pdev->dev, 0, data,
+						       &imx_tz_of_ops);
+
 	dev_info(&pdev->dev, "%s CPU temperature grade - max:%dC"
 		 " critical:%dC passive:%dC\n", data->temp_grade,
 		 data->temp_max / 1000, data->temp_critical / 1000,
@@ -871,6 +885,7 @@ static int imx_thermal_remove(struct platform_device *pdev)
 	if (!IS_ERR(data->thermal_clk))
 		clk_disable_unprepare(data->thermal_clk);
 
+	thermal_zone_of_sensor_unregister(&pdev->dev, data->sensor);
 	thermal_zone_device_unregister(data->tz);
 	cpufreq_cooling_unregister(data->cdev);
 	cpufreq_cpu_put(data->policy);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
