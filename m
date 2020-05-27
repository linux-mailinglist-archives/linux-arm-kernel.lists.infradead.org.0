Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0371E4A55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:34:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NPqwq4QpLXhefDdot7x0sn1lUN4IwM7XLEa09ZqB8Y=; b=QOSehWaw83llOq
	kjFw7PbUysX9pVHia02N1/EY6XNex3XiaFndenmS2Re6XeGGLTffdUHkVVJWyAmQ87ESyaGNhOVRc
	mfe6h+ZAgWJqetZlUOCuoR+r7D1VRU78ii6aENwj/yI93KalLdS5b992Q1wx0A2Ak2QA8wQbt/Hww
	fbYgx0EL7swIXZdHNJlXjF6T7ZvpbOwvv5VmIPh9eNCgzRVvV1DDBvNaWdyTgoQG896WVsY36j58N
	vzQ7mItyQellbZqPwDgLMtyqBkjCfPryyxFWqRin5y9osTtuAuPbGpfnYeajWD/T3LB5Tmnho8c25
	wb9fiPva9QojjHcaAtfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz0y-0002wJ-4K; Wed, 27 May 2020 16:34:48 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLW-00020P-Ar; Wed, 27 May 2020 15:52:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 6D84F582126;
 Wed, 27 May 2020 11:51:57 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=BuUKiGuqk973s
 DDN5AZmCuX6+VtoVQEUzT93MfWaojA=; b=jTygBAYybWdJmfyo8k2Ct9ZWKqqdz
 6cr3EDlE1KyQn90HRJQ4yszEkjDwFHwNGpPuQAe7hEyFnGsktGzjTB9lYB9sPQLA
 mPIaNz4PqhauZYpuwLp1kh0rcJ6yDNKiifb2SSGV2o3Hu6z4PhCcQo1+2A40dWZl
 /natkAQ5x+kJDaNVYwvSIZwMzI8CIHsiEWlXjZ2AmXAILn/MW+rBFwAt8o2uk55j
 vKjoSGK/0UI2ldCMHuzeBFqPq/TeQwAXqz6Z+Q3f/0xcPquuzoshx5tEzZEDfUKm
 DRtyt+3XkKepuvAZZr7Q+FYhy+AA6hoH596QMK3wICNAUt1xylrHWz7aQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=BuUKiGuqk973sDDN5AZmCuX6+VtoVQEUzT93MfWaojA=; b=y5Rh7V3Z
 qWQN1KSDAMmzPoDI4HrmYqdhSxMjEQFFxyCvXBhX1X4TJkQqJlCkhFbG73UuPPYf
 CohwqFLzxJunDdf4/vytLXKd//rosgtBhI2+bg8uHGk8dip/2PQZqiNGwX/6OlVU
 fn3RUr76Yoe5SPN0cJWpgIlKVtQRzlmScSk/PGuprazeOUAIusAPMigSvqOQxiTj
 ZMigkVijCL7oESAxGsXk8cmwINyriVlrOttj01fcKCWikjUhyBPcVgMZjXYzt7qk
 yKau+41WP0eCWDlQIj2kYLQWvB5N9/KyNEkZGOwDh8ax41J2sqrJtBRDv6QQYcv/
 vhyHdjUs5PAn6A==
X-ME-Sender: <xms:nYzOXjaIKie76PkGruBk1ooHVnpOMbciA11H153PszCsXagxbrgF1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjeekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:nYzOXiafOpEH5eKHLnoVjZpv8iE2jX9zjsGDa_HihT4zxkRx4yiwXQ>
 <xmx:nYzOXl8_WiMRM6P53D2nuYrzOftXluOEr7iKKfI-QcXk_cZfyjhOtg>
 <xmx:nYzOXprB0zTIQsW7eQg90RFEqoGxtrpiLh6KO98kP70BKgWkrAf5Dg>
 <xmx:nYzOXuI-wqTsJn3Mww78i4EHepYfaI2tkl20Aa1kw1IZeajGZAiHnA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1ED1A328005A;
 Wed, 27 May 2020 11:51:57 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 102/105] drm/vc4: hdmi: Switch to blank pixels when disabled
Date: Wed, 27 May 2020 17:49:12 +0200
Message-Id: <271605b39ee5e9bc7db5ac1d0ed9df6ecc4edc29.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085158_529831_AA80654F 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
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

In order to avoid pixels getting stuck in an unflushable FIFO, we need when
we disable the HDMI controller to switch away from getting our pixels from
the pixelvalve and instead use blank pixels, and switch back to the
pixelvalve when we enable the HDMI controller.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c |  9 +++++++++
 drivers/gpu/drm/vc4/vc4_regs.h |  3 +++
 2 files changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index d889a83a0f56..8c9cff9ce216 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -325,6 +325,12 @@ static void vc4_hdmi_encoder_post_crtc_disable(struct drm_encoder *encoder)
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 
 	HDMI_WRITE(HDMI_RAM_PACKET_CONFIG, 0);
+
+	HDMI_WRITE(HDMI_VID_CTL, HDMI_READ(HDMI_VID_CTL) |
+		   VC4_HD_VID_CTL_CLRRGB | VC4_HD_VID_CTL_CLRSYNC);
+
+	HDMI_WRITE(HDMI_VID_CTL,
+		   HDMI_READ(HDMI_VID_CTL) | VC4_HD_VID_CTL_BLANKPIX);
 }
 
 static void vc4_hdmi_encoder_post_crtc_powerdown(struct drm_encoder *encoder)
@@ -563,6 +569,9 @@ static void vc4_hdmi_encoder_post_crtc_enable(struct drm_encoder *encoder)
 		   (vsync_pos ? 0 : VC4_HD_VID_CTL_VSYNC_LOW) |
 		   (hsync_pos ? 0 : VC4_HD_VID_CTL_HSYNC_LOW));
 
+	HDMI_WRITE(HDMI_VID_CTL,
+		   HDMI_READ(HDMI_VID_CTL) & ~VC4_HD_VID_CTL_BLANKPIX);
+
 	if (vc4_encoder->hdmi_monitor) {
 		HDMI_WRITE(HDMI_SCHEDULER_CONTROL,
 			   HDMI_READ(HDMI_SCHEDULER_CONTROL) |
diff --git a/drivers/gpu/drm/vc4/vc4_regs.h b/drivers/gpu/drm/vc4/vc4_regs.h
index 5a3ee2030cff..ce103f925f05 100644
--- a/drivers/gpu/drm/vc4/vc4_regs.h
+++ b/drivers/gpu/drm/vc4/vc4_regs.h
@@ -723,6 +723,9 @@
 # define VC4_HD_VID_CTL_FRAME_COUNTER_RESET	BIT(29)
 # define VC4_HD_VID_CTL_VSYNC_LOW		BIT(28)
 # define VC4_HD_VID_CTL_HSYNC_LOW		BIT(27)
+# define VC4_HD_VID_CTL_CLRSYNC			BIT(24)
+# define VC4_HD_VID_CTL_CLRRGB			BIT(23)
+# define VC4_HD_VID_CTL_BLANKPIX		BIT(18)
 
 # define VC4_HD_CSC_CTL_ORDER_MASK		VC4_MASK(7, 5)
 # define VC4_HD_CSC_CTL_ORDER_SHIFT		5
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
