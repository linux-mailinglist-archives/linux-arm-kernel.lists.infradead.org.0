Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 415D5CEABE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 19:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U+pghUwiy2ad8z5T31IFk3dTS+ff4XOQ0akZJLqe5aw=; b=g6Z
	adbcSQ5KLxEqsG/0Lsenv4LJmYaSfCdcYqhCbJ9t0Xng09tCvDSU4E3Z3+o/tEuRxepvycuuQagHt
	4Y8HcSa9fQzxNq+kswNERz35nZCqfQL1cOAdnl0GkQzBPykr68lXAGk9GQpnzyONOhOBgiFOqToxo
	OeZhqm3GCp/Bb9A9t9OGX3BWSPzV7x63T66nmafsehsFItDNZOwZyYdoMPKtVKEjGoPf0YBk+QVCC
	mhN8DqQVK5PxaPS9Nz3p6gp8pwNq+5IfIbgEX8/JVG5KgnfQBUvMGPyDo5k91ywPsXJ6YUq0qVQ5N
	HUUdkHerVpfZOhWyXi2cNPoQrcgRsNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHWuG-0006Ld-Sw; Mon, 07 Oct 2019 17:34:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHWu8-0006Kw-AX; Mon, 07 Oct 2019 17:34:42 +0000
Received: from localhost.localdomain (unknown [194.230.155.145])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C010C206BB;
 Mon,  7 Oct 2019 17:34:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570469680;
 bh=BsSuNex5QNeOJ/Kat9Ta8oOVKMFevFjCPEicbb2y+hA=;
 h=From:To:Cc:Subject:Date:From;
 b=kJv5ArcBWRA/YbxEwYw1loibTdLqvImd3zgRnkerlPi9G+jBcWnbJFajvhEl8oa5x
 mraTOAL+7GTuXnSpndAPcLwrzOLyXX5Qxe+8d+H9TzHT+tB3/Fb8TBeQwiCD89Hhqv
 zSGHWvI2P3L6kn6n74tZHrP5J6H/mhw9zxoKwWEw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Sean Paul <sean@poorly.run>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Qiang Yu <yuq825@gmail.com>, Dave Airlie <airlied@redhat.com>,
 Ben Skeggs <bskeggs@redhat.com>, Tomi Valkeinen <tomi.valkeinen@ti.com>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 lima@lists.freedesktop.org, nouveau@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Subject: [PATCH v3] gpu: Fix Kconfig indentation
Date: Mon,  7 Oct 2019 19:34:20 +0200
Message-Id: <20191007173420.9455-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_103440_416001_9ED72804 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [194.230.155.145 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adjust indentation from spaces to tab (+optional two spaces) as in
coding style with command like:
    $ sed -e 's/^        /\t/' -i */Kconfig

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v2:
1. Split AMD and i915 to separate patches.
---
 drivers/gpu/drm/Kconfig                  |  6 +++---
 drivers/gpu/drm/bridge/Kconfig           |  8 ++++----
 drivers/gpu/drm/lima/Kconfig             |  2 +-
 drivers/gpu/drm/mgag200/Kconfig          |  8 ++++----
 drivers/gpu/drm/nouveau/Kconfig          |  2 +-
 drivers/gpu/drm/omapdrm/displays/Kconfig |  6 +++---
 drivers/gpu/drm/omapdrm/dss/Kconfig      | 12 ++++++------
 drivers/gpu/drm/rockchip/Kconfig         |  8 ++++----
 drivers/gpu/drm/udl/Kconfig              |  2 +-
 drivers/gpu/vga/Kconfig                  |  2 +-
 10 files changed, 28 insertions(+), 28 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index e67c194c2aca..108e1b7f4564 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -207,8 +207,8 @@ config DRM_RADEON
 	tristate "ATI Radeon"
 	depends on DRM && PCI && MMU
 	select FW_LOADER
-        select DRM_KMS_HELPER
-        select DRM_TTM
+	select DRM_KMS_HELPER
+	select DRM_TTM
 	select POWER_SUPPLY
 	select HWMON
 	select BACKLIGHT_CLASS_DEVICE
@@ -266,7 +266,7 @@ config DRM_VKMS
 	  If M is selected the module will be called vkms.
 
 config DRM_ATI_PCIGART
-        bool
+	bool
 
 source "drivers/gpu/drm/exynos/Kconfig"
 
diff --git a/drivers/gpu/drm/bridge/Kconfig b/drivers/gpu/drm/bridge/Kconfig
index 1cc9f502c1f2..a5aa7ec16000 100644
--- a/drivers/gpu/drm/bridge/Kconfig
+++ b/drivers/gpu/drm/bridge/Kconfig
@@ -60,10 +60,10 @@ config DRM_MEGACHIPS_STDPXXXX_GE_B850V3_FW
 	select DRM_KMS_HELPER
 	select DRM_PANEL
 	---help---
-          This is a driver for the display bridges of
-          GE B850v3 that convert dual channel LVDS
-          to DP++. This is used with the i.MX6 imx-ldb
-          driver. You are likely to say N here.
+	  This is a driver for the display bridges of
+	  GE B850v3 that convert dual channel LVDS
+	  to DP++. This is used with the i.MX6 imx-ldb
+	  driver. You are likely to say N here.
 
 config DRM_NXP_PTN3460
 	tristate "NXP PTN3460 DP/LVDS bridge"
diff --git a/drivers/gpu/drm/lima/Kconfig b/drivers/gpu/drm/lima/Kconfig
index bb4ddc6bb0a6..652af7f50ea9 100644
--- a/drivers/gpu/drm/lima/Kconfig
+++ b/drivers/gpu/drm/lima/Kconfig
@@ -10,4 +10,4 @@ config DRM_LIMA
        depends on OF
        select DRM_SCHED
        help
-         DRM driver for ARM Mali 400/450 GPUs.
+	 DRM driver for ARM Mali 400/450 GPUs.
diff --git a/drivers/gpu/drm/mgag200/Kconfig b/drivers/gpu/drm/mgag200/Kconfig
index 76fee0fbdcae..4b31ef376abc 100644
--- a/drivers/gpu/drm/mgag200/Kconfig
+++ b/drivers/gpu/drm/mgag200/Kconfig
@@ -6,8 +6,8 @@ config DRM_MGAG200
 	select DRM_VRAM_HELPER
 	help
 	 This is a KMS driver for the MGA G200 server chips, it
-         does not support the original MGA G200 or any of the desktop
-         chips. It requires 0.3.0 of the modesetting userspace driver,
-         and a version of mga driver that will fail on KMS enabled
-         devices.
+	 does not support the original MGA G200 or any of the desktop
+	 chips. It requires 0.3.0 of the modesetting userspace driver,
+	 and a version of mga driver that will fail on KMS enabled
+	 devices.
 
diff --git a/drivers/gpu/drm/nouveau/Kconfig b/drivers/gpu/drm/nouveau/Kconfig
index 3558df043592..9c990266e876 100644
--- a/drivers/gpu/drm/nouveau/Kconfig
+++ b/drivers/gpu/drm/nouveau/Kconfig
@@ -2,7 +2,7 @@
 config DRM_NOUVEAU
 	tristate "Nouveau (NVIDIA) cards"
 	depends on DRM && PCI && MMU
-        select FW_LOADER
+	select FW_LOADER
 	select DRM_KMS_HELPER
 	select DRM_TTM
 	select BACKLIGHT_CLASS_DEVICE if DRM_NOUVEAU_BACKLIGHT
diff --git a/drivers/gpu/drm/omapdrm/displays/Kconfig b/drivers/gpu/drm/omapdrm/displays/Kconfig
index 240dda102845..b562a8cd61bf 100644
--- a/drivers/gpu/drm/omapdrm/displays/Kconfig
+++ b/drivers/gpu/drm/omapdrm/displays/Kconfig
@@ -8,18 +8,18 @@ config DRM_OMAP_ENCODER_OPA362
 	  through a GPIO.
 
 config DRM_OMAP_ENCODER_TPD12S015
-        tristate "TPD12S015 HDMI ESD protection and level shifter"
+	tristate "TPD12S015 HDMI ESD protection and level shifter"
 	help
 	  Driver for TPD12S015, which offers HDMI ESD protection and level
 	  shifting.
 
 config DRM_OMAP_CONNECTOR_HDMI
-        tristate "HDMI Connector"
+	tristate "HDMI Connector"
 	help
 	  Driver for a generic HDMI connector.
 
 config DRM_OMAP_CONNECTOR_ANALOG_TV
-        tristate "Analog TV Connector"
+	tristate "Analog TV Connector"
 	help
 	  Driver for a generic analog TV connector.
 
diff --git a/drivers/gpu/drm/omapdrm/dss/Kconfig b/drivers/gpu/drm/omapdrm/dss/Kconfig
index 956f23e1452d..72ae79c0c9b4 100644
--- a/drivers/gpu/drm/omapdrm/dss/Kconfig
+++ b/drivers/gpu/drm/omapdrm/dss/Kconfig
@@ -6,12 +6,12 @@ config OMAP_DSS_BASE
 	tristate
 
 menuconfig OMAP2_DSS
-        tristate "OMAP2+ Display Subsystem support"
+	tristate "OMAP2+ Display Subsystem support"
 	select OMAP_DSS_BASE
 	select VIDEOMODE_HELPERS
 	select OMAP2_DSS_INIT
 	select HDMI
-        help
+	help
 	  OMAP2+ Display Subsystem support.
 
 if OMAP2_DSS
@@ -52,7 +52,7 @@ config OMAP2_DSS_DPI
 
 config OMAP2_DSS_VENC
 	bool "VENC support"
-        default y
+	default y
 	help
 	  OMAP Video Encoder support for S-Video and composite TV-out.
 
@@ -61,7 +61,7 @@ config OMAP2_DSS_HDMI_COMMON
 
 config OMAP4_DSS_HDMI
 	bool "HDMI support for OMAP4"
-        default y
+	default y
 	select OMAP2_DSS_HDMI_COMMON
 	help
 	  HDMI support for OMAP4 based SoCs.
@@ -85,7 +85,7 @@ config OMAP5_DSS_HDMI
 
 config OMAP2_DSS_SDI
 	bool "SDI support"
-        default n
+	default n
 	help
 	  SDI (Serial Display Interface) support.
 
@@ -94,7 +94,7 @@ config OMAP2_DSS_SDI
 
 config OMAP2_DSS_DSI
 	bool "DSI support"
-        default n
+	default n
 	help
 	  MIPI DSI (Display Serial Interface) support.
 
diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
index 6f4222f8beeb..1670a5cae3c7 100644
--- a/drivers/gpu/drm/rockchip/Kconfig
+++ b/drivers/gpu/drm/rockchip/Kconfig
@@ -28,17 +28,17 @@ config ROCKCHIP_ANALOGIX_DP
 	  on RK3288 or RK3399 based SoC, you should select this option.
 
 config ROCKCHIP_CDN_DP
-        bool "Rockchip cdn DP"
+	bool "Rockchip cdn DP"
 	depends on EXTCON=y || (EXTCON=m && DRM_ROCKCHIP=m)
-        help
+	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the cdn DP driver. If you want to enable Dp on
 	  RK3399 based SoC, you should select this
 	  option.
 
 config ROCKCHIP_DW_HDMI
-        bool "Rockchip specific extensions for Synopsys DW HDMI"
-        help
+	bool "Rockchip specific extensions for Synopsys DW HDMI"
+	help
 	  This selects support for Rockchip SoC specific extensions
 	  for the Synopsys DesignWare HDMI driver. If you want to
 	  enable HDMI on RK3288 or RK3399 based SoC, you should select
diff --git a/drivers/gpu/drm/udl/Kconfig b/drivers/gpu/drm/udl/Kconfig
index b4d179b87f01..b13aa33990f3 100644
--- a/drivers/gpu/drm/udl/Kconfig
+++ b/drivers/gpu/drm/udl/Kconfig
@@ -8,4 +8,4 @@ config DRM_UDL
 	select DRM_KMS_HELPER
 	help
 	  This is a KMS driver for the USB displaylink video adapters.
-          Say M/Y to add support for these devices via drm/kms interfaces.
+	  Say M/Y to add support for these devices via drm/kms interfaces.
diff --git a/drivers/gpu/vga/Kconfig b/drivers/gpu/vga/Kconfig
index c8c770b05ed9..1ad4c4ef0b5e 100644
--- a/drivers/gpu/vga/Kconfig
+++ b/drivers/gpu/vga/Kconfig
@@ -28,6 +28,6 @@ config VGA_SWITCHEROO
 	help
 	  Many laptops released in 2008/9/10 have two GPUs with a multiplexer
 	  to switch between them. This adds support for dynamic switching when
-          X isn't running and delayed switching until the next logoff. This
+	  X isn't running and delayed switching until the next logoff. This
 	  feature is called hybrid graphics, ATI PowerXpress, and Nvidia
 	  HybridPower.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
