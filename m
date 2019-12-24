Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83C112A287
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Dec 2019 15:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ha6IGzFwg+PQ+LnjmMTHl8BYnGAvJMso9ZPdnDaQ5Jw=; b=iCj07y0MhZevho
	yJRBIL7G7CJXguj1alGaPtVElxiB04pamxsKbtNSPOdvf82oFyaDBGHUVS43aV0dY3g6YxN7lgdMw
	t8A1VAr9kqTEjAEOgcy8mLhU6HNzhpou4Dsa5RuovzewB3y/fbaAdCUOMzD93q0uXyilUKCrYyzM8
	Eynm6OsIuKwfnTaGq97t020Fk+6Eovm6dDXeH5CAZhUWqFGFvvMIr/qOdQIeVtjP+M7+zNxmhCFvG
	I4jIp1UZGJAcsZIkuZnkbfFoigttNm9ecpuFU+HXkuQ0Xg2ltY/CjaV+n4YWfldPqycH+xZX++ksF
	9bJznyXIDk94bKdvK5gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijlNb-0004ul-NL; Tue, 24 Dec 2019 14:41:47 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijlLK-0001re-4i; Tue, 24 Dec 2019 14:39:27 +0000
X-Originating-IP: 91.224.148.103
Received: from localhost.localdomain (unknown [91.224.148.103])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AA3BFE000A;
 Tue, 24 Dec 2019 14:39:22 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
 <linux-rockchip@lists.infradead.org>
Subject: [PATCH v2 07/11] drm/rockchip: lvds: Helpers should return decent
 values
Date: Tue, 24 Dec 2019 15:38:56 +0100
Message-Id: <20191224143900.23567-8-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191224143900.23567-1-miquel.raynal@bootlin.com>
References: <20191224143900.23567-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_063926_333540_2B77E584 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Return errors instead of returning void from internal helpers. When
these helpers are called, check the returned value and print an error
message in this case.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 31 ++++++++++++++++++------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index 731aba25bec5..40fa49fe9fa5 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -214,8 +214,8 @@ struct drm_connector_helper_funcs rockchip_lvds_connector_helper_funcs = {
 	.get_modes = rockchip_lvds_connector_get_modes,
 };
 
-static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
-				   struct drm_display_mode *mode)
+static int rk3288_lvds_grf_config(struct drm_encoder *encoder,
+				  struct drm_display_mode *mode)
 {
 	struct rockchip_lvds *lvds = encoder_to_lvds(encoder);
 	u8 pin_hsync = (mode->flags & DRM_MODE_FLAG_PHSYNC) ? 1 : 0;
@@ -240,10 +240,10 @@ static void rk3288_lvds_grf_config(struct drm_encoder *encoder,
 	val |= (pin_dclk << 8) | (pin_hsync << 9);
 	val |= (0xffff << 16);
 	ret = regmap_write(lvds->grf, RK3288_LVDS_GRF_SOC_CON7, val);
-	if (ret != 0) {
+	if (ret)
 		DRM_DEV_ERROR(lvds->dev, "Could not write to GRF: %d\n", ret);
-		return;
-	}
+
+	return ret;
 }
 
 static int rk3288_lvds_set_vop_source(struct rockchip_lvds *lvds,
@@ -287,13 +287,28 @@ static void rk3288_lvds_encoder_enable(struct drm_encoder *encoder)
 	int ret;
 
 	drm_panel_prepare(lvds->panel);
+
 	ret = rk3288_lvds_poweron(lvds);
 	if (ret < 0) {
-		DRM_DEV_ERROR(lvds->dev, "failed to power on lvds: %d\n", ret);
+		DRM_DEV_ERROR(lvds->dev, "failed to power on LVDS: %d\n", ret);
 		drm_panel_unprepare(lvds->panel);
+		return;
 	}
-	rk3288_lvds_grf_config(encoder, mode);
-	rk3288_lvds_set_vop_source(lvds, encoder);
+
+	ret = rk3288_lvds_grf_config(encoder, mode);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to configure LVDS: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
+	ret = rk3288_lvds_set_vop_source(lvds, encoder);
+	if (ret) {
+		DRM_DEV_ERROR(lvds->dev, "failed to set VOP source: %d\n", ret);
+		drm_panel_unprepare(lvds->panel);
+		return;
+	}
+
 	drm_panel_enable(lvds->panel);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
