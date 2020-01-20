Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0677414307F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:08:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lN39oL/IfjoPlyRl+3hXmQpUw6IBVniEwc8rRIdiIrM=; b=Hur/S+AHcQvox/
	TUn8tafb0kz1yo+tOZ3ycbXRqfihMaN6eiuNFUfcHaQQDhcm8bTKa/jMWhP+0DdUTIDoMYiEmMb95
	dejofvlig+olK7+8ukA5/f4I6lu94wXEDSgoGuMvUr5saZ1acrc/Az+8nBSw4cxvAPCW+KnA2ro6O
	8UxUzAQSzRNXsN3KMjsv0yHwfjoRp8yecZ59MD/IrzpYl6l1Z0QUlOsChI3p214GTk6nq+bgHAYzx
	UpxIMlR0d5LWsmM0dRDiMeemnVf+pp+UiVYl5KdPQxG9ceubhaJ2mBspjOcv+GOa859A3x+IODijC
	s72SlhsiOX/uASorju2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaWl-0008Is-EN; Mon, 20 Jan 2020 17:07:51 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVS-0007Gh-0s; Mon, 20 Jan 2020 17:06:36 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 9D5992912F0
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 4/5] drm/rockchip: lvds: Fix component unbind
Date: Mon, 20 Jan 2020 14:06:01 -0300
Message-Id: <20200120170602.3832-5-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120170602.3832-1-ezequiel@collabora.com>
References: <20200120170602.3832-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090630_221821_0C7C2C56 
X-CRM114-Status: GOOD (  11.17  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Ezequiel Garcia <ezequiel@collabora.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove the explicit encoder disable: it's
already part of the CRTC shutdown, in both
atomic and legacy API cases.

Also, encoder and connector cleanup is performed
by the DRM .destroy hooks, for encoder and connector
respectively. It can be removed as well.

Finally, move the panel detach call to the connector
.destroy hook, where it belongs.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_lvds.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_lvds.c b/drivers/gpu/drm/rockchip/rockchip_lvds.c
index f25a36743cbd..154f14a317d7 100644
--- a/drivers/gpu/drm/rockchip/rockchip_lvds.c
+++ b/drivers/gpu/drm/rockchip/rockchip_lvds.c
@@ -100,9 +100,18 @@ static inline int rockchip_lvds_name_to_output(const char *s)
 	return -EINVAL;
 }
 
+static void
+rockchip_lvds_connector_destroy(struct drm_connector *connector)
+{
+	struct rockchip_lvds *lvds = connector_to_lvds(connector);
+
+	drm_panel_detach(lvds->panel);
+	drm_connector_cleanup(connector);
+}
+
 static const struct drm_connector_funcs rockchip_lvds_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
-	.destroy = drm_connector_cleanup,
+	.destroy = rockchip_lvds_connector_destroy,
 	.reset = drm_atomic_helper_connector_reset,
 	.atomic_duplicate_state = drm_atomic_helper_connector_duplicate_state,
 	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
@@ -675,16 +684,7 @@ static int rockchip_lvds_bind(struct device *dev, struct device *master,
 static void rockchip_lvds_unbind(struct device *dev, struct device *master,
 				void *data)
 {
-	struct rockchip_lvds *lvds = dev_get_drvdata(dev);
-	const struct drm_encoder_helper_funcs *encoder_funcs;
-
-	encoder_funcs = lvds->soc_data->helper_funcs;
-	encoder_funcs->disable(&lvds->encoder);
-	if (lvds->panel)
-		drm_panel_detach(lvds->panel);
 	pm_runtime_disable(dev);
-	drm_connector_cleanup(&lvds->connector);
-	drm_encoder_cleanup(&lvds->encoder);
 }
 
 static const struct component_ops rockchip_lvds_component_ops = {
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
