Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53B4C1AA1CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:51:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wGPDnH4b16FtLPuOxTEFRv3izQcyCZwa6prsAekxT7k=; b=Qhx
	9ZH0Z60U0tBO5+UP2qUudBrNP38otpQaWbonv/3lCeae6xT5A68B5pRWYGosazZCIzlnCwAsTldnG
	VV4baJ+ox/rkOy29A9YGKsMjJQDjh+SkvWXQ0dZzfTSQJtYBnHDZFj6BMLNQ+ncuWLaQNuxb+kIJN
	SO7f1WAWv18EsIgr/0TGwPDD2iZwQGYBrCklbNRmWJXEditRXVtj/ErPQ+v02ByXykWA1d+/x7AMl
	nhaW8g3Z70Th12Z78ZqaEhYA9sLl9Ahjzh6R7elj18r48uqq9X0uV42TSgvseCC3JDKEGt1pJ4unK
	TONkw9T7ijEvjzqMWf1OPzwqkhn1L0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhVO-0006ur-J1; Wed, 15 Apr 2020 12:51:02 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhU2-0003XN-Ji
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:49:41 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:914e:4085:6cfb:e960])
 by andre.telenet-ops.be with bizsmtp
 id T0pS2200P3Hq6Dg010pS0M; Wed, 15 Apr 2020 14:49:28 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jOhTq-0002Bg-G8; Wed, 15 Apr 2020 14:49:26 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jOhTq-0000fD-DM; Wed, 15 Apr 2020 14:49:26 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] ARM: shmobile: defconfig: Refresh for v5.7-rc1
Date: Wed, 15 Apr 2020 14:49:23 +0200
Message-Id: <20200415124923.2510-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054938_819503_1082BC90 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Update the defconfig for Renesas ARM boards:
  - Enable CONFIG_DRM_DISPLAY_CONNECTOR (for HDMI, VGA, and composite
    display connectors on various R-Car H1, Gen2, and RZ/G1 boards,
    since commit 0c275c30176b2e78 ("drm/bridge: Add bridge driver for
    display connectors")),
  - Disable CONFIG_VIRTIO_MENU and CONFIG_VHOST_MENU (should not default
    to yes).

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.8.

 arch/arm/configs/shmobile_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/shmobile_defconfig b/arch/arm/configs/shmobile_defconfig
index 838307a9bb922c36..361e8ffad829303b 100644
--- a/arch/arm/configs/shmobile_defconfig
+++ b/arch/arm/configs/shmobile_defconfig
@@ -125,6 +125,7 @@ CONFIG_VIDEO_ML86V7667=y
 CONFIG_DRM=y
 CONFIG_DRM_RCAR_DU=y
 CONFIG_DRM_PANEL_SIMPLE=y
+CONFIG_DRM_DISPLAY_CONNECTOR=y
 CONFIG_DRM_LVDS_CODEC=y
 CONFIG_DRM_SII902X=y
 CONFIG_DRM_SIMPLE_BRIDGE=y
@@ -170,6 +171,8 @@ CONFIG_RTC_DRV_DA9063=y
 CONFIG_DMADEVICES=y
 CONFIG_RCAR_DMAC=y
 CONFIG_RENESAS_USB_DMAC=y
+# CONFIG_VIRTIO_MENU is not set
+# CONFIG_VHOST_MENU is not set
 CONFIG_STAGING=y
 CONFIG_STAGING_BOARD=y
 # CONFIG_IOMMU_SUPPORT is not set
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
