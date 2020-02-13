Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 409D215CC33
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 21:22:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i/F/qfm3i0wqgevHzwHCurv3kvvU553mSXs+uRp/5rg=; b=JH01sWecHosYIj
	lfnWekelYlacurFadhH/3crxdnqbwBHyV+ssrIQfwqdZW8/nI1pFn3QaszGZgdp1OytcQH1NY1Ww8
	oqVedVJ4UWZh8lGVlFQMb+I5d+EJtt2/0i1dQCXvqD2MgSZktSoNOaegNYjalcNpeZGd+dQKZLRb0
	9xUSJ0WmDBAixJGdRaEZBobsCERSdVzWkiotu3+OTugkwYsukifAHIxnhBXriWO1RZYWUy1ylq5HL
	2hm4bUuWdS39w+70pSNqg/0EVDzb9aXFnH54pAJy7ZNcuBHoMkeqOxWpXXfRTgD0px6f2V5S3svOl
	s8lK4EXvUesoebnQanRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2L06-0001ps-0Q; Thu, 13 Feb 2020 20:22:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2KyL-000059-5X; Thu, 13 Feb 2020 20:20:30 +0000
Received: from ziggy.cz (unknown [37.223.145.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 71E77246CA;
 Thu, 13 Feb 2020 20:20:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581625228;
 bh=cUUwfxUTDrxKlq28gEE5hD5FM1f0w/fg+efTb3I450g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vC3FYvmPMeXBEgC13fz5B2aook5+Kga0LDol5d/tnlcVENBU+fPJeH5XK4W6kJhPz
 kaGEPIkZ3qOlXdKjy9VSrxIE/Y1eDtG6E48WmD+S2WOWXzctstpxyOeUPor89VU7Jf
 cLed4nWaDyOu5FefVzSVHWLTh5DCVK6tsdos3d7s=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org, mark.rutland@arm.com, ck.hu@mediatek.com,
 p.zabel@pengutronix.de, airlied@linux.ie, mturquette@baylibre.com,
 sboyd@kernel.org, ulrich.hecht+renesas@gmail.com,
 laurent.pinchart@ideasonboard.com, enric.balletbo@collabora.com
Subject: [PATCH v7 05/13] drm: mediatek: Omit warning on probe defers
Date: Thu, 13 Feb 2020 21:19:45 +0100
Message-Id: <20200213201953.15268-6-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200213201953.15268-1-matthias.bgg@kernel.org>
References: <20200213201953.15268-1-matthias.bgg@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_122029_333636_D06CF666 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, drinkcat@chromium.org, frank-w@public-files.de,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, wens@csie.org,
 Matthias Brugger <mbrugger@suse.com>, linux-mediatek@lists.infradead.org,
 rdunlap@infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 hsinyi@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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

---

Changes in v7:
- add Rv-by from CK

Changes in v6: None
Changes in v5: None
Changes in v4: None
Changes in v3: None
Changes in v2: None

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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
