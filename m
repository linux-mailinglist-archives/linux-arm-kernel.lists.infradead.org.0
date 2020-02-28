Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DA2173275
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 09:08:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YrN6JsVPyNtZP4u9OVsYhT0SwmMHYekCRcvZFe11FPo=; b=igLNKqjtZpU9fF
	sfMK2CjgQzEJO0N/VE2FkHaPWX9J6oAZgv3Wq/BIo6wlcyFpN1IIDfh0S8M+0j1xSPdKmoeKUGxg0
	w/G50TTPJZ6J8dcfUv6lNQrm3/84C8BvVuxbPpnUcZmotdWlRAqx31gRWNkvZm+71NcMWiC6ut1L5
	lyRY5ASTnJB6n25UjdFJpEgafwHrsqKXV2Xlp4FWiBk2R5Dj2SwQWbIE61j7S49f4scXfnA+dYCFK
	VcD/2IwEQPMaOCFDmHfDteHILkEazausn9f2l48f3AucmGl5+m6gVgAQeEZfdOmkrxg1onHjQ2Bck
	lb0lwPBiMAgRc8Q67N8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7agu-00004u-3W; Fri, 28 Feb 2020 08:08:12 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7agj-0008Vh-FI
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 08:08:03 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 01S84TLH010774; Fri, 28 Feb 2020 09:07:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding; s=STMicroelectronics;
 bh=MFKa27m3+mIoApWSAUCG9GPF8e+NvtbwdWYlYTRGNRs=;
 b=dssF3bihvIH/mI+pbPnu8DkqSxvkNSqdk6h+gJSX95NbXimAVxG4j8X7bXqdETcNGYjJ
 RHGbP8yaOrYMHSPJjg2Hf7bFv1cg3yRE6xQuroQdclqNQqu/X7p4xiC30pYUQUeqwSAb
 3+EbvMWWEQkc4Z2amyss6Dyse8zudNRiYbjGXTddnpGbEiKLAY2AGSYm9t0+2ELxtLKT
 TnnUoONFIroqZF2vsnVBPWVIVd/bFmjxbTll8kAxcEIKKYTLKORGn00wHl4Is2dI2T6o
 UnZJx6ZulTUWKOa/kjb/guA4+YKYzi007nVc/0eQA0VYru3zTKc/ljhyDtxn9vCAdD48 5Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yepwptdgv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 28 Feb 2020 09:07:50 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A4C0010002A;
 Fri, 28 Feb 2020 09:07:46 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node1.st.com [10.75.127.16])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 5EEBF2A6489;
 Fri, 28 Feb 2020 09:07:46 +0100 (CET)
Received: from localhost (10.75.127.44) by SFHDAG6NODE1.st.com (10.75.127.16)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Fri, 28 Feb 2020 09:07:45 +0100
From: Yannick Fertre <yannick.fertre@st.com>
To: Yannick Fertre <yannick.fertre@st.com>, Philippe Cornu
 <philippe.cornu@st.com>, Benjamin Gaignard <benjamin.gaignard@st.com>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 <dri-devel@lists.freedesktop.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] drm/stm: ltdc: check number of endpoints
Date: Fri, 28 Feb 2020 09:07:38 +0100
Message-ID: <1582877258-1112-1-git-send-email-yannick.fertre@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG3NODE1.st.com (10.75.127.7) To SFHDAG6NODE1.st.com
 (10.75.127.16)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-02-28_02:2020-02-26,
 2020-02-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_000801_868809_571FE04C 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Number of endpoints could exceed the fix value MAX_ENDPOINTS(2).
Instead of increase simply this value, the number of endpoint
could be read from device tree. Load sequence has been a little
rework to take care of several panel or bridge which can be
connected/disconnected or enable/disable.

Signed-off-by: Yannick Fertre <yannick.fertre@st.com>
---
 drivers/gpu/drm/stm/ltdc.c | 102 +++++++++++++++++++++++----------------------
 1 file changed, 52 insertions(+), 50 deletions(-)

diff --git a/drivers/gpu/drm/stm/ltdc.c b/drivers/gpu/drm/stm/ltdc.c
index df585fe..f894968 100644
--- a/drivers/gpu/drm/stm/ltdc.c
+++ b/drivers/gpu/drm/stm/ltdc.c
@@ -42,8 +42,6 @@

 #define MAX_IRQ 4

-#define MAX_ENDPOINTS 2
-
 #define HWVER_10200 0x010200
 #define HWVER_10300 0x010300
 #define HWVER_20101 0x020101
@@ -1201,36 +1199,20 @@ int ltdc_load(struct drm_device *ddev)
 	struct ltdc_device *ldev = ddev->dev_private;
 	struct device *dev = ddev->dev;
 	struct device_node *np = dev->of_node;
-	struct drm_bridge *bridge[MAX_ENDPOINTS] = {NULL};
-	struct drm_panel *panel[MAX_ENDPOINTS] = {NULL};
+	struct drm_bridge *bridge;
+	struct drm_panel *panel;
 	struct drm_crtc *crtc;
 	struct reset_control *rstc;
 	struct resource *res;
-	int irq, ret, i, endpoint_not_ready = -ENODEV;
+	int irq, i, nb_endpoints;
+	int ret = -ENODEV;

 	DRM_DEBUG_DRIVER("\n");

-	/* Get endpoints if any */
-	for (i = 0; i < MAX_ENDPOINTS; i++) {
-		ret = drm_of_find_panel_or_bridge(np, 0, i, &panel[i],
-						  &bridge[i]);
-
-		/*
-		 * If at least one endpoint is -EPROBE_DEFER, defer probing,
-		 * else if at least one endpoint is ready, continue probing.
-		 */
-		if (ret == -EPROBE_DEFER)
-			return ret;
-		else if (!ret)
-			endpoint_not_ready = 0;
-	}
-
-	if (endpoint_not_ready)
-		return endpoint_not_ready;
-
-	rstc = devm_reset_control_get_exclusive(dev, NULL);
-
-	mutex_init(&ldev->err_lock);
+	/* Get number of endpoints */
+	nb_endpoints = of_graph_get_endpoint_count(np);
+	if (!nb_endpoints)
+		return -ENODEV;

 	ldev->pixel_clk = devm_clk_get(dev, "lcd");
 	if (IS_ERR(ldev->pixel_clk)) {
@@ -1244,6 +1226,43 @@ int ltdc_load(struct drm_device *ddev)
 		return -ENODEV;
 	}

+	/* Get endpoints if any */
+	for (i = 0; i < nb_endpoints; i++) {
+		ret = drm_of_find_panel_or_bridge(np, 0, i, &panel, &bridge);
+
+		/*
+		 * If at least one endpoint is -ENODEV, continue probing,
+		 * else if at least one endpoint returned an error
+		 * (ie -EPROBE_DEFER) then stop probing.
+		 */
+		if (ret == -ENODEV)
+			continue;
+		else if (ret)
+			goto err;
+
+		if (panel) {
+			bridge = drm_panel_bridge_add_typed(panel,
+							    DRM_MODE_CONNECTOR_DPI);
+			if (IS_ERR(bridge)) {
+				DRM_ERROR("panel-bridge endpoint %d\n", i);
+				ret = PTR_ERR(bridge);
+				goto err;
+			}
+		}
+
+		if (bridge) {
+			ret = ltdc_encoder_init(ddev, bridge);
+			if (ret) {
+				DRM_ERROR("init encoder endpoint %d\n", i);
+				goto err;
+			}
+		}
+	}
+
+	rstc = devm_reset_control_get_exclusive(dev, NULL);
+
+	mutex_init(&ldev->err_lock);
+
 	if (!IS_ERR(rstc)) {
 		reset_control_assert(rstc);
 		usleep_range(10, 20);
@@ -1285,27 +1304,7 @@ int ltdc_load(struct drm_device *ddev)
 			DRM_ERROR("Failed to register LTDC interrupt\n");
 			goto err;
 		}
-	}

-	/* Add endpoints panels or bridges if any */
-	for (i = 0; i < MAX_ENDPOINTS; i++) {
-		if (panel[i]) {
-			bridge[i] = drm_panel_bridge_add_typed(panel[i],
-							       DRM_MODE_CONNECTOR_DPI);
-			if (IS_ERR(bridge[i])) {
-				DRM_ERROR("panel-bridge endpoint %d\n", i);
-				ret = PTR_ERR(bridge[i]);
-				goto err;
-			}
-		}
-
-		if (bridge[i]) {
-			ret = ltdc_encoder_init(ddev, bridge[i]);
-			if (ret) {
-				DRM_ERROR("init encoder endpoint %d\n", i);
-				goto err;
-			}
-		}
 	}

 	crtc = devm_kzalloc(dev, sizeof(*crtc), GFP_KERNEL);
@@ -1340,8 +1339,8 @@ int ltdc_load(struct drm_device *ddev)

 	return 0;
 err:
-	for (i = 0; i < MAX_ENDPOINTS; i++)
-		drm_panel_bridge_remove(bridge[i]);
+	for (i = 0; i < nb_endpoints; i++)
+		drm_of_panel_bridge_remove(ddev->dev->of_node, 0, i);

 	clk_disable_unprepare(ldev->pixel_clk);

@@ -1350,11 +1349,14 @@ int ltdc_load(struct drm_device *ddev)

 void ltdc_unload(struct drm_device *ddev)
 {
-	int i;
+	struct device *dev = ddev->dev;
+	int nb_endpoints, i;

 	DRM_DEBUG_DRIVER("\n");

-	for (i = 0; i < MAX_ENDPOINTS; i++)
+	nb_endpoints = of_graph_get_endpoint_count(dev->of_node);
+
+	for (i = 0; i < nb_endpoints; i++)
 		drm_of_panel_bridge_remove(ddev->dev->of_node, 0, i);

 	pm_runtime_disable(ddev->dev);
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
