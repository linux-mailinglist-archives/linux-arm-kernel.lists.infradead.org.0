Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EFD71B7ABD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:55:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCqCyGTfAysG5Oluue0RGCdZVOL0aTpB4SK+1po3IWg=; b=Sbs2x2i/UctwlG
	F4AYGaL79NL0e5wsnFGISbVkib4uJXq9rZUUONmygxYMl/8YGUC3rYhkT0/10FLDaiEUu3hk7FOSz
	G2910Jfr6UMwuop96/I6TOswuDeCPwRTG0TSv8VritWjDY7hiPjmx76EcD6OUuVSLiVIxa59EqTqo
	o1ao5MFkhbnE0srSKYR0UKEr4I1Pg5ntBi/0lBknuQ4UaVO3stNCPhoardBvDl0R95MR1//goNz97
	sZYnoU7Jq86gj4jUCQzjBdXeFQwVvaKsWi4zGPNMDKGvO6a8ZwGyva7t4xH0303ZOZ2kd09mV4ACm
	KWqn60dmqsMOBE1WiGKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0fO-0006H2-J7; Fri, 24 Apr 2020 15:55:02 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Na-0008Ku-Oc; Fri, 24 Apr 2020 15:36:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id DD3F7334;
 Fri, 24 Apr 2020 11:36:36 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=XgpR8YJnNmnYq
 WrxoxGzp5tJxm5kpe8QM86vr3IeBP4=; b=CvTlpgdnk+I6xeAkpc11HZ8an/noN
 v9bYUzMyT33rG+5aX4zp6+L6WSeLiljqVk8C7Z9tOBT30YRNWn1ubiIrSr3PdtpR
 5xvJJz51P5HBMKwfXkxx5SzmLwwEeEl8s2QvLOICuc6X1MmAlnxPRaxldqkMz/m0
 o1nufB8ZJT5qbu8G32AGWfk9Rjrk5vakoEeNWZJzCZZWqJG+IVSKtMInXV6ntC3O
 14Bf8xnr3tCtwXNOolln4IiHdq/1KslFpPAr5yjBQveaVlHi5Lqg6mv9cmqkt7Wx
 hu81risDkHsn1UfIVbsRclDgBkHacnaY6zAFePG5yjbtyaZ6Y/Z10raCw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=XgpR8YJnNmnYqWrxoxGzp5tJxm5kpe8QM86vr3IeBP4=; b=fmrKc0jh
 xFyxYi/ovynC1lBCtJgTS7SQ6jcPrt7+lz2uuopqzo9gMXv6Pcck5BHcnpu4aEIs
 WsSLYS+ZlXtWy07NXmBX1Gqc5gt8XKuBFygv+BCYLrD8XdKXl3+oBJl4L1G+BRC1
 ZKq59jVsWOObQAAIjHdyZ/EnHCO73tQ4h8uZ+Naa0dTWJ97VmOwqdAGdcvryAOpY
 p5xCWLiEtBrCyWnpX9M61KfmzNEj5GIw+djQ54FJeXRPB8eYSOEFdGt/2/UCUyGX
 JBcNlNlVQu7q96bUkuWXL0UgpTyzcAw3KuDLVnPWcnat5dhKbB+mY++Qf66gZgfH
 76vVHqNQmCZq6A==
X-ME-Sender: <xms:hAejXjgmDTJ6T4BJ3N3y-AGvXKB4vjW7Mz3SReQ6uPW76iSrpwkBPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegjeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:hAejXrPTjrv2f4kHXG7v7_qg7cJ2t2dr0pQ2JgIEE1AiTmfzUUpOfA>
 <xmx:hAejXm5zP81_YiT9fi_RHKXYORc85GGKoPdqTzHENyU3MTBLhJQ7-Q>
 <xmx:hAejXqn_zRExBPY8onbYXlMurd9nbnggVv7WpSz-RPw7iKeZ8nfbrA>
 <xmx:hAejXhHBz9WU0a-ofQ7qVaSFy42NliQCtK7pchg7c7cnK_QReBq0tAiECQw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2534B3065D87;
 Fri, 24 Apr 2020 11:36:36 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 53/91] drm/vc4: crtc: Add FIFO depth to vc4_crtc_data
Date: Fri, 24 Apr 2020 17:34:34 +0200
Message-Id: <97f6f0dfa74264edf5bcb9c12b5424f5b8739021.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083639_128803_2BE9CB97 
X-CRM114-Status: GOOD (  11.76  )
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

Not all pixelvalve FIFOs in vc5 have the same depth, so we need to add that
to our vc4_crtc_data structure to be able to compute the fill level
properly later on.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 19 ++++++++++++++++---
 drivers/gpu/drm/vc4/vc4_drv.h  |  3 +++
 2 files changed, 19 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index ea55d4ca2766..e9d71153c6c6 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -251,10 +251,20 @@ vc4_crtc_update_gamma_lut(struct drm_crtc *crtc)
 	vc4_crtc_lut_load(crtc);
 }
 
-static u32 vc4_get_fifo_full_level(u32 format)
+static u32 vc4_get_fifo_full_level(struct vc4_crtc *vc4_crtc, u32 format)
 {
-	static const u32 fifo_len_bytes = 64;
+	u32 fifo_len_bytes = vc4_crtc->data->fifo_depth;
 
+	/*
+	 * Pixels are pulled from the HVS if the number of bytes is
+	 * lower than the FIFO full level.
+	 *
+	 * The latency of the pixel fetch mechanism is 6 pixels, so we
+	 * need to convert those 6 pixels in bytes, depending on the
+	 * format, and then subtract that from the length of the FIFO
+	 * to make sure we never end up in a situation where the FIFO
+	 * is full.
+	 */
 	switch (format) {
 	case PV_CONTROL_FORMAT_DSIV_16:
 	case PV_CONTROL_FORMAT_DSIC_16:
@@ -369,7 +379,7 @@ static void vc4_crtc_config_pv(struct drm_crtc *crtc)
 
 	CRTC_WRITE(PV_CONTROL,
 		   VC4_SET_FIELD(format, PV_CONTROL_FORMAT) |
-		   VC4_SET_FIELD(vc4_get_fifo_full_level(format),
+		   VC4_SET_FIELD(vc4_get_fifo_full_level(vc4_crtc, format),
 				 PV_CONTROL_FIFO_LEVEL) |
 		   VC4_SET_FIELD(pixel_rep - 1, PV_CONTROL_PIXEL_REP) |
 		   PV_CONTROL_CLR_AT_START |
@@ -1068,6 +1078,7 @@ static const struct vc4_crtc_data bcm2835_pv0_data = {
 	.hvs_available_channels = BIT(0),
 	.hvs_output = 0,
 	.debugfs_name = "crtc0_regs",
+	.fifo_depth = 64,
 	.pixels_per_clock = 1,
 	.encoder_types = {
 		[PV_CONTROL_CLK_SELECT_DSI] = VC4_ENCODER_TYPE_DSI0,
@@ -1079,6 +1090,7 @@ static const struct vc4_crtc_data bcm2835_pv1_data = {
 	.hvs_available_channels = BIT(2),
 	.hvs_output = 2,
 	.debugfs_name = "crtc1_regs",
+	.fifo_depth = 64,
 	.pixels_per_clock = 1,
 	.encoder_types = {
 		[PV_CONTROL_CLK_SELECT_DSI] = VC4_ENCODER_TYPE_DSI1,
@@ -1090,6 +1102,7 @@ static const struct vc4_crtc_data bcm2835_pv2_data = {
 	.hvs_available_channels = BIT(1),
 	.hvs_output = 1,
 	.debugfs_name = "crtc2_regs",
+	.fifo_depth = 64,
 	.pixels_per_clock = 1,
 	.encoder_types = {
 		[PV_CONTROL_CLK_SELECT_DPI_SMI_HDMI] = VC4_ENCODER_TYPE_HDMI,
diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index 6468c6df20b6..1ac27f8ec725 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -450,6 +450,9 @@ to_vc4_encoder(struct drm_encoder *encoder)
 }
 
 struct vc4_crtc_data {
+	/* Depth of the PixelValve FIFO in bytes */
+	unsigned int fifo_depth;
+
 	/* Which channels of the HVS can the output source from */
 	unsigned int hvs_available_channels;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
