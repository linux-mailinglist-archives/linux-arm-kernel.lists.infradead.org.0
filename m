Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41D80122DB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 21:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RmqpBlj1mtWeVqhc6Xiikc8uvd4n3Ss3xOEHF/oItqI=; b=jkyEUb0weBnevz
	dnuSc70R9fjWwOhkioxz9mh6CKneSkoU9JGZ533a4qzGyB/yH4KR8cw2O03cuR+JVAYYXhCRV4Efo
	El6f51cfmlGoqtowDo++1p1KikHKNd+ovNMqWVcIWTy7kBdqKHDIJX+UPdlU0AbTeCzVEqfZ5E7mv
	+h6omw3If95T5DHKiie1+tMps3yWdDju324iUXhP553shxgfi7YV8uR8dRN9PeJ5VW/C4JYPtYSkj
	HpyhiyX0J+1r/UzU2s1SFOy+5EKrgxSZhUM9JVxHBdaC47ORuAMbWfDVMeNvx6hefJSwrGxOoWWo9
	InZiHBz8Jz5yHFo+VfNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMHjJ-0001SS-6s; Thu, 02 May 2019 19:50:53 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMHj1-0001DW-H7
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 19:50:43 +0000
Received: by mail-qk1-x742.google.com with SMTP id d5so2255236qko.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 12:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Ayh90l4qXMEkDuXyo1ptuj07arQOdoAya+DUXUS/5yQ=;
 b=bGQP3tIjqzojuLpI+qV7Wt8sR1r5QNvj5Pj0jwbO+PrGr+6QnNB01BN/cCf3/1CdAE
 v1TPHfE6c1Hwj60cw3Z9Y0rHPtg8PyZdvee/r0H+Hax8C1J39a1qN1/KJKDnczF+CgsG
 k0A6EZ86RyLc5/AUykbaadH1nVcRd5/Mjlw7EFgGhYX31jzqwcY178bcaDlhjqpDJZdH
 Cn28cQsVl2Uy2OLnUg/4dhql1k4wYL31fMvbBkyH8Uiwm7Mun0SmauvEFlKyrGcVF18r
 oUkUhbPhr7K8iAZ9QgVbteU4LwSkk8M6SzJEm0Cf2XY8Ili/W3t+wACj6y3ijxPk9QJ8
 xbSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Ayh90l4qXMEkDuXyo1ptuj07arQOdoAya+DUXUS/5yQ=;
 b=FLcMeabpQ2+JIhvuQcMrpYx4mIquwSeGtXLXN0mJ0EpfU7bwdL1cVaCUZVpp++MGhg
 RGeHh+8ltURMOC06HQ6Qr9SGozBkk/m2OQVlBkASqHJFNxYRz51NUMjESaA+jaoKMnkM
 4zlvwkNqrk4IPEHzMCu8qQ4/A8NHq9D+33tHAySt+9IlY4bXD+HpJ4Ki75Z5qBSyPKnd
 sgFlO2ulpe2ZK+LrsrXxPMBziQzGcipn+fDZ0Wfs7+y4amUyXaxLBmLGIOpjHwImBbye
 jGCJrMBiwf0CTPLvFgLYXhJi+pGGj6l8NgKVvEZhRZlJLGpvSeAGkY3sBegiUTXoSWm2
 R+pA==
X-Gm-Message-State: APjAAAWOb10BbNJUjDwtrUn50wa3pv56cuaRguR5i1idJ6CLMOtNP4IZ
 JD6Ok3urc+Tl+4JmcUriBxotAQ==
X-Google-Smtp-Source: APXvYqzCjLjNsy1ZjrdRHwfKKCQLO3QZbCT7jogFy8/Kt0ZSSCI15j0hytCv6FvUbCWC3eNdejQyug==
X-Received: by 2002:a37:a543:: with SMTP id o64mr4313676qke.353.1556826633675; 
 Thu, 02 May 2019 12:50:33 -0700 (PDT)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id k36sm34366qtc.52.2019.05.02.12.50.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 12:50:32 -0700 (PDT)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH v3 08/10] drm/rockchip: Use the helpers for PSR
Date: Thu,  2 May 2019 15:49:50 -0400
Message-Id: <20190502194956.218441-9-sean@poorly.run>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190502194956.218441-1-sean@poorly.run>
References: <20190502194956.218441-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_125036_127715_3D12FBCA 
X-CRM114-Status: GOOD (  24.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Zain Wang <wzz@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Sandy Huang <hjc@rock-chips.com>,
 Tomasz Figa <tfiga@chromium.org>, Andrzej Hajda <a.hajda@samsung.com>,
 Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Instead of rolling our own implementation for tracking when PSR should
be [in]active, use the new self refresh helpers to do the heavy lifting.

Changes in v2:
- updated to reflect changes made in the helpers
Changes in v3:
- use the new atomic hooks to inspect crtc state instead of needing conn state (Daniel)

Link to v1: https://patchwork.freedesktop.org/patch/msgid/20190228210939.83386-4-sean@poorly.run
Link to v2: https://patchwork.freedesktop.org/patch/msgid/20190326204509.96515-3-sean@poorly.run

Cc: Zain Wang <wzz@rock-chips.com>
Cc: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 .../drm/bridge/analogix/analogix_dp_core.c    | 265 +++++++++++-----
 .../drm/bridge/analogix/analogix_dp_core.h    |   2 +-
 drivers/gpu/drm/rockchip/Makefile             |   3 +-
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |  86 +++---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |   5 -
 drivers/gpu/drm/rockchip/rockchip_drm_psr.c   | 290 ------------------
 drivers/gpu/drm/rockchip/rockchip_drm_psr.h   |  30 --
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c   |  33 +-
 include/drm/bridge/analogix_dp.h              |   4 -
 9 files changed, 243 insertions(+), 475 deletions(-)
 delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_psr.c
 delete mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_psr.h

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index af34554a5a02..e66c105c3b68 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -24,6 +24,7 @@
 #include <linux/phy/phy.h>
 
 #include <drm/drmP.h>
+#include <drm/drm_atomic.h>
 #include <drm/drm_atomic_helper.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_panel.h>
@@ -106,63 +107,7 @@ static int analogix_dp_detect_hpd(struct analogix_dp_device *dp)
 	return 0;
 }
 
-int analogix_dp_psr_enabled(struct analogix_dp_device *dp)
-{
-
-	return dp->psr_enable;
-}
-EXPORT_SYMBOL_GPL(analogix_dp_psr_enabled);
-
-int analogix_dp_enable_psr(struct analogix_dp_device *dp)
-{
-	struct edp_vsc_psr psr_vsc;
-
-	if (!dp->psr_enable)
-		return 0;
-
-	/* Prepare VSC packet as per EDP 1.4 spec, Table 6.9 */
-	memset(&psr_vsc, 0, sizeof(psr_vsc));
-	psr_vsc.sdp_header.HB0 = 0;
-	psr_vsc.sdp_header.HB1 = 0x7;
-	psr_vsc.sdp_header.HB2 = 0x2;
-	psr_vsc.sdp_header.HB3 = 0x8;
-
-	psr_vsc.DB0 = 0;
-	psr_vsc.DB1 = EDP_VSC_PSR_STATE_ACTIVE | EDP_VSC_PSR_CRC_VALUES_VALID;
-
-	return analogix_dp_send_psr_spd(dp, &psr_vsc, true);
-}
-EXPORT_SYMBOL_GPL(analogix_dp_enable_psr);
-
-int analogix_dp_disable_psr(struct analogix_dp_device *dp)
-{
-	struct edp_vsc_psr psr_vsc;
-	int ret;
-
-	if (!dp->psr_enable)
-		return 0;
-
-	/* Prepare VSC packet as per EDP 1.4 spec, Table 6.9 */
-	memset(&psr_vsc, 0, sizeof(psr_vsc));
-	psr_vsc.sdp_header.HB0 = 0;
-	psr_vsc.sdp_header.HB1 = 0x7;
-	psr_vsc.sdp_header.HB2 = 0x2;
-	psr_vsc.sdp_header.HB3 = 0x8;
-
-	psr_vsc.DB0 = 0;
-	psr_vsc.DB1 = 0;
-
-	ret = drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
-	if (ret != 1) {
-		dev_err(dp->dev, "Failed to set DP Power0 %d\n", ret);
-		return ret;
-	}
-
-	return analogix_dp_send_psr_spd(dp, &psr_vsc, false);
-}
-EXPORT_SYMBOL_GPL(analogix_dp_disable_psr);
-
-static int analogix_dp_detect_sink_psr(struct analogix_dp_device *dp)
+static bool analogix_dp_detect_sink_psr(struct analogix_dp_device *dp)
 {
 	unsigned char psr_version;
 	int ret;
@@ -170,14 +115,11 @@ static int analogix_dp_detect_sink_psr(struct analogix_dp_device *dp)
 	ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_SUPPORT, &psr_version);
 	if (ret != 1) {
 		dev_err(dp->dev, "failed to get PSR version, disable it\n");
-		return ret;
+		return false;
 	}
 
 	dev_dbg(dp->dev, "Panel PSR version : %x\n", psr_version);
-
-	dp->psr_enable = (psr_version & DP_PSR_IS_SUPPORTED) ? true : false;
-
-	return 0;
+	return psr_version & DP_PSR_IS_SUPPORTED;
 }
 
 static int analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
@@ -200,7 +142,7 @@ static int analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
 	}
 
 	/* Main-Link transmitter remains active during PSR active states */
-	psr_en = DP_PSR_MAIN_LINK_ACTIVE | DP_PSR_CRC_VERIFICATION;
+	psr_en = DP_PSR_CRC_VERIFICATION;
 	ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
 	if (ret != 1) {
 		dev_err(dp->dev, "failed to set panel psr\n");
@@ -208,8 +150,7 @@ static int analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
 	}
 
 	/* Enable psr function */
-	psr_en = DP_PSR_ENABLE | DP_PSR_MAIN_LINK_ACTIVE |
-		 DP_PSR_CRC_VERIFICATION;
+	psr_en = DP_PSR_ENABLE | DP_PSR_CRC_VERIFICATION;
 	ret = drm_dp_dpcd_writeb(&dp->aux, DP_PSR_EN_CFG, psr_en);
 	if (ret != 1) {
 		dev_err(dp->dev, "failed to set panel psr\n");
@@ -218,10 +159,11 @@ static int analogix_dp_enable_sink_psr(struct analogix_dp_device *dp)
 
 	analogix_dp_enable_psr_crc(dp);
 
+	dp->psr_supported = true;
+
 	return 0;
 end:
 	dev_err(dp->dev, "enable psr fail, force to disable psr\n");
-	dp->psr_enable = false;
 
 	return ret;
 }
@@ -1036,25 +978,90 @@ static int analogix_dp_commit(struct analogix_dp_device *dp)
 		}
 	}
 
-	ret = analogix_dp_detect_sink_psr(dp);
-	if (ret)
-		return ret;
-
 	/* Check whether panel supports fast training */
 	ret = analogix_dp_fast_link_train_detection(dp);
 	if (ret)
-		dp->psr_enable = false;
+		return ret;
 
-	if (dp->psr_enable) {
+	if (analogix_dp_detect_sink_psr(dp)) {
 		ret = analogix_dp_enable_sink_psr(dp);
 		if (ret)
 			return ret;
 	}
 
+	return ret;
+}
+
+static int analogix_dp_enable_psr(struct analogix_dp_device *dp)
+{
+	struct edp_vsc_psr psr_vsc;
+	int ret;
+	u8 sink;
+
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_STATUS, &sink);
+	if (ret != 1)
+		DRM_DEV_ERROR(dp->dev, "Failed to read psr status %d\n", ret);
+	else if (sink == DP_PSR_SINK_ACTIVE_RFB)
+		return 0;
+
+	/* Prepare VSC packet as per EDP 1.4 spec, Table 6.9 */
+	memset(&psr_vsc, 0, sizeof(psr_vsc));
+	psr_vsc.sdp_header.HB0 = 0;
+	psr_vsc.sdp_header.HB1 = 0x7;
+	psr_vsc.sdp_header.HB2 = 0x2;
+	psr_vsc.sdp_header.HB3 = 0x8;
+	psr_vsc.DB0 = 0;
+	psr_vsc.DB1 = EDP_VSC_PSR_STATE_ACTIVE | EDP_VSC_PSR_CRC_VALUES_VALID;
+
+	ret = analogix_dp_send_psr_spd(dp, &psr_vsc, true);
+	if (!ret)
+		analogix_dp_set_analog_power_down(dp, POWER_ALL, true);
 
 	return ret;
 }
 
+static int analogix_dp_disable_psr(struct analogix_dp_device *dp)
+{
+	struct edp_vsc_psr psr_vsc;
+	int ret;
+	u8 sink;
+
+	analogix_dp_set_analog_power_down(dp, POWER_ALL, false);
+
+	ret = drm_dp_dpcd_writeb(&dp->aux, DP_SET_POWER, DP_SET_POWER_D0);
+	if (ret != 1) {
+		DRM_DEV_ERROR(dp->dev, "Failed to set DP Power0 %d\n", ret);
+		return ret;
+	}
+
+	ret = drm_dp_dpcd_readb(&dp->aux, DP_PSR_STATUS, &sink);
+	if (ret != 1) {
+		DRM_DEV_ERROR(dp->dev, "Failed to read psr status %d\n", ret);
+		return ret;
+	} else if (sink == DP_PSR_SINK_INACTIVE) {
+		DRM_DEV_ERROR(dp->dev, "sink inactive, skip disable psr");
+		return 0;
+	}
+
+	ret = analogix_dp_train_link(dp);
+	if (ret) {
+		DRM_DEV_ERROR(dp->dev, "Failed to train the link %d\n", ret);
+		return ret;
+	}
+
+	/* Prepare VSC packet as per EDP 1.4 spec, Table 6.9 */
+	memset(&psr_vsc, 0, sizeof(psr_vsc));
+	psr_vsc.sdp_header.HB0 = 0;
+	psr_vsc.sdp_header.HB1 = 0x7;
+	psr_vsc.sdp_header.HB2 = 0x2;
+	psr_vsc.sdp_header.HB3 = 0x8;
+
+	psr_vsc.DB0 = 0;
+	psr_vsc.DB1 = 0;
+
+	return analogix_dp_send_psr_spd(dp, &psr_vsc, true);
+}
+
 /*
  * This function is a bit of a catch-all for panel preparation, hopefully
  * simplifying the logic of functions that need to prepare/unprepare the panel
@@ -1145,9 +1152,37 @@ analogix_dp_best_encoder(struct drm_connector *connector)
 	return dp->encoder;
 }
 
+
+int analogix_dp_atomic_check(struct drm_connector *connector,
+			     struct drm_atomic_state *state)
+{
+	struct analogix_dp_device *dp = to_dp(connector);
+	struct drm_connector_state *conn_state;
+	struct drm_crtc_state *crtc_state;
+
+	conn_state = drm_atomic_get_new_connector_state(state, connector);
+	if (WARN_ON(!conn_state))
+		return -ENODEV;
+
+	conn_state->self_refresh_aware = true;
+
+	if (!conn_state->crtc)
+		return 0;
+
+	crtc_state = drm_atomic_get_new_crtc_state(state, conn_state->crtc);
+	if (!crtc_state)
+		return 0;
+
+	if (crtc_state->self_refresh_active && !dp->psr_supported)
+		return -EINVAL;
+
+	return 0;
+}
+
 static const struct drm_connector_helper_funcs analogix_dp_connector_helper_funcs = {
 	.get_modes = analogix_dp_get_modes,
 	.best_encoder = analogix_dp_best_encoder,
+	.atomic_check = analogix_dp_atomic_check,
 };
 
 static enum drm_connector_status
@@ -1239,11 +1274,22 @@ static int analogix_dp_bridge_attach(struct drm_bridge *bridge)
 	return 0;
 }
 
-static void analogix_dp_bridge_pre_enable(struct drm_bridge *bridge)
+static void analogix_dp_bridge_atomic_pre_enable(struct drm_bridge *bridge,
+						 struct drm_atomic_state *state)
 {
 	struct analogix_dp_device *dp = bridge->driver_private;
+	struct drm_crtc_state *old_crtc_state = NULL;
 	int ret;
 
+	drm_atomic_crtc_state_for_encoder(state, dp->encoder, NULL,
+					  &old_crtc_state, NULL);
+	if (!old_crtc_state)
+		return;
+
+	/* Don't touch the panel if we're coming back from PSR */
+	if (old_crtc_state->self_refresh_active)
+		return;
+
 	ret = analogix_dp_prepare_panel(dp, true, true);
 	if (ret)
 		DRM_ERROR("failed to setup the panel ret = %d\n", ret);
@@ -1304,10 +1350,26 @@ static int analogix_dp_set_bridge(struct analogix_dp_device *dp)
 	return ret;
 }
 
-static void analogix_dp_bridge_enable(struct drm_bridge *bridge)
+static void analogix_dp_bridge_atomic_enable(struct drm_bridge *bridge,
+					     struct drm_atomic_state *state)
 {
 	struct analogix_dp_device *dp = bridge->driver_private;
+	struct drm_crtc_state *old_crtc_state = NULL;
 	int timeout_loop = 0;
+	int ret;
+
+	drm_atomic_crtc_state_for_encoder(state, dp->encoder, NULL,
+					  &old_crtc_state, NULL);
+	if (!old_crtc_state)
+		return;
+
+	/* Not a full enable, just disable PSR and continue */
+	if (old_crtc_state->self_refresh_active) {
+		ret = analogix_dp_disable_psr(dp);
+		if (ret)
+			DRM_ERROR("Failed to disable psr %d\n", ret);
+		return;
+	}
 
 	if (dp->dpms_mode == DRM_MODE_DPMS_ON)
 		return;
@@ -1356,11 +1418,51 @@ static void analogix_dp_bridge_disable(struct drm_bridge *bridge)
 	if (ret)
 		DRM_ERROR("failed to setup the panel ret = %d\n", ret);
 
-	dp->psr_enable = false;
 	dp->fast_train_enable = false;
+	dp->psr_supported = false;
 	dp->dpms_mode = DRM_MODE_DPMS_OFF;
 }
 
+static void analogix_dp_bridge_atomic_disable(struct drm_bridge *bridge,
+					      struct drm_atomic_state *state)
+{
+	struct analogix_dp_device *dp = bridge->driver_private;
+	struct drm_crtc_state *new_crtc_state = NULL;
+
+	drm_atomic_crtc_state_for_encoder(state, dp->encoder, NULL, NULL,
+					  &new_crtc_state);
+	if (!new_crtc_state)
+		goto out;
+
+	/* Don't do a full disable on PSR transitions */
+	if (new_crtc_state->self_refresh_active)
+		return;
+
+out:
+	analogix_dp_bridge_disable(bridge);
+}
+
+static
+void analogix_dp_bridge_atomic_post_disable(struct drm_bridge *bridge,
+					    struct drm_atomic_state *state)
+{
+	struct analogix_dp_device *dp = bridge->driver_private;
+	struct drm_crtc_state *new_crtc_state = NULL;
+	int ret;
+
+	drm_atomic_crtc_state_for_encoder(state, dp->encoder, NULL, NULL,
+					  &new_crtc_state);
+	if (!new_crtc_state)
+		return;
+
+	if (!new_crtc_state->self_refresh_active)
+		return;
+
+	ret = analogix_dp_enable_psr(dp);
+	if (ret)
+		DRM_ERROR("Failed to enable psr (%d)\n", ret);
+}
+
 static void analogix_dp_bridge_mode_set(struct drm_bridge *bridge,
 				const struct drm_display_mode *orig_mode,
 				const struct drm_display_mode *mode)
@@ -1440,16 +1542,11 @@ static void analogix_dp_bridge_mode_set(struct drm_bridge *bridge,
 		video->interlaced = true;
 }
 
-static void analogix_dp_bridge_nop(struct drm_bridge *bridge)
-{
-	/* do nothing */
-}
-
 static const struct drm_bridge_funcs analogix_dp_bridge_funcs = {
-	.pre_enable = analogix_dp_bridge_pre_enable,
-	.enable = analogix_dp_bridge_enable,
-	.disable = analogix_dp_bridge_disable,
-	.post_disable = analogix_dp_bridge_nop,
+	.atomic_pre_enable = analogix_dp_bridge_atomic_pre_enable,
+	.atomic_enable = analogix_dp_bridge_atomic_enable,
+	.atomic_disable = analogix_dp_bridge_atomic_disable,
+	.atomic_post_disable = analogix_dp_bridge_atomic_post_disable,
 	.mode_set = analogix_dp_bridge_mode_set,
 	.attach = analogix_dp_bridge_attach,
 };
diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
index 769255dc6e99..d937fa3d9ee8 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.h
@@ -173,8 +173,8 @@ struct analogix_dp_device {
 	int			dpms_mode;
 	int			hpd_gpio;
 	bool                    force_hpd;
-	bool			psr_enable;
 	bool			fast_train_enable;
+	bool			psr_supported;
 
 	struct mutex		panel_lock;
 	bool			panel_is_modeset;
diff --git a/drivers/gpu/drm/rockchip/Makefile b/drivers/gpu/drm/rockchip/Makefile
index 524684ba7f6a..17a9e7eb2130 100644
--- a/drivers/gpu/drm/rockchip/Makefile
+++ b/drivers/gpu/drm/rockchip/Makefile
@@ -4,8 +4,7 @@
 # Direct Rendering Infrastructure (DRI) in XFree86 4.1.0 and higher.
 
 rockchipdrm-y := rockchip_drm_drv.o rockchip_drm_fb.o \
-		rockchip_drm_gem.o rockchip_drm_psr.o \
-		rockchip_drm_vop.o rockchip_vop_reg.o
+		rockchip_drm_gem.o rockchip_drm_vop.o rockchip_vop_reg.o
 rockchipdrm-$(CONFIG_DRM_FBDEV_EMULATION) += rockchip_drm_fbdev.o
 
 rockchipdrm-$(CONFIG_ROCKCHIP_ANALOGIX_DP) += analogix_dp-rockchip.o
diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index bc4423624209..624daa886d57 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -21,6 +21,8 @@
 #include <linux/clk.h>
 
 #include <drm/drmP.h>
+#include <drm/drm_atomic.h>
+#include <drm/drm_atomic_helper.h>
 #include <drm/drm_dp_helper.h>
 #include <drm/drm_of.h>
 #include <drm/drm_panel.h>
@@ -32,7 +34,6 @@
 #include <drm/bridge/analogix_dp.h>
 
 #include "rockchip_drm_drv.h"
-#include "rockchip_drm_psr.h"
 #include "rockchip_drm_vop.h"
 
 #define RK3288_GRF_SOC_CON6		0x25c
@@ -77,29 +78,6 @@ struct rockchip_dp_device {
 	struct analogix_dp_plat_data plat_data;
 };
 
-static int analogix_dp_psr_set(struct drm_encoder *encoder, bool enabled)
-{
-	struct rockchip_dp_device *dp = to_dp(encoder);
-	int ret;
-
-	if (!analogix_dp_psr_enabled(dp->adp))
-		return 0;
-
-	DRM_DEV_DEBUG(dp->dev, "%s PSR...\n", enabled ? "Entry" : "Exit");
-
-	ret = rockchip_drm_wait_vact_end(dp->encoder.crtc,
-					 PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
-	if (ret) {
-		DRM_DEV_ERROR(dp->dev, "line flag interrupt did not arrive\n");
-		return -ETIMEDOUT;
-	}
-
-	if (enabled)
-		return analogix_dp_enable_psr(dp->adp);
-	else
-		return analogix_dp_disable_psr(dp->adp);
-}
-
 static int rockchip_dp_pre_init(struct rockchip_dp_device *dp)
 {
 	reset_control_assert(dp->rst);
@@ -130,21 +108,9 @@ static int rockchip_dp_poweron_start(struct analogix_dp_plat_data *plat_data)
 	return ret;
 }
 
-static int rockchip_dp_poweron_end(struct analogix_dp_plat_data *plat_data)
-{
-	struct rockchip_dp_device *dp = to_dp(plat_data);
-
-	return rockchip_drm_psr_inhibit_put(&dp->encoder);
-}
-
 static int rockchip_dp_powerdown(struct analogix_dp_plat_data *plat_data)
 {
 	struct rockchip_dp_device *dp = to_dp(plat_data);
-	int ret;
-
-	ret = rockchip_drm_psr_inhibit_get(&dp->encoder);
-	if (ret != 0)
-		return ret;
 
 	clk_disable_unprepare(dp->pclk);
 
@@ -184,12 +150,23 @@ static void rockchip_dp_drm_encoder_mode_set(struct drm_encoder *encoder,
 	/* do nothing */
 }
 
-static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder)
+static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder,
+					   struct drm_atomic_state *state)
 {
 	struct rockchip_dp_device *dp = to_dp(encoder);
+	struct drm_crtc_state *old_crtc_state = NULL;
 	int ret;
 	u32 val;
 
+	drm_atomic_crtc_state_for_encoder(state, encoder, NULL, &old_crtc_state,
+					  NULL);
+	if (!old_crtc_state)
+		return;
+
+	/* Coming back from self refresh, nothing to do */
+	if (old_crtc_state->self_refresh_active)
+		return;
+
 	ret = drm_of_encoder_active_endpoint_id(dp->dev->of_node, encoder);
 	if (ret < 0)
 		return;
@@ -214,9 +191,26 @@ static void rockchip_dp_drm_encoder_enable(struct drm_encoder *encoder)
 	clk_disable_unprepare(dp->grfclk);
 }
 
-static void rockchip_dp_drm_encoder_nop(struct drm_encoder *encoder)
+static void rockchip_dp_drm_encoder_disable(struct drm_encoder *encoder,
+					    struct drm_atomic_state *state)
 {
-	/* do nothing */
+	struct rockchip_dp_device *dp = to_dp(encoder);
+	struct drm_crtc *crtc = NULL;
+	struct drm_crtc_state *new_crtc_state = NULL;
+	int ret;
+
+	drm_atomic_crtc_state_for_encoder(state, encoder, &crtc, NULL,
+					  &new_crtc_state);
+	if (!crtc || !new_crtc_state)
+		return;
+
+	/* Only wait for vactive end on self refresh transitions */
+	if (!new_crtc_state->self_refresh_active)
+		return;
+
+	ret = rockchip_drm_wait_vact_end(crtc, PSR_WAIT_LINE_FLAG_TIMEOUT_MS);
+	if (ret)
+		DRM_DEV_ERROR(dp->dev, "line flag irq timed out\n");
 }
 
 static int
@@ -245,8 +239,8 @@ rockchip_dp_drm_encoder_atomic_check(struct drm_encoder *encoder,
 static struct drm_encoder_helper_funcs rockchip_dp_encoder_helper_funcs = {
 	.mode_fixup = rockchip_dp_drm_encoder_mode_fixup,
 	.mode_set = rockchip_dp_drm_encoder_mode_set,
-	.enable = rockchip_dp_drm_encoder_enable,
-	.disable = rockchip_dp_drm_encoder_nop,
+	.atomic_enable = rockchip_dp_drm_encoder_enable,
+	.atomic_disable = rockchip_dp_drm_encoder_disable,
 	.atomic_check = rockchip_dp_drm_encoder_atomic_check,
 };
 
@@ -338,23 +332,16 @@ static int rockchip_dp_bind(struct device *dev, struct device *master,
 
 	dp->plat_data.dev_type = dp->data->chip_type;
 	dp->plat_data.power_on_start = rockchip_dp_poweron_start;
-	dp->plat_data.power_on_end = rockchip_dp_poweron_end;
 	dp->plat_data.power_off = rockchip_dp_powerdown;
 	dp->plat_data.get_modes = rockchip_dp_get_modes;
 
-	ret = rockchip_drm_psr_register(&dp->encoder, analogix_dp_psr_set);
-	if (ret < 0)
-		goto err_cleanup_encoder;
-
 	dp->adp = analogix_dp_bind(dev, dp->drm_dev, &dp->plat_data);
 	if (IS_ERR(dp->adp)) {
 		ret = PTR_ERR(dp->adp);
-		goto err_unreg_psr;
+		goto err_cleanup_encoder;
 	}
 
 	return 0;
-err_unreg_psr:
-	rockchip_drm_psr_unregister(&dp->encoder);
 err_cleanup_encoder:
 	dp->encoder.funcs->destroy(&dp->encoder);
 	return ret;
@@ -366,7 +353,6 @@ static void rockchip_dp_unbind(struct device *dev, struct device *master,
 	struct rockchip_dp_device *dp = dev_get_drvdata(dev);
 
 	analogix_dp_unbind(dp->adp);
-	rockchip_drm_psr_unregister(&dp->encoder);
 	dp->encoder.funcs->destroy(&dp->encoder);
 
 	dp->adp = ERR_PTR(-ENODEV);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
index 02e81ca2d933..214064d599ee 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -24,7 +24,6 @@
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_fb.h"
 #include "rockchip_drm_gem.h"
-#include "rockchip_drm_psr.h"
 
 static const struct drm_framebuffer_funcs rockchip_drm_fb_funcs = {
 	.destroy       = drm_gem_fb_destroy,
@@ -123,8 +122,6 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
 {
 	struct drm_device *dev = old_state->dev;
 
-	rockchip_drm_psr_inhibit_get_state(old_state);
-
 	drm_atomic_helper_commit_modeset_disables(dev, old_state);
 
 	drm_atomic_helper_commit_modeset_enables(dev, old_state);
@@ -132,8 +129,6 @@ rockchip_atomic_helper_commit_tail_rpm(struct drm_atomic_state *old_state)
 	drm_atomic_helper_commit_planes(dev, old_state,
 					DRM_PLANE_COMMIT_ACTIVE_ONLY);
 
-	rockchip_drm_psr_inhibit_put_state(old_state);
-
 	drm_atomic_helper_commit_hw_done(old_state);
 
 	drm_atomic_helper_wait_for_vblanks(dev, old_state);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c b/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
deleted file mode 100644
index a0c8bd235b67..000000000000
--- a/drivers/gpu/drm/rockchip/rockchip_drm_psr.c
+++ /dev/null
@@ -1,290 +0,0 @@
-/*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
- * Author: Yakir Yang <ykk@rock-chips.com>
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#include <drm/drmP.h>
-#include <drm/drm_atomic.h>
-#include <drm/drm_probe_helper.h>
-
-#include "rockchip_drm_drv.h"
-#include "rockchip_drm_psr.h"
-
-#define PSR_FLUSH_TIMEOUT_MS	100
-
-struct psr_drv {
-	struct list_head	list;
-	struct drm_encoder	*encoder;
-
-	struct mutex		lock;
-	int			inhibit_count;
-	bool			enabled;
-
-	struct delayed_work	flush_work;
-
-	int (*set)(struct drm_encoder *encoder, bool enable);
-};
-
-static struct psr_drv *find_psr_by_encoder(struct drm_encoder *encoder)
-{
-	struct rockchip_drm_private *drm_drv = encoder->dev->dev_private;
-	struct psr_drv *psr;
-
-	mutex_lock(&drm_drv->psr_list_lock);
-	list_for_each_entry(psr, &drm_drv->psr_list, list) {
-		if (psr->encoder == encoder)
-			goto out;
-	}
-	psr = ERR_PTR(-ENODEV);
-
-out:
-	mutex_unlock(&drm_drv->psr_list_lock);
-	return psr;
-}
-
-static int psr_set_state_locked(struct psr_drv *psr, bool enable)
-{
-	int ret;
-
-	if (psr->inhibit_count > 0)
-		return -EINVAL;
-
-	if (enable == psr->enabled)
-		return 0;
-
-	ret = psr->set(psr->encoder, enable);
-	if (ret)
-		return ret;
-
-	psr->enabled = enable;
-	return 0;
-}
-
-static void psr_flush_handler(struct work_struct *work)
-{
-	struct psr_drv *psr = container_of(to_delayed_work(work),
-					   struct psr_drv, flush_work);
-
-	mutex_lock(&psr->lock);
-	psr_set_state_locked(psr, true);
-	mutex_unlock(&psr->lock);
-}
-
-/**
- * rockchip_drm_psr_inhibit_put - release PSR inhibit on given encoder
- * @encoder: encoder to obtain the PSR encoder
- *
- * Decrements PSR inhibit count on given encoder. Should be called only
- * for a PSR inhibit count increment done before. If PSR inhibit counter
- * reaches zero, PSR flush work is scheduled to make the hardware enter
- * PSR mode in PSR_FLUSH_TIMEOUT_MS.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-int rockchip_drm_psr_inhibit_put(struct drm_encoder *encoder)
-{
-	struct psr_drv *psr = find_psr_by_encoder(encoder);
-
-	if (IS_ERR(psr))
-		return PTR_ERR(psr);
-
-	mutex_lock(&psr->lock);
-	--psr->inhibit_count;
-	WARN_ON(psr->inhibit_count < 0);
-	if (!psr->inhibit_count)
-		mod_delayed_work(system_wq, &psr->flush_work,
-				 PSR_FLUSH_TIMEOUT_MS);
-	mutex_unlock(&psr->lock);
-
-	return 0;
-}
-EXPORT_SYMBOL(rockchip_drm_psr_inhibit_put);
-
-void rockchip_drm_psr_inhibit_get_state(struct drm_atomic_state *state)
-{
-	struct drm_crtc *crtc;
-	struct drm_crtc_state *crtc_state;
-	struct drm_encoder *encoder;
-	u32 encoder_mask = 0;
-	int i;
-
-	for_each_old_crtc_in_state(state, crtc, crtc_state, i) {
-		encoder_mask |= crtc_state->encoder_mask;
-		encoder_mask |= crtc->state->encoder_mask;
-	}
-
-	drm_for_each_encoder_mask(encoder, state->dev, encoder_mask)
-		rockchip_drm_psr_inhibit_get(encoder);
-}
-EXPORT_SYMBOL(rockchip_drm_psr_inhibit_get_state);
-
-void rockchip_drm_psr_inhibit_put_state(struct drm_atomic_state *state)
-{
-	struct drm_crtc *crtc;
-	struct drm_crtc_state *crtc_state;
-	struct drm_encoder *encoder;
-	u32 encoder_mask = 0;
-	int i;
-
-	for_each_old_crtc_in_state(state, crtc, crtc_state, i) {
-		encoder_mask |= crtc_state->encoder_mask;
-		encoder_mask |= crtc->state->encoder_mask;
-	}
-
-	drm_for_each_encoder_mask(encoder, state->dev, encoder_mask)
-		rockchip_drm_psr_inhibit_put(encoder);
-}
-EXPORT_SYMBOL(rockchip_drm_psr_inhibit_put_state);
-
-/**
- * rockchip_drm_psr_inhibit_get - acquire PSR inhibit on given encoder
- * @encoder: encoder to obtain the PSR encoder
- *
- * Increments PSR inhibit count on given encoder. This function guarantees
- * that after it returns PSR is turned off on given encoder and no PSR-related
- * hardware state change occurs at least until a matching call to
- * rockchip_drm_psr_inhibit_put() is done.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-int rockchip_drm_psr_inhibit_get(struct drm_encoder *encoder)
-{
-	struct psr_drv *psr = find_psr_by_encoder(encoder);
-
-	if (IS_ERR(psr))
-		return PTR_ERR(psr);
-
-	mutex_lock(&psr->lock);
-	psr_set_state_locked(psr, false);
-	++psr->inhibit_count;
-	mutex_unlock(&psr->lock);
-	cancel_delayed_work_sync(&psr->flush_work);
-
-	return 0;
-}
-EXPORT_SYMBOL(rockchip_drm_psr_inhibit_get);
-
-static void rockchip_drm_do_flush(struct psr_drv *psr)
-{
-	cancel_delayed_work_sync(&psr->flush_work);
-
-	mutex_lock(&psr->lock);
-	if (!psr_set_state_locked(psr, false))
-		mod_delayed_work(system_wq, &psr->flush_work,
-				 PSR_FLUSH_TIMEOUT_MS);
-	mutex_unlock(&psr->lock);
-}
-
-/**
- * rockchip_drm_psr_flush_all - force to flush all registered PSR encoders
- * @dev: drm device
- *
- * Disable the PSR function for all registered encoders, and then enable the
- * PSR function back after PSR_FLUSH_TIMEOUT. If encoder PSR state have been
- * changed during flush time, then keep the state no change after flush
- * timeout.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-void rockchip_drm_psr_flush_all(struct drm_device *dev)
-{
-	struct rockchip_drm_private *drm_drv = dev->dev_private;
-	struct psr_drv *psr;
-
-	mutex_lock(&drm_drv->psr_list_lock);
-	list_for_each_entry(psr, &drm_drv->psr_list, list)
-		rockchip_drm_do_flush(psr);
-	mutex_unlock(&drm_drv->psr_list_lock);
-}
-EXPORT_SYMBOL(rockchip_drm_psr_flush_all);
-
-/**
- * rockchip_drm_psr_register - register encoder to psr driver
- * @encoder: encoder that obtain the PSR function
- * @psr_set: call back to set PSR state
- *
- * The function returns with PSR inhibit counter initialized with one
- * and the caller (typically encoder driver) needs to call
- * rockchip_drm_psr_inhibit_put() when it becomes ready to accept PSR
- * enable request.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-int rockchip_drm_psr_register(struct drm_encoder *encoder,
-			int (*psr_set)(struct drm_encoder *, bool enable))
-{
-	struct rockchip_drm_private *drm_drv;
-	struct psr_drv *psr;
-
-	if (!encoder || !psr_set)
-		return -EINVAL;
-
-	drm_drv = encoder->dev->dev_private;
-
-	psr = kzalloc(sizeof(struct psr_drv), GFP_KERNEL);
-	if (!psr)
-		return -ENOMEM;
-
-	INIT_DELAYED_WORK(&psr->flush_work, psr_flush_handler);
-	mutex_init(&psr->lock);
-
-	psr->inhibit_count = 1;
-	psr->enabled = false;
-	psr->encoder = encoder;
-	psr->set = psr_set;
-
-	mutex_lock(&drm_drv->psr_list_lock);
-	list_add_tail(&psr->list, &drm_drv->psr_list);
-	mutex_unlock(&drm_drv->psr_list_lock);
-
-	return 0;
-}
-EXPORT_SYMBOL(rockchip_drm_psr_register);
-
-/**
- * rockchip_drm_psr_unregister - unregister encoder to psr driver
- * @encoder: encoder that obtain the PSR function
- * @psr_set: call back to set PSR state
- *
- * It is expected that the PSR inhibit counter is 1 when this function is
- * called, which corresponds to a state when related encoder has been
- * disconnected from any CRTCs and its driver called
- * rockchip_drm_psr_inhibit_get() to stop the PSR logic.
- *
- * Returns:
- * Zero on success, negative errno on failure.
- */
-void rockchip_drm_psr_unregister(struct drm_encoder *encoder)
-{
-	struct rockchip_drm_private *drm_drv = encoder->dev->dev_private;
-	struct psr_drv *psr, *n;
-
-	mutex_lock(&drm_drv->psr_list_lock);
-	list_for_each_entry_safe(psr, n, &drm_drv->psr_list, list) {
-		if (psr->encoder == encoder) {
-			/*
-			 * Any other value would mean that the encoder
-			 * is still in use.
-			 */
-			WARN_ON(psr->inhibit_count != 1);
-
-			list_del(&psr->list);
-			kfree(psr);
-		}
-	}
-	mutex_unlock(&drm_drv->psr_list_lock);
-}
-EXPORT_SYMBOL(rockchip_drm_psr_unregister);
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_psr.h b/drivers/gpu/drm/rockchip/rockchip_drm_psr.h
deleted file mode 100644
index 25350ba3237b..000000000000
--- a/drivers/gpu/drm/rockchip/rockchip_drm_psr.h
+++ /dev/null
@@ -1,30 +0,0 @@
-/*
- * Copyright (C) Fuzhou Rockchip Electronics Co.Ltd
- * Author: Yakir Yang <ykk@rock-chips.com>
- *
- * This software is licensed under the terms of the GNU General Public
- * License version 2, as published by the Free Software Foundation, and
- * may be copied, distributed, and modified under those terms.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- */
-
-#ifndef __ROCKCHIP_DRM_PSR___
-#define __ROCKCHIP_DRM_PSR___
-
-void rockchip_drm_psr_flush_all(struct drm_device *dev);
-
-int rockchip_drm_psr_inhibit_put(struct drm_encoder *encoder);
-int rockchip_drm_psr_inhibit_get(struct drm_encoder *encoder);
-
-void rockchip_drm_psr_inhibit_get_state(struct drm_atomic_state *state);
-void rockchip_drm_psr_inhibit_put_state(struct drm_atomic_state *state);
-
-int rockchip_drm_psr_register(struct drm_encoder *encoder,
-			int (*psr_set)(struct drm_encoder *, bool enable));
-void rockchip_drm_psr_unregister(struct drm_encoder *encoder);
-
-#endif /* __ROCKCHIP_DRM_PSR__ */
diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 9254747ef65b..45a38a332827 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -21,6 +21,7 @@
 #include <drm/drm_gem_framebuffer_helper.h>
 #include <drm/drm_plane_helper.h>
 #include <drm/drm_probe_helper.h>
+#include <drm/drm_self_refresh_helper.h>
 #ifdef CONFIG_DRM_ANALOGIX_DP
 #include <drm/bridge/analogix_dp.h>
 #endif
@@ -42,10 +43,11 @@
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_gem.h"
 #include "rockchip_drm_fb.h"
-#include "rockchip_drm_psr.h"
 #include "rockchip_drm_vop.h"
 #include "rockchip_rgb.h"
 
+#define VOP_SELF_REFRESH_ENTRY_DELAY_MS 100
+
 #define VOP_WIN_SET(vop, win, name, v) \
 		vop_reg_set(vop, &win->phy->name, win->base, ~0, v, #name)
 #define VOP_SCL_SET(vop, win, name, v) \
@@ -541,7 +543,7 @@ static void vop_core_clks_disable(struct vop *vop)
 	clk_disable(vop->hclk);
 }
 
-static int vop_enable(struct drm_crtc *crtc)
+static int vop_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state)
 {
 	struct vop *vop = to_vop(crtc);
 	int ret, i;
@@ -581,12 +583,18 @@ static int vop_enable(struct drm_crtc *crtc)
 	 * We need to make sure that all windows are disabled before we
 	 * enable the crtc. Otherwise we might try to scan from a destroyed
 	 * buffer later.
+	 *
+	 * In the case of enable-after-PSR, we don't need to worry about this
+	 * case since the buffer is guaranteed to be valid and disabling the
+	 * window will result in screen glitches on PSR exit.
 	 */
-	for (i = 0; i < vop->data->win_size; i++) {
-		struct vop_win *vop_win = &vop->win[i];
-		const struct vop_win_data *win = vop_win->data;
+	if (!old_state || !old_state->self_refresh_active) {
+		for (i = 0; i < vop->data->win_size; i++) {
+			struct vop_win *vop_win = &vop->win[i];
+			const struct vop_win_data *win = vop_win->data;
 
-		VOP_WIN_SET(vop, win, enable, 0);
+			VOP_WIN_SET(vop, win, enable, 0);
+		}
 	}
 	spin_unlock(&vop->reg_lock);
 
@@ -937,12 +945,10 @@ static void vop_plane_atomic_async_update(struct drm_plane *plane,
 	}
 
 	if (vop->is_enabled) {
-		rockchip_drm_psr_inhibit_get_state(new_state->state);
 		vop_plane_atomic_update(plane, plane->state);
 		spin_lock(&vop->reg_lock);
 		vop_cfg_done(vop);
 		spin_unlock(&vop->reg_lock);
-		rockchip_drm_psr_inhibit_put_state(new_state->state);
 	}
 
 	plane->funcs->atomic_destroy_state(plane, plane_state);
@@ -1036,7 +1042,7 @@ static void vop_crtc_atomic_enable(struct drm_crtc *crtc,
 
 	WARN_ON(vop->event);
 
-	ret = vop_enable(crtc);
+	ret = vop_enable(crtc, old_state);
 	if (ret) {
 		mutex_unlock(&vop->vop_lock);
 		DRM_DEV_ERROR(vop->dev, "Failed to enable vop (%d)\n", ret);
@@ -1518,6 +1524,13 @@ static int vop_create_crtc(struct vop *vop)
 	init_completion(&vop->line_flag_completion);
 	crtc->port = port;
 
+	ret = drm_self_refresh_helper_register(crtc,
+					       VOP_SELF_REFRESH_ENTRY_DELAY_MS);
+	if (ret)
+		DRM_DEV_DEBUG_KMS(vop->dev,
+			"Failed to register %s with SR helpers %d, ignoring\n",
+			crtc->name, ret);
+
 	return 0;
 
 err_cleanup_crtc:
@@ -1535,6 +1548,8 @@ static void vop_destroy_crtc(struct vop *vop)
 	struct drm_device *drm_dev = vop->drm_dev;
 	struct drm_plane *plane, *tmp;
 
+	drm_self_refresh_helper_unregister(crtc);
+
 	of_node_put(crtc->port);
 
 	/*
diff --git a/include/drm/bridge/analogix_dp.h b/include/drm/bridge/analogix_dp.h
index 475b706b49de..7c5c13803673 100644
--- a/include/drm/bridge/analogix_dp.h
+++ b/include/drm/bridge/analogix_dp.h
@@ -42,10 +42,6 @@ struct analogix_dp_plat_data {
 			 struct drm_connector *);
 };
 
-int analogix_dp_psr_enabled(struct analogix_dp_device *dp);
-int analogix_dp_enable_psr(struct analogix_dp_device *dp);
-int analogix_dp_disable_psr(struct analogix_dp_device *dp);
-
 int analogix_dp_resume(struct analogix_dp_device *dp);
 int analogix_dp_suspend(struct analogix_dp_device *dp);
 
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
