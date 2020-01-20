Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A595143079
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:07:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6KmSVSM8XndpAjiPWz1t8VsawyROJ59AV/zkwDAT90=; b=cbBGXncgeHGa5+
	ynCXJb5T3AZ/q3USfyK4ROhkJbwtdhV/wQRfOk9j0ACUNu/JocXxCtgyp8KUnaDk+yeTCXkflI0Em
	yjQumMhPWSPYsUSmSoSFBmgIuPSyxBDhUfc+OO/hMf2v7qwbjqvO4lnRNv9uuYGUp0PsTN833szs5
	4GTBeTefuPhJMnZHpIFk8LY3hvGu/lZkkeVB9URslIbzH/VqKLTuKSfKwXNBCVG9yqLoURwhqiX8L
	TetjAGtq38KeftxiBG7ecfovkyD9p1gjulmLNEEnRfr4nEMgqQI+9X0jb9qSBVuTY6V2HjWPosk1i
	Hdzfmbs4SbpcMbEcLYaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itaW7-0007gW-3D; Mon, 20 Jan 2020 17:07:11 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaVK-0007Az-FX; Mon, 20 Jan 2020 17:06:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 28AD3291322
From: Ezequiel Garcia <ezequiel@collabora.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Subject: [PATCH 2/5] drm/rockchip: Fix the device unbind order
Date: Mon, 20 Jan 2020 14:05:59 -0300
Message-Id: <20200120170602.3832-3-ezequiel@collabora.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200120170602.3832-1-ezequiel@collabora.com>
References: <20200120170602.3832-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_090622_645346_B610E34B 
X-CRM114-Status: GOOD (  11.11  )
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

In order to cleanup the configuration, destroying the components
in the pipeline, the components must be present.

Therefore, cleanup the config first, and unbind the components
later.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
index 20ecb1508a22..ca12a35483f9 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_drv.c
@@ -108,6 +108,11 @@ static void rockchip_iommu_cleanup(struct drm_device *drm_dev)
 	iommu_domain_free(private->domain);
 }
 
+static void unbind_cleanup(void *data)
+{
+	drm_mode_config_cleanup((struct drm_device *)data);
+}
+
 static int rockchip_drm_bind(struct device *dev)
 {
 	struct drm_device *drm_dev;
@@ -140,13 +145,13 @@ static int rockchip_drm_bind(struct device *dev)
 	rockchip_drm_mode_config_init(drm_dev);
 
 	/* Try to bind all sub drivers. */
-	ret = component_bind_all(dev, drm_dev);
+	ret = component_bind_all_or_cleanup(dev, drm_dev, unbind_cleanup);
 	if (ret)
-		goto err_mode_config_cleanup;
+		goto err_free;
 
 	ret = drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
 	if (ret)
-		goto err_unbind_all;
+		goto err_drm_cleanup;
 
 	drm_mode_config_reset(drm_dev);
 
@@ -158,7 +163,7 @@ static int rockchip_drm_bind(struct device *dev)
 
 	ret = rockchip_drm_fbdev_init(drm_dev);
 	if (ret)
-		goto err_unbind_all;
+		goto err_drm_cleanup;
 
 	/* init kms poll for handling hpd */
 	drm_kms_helper_poll_init(drm_dev);
@@ -171,10 +176,9 @@ static int rockchip_drm_bind(struct device *dev)
 err_kms_helper_poll_fini:
 	drm_kms_helper_poll_fini(drm_dev);
 	rockchip_drm_fbdev_fini(drm_dev);
-err_unbind_all:
-	component_unbind_all(dev, drm_dev);
-err_mode_config_cleanup:
+err_drm_cleanup:
 	drm_mode_config_cleanup(drm_dev);
+	component_unbind_all(dev, drm_dev);
 	rockchip_iommu_cleanup(drm_dev);
 err_free:
 	drm_dev->dev_private = NULL;
@@ -193,8 +197,8 @@ static void rockchip_drm_unbind(struct device *dev)
 	drm_kms_helper_poll_fini(drm_dev);
 
 	drm_atomic_helper_shutdown(drm_dev);
-	component_unbind_all(dev, drm_dev);
 	drm_mode_config_cleanup(drm_dev);
+	component_unbind_all(dev, drm_dev);
 	rockchip_iommu_cleanup(drm_dev);
 
 	drm_dev->dev_private = NULL;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
