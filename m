Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E019A16FCA7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:55:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yX0vv6zM9ZD+Ymv2Bxw0pzO/63I3pejbRHtFaTrUfBU=; b=l34mXqLw7sBX8U
	4Mo9ochCLoGEhayZNIgKhkgSNhprzrQ9Iv/Fd0hdzAJf13d7zNOsuUEHUjJm/w0Myf7FCUM/Fpb6R
	Z08VDsVQR7gH4JgoHjCPhURbe4DQLb7VM7d7AfEOha7SBBUh5OFA28P9c2WF1YKpxk0MvldB1KSuB
	4bo3TVMIiPfnToLohp/PiHbpiHpHV3vL823tEw8pEBpFGM7OM6kgCZ1GKJmswPcYcvU1i0ekl9Uue
	9ICZVyeKPTwsVkmkSkz0Nf1aRDdGE8CtnU7AWpPE+ZYIq29t0tdpDzFfnFw53cTAtHHtxwlyVsNR8
	oHndmjDN/WLHgDqzjJ8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uLg-0003Iv-GS; Wed, 26 Feb 2020 10:55:28 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uKo-0001ZB-OL; Wed, 26 Feb 2020 10:54:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id F4200293EB7
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com
Subject: [PATCH v9 2/4] drm/mediatek: Omit warning on probe defers
Date: Wed, 26 Feb 2020 11:54:17 +0100
Message-Id: <20200226105419.632771-3-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226105419.632771-1-enric.balletbo@collabora.com>
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_025435_079637_FB5EAB6F 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

It can happen that the mmsys clock drivers aren't probed before the
platform driver gets invoked. The platform driver used to print a warning
that the driver failed to get the clocks. Omit this error on
the defered probe path.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v9: None
Changes in v8: None
Changes in v7:
- Add Rv-by from CK

 drivers/gpu/drm/mediatek/mtk_disp_color.c |  5 ++++-
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c   |  5 ++++-
 drivers/gpu/drm/mediatek/mtk_disp_rdma.c  |  5 ++++-
 drivers/gpu/drm/mediatek/mtk_dpi.c        | 12 +++++++++---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c    |  3 ++-
 drivers/gpu/drm/mediatek/mtk_dsi.c        |  8 ++++++--
 drivers/gpu/drm/mediatek/mtk_hdmi.c       |  4 +++-
 7 files changed, 32 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
index 6fb0d6983a4a..3ae9c810845b 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
@@ -119,7 +119,10 @@ static int mtk_disp_color_probe(struct platform_device *pdev)
 	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
 				&mtk_disp_color_funcs);
 	if (ret) {
-		dev_err(dev, "Failed to initialize component: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to initialize component: %d\n",
+				ret);
+
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 891d80c73e04..28651bc579bc 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -386,7 +386,10 @@ static int mtk_disp_ovl_probe(struct platform_device *pdev)
 	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
 				&mtk_disp_ovl_funcs);
 	if (ret) {
-		dev_err(dev, "Failed to initialize component: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to initialize component: %d\n",
+				ret);
+
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
index 0cb848d64206..e04319fedf46 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
@@ -294,7 +294,10 @@ static int mtk_disp_rdma_probe(struct platform_device *pdev)
 	ret = mtk_ddp_comp_init(dev, dev->of_node, &priv->ddp_comp, comp_id,
 				&mtk_disp_rdma_funcs);
 	if (ret) {
-		dev_err(dev, "Failed to initialize component: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to initialize component: %d\n",
+				ret);
+
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
index 01fa8b8d763d..1b219edef541 100644
--- a/drivers/gpu/drm/mediatek/mtk_dpi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
@@ -701,21 +701,27 @@ static int mtk_dpi_probe(struct platform_device *pdev)
 	dpi->engine_clk = devm_clk_get(dev, "engine");
 	if (IS_ERR(dpi->engine_clk)) {
 		ret = PTR_ERR(dpi->engine_clk);
-		dev_err(dev, "Failed to get engine clock: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get engine clock: %d\n", ret);
+
 		return ret;
 	}
 
 	dpi->pixel_clk = devm_clk_get(dev, "pixel");
 	if (IS_ERR(dpi->pixel_clk)) {
 		ret = PTR_ERR(dpi->pixel_clk);
-		dev_err(dev, "Failed to get pixel clock: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get pixel clock: %d\n", ret);
+
 		return ret;
 	}
 
 	dpi->tvd_clk = devm_clk_get(dev, "pll");
 	if (IS_ERR(dpi->tvd_clk)) {
 		ret = PTR_ERR(dpi->tvd_clk);
-		dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get tvdpll clock: %d\n", ret);
+
 		return ret;
 	}
 
diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 302753744cc6..39700b9428b9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -620,7 +620,8 @@ static int mtk_ddp_probe(struct platform_device *pdev)
 	if (!ddp->data->no_clk) {
 		ddp->clk = devm_clk_get(dev, NULL);
 		if (IS_ERR(ddp->clk)) {
-			dev_err(dev, "Failed to get clock\n");
+			if (PTR_ERR(ddp->clk) != -EPROBE_DEFER)
+				dev_err(dev, "Failed to get clock\n");
 			return PTR_ERR(ddp->clk);
 		}
 	}
diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 5fa1073cf26b..a45ed0270531 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -1194,14 +1194,18 @@ static int mtk_dsi_probe(struct platform_device *pdev)
 	dsi->engine_clk = devm_clk_get(dev, "engine");
 	if (IS_ERR(dsi->engine_clk)) {
 		ret = PTR_ERR(dsi->engine_clk);
-		dev_err(dev, "Failed to get engine clock: %d\n", ret);
+
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get engine clock: %d\n", ret);
 		goto err_unregister_host;
 	}
 
 	dsi->digital_clk = devm_clk_get(dev, "digital");
 	if (IS_ERR(dsi->digital_clk)) {
 		ret = PTR_ERR(dsi->digital_clk);
-		dev_err(dev, "Failed to get digital clock: %d\n", ret);
+
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get digital clock: %d\n", ret);
 		goto err_unregister_host;
 	}
 
diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index 5e4a4dbda443..69c6a146c561 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1451,7 +1451,9 @@ static int mtk_hdmi_dt_parse_pdata(struct mtk_hdmi *hdmi,
 
 	ret = mtk_hdmi_get_all_clk(hdmi, np);
 	if (ret) {
-		dev_err(dev, "Failed to get clocks: %d\n", ret);
+		if (ret != -EPROBE_DEFER)
+			dev_err(dev, "Failed to get clocks: %d\n", ret);
+
 		return ret;
 	}
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
