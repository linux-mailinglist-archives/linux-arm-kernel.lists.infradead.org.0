Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7970F1D0541
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 05:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8fWbaAMCA2jFUpBxfS774fMl3bA9fkHgeGNsFswdG40=; b=UCe
	RdB1RaYGYy9vuVFnULM0w+Jg+3hKmixRQe+PIIOSN5LoOuhCxuZ/9Rtzs4YyqTvODROQyqUTaU+Pg
	F2Oom9XdyVR79kNY4JZIANrqa2u934Sr1iQQIlKMEEn5RfwTNRhQiCmk3lp2yZmKbSKGCqMTes3y6
	PQ+NcBa4M7LOF5sLKw7PkR+TBfGM81V0t1xEJv/P7eC7KOQOhuEZKtVJcEym+aLROFTiPJYkbL1az
	9LyH12HZLCLrte0Ew63NBCcegN0mqRAYCwQHbwiS4aNfk15CrqD6gdAiEFMnN0khNvbGIpuP+zZE5
	MwZX3AMpqZRheTGjCCiysADAatrgzww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYhkJ-0003XD-Fo; Wed, 13 May 2020 03:07:47 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYhkB-0003Wr-Vg
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 03:07:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D93F9201201;
 Wed, 13 May 2020 05:07:37 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 42BE5201200;
 Wed, 13 May 2020 05:07:33 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id C9014402B4;
 Wed, 13 May 2020 11:07:26 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] thermal: imx8mm: Add get_trend ops
Date: Wed, 13 May 2020 10:58:08 +0800
Message-Id: <1589338689-15700-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_200740_157841_BFCDA40B 
X-CRM114-Status: UNSURE (   8.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

Add get_trend ops for i.MX8MM thermal to apply fast cooling
mechanism, when temperature exceeds passive trip point, the
highest cooling action will be applied, and when temperature
drops to lower than the margin below passive trip point, the
lowest cooling action will be applied.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 drivers/thermal/imx8mm_thermal.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/thermal/imx8mm_thermal.c b/drivers/thermal/imx8mm_thermal.c
index e6061e2..8f6a0b8 100644
--- a/drivers/thermal/imx8mm_thermal.c
+++ b/drivers/thermal/imx8mm_thermal.c
@@ -38,6 +38,8 @@
 #define TMU_VER1		0x1
 #define TMU_VER2		0x2
 
+#define IMX_TEMP_COOL_MARGIN	10000
+
 struct thermal_soc_data {
 	u32 num_sensors;
 	u32 version;
@@ -103,8 +105,33 @@ static int tmu_get_temp(void *data, int *temp)
 	return tmu->socdata->get_temp(data, temp);
 }
 
+static int tmu_get_trend(void *p, int trip, enum thermal_trend *trend)
+{
+	struct tmu_sensor *sensor = p;
+	int trip_temp, temp, ret;
+
+	if (!sensor->tzd)
+		return -EINVAL;
+
+	ret = sensor->tzd->ops->get_trip_temp(sensor->tzd, trip, &trip_temp);
+	if (ret)
+		return ret;
+
+	temp = READ_ONCE(sensor->tzd->temperature);
+
+	if (temp > trip_temp)
+		*trend = THERMAL_TREND_RAISE_FULL;
+	else if (temp < (trip_temp - IMX_TEMP_COOL_MARGIN))
+		*trend = THERMAL_TREND_DROP_FULL;
+	else
+		*trend = THERMAL_TREND_STABLE;
+
+	return 0;
+}
+
 static struct thermal_zone_of_device_ops tmu_tz_ops = {
 	.get_temp = tmu_get_temp,
+	.get_trend = tmu_get_trend,
 };
 
 static void imx8mm_tmu_enable(struct imx8mm_tmu *tmu, bool enable)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
