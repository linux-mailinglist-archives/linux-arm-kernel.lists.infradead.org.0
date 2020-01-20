Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AAB143081
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:08:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B5/y1vUIa4jnZbPwoAIbaMMg3SNAw0BKGDcOg5/sKK0=; b=f/VgBhaSJbWLII
	e2IrvJG8GSUg2+RQY4AcqfORS25W2srt5s7lKTGuPW4rsLAJsuCMZf04w6590gTuJTZp4ESDWUB9/
	EMb7pTurgO4DOGqqNHNb2sDRuHaASGyduO+qM+4UmKus1EaKOzluVKt/0sY8t3jL9WCkpKmsvfaeE
	0+MrFjQOCd1debTDX0aaBRTSxd4lsIq7kteR1j2r3oTXDCx1pAnxEO9JJyKnyh2ug43kDfM0YaqOS
	j+94G9AVhpRqYPJYy5KNBbEiY8FDLr2vTQTTU31UeXgKCvDRXaWtOol5jU/DXitpv8Tx3s2erOORZ
	9n6gTp5FJ5cqmHjWLGAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaX0-0000EC-Rv; Mon, 20 Jan 2020 17:08:06 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVV-0007LB-P4; Mon, 20 Jan 2020 17:06:42 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 5C007291329
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 5/5] drm/rockchip: rk3066_hdmi: Cleanup component unbind
Date: Mon, 20 Jan 2020 14:06:02 -0300
Message-Id: <20200120170602.3832-6-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120170602.3832-1-ezequiel@collabora.com>
References: <20200120170602.3832-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090634_042003_B47A9037 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Remove drm_connector_unregister() since it should be
used only by drivers that call drm_dev_register
explicitly.

Also, call the DRM cleanups directly, instead of
(ab)using the destroy hooks, for readability reasons.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/gpu/drm/rockchip/rk3066_hdmi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rk3066_hdmi.c b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
index fe203d38664e..5a2d62a2cf50 100644
--- a/drivers/gpu/drm/rockchip/rk3066_hdmi.c
+++ b/drivers/gpu/drm/rockchip/rk3066_hdmi.c
@@ -518,7 +518,6 @@ rk3066_hdmi_probe_single_connector_modes(struct drm_connector *connector,
 
 static void rk3066_hdmi_connector_destroy(struct drm_connector *connector)
 {
-	drm_connector_unregister(connector);
 	drm_connector_cleanup(connector);
 }
 
@@ -819,8 +818,8 @@ static int rk3066_hdmi_bind(struct device *dev, struct device *master,
 	return 0;
 
 err_cleanup_hdmi:
-	hdmi->connector.funcs->destroy(&hdmi->connector);
-	hdmi->encoder.funcs->destroy(&hdmi->encoder);
+	drm_connector_cleanup(&hdmi->connector);
+	drm_encoder_cleanup(&hdmi->encoder);
 err_disable_i2c:
 	i2c_put_adapter(hdmi->ddc);
 err_disable_hclk:
@@ -834,9 +833,6 @@ static void rk3066_hdmi_unbind(struct device *dev, struct device *master,
 {
 	struct rk3066_hdmi *hdmi = dev_get_drvdata(dev);
 
-	hdmi->connector.funcs->destroy(&hdmi->connector);
-	hdmi->encoder.funcs->destroy(&hdmi->encoder);
-
 	i2c_put_adapter(hdmi->ddc);
 	clk_disable_unprepare(hdmi->hclk);
 }
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
