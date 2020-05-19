Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 049F81D9383
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 11:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5QOhhrmU8qYByDm6WBxylvGjmxj7B0D63RxwwEie8C0=; b=po0TiZhLyvq/z8
	2qN2xWfAnRAGxZp7gfsjmJiqIVaz1++RnBK82XPP4WIKkf90K5x3fXFmmF9ORIsMNV1I9/zj7VvRj
	kuy262KvK4OSbBFoiqH8+fgJiX2Ru6dz69487F7G/gS86daTBUEmusZnwbOySnaWOMoiCpi5WOJSv
	cFBRluwAkSZkCkQXoJhsZty+i/IG8NQ3d9cBNDJpWt13r+Y4wPXo7JuLJGe4q/7TzU6HkRs+Vkf9n
	ZCVr2dK0hB6Bi0v24rSrcx9ggFhRUtXyX9DwV82KckTvesXC2GEJDHaxIW6DnLXd4UIxGosrahNjD
	Gi+NirNAbK98/Ygltchw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaykh-0004U2-9R; Tue, 19 May 2020 09:41:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaykV-0004T8-Kc; Tue, 19 May 2020 09:41:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id DF3312A03BE
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: mtk_hdmi: Remove debug messages for function
 calls
Date: Tue, 19 May 2020 11:41:15 +0200
Message-Id: <20200519094115.2448092-1-enric.balletbo@collabora.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_024123_805150_6C2D5EB4 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org, matthias.bgg@gmail.com,
 Collabora Kernel ML <kernel@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Equivalent information can be nowadays obtained using function tracer

Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

 drivers/gpu/drm/mediatek/mtk_hdmi.c            | 12 +-----------
 drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c |  4 ----
 2 files changed, 1 insertion(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index b0555a7cb3b4..172d67294435 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -1634,8 +1634,6 @@ static int mtk_hdmi_audio_startup(struct device *dev, void *data)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
-	dev_dbg(dev, "%s\n", __func__);
-
 	mtk_hdmi_audio_enable(hdmi);
 
 	return 0;
@@ -1645,8 +1643,6 @@ static void mtk_hdmi_audio_shutdown(struct device *dev, void *data)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
-	dev_dbg(dev, "%s\n", __func__);
-
 	mtk_hdmi_audio_disable(hdmi);
 }
 
@@ -1655,8 +1651,6 @@ mtk_hdmi_audio_digital_mute(struct device *dev, void *data, bool enable)
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
-	dev_dbg(dev, "%s(%d)\n", __func__, enable);
-
 	if (enable)
 		mtk_hdmi_hw_aud_mute(hdmi);
 	else
@@ -1669,8 +1663,6 @@ static int mtk_hdmi_audio_get_eld(struct device *dev, void *data, uint8_t *buf,
 {
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
-	dev_dbg(dev, "%s\n", __func__);
-
 	memcpy(buf, hdmi->conn.eld, min(sizeof(hdmi->conn.eld), len));
 
 	return 0;
@@ -1770,7 +1762,6 @@ static int mtk_drm_hdmi_probe(struct platform_device *pdev)
 		goto err_bridge_remove;
 	}
 
-	dev_dbg(dev, "mediatek hdmi probe success\n");
 	return 0;
 
 err_bridge_remove:
@@ -1793,7 +1784,7 @@ static int mtk_hdmi_suspend(struct device *dev)
 	struct mtk_hdmi *hdmi = dev_get_drvdata(dev);
 
 	mtk_hdmi_clk_disable_audio(hdmi);
-	dev_dbg(dev, "hdmi suspend success!\n");
+
 	return 0;
 }
 
@@ -1808,7 +1799,6 @@ static int mtk_hdmi_resume(struct device *dev)
 		return ret;
 	}
 
-	dev_dbg(dev, "hdmi resume success!\n");
 	return 0;
 }
 #endif
diff --git a/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c b/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c
index b55f51675205..1c3575372230 100644
--- a/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c
+++ b/drivers/gpu/drm/mediatek/mtk_mt8173_hdmi_phy.c
@@ -159,8 +159,6 @@ static int mtk_hdmi_pll_prepare(struct clk_hw *hw)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	dev_dbg(hdmi_phy->dev, "%s\n", __func__);
-
 	mtk_hdmi_phy_set_bits(hdmi_phy, HDMI_CON1, RG_HDMITX_PLL_AUTOK_EN);
 	mtk_hdmi_phy_set_bits(hdmi_phy, HDMI_CON0, RG_HDMITX_PLL_POSDIV);
 	mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON3, RG_HDMITX_MHLCK_EN);
@@ -178,8 +176,6 @@ static void mtk_hdmi_pll_unprepare(struct clk_hw *hw)
 {
 	struct mtk_hdmi_phy *hdmi_phy = to_mtk_hdmi_phy(hw);
 
-	dev_dbg(hdmi_phy->dev, "%s\n", __func__);
-
 	mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON1, RG_HDMITX_PLL_TXDIV_EN);
 	mtk_hdmi_phy_clear_bits(hdmi_phy, HDMI_CON1, RG_HDMITX_PLL_BIAS_LPF_EN);
 	usleep_range(100, 150);
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
