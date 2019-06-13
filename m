Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B9D14385B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 17:05:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:MIME-Version:Subject:To
	:From:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JSCfZ6vcbh73LZXPwD17LEcW4CBZBQnQjDKzYJQ1QUs=; b=Uyt2i+4mq5/7cy
	a7L1bf4NutXD9uRaI03BQZ7eXjfcEBMWf+VU73eMlZCbnOJ5ZGdd8QqgdKHb2VellbdM/kCcFGoj5
	mycpoah6ty2CLjAL8mFhTPADpOD1MJ8CxdSUpaoppex+DtlEurTacSV9RNcntYGRgHSbgLME8NArB
	3e0LwM5drdVVNeKlRUS7YvhK5dAFqZC3PvhqjWw652E4tgpIu2gwIT5zEvHj/UcblIisQetTjR893
	D8mebl3L85CHndwhgeDJ/xjNWmsL5okjMOvavYbC9+tGmWsJKctA597/L4+f3CPedRSfKjCiY9NoU
	cvt+7wMV4SUydckglxIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbRIQ-0005zH-Id; Thu, 13 Jun 2019 15:05:46 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbRFz-0002ne-QK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 15:03:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Date:Sender:Message-Id:Content-Type:
 Content-Transfer-Encoding:MIME-Version:Subject:Cc:To:From:References:
 In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YEzDgofyaqdLXecpl37pDtx+MZjCqpaPCpqCbfuc3zk=; b=sCXK7Brb+XITQW52K5FMHUzsHG
 kxCojciHM97n2OD6wkoY2OQjUNTr854E2Y4//436Mlltu0qBLMr7cndXXecpwhjidBjg2ByBFv3Cc
 UwRkg30EzloBVDYDXbg2pn/GBhIXU/H1WQQ0RJh7x6jNI47roMaNo2Vru5qE3TqOg1SejGteJ1rW9
 Z2CrRLNLowIVR6VrW8EAUBbKOff9YWCocrLlFFm5zvXqIn/yyVozOmBxl5MuOF7rmGmU94dEdiskd
 P2r9YHDtsOu0jAm92nY/3omGpMaXJ5HXfTJ+G6akYwnUWPUbFJMFcfTCbhj+R4BjGVrj3e7aQ3hri
 F4pr7fEw==;
Received: from e0022681537dd.dyn.armlinux.org.uk
 ([fd8f:7570:feb6:1:222:68ff:fe15:37dd]:35414 helo=rmk-PC.armlinux.org.uk)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFO-0003kM-Fn; Thu, 13 Jun 2019 16:02:38 +0100
Received: from rmk by rmk-PC.armlinux.org.uk with local (Exim
 4.82_1-5b7a7c0-XX) (envelope-from <rmk@armlinux.org.uk>)
 id 1hbRFJ-00007p-OS; Thu, 13 Jun 2019 16:02:33 +0100
In-Reply-To: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
References: <20190613150114.xqkyb7j7w4ve4yvr@shell.armlinux.org.uk>
From: Russell King <rmk+kernel@armlinux.org.uk>
To: dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 10/18] drm/armada: add and use definitions for RDREG4F
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <E1hbRFJ-00007p-OS@rmk-PC.armlinux.org.uk>
Date: Thu, 13 Jun 2019 16:02:33 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_080315_974938_4D2375B3 
X-CRM114-Status: GOOD (  12.60  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add and use bit definitions for RDREG4F on Dove Armada 510.

Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
---
 drivers/gpu/drm/armada/armada_510.c |  9 +++++++--
 drivers/gpu/drm/armada/armada_hw.h  | 10 ++++++++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/armada/armada_510.c b/drivers/gpu/drm/armada/armada_510.c
index 0e91d27921bd..370c422f64e3 100644
--- a/drivers/gpu/drm/armada/armada_510.c
+++ b/drivers/gpu/drm/armada/armada_510.c
@@ -24,8 +24,13 @@ static int armada510_crtc_init(struct armada_crtc *dcrtc, struct device *dev)
 
 	dcrtc->extclk[0] = clk;
 
-	/* Lower the watermark so to eliminate jitter at higher bandwidths */
-	armada_updatel(0x20, (1 << 11) | 0xff, dcrtc->base + LCD_CFG_RDREG4F);
+	/*
+	 * Lower the watermark so to eliminate jitter at higher bandwidths.
+	 * Disable SRAM read wait state to avoid system hang with external
+	 * clock.
+	 */
+	armada_updatel(CFG_DMA_WM(0x20), CFG_SRAM_WAIT | CFG_DMA_WM_MASK,
+		       dcrtc->base + LCD_CFG_RDREG4F);
 
 	/* Initialise SPU register */
 	writel_relaxed(ADV_HWC32ENABLE | ADV_HWC32ARGB | ADV_HWC32BLEND,
diff --git a/drivers/gpu/drm/armada/armada_hw.h b/drivers/gpu/drm/armada/armada_hw.h
index babfca71c4db..5b1af0cc9f50 100644
--- a/drivers/gpu/drm/armada/armada_hw.h
+++ b/drivers/gpu/drm/armada/armada_hw.h
@@ -88,6 +88,16 @@ enum {
 	ADV_VSYNC_H_OFF	= 0xfff << 0,
 };
 
+/* LCD_CFG_RDREG4F - Armada 510 only */
+enum {
+	CFG_SRAM_WAIT	= BIT(11),
+	CFG_SMPN_FASTTX	= BIT(10),
+	CFG_DMA_ARB	= BIT(9),
+	CFG_DMA_WM_EN	= BIT(8),
+	CFG_DMA_WM_MASK	= 0xff,
+#define CFG_DMA_WM(x)	((x) & CFG_DMA_WM_MASK)
+};
+
 enum {
 	CFG_565		= 0,
 	CFG_1555	= 1,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
