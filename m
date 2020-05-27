Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD051E4995
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:15:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YOS8c7aJoAEX9IvYlHrJ69NHPJP2veT7gsNZE3QpA4=; b=a/HwDOSL8xI2F5
	kMANABVleonOqlvY0ZWXhI7frRjfXElh2LSFRYXFDCX+DR7uJ3R8LewNd0q7C4w7dkB85Kl/BeAyX
	S9JJye3CtzQqoRzcrSE4+QEfb//dqG+qIpORT8xEBT4HfhFT4IVQ866dKS2aWI9+wweQNrJ2qSi7+
	47BVi9jnKtFWx9/9cNbFvbpndRId7Aredk6dvTFGCnZBJvCNHMhbNEwHn9hW30Sw5ttPHtdWu+1bj
	E+ao6Q8251hpfcBvmOHko5buiNfv+hYHMW+kWn7OoI4faqbENDDkrx/Q06QISLhQn9x2ySv6lVbhJ
	EPhHsKQ9LwZ5hSAVfx9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyiU-0005mf-D9; Wed, 27 May 2020 16:15:42 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyK8-0000jJ-1Z; Wed, 27 May 2020 15:50:34 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8421B582091;
 Wed, 27 May 2020 11:50:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=7mda2iOOQ39Qa
 oOXcPKflkPJpbuQfc7IIrE/YRJCbN0=; b=IlyTPLBaRi0xF7O/j/vtCVAY2D/3a
 28i2F5fStL+IJn+uJnG5UoRFk7bZ4ftModQrGL7tBfFoC9bQToepi30d2cFk/g+O
 K1WMKUkpeFW0U+duh9a27sf1/X6mH/JegPfdgoBpM493kuvNVPbJCmEpxVRcEht2
 3zLW91iKX/hnKPcx77+mNt16uZczGvWPwr0qZSNGV899yF9hItpFzy+/JlbO9NcI
 mmeb5PRN5dp2ZLulJi6Z9cppSsGnz35Y0HiD534ZztLzeif2DiN9W8++S4VtWcaS
 d2MpEurfdihFZtWjxaURCuNx9/1EIIUanReUgRUpg5MX61p2n6ebWD5cw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=7mda2iOOQ39QaoOXcPKflkPJpbuQfc7IIrE/YRJCbN0=; b=pVLSUIVW
 Ry3lgNAwv5vRZg28F5X2gX4IkuaSBG930WlPJJQxTGYUqAJhZTXHcGxzSqsKvi5p
 SDkPeAkFRhTCBsn2msupyZvCT8VXLmopYIlOKObuZRrN6fNAmcfQJmqLMBvFiGLT
 BFStI5GOa9qWEM452wd/6s/GilLL9BVm9lEIuX/cCc1jeSdC7Yefqeqp8BKKnPZj
 UIFkV5XndR8ksoeFc9bpN8sjyQljIvg+R/HucueifmwisdbeNkMhGJAAtniYtq63
 nAwmRfwZtf20rsf1HySNS2TvMGKO4rzngoGPVJAWbPaZDa7ZRjqMk4wO57vxlSqO
 dEstq2A3xxXSEA==
X-ME-Sender: <xms:RozOXggV-tkWlE7YxheLItbRIYigL02lOAzuE9jfaKk8ol2QE0Isqw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdehne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RozOXpBAthlJy_-_9Bsex3Y9c7nrFOtU82tH7tLUgstQnFcSbm2HCA>
 <xmx:RozOXoE1uwzxei0c-uOPay-DSKPf4xoUMDnEZ86GqkNY7Td-ZeIeRQ>
 <xmx:RozOXhQalxOvkxWLJHJ_wYk0s2RQsCTO9ycqi7ULzlSarIU__D9e8g>
 <xmx:RozOXswOcSekfgFQ8KDc3IrxA1YEGCNqt3UfgAk-YaZVQlvhnLFdTw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 25BD53280060;
 Wed, 27 May 2020 11:50:30 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 046/105] drm/vc4: hvs: Remove mode_set_nofb
Date: Wed, 27 May 2020 17:48:16 +0200
Message-Id: <0f7b26403123254c4d81b82c9b0e0ee61b4e71ac.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085032_292741_002955E4 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the only thing that remains in the mode_set_nofb callback for the
HVS is the TXP muxing, and since that part is already covered by the FIFO
channel allocation / muxing, the whole function is basically redundant and
we can just remove it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c |  2 --
 drivers/gpu/drm/vc4/vc4_drv.h  |  1 -
 drivers/gpu/drm/vc4/vc4_hvs.c  | 32 --------------------------------
 3 files changed, 35 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 0a67b27cec9b..a69e0d456b79 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -380,8 +380,6 @@ static void vc4_crtc_mode_set_nofb(struct drm_crtc *crtc)
 
 	if (!vc4_state->feed_txp)
 		vc4_crtc_config_pv(crtc);
-
-	vc4_hvs_mode_set_nofb(crtc);
 }
 
 static void require_hvs_enabled(struct drm_device *dev)
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 5520a22f8126..d86228e1e338 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -876,7 +876,6 @@ int vc4_hvs_atomic_check(struct drm_crtc *crtc, struct drm_crtc_state *state);
 void vc4_hvs_atomic_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state);
 void vc4_hvs_atomic_disable(struct drm_crtc *crtc, struct drm_crtc_state *old_state);
 void vc4_hvs_atomic_flush(struct drm_crtc *crtc, struct drm_crtc_state *state);
-void vc4_hvs_mode_set_nofb(struct drm_crtc *crtc);
 void vc4_hvs_dump_state(struct drm_device *dev);
 void vc4_hvs_unmask_underrun(struct drm_device *dev, int channel);
 void vc4_hvs_mask_underrun(struct drm_device *dev, int channel);
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index 754aff3966bd..ec58870acb7b 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -441,38 +441,6 @@ void vc4_hvs_atomic_flush(struct drm_crtc *crtc,
 	}
 }
 
-void vc4_hvs_mode_set_nofb(struct drm_crtc *crtc)
-{
-	struct drm_device *dev = crtc->dev;
-	struct vc4_dev *vc4 = to_vc4_dev(dev);
-	struct vc4_crtc *vc4_crtc = to_vc4_crtc(crtc);
-	struct vc4_crtc_state *vc4_state = to_vc4_crtc_state(crtc->state);
-
-	if (vc4_crtc->data->hvs_output == 2) {
-		u32 dispctrl;
-		u32 dsp3_mux;
-
-		/*
-		 * SCALER_DISPCTRL_DSP3 = X, where X < 2 means 'connect DSP3 to
-		 * FIFO X'.
-		 * SCALER_DISPCTRL_DSP3 = 3 means 'disable DSP 3'.
-		 *
-		 * DSP3 is connected to FIFO2 unless the transposer is
-		 * enabled. In this case, FIFO 2 is directly accessed by the
-		 * TXP IP, and we need to disable the FIFO2 -> pixelvalve1
-		 * route.
-		 */
-		if (vc4_state->feed_txp)
-			dsp3_mux = VC4_SET_FIELD(3, SCALER_DISPCTRL_DSP3_MUX);
-		else
-			dsp3_mux = VC4_SET_FIELD(2, SCALER_DISPCTRL_DSP3_MUX);
-
-		dispctrl = HVS_READ(SCALER_DISPCTRL) &
-			   ~SCALER_DISPCTRL_DSP3_MUX_MASK;
-		HVS_WRITE(SCALER_DISPCTRL, dispctrl | dsp3_mux);
-	}
-}
-
 void vc4_hvs_mask_underrun(struct drm_device *dev, int channel)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
