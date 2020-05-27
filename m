Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2801E49D1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJB3KlaugwH2vG5Og/dNk4Bjv3vJ6qd/3Ninuw1I1YI=; b=AF9EmUm5XaW5L7
	MXD1U3R3rNKc5pdo/WIndSCHkA/Gu/49QOarheuUssE/aXabqoplEeq6uk/sSYdmShCoRELlrFVAq
	htT2l5q6Zun9O2Jzjzil8efp05Rs/V+33pUmB4p13r/x+uvmea4BRlyyxX93NEwzl/BAoQl/551mD
	kFEFoVYAZXx4jonjs54c1ALr9XSMiFpmng+j38N5KXMcn1pxKaDEaq7hp3bhaHcl6mHmcrss8KcZ5
	diArepuijkoev7PzKlbDZfaIMw8NLiSeBA5Vpwou5AeTzSlesU0lvbAHDsHZfvDCFgcXG3JbnR6rG
	8lFuV+baGtcxz+uRgn4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdypR-0005Ld-8h; Wed, 27 May 2020 16:22:53 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKK-0000ul-El; Wed, 27 May 2020 15:50:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id B3FBC5820B3;
 Wed, 27 May 2020 11:50:43 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:50:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=P60EMhfBagvbN
 CYsash0laZNNpJmdalqtze5MocJiC8=; b=VmBFaM76vEge6Z0d+XLGWJbq05u6y
 nT3QKUCyo/p2UmRZ4A/I7yujmq3lj4IJvHIsXuQZ/ZJBk9CANQrlILyPXIUzDjEm
 pKmrfYdt91xFxzH5umMh64X6FfVAdxOCqVK079lqbAYt5cfgSxdOsQr6pSBg/ikw
 +BJFd7bxwpFuXq1f6Gs+8pNP9A5lXrDa4Cygv4TFX7hx3SThjd4jwKHXMttPFXHY
 Mbd9MtHzIDPg9OIOiRis8CAv0S7j84WuWQPkMma9qwfRGafBLinKD7yOjkQcNi8/
 4ERSVQiKCSnsQqsqZZtDrRZjcUH8Da9hyvA3GhHZ9chVnGStjj6UVEkTw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=P60EMhfBagvbNCYsash0laZNNpJmdalqtze5MocJiC8=; b=Cghlw0OL
 YCDeBLvW+8F/luj+HI3Wa768qbFC3ek/HT9XPMraN+d5wXtavtE/MD95rkEfVF85
 RK2va8xxAlcJ0XhD0ctB7AqsfA0uTZ1QGE1NOKKp8QVrfcp1OrR7xzfMT4+k4TwG
 L2SpSlvf+w+UykdNeYrLswnDCgQoSfkTdjo3e6bqz7H/Qv7Ujp6ByqkK6JwuBW5B
 oHnk/Im77LVeJFbMIakR9rWtanMOBAQl9vykPpKO01d97K1dQFPTdu8jsIiPH2ip
 XgUIFriyWF96MmiBi91CUA1kytHBm1JkyX+bVd0diq/0Tc14+Jz8c7kbKxAoh2nc
 j9bfBcUuephtIg==
X-ME-Sender: <xms:U4zOXgFzBz6z5_9ldDZCALE2zp6bQ-dD52RT_v5J2nvWgtjReNQnyw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeeine
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:U4zOXpX5YEXhimSsHOrXSqTe-RhpnEwghXvESkWMbGjvdLDAUJN7-g>
 <xmx:U4zOXqJ6Qu0_Gw0uZ-C32Pz4nnUgXuQRVDfO4qU3Me8mIJcFMEJInA>
 <xmx:U4zOXiEvt40mYFqEJ_Ovxdquj_SOqtIJGV3NyIc8lQcq2TV6ZXMV5Q>
 <xmx:U4zOXhETgEknnihzYaOUMqffcPGRph0zJ7Dp8U4B6Su0afnJYzN1xg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 69D953280066;
 Wed, 27 May 2020 11:50:43 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 054/105] drm/vc4: hvs: Make the stop_channel function public
Date: Wed, 27 May 2020 17:48:24 +0200
Message-Id: <4e35aebe56e1bb32d3b64012cf0d455f1b32ef28.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085044_642655_BA2CCF1F 
X-CRM114-Status: GOOD (  10.49  )
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

During the transition from the firmware to the KMS driver, we need to pay
particular attention to how we deal with the pixelvalves that have already
been enabled, otherwise either timeouts or stuck pixels can occur. We'll
thus need to call the function to stop an HVS channel at boot.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h | 1 +
 drivers/gpu/drm/vc4/vc4_hvs.c | 2 +-
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index ba24bad86905..d51b695732e0 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -879,6 +879,7 @@ void vc4_irq_reset(struct drm_device *dev);
 
 /* vc4_hvs.c */
 extern struct platform_driver vc4_hvs_driver;
+void vc4_hvs_stop_channel(struct drm_device *dev, unsigned int output);
 int vc4_hvs_atomic_check(struct drm_crtc *crtc, struct drm_crtc_state *state);
 void vc4_hvs_atomic_enable(struct drm_crtc *crtc, struct drm_crtc_state *old_state);
 void vc4_hvs_atomic_disable(struct drm_crtc *crtc, struct drm_crtc_state *old_state);
diff --git a/drivers/gpu/drm/vc4/vc4_hvs.c b/drivers/gpu/drm/vc4/vc4_hvs.c
index ec58870acb7b..1785c49534cf 100644
--- a/drivers/gpu/drm/vc4/vc4_hvs.c
+++ b/drivers/gpu/drm/vc4/vc4_hvs.c
@@ -248,7 +248,7 @@ static int vc4_hvs_init_channel(struct vc4_dev *vc4, struct drm_crtc *crtc,
 	return 0;
 }
 
-static void vc4_hvs_stop_channel(struct drm_device *dev, unsigned int chan)
+void vc4_hvs_stop_channel(struct drm_device *dev, unsigned int chan)
 {
 	struct vc4_dev *vc4 = to_vc4_dev(dev);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
