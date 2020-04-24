Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A68E41B7AD2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yjfYAHYPmI0jW954NOwQROu1qAwJIyRRfQuYVg0Cl/A=; b=CrNpV5Y9pCzeyz
	oHwkE5OGeRTlJlyCWORNf5y4logu3teA5rtbEBhsXu4IYtQvwtExmopN8yh6s51v8NuRcUcW0IRLl
	KcEBq596/50z9mYlSiE0WbmNTJvuSAA97v0Cgh81XOhJmDqbfUVvvlzVjiRhXRgGlX0WkANGGnJBC
	Deb1XKiFVOqfxch0v65X69E5Ju/Gf7mbpl+ZfzunF9yL1VpoUf11qcYCKh3Ylrv1U4c15lWpXOQUm
	SrZ4M1TvYwDBBWt/zytIYDV+TYuuVDMxxY8ArXgyFsJDV+RxeVzTzXSDPXTRDI67eCim4aQFyD3pf
	prafrbnUK8qdRJ6WXfEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0gH-00011c-Hq; Fri, 24 Apr 2020 15:55:57 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Ne-0008Nj-4J; Fri, 24 Apr 2020 15:36:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id AC9581338;
 Fri, 24 Apr 2020 11:36:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=QAeVeBo6+3ux5
 I50mqwPBG2WScV4KSYmaFwSrmlI6vQ=; b=lr9KzQs/t704ccQpCkLSVJXu8QemU
 Zm2qTAj/3JO1vLzuMxMcI/VAGVdULa6q7HV3MtDDpgE9nMWNi1EdnttaYdtM+Aa5
 CgVPPiuqz7U9kTOWt/pxTzm1BIqtS5jmsoJm2cldvz+ymm1FcQ0M2yoSDmLNVS7b
 xzkGhLQTm9RTsZRC5dlXWU9LonCHGBZULUi8fE7IGyhN6VYOgvA+Ayxk8TaLAQ1b
 chApNJB1gWfkJbSNKtoJIP5poRbAQMDrVCGEsfTY3iqOVTzEnSUT8r2hppt8rXTd
 6mwzMJbpdXGq8x3qRH4GDh9uyKw0Q6hMa2RckX+UYtGSPpzm9iUAoyXBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=QAeVeBo6+3ux5I50mqwPBG2WScV4KSYmaFwSrmlI6vQ=; b=A/cZ5FqH
 /P0Y88syrxX9GvRqSvX6Q6c6hULqR1+hrRKeuxAa/C7T56WXYOJJGevlxivcg3ht
 LG8NamSDkw6PNmH4WYTEpV1Cgv1UDYrVYJSQObEFEnyECFAP9SOKUPHLxv4xbhIL
 jBNFeYejAoSuZL/FDbzC5uyob+gJ0eHJoLMrKS6PnZsaHFw19V6dNGNS8FmhIMjr
 qL2J1XBAWDfMpYUzul/Ik6902BiKgPxFOqzP8zcvhO7dz3csZltTrGoCbx75PxYc
 GJ8gm922gdCM4WFO89Uq40FKkeG1mQkc5z8u4xF9qzZ64JsaP47ACxRPmG3YUsg0
 AwrFajApdbkBIg==
X-ME-Sender: <xms:hwejXqk3AMIt_b6FzD6smnyYy3YSXQuL9M8F3_rK7BG8pxzaLU_KwA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegjeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hwejXhj3nUsyKH1IPlZmwd0gDjXqBlUmqnLMA4lgYM0vqLvMaprKhQ>
 <xmx:hwejXul3_6ZNAaf8YGf-pEz8fVeT72kROiGI_gl6s9bg_o_idLyhYQ>
 <xmx:hwejXo0g9XD0BziPZ5TgL2BhxYi44TMXMaKGgf8kQyWz9sRxjWVMRg>
 <xmx:hwejXjiKR5D0foAmePtGxSxgg5HCJS6ArApx346HIrAu1ud8olmn5WWyBLY>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E80033065DA3;
 Fri, 24 Apr 2020 11:36:38 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 55/91] drm/vc4: crtc: Rename HDMI encoder type to HDMI0
Date: Fri, 24 Apr 2020 17:34:36 +0200
Message-Id: <57afdd5800dd9aa247d41b73df71f34a2d6f06c3.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083642_231295_A5547EED 
X-CRM114-Status: GOOD (  10.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The previous generations were only supporting a single HDMI controller, but
that's about to change, so put an index as well to differentiate between
the two controllers.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 2 +-
 drivers/gpu/drm/vc4/vc4_drv.h  | 2 +-
 drivers/gpu/drm/vc4/vc4_hdmi.c | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index d4b490e3f2b8..22c0cd0dfc46 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1113,7 +1113,7 @@ static const struct vc4_crtc_data bcm2835_pv2_data = {
 	.fifo_depth = 64,
 	.pixels_per_clock = 1,
 	.encoder_types = {
-		[PV_CONTROL_CLK_SELECT_DPI_SMI_HDMI] = VC4_ENCODER_TYPE_HDMI,
+		[PV_CONTROL_CLK_SELECT_DPI_SMI_HDMI] = VC4_ENCODER_TYPE_HDMI0,
 		[PV_CONTROL_CLK_SELECT_VEC] = VC4_ENCODER_TYPE_VEC,
 	},
 };
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 1ac27f8ec725..e480839c1056 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -429,7 +429,7 @@ to_vc4_plane_state(struct drm_plane_state *state)
 
 enum vc4_encoder_type {
 	VC4_ENCODER_TYPE_NONE,
-	VC4_ENCODER_TYPE_HDMI,
+	VC4_ENCODER_TYPE_HDMI0,
 	VC4_ENCODER_TYPE_VEC,
 	VC4_ENCODER_TYPE_DSI0,
 	VC4_ENCODER_TYPE_DSI1,
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 340719238753..7e2d3ec311e3 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1317,7 +1317,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 					GFP_KERNEL);
 	if (!vc4_hdmi_encoder)
 		return -ENOMEM;
-	vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI;
+	vc4_hdmi_encoder->base.type = VC4_ENCODER_TYPE_HDMI0;
 	hdmi->encoder = &vc4_hdmi_encoder->base.base;
 
 	hdmi->pdev = pdev;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
