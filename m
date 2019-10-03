Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C6CCA693
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 18:56:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pVi/4fkdmNuFsvBhblnBqUHMyyULmLk6Qn6yVlgL7qo=; b=pkdtJUms79HsKg
	jdaL8EB7CHBiMJ3L6uWX/tklpzqa7uMAzZ0kXFW8MO3LV2I6iNtOGtpPQA8PxtTNfM+0n08CItIsR
	Med95smR+gJlsLJIUeLWq9Wb9AZVfh1YDwck/E6Ghh6PTppIO1hLrtorpjxInELH5UDcG/jIp2ZN3
	cmeVp7Or61YoGPanu26f8GNvaQpB2uwmFVubgUUJr8Z/3uoVfR8SpRFNACAQZ1p6KaDRDH22vNEAM
	ZB1y1bgLtXn2dh5v5jnWuE8DCN6Fp75G+FZddDMTOZiLPB4VirjqA2v51j2dSzxxNKzTDZCqrVUD2
	7CZcBQyiNLYUathPH8NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG4OQ-00069p-BP; Thu, 03 Oct 2019 16:55:54 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG4OG-00068X-SS
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 16:55:46 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 618E3809B;
 Thu,  3 Oct 2019 16:56:16 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH] ARM: omap2plus_defconfig: Fix selected panels after generic
 panel changes
Date: Thu,  3 Oct 2019 09:55:39 -0700
Message-Id: <20191003165539.50318-1-tony@atomide.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_095544_957693_E1183E98 
X-CRM114-Status: UNSURE (   5.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>, Jyri Sarha <jsarha@ti.com>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The old omapdrm panels got removed for v5.4 in favor of generic panels,
and the Kconfig options changed. Let's update omap2plus_defconfig
accordingly so the same panels are still enabled.

Cc: Jyri Sarha <jsarha@ti.com>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Cc: Tomi Valkeinen <tomi.valkeinen@ti.com>
Signed-off-by: Tony Lindgren <tony@atomide.com>
---
 arch/arm/configs/omap2plus_defconfig | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/configs/omap2plus_defconfig b/arch/arm/configs/omap2plus_defconfig
--- a/arch/arm/configs/omap2plus_defconfig
+++ b/arch/arm/configs/omap2plus_defconfig
@@ -356,14 +356,14 @@ CONFIG_DRM_OMAP_CONNECTOR_HDMI=m
 CONFIG_DRM_OMAP_CONNECTOR_ANALOG_TV=m
 CONFIG_DRM_OMAP_PANEL_DPI=m
 CONFIG_DRM_OMAP_PANEL_DSI_CM=m
-CONFIG_DRM_OMAP_PANEL_SONY_ACX565AKM=m
-CONFIG_DRM_OMAP_PANEL_LGPHILIPS_LB035Q02=m
-CONFIG_DRM_OMAP_PANEL_SHARP_LS037V7DW01=m
-CONFIG_DRM_OMAP_PANEL_TPO_TD028TTEC1=m
-CONFIG_DRM_OMAP_PANEL_TPO_TD043MTEA1=m
-CONFIG_DRM_OMAP_PANEL_NEC_NL8048HL11=m
 CONFIG_DRM_TILCDC=m
 CONFIG_DRM_PANEL_SIMPLE=m
+CONFIG_DRM_PANEL_LG_LB035Q02=m
+CONFIG_DRM_PANEL_NEC_NL8048HL11=m
+CONFIG_DRM_PANEL_SHARP_LS037V7DW01=m
+CONFIG_DRM_PANEL_SONY_ACX565AKM=m
+CONFIG_DRM_PANEL_TPO_TD028TTEC1=m
+CONFIG_DRM_PANEL_TPO_TD043MTEA1=m
 CONFIG_FB=y
 CONFIG_FIRMWARE_EDID=y
 CONFIG_FB_MODE_HELPERS=y
-- 
2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
