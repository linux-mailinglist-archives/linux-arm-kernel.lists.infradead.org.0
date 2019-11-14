Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67C6CFC730
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 14:18:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xExWkMBHPSZY3LR1LP3gWqwb/ryvoAloV+8S4xOHbcc=; b=M8eUf6kjo0TBMg
	/EbHxV3wPhcol3cZo5Ii+8DyuamNyzBjwHZ5YMHOy7Xh9gclNJ0Tb+van9hlz1lYCD+bVqvPDsBKG
	uGQnGui9tzq2GUk29wk0SD3R11uJqgQxob6pHvPHGPVD2Xl1sXfxKBxBfMGP5pHsEPtnCQtT1a2nL
	2G8fWNGWTid/0qEJKJVH0MNNcb7Zj02XEAFA/EB4bSChzv3it04vX7ehGNfNp7XigGaTvFmvvOA0H
	/DoWTeLKGTLDzpHFD1vk/cLECOJQMFYBZ3W4h7jjI9/cvY9xiqYiOT5ZnKUmlQjoAgTzBAeG3bgpE
	2RnNavRzSaPwAp7UHM0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVF15-00055J-12; Thu, 14 Nov 2019 13:18:31 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVF0u-00054u-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 13:18:22 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 47DMVb5X6Fz1rD98;
 Thu, 14 Nov 2019 14:18:15 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 47DMVb4RB2z1qqkC;
 Thu, 14 Nov 2019 14:18:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id K7cJ5rnNwN6r; Thu, 14 Nov 2019 14:18:14 +0100 (CET)
X-Auth-Info: zgbQ9/AblcSW7JvQo2f0HLMRb+wSIAufYE37T+mnqFQ=
Received: from chi.lan (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 14 Nov 2019 14:18:14 +0100 (CET)
From: Marek Vasut <marex@denx.de>
To: dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/imx: parallel-display: Adjust bus_flags and bus_format
 handling
Date: Thu, 14 Nov 2019 14:17:51 +0100
Message-Id: <20191114131751.26746-1-marex@denx.de>
X-Mailer: git-send-email 2.24.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_051820_690885_F26F3159 
X-CRM114-Status: GOOD (  16.03  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The bus_flags and bus_format handling logic does not seem to cover
all potential usecases. Specifically, this seems to fail with an
"edt,etm0700g0edh6" display attached to an 24bit display interface,
with interface-pix-fmt = "rgb24" set in DT.

In this specific setup, the panel-simple.c driver entry for the display
sets .bus_flags to non-zero value. However, as imxpd->bus_format is set
from the DT property "interface-pix-fmt", imx_pd_encoder_atomic_check()
will set imx_crtc_state->bus_flags = imxpd->bus_flags even though the
imxpd->bus_flags is zero, while the di->bus_flags is correctly set by
the panel-simple.c and non-zero. The result is incorrect flags being
used for the display configuration and thus an image corruption.
(Specifically, DRM_BUS_FLAG_PIXDATA_POSEDGE is not propagated and thus
the ipuv3 clocks pixels on the wrong edge).

This patch fixes the problem by overriding the imx_crtc_state->bus_format
from the imxpd->bus_format only if the DT property "interface-pix-fmt" is
present or if the DI provides no formats. Similarly for bus_flags, which
are set from imxpd->bus_flags only if the DI provides no formats.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: David Airlie <airlied@linux.ie>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
To: dri-devel@lists.freedesktop.org
---
 drivers/gpu/drm/imx/parallel-display.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
index 35518e5de356..92f00b12c068 100644
--- a/drivers/gpu/drm/imx/parallel-display.c
+++ b/drivers/gpu/drm/imx/parallel-display.c
@@ -113,13 +113,16 @@ static int imx_pd_encoder_atomic_check(struct drm_encoder *encoder,
 	struct drm_display_info *di = &conn_state->connector->display_info;
 	struct imx_parallel_display *imxpd = enc_to_imxpd(encoder);
 
-	if (!imxpd->bus_format && di->num_bus_formats) {
-		imx_crtc_state->bus_flags = di->bus_flags;
+	if (imxpd->bus_format || !di->num_bus_formats)
+		imx_crtc_state->bus_format = imxpd->bus_format;
+	else
 		imx_crtc_state->bus_format = di->bus_formats[0];
-	} else {
+
+	if (di->num_bus_formats)
+		imx_crtc_state->bus_flags = di->bus_flags;
+	else
 		imx_crtc_state->bus_flags = imxpd->bus_flags;
-		imx_crtc_state->bus_format = imxpd->bus_format;
-	}
+
 	imx_crtc_state->di_hsync_pin = 2;
 	imx_crtc_state->di_vsync_pin = 3;
 
-- 
2.24.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
