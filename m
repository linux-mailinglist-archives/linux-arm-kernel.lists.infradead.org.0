Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B929516A263
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:34:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SNijrqCy8u3FySZcoOARpBk4EPObo1ZPkAH36gKp3gk=; b=I9hUOY8+RlO+lf
	4z/YhzQjb/pjZUZ9/8yrHJwfY0MyLrm7o1DPcrpk4+h5NwxiuxdZpB8bT2jMMBDPmATK4SS0hM5px
	KofrWUDGPTyxdiGfSSZchHr/AB4LL7Akf8EsHmmrBRxoV99jXoaWPeXNG0dQWTk5HAVj4jfKa7psB
	zWHppaqa8n9n6wU850BHNBY6OVN30FoNhiKgTei1S7gUv5A0c3py3ABkDrDbDmHcA7hHT236UU0l9
	iduLM6aK1WDCUAm43N9YuGRIhYRITBC0lwy77C0y8HnNY5c6ZU07w52Z+pT+woZLUK1MsnLLlC6M5
	o3Ch54WMaLuil6HUNWoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A7q-0002Lm-TV; Mon, 24 Feb 2020 09:34:06 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69l4-0003hD-0c; Mon, 24 Feb 2020 09:10:38 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 3000F628;
 Mon, 24 Feb 2020 04:10:32 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:32 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=s36AIVZDhgfEH
 uHKI3bVxc71YJj8Qw9OIGIr1Y69s/c=; b=v2Sm1pqdfoIBSFBIiRkT3sUPt7H/H
 CSAn6Mffhq1n8yyAYlq3DPnTg8xLAEJT97bPBGtMBMIen2ngXLQWsrFh8Ck7O1Xz
 X6pS/iyycfzQVJLoBYK2CJ1q95PRmsCtC5xts3fkJMM4ZloWSmtCkAJaPJMN3LuN
 4qWiQsXDIgJg7eJ8yGMlIWZ2cZB4QNCCwKhylNGcVJXr7l0pCEZzMiIdb6miGgi5
 LHYMdxqO6EOmZJZ0tYkAPyiq1qRi0ojCtd0Zqnt9HlTzrwrmZCNPZ+euLjvHIArp
 M+lrE680FdZMF+Ls9S+rKCUB31SW/o6RW+pZ8eMPLb2brDZGJlYAFBlIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=s36AIVZDhgfEHuHKI3bVxc71YJj8Qw9OIGIr1Y69s/c=; b=yQBT1Yc9
 AS+NQDvMmQCWa2Ygi71UKFG+XSfdQYiCbrxBvvw7+OtHMtJCGEyaKJk1G08skXC3
 41erFzl47cM2bNweK6dxKa9JOQGK08AXGZM0em8ptTnpRSaftcbtgSelfzMvZvl6
 C8VSqpxjgzv25I7JyZVaXUlbn7bng9rlcYXtxNULCUhtZ9lU2+n0hFpKimoCZmXv
 X7xijexcOui3nuPtqPtIJU6xTRd2AX9L5swblO4tuFerZUbauDI+4WV+pZoKR3QU
 ANNGMyZ782KqiNymXs9e8wUnWkA7vN01q+j0AYO3qWJhNw0upM3rJRvdBR6+9SO9
 mTAu5Bs2qSew8g==
X-ME-Sender: <xms:B5NTXho6R_t_9wEpOgon7121Sr4ZRfUtXXq5RrC6Z9rxekBsdc5PxQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrihhnpegshi
 htvghsrdgurghtrgenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhi
 iigvpedvnecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrth
 gvtghh
X-ME-Proxy: <xmx:B5NTXqrZrXpub9jGUiLlp3VZ8LYzrWYIzG0058y2vgxkKMxlOhIxsg>
 <xmx:B5NTXjN3NvBgCL5xEABvgB9lA_tklMIBUUFEDI7Ht37__blHumt7QQ>
 <xmx:B5NTXrygbCwhNq6s1IIv57aqh0dPdb8VEyRe5gCOSu-J9P0muVuJrQ>
 <xmx:B5NTXgRuzjw2ng2YYYk4xX9JBSqBnPQ4TgHJxwY6idORDWmiPmQs7Kc-a9w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 715E43060FD3;
 Mon, 24 Feb 2020 04:10:31 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 71/89] drm/vc4: hdmi: Remove vc4_hdmi_connector
Date: Mon, 24 Feb 2020 10:07:13 +0100
Message-Id: <f48c48e54ea0c063756429c1f138cc1298744339.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011034_269227_4CDF69AB 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

The vc4_hdmi_connector was only used to switch between drm_connector to
drm_encoder. However, we can now use vc4_hdmi to do the switch, so that
structure is redundant.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 17 +++++++----------
 drivers/gpu/drm/vc4/vc4_hdmi.h | 23 ++---------------------
 2 files changed, 9 insertions(+), 31 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 8049a5ba291f..bbe7b0b3e017 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -188,13 +188,10 @@ static const struct drm_connector_helper_funcs vc4_hdmi_connector_helper_funcs =
 static int vc4_hdmi_connector_init(struct drm_device *dev,
 				   struct vc4_hdmi *vc4_hdmi)
 {
-	struct vc4_hdmi_connector *hdmi_connector = &vc4_hdmi->connector;
-	struct drm_connector *connector = &hdmi_connector->base;
+	struct drm_connector *connector = &vc4_hdmi->connector;
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
 	int ret;
 
-	hdmi_connector->encoder = encoder;
-
 	drm_connector_init_with_ddc(dev, connector,
 				    &vc4_hdmi_connector_funcs,
 				    DRM_MODE_CONNECTOR_HDMIA,
@@ -292,7 +289,7 @@ static void vc4_hdmi_set_avi_infoframe(struct drm_encoder *encoder)
 {
 	struct vc4_hdmi *vc4_hdmi = encoder_to_vc4_hdmi(encoder);
 	struct vc4_hdmi_encoder *vc4_encoder = to_vc4_hdmi_encoder(encoder);
-	struct drm_connector *connector = &vc4_hdmi->connector.base;
+	struct drm_connector *connector = &vc4_hdmi->connector;
 	struct drm_connector_state *cstate = connector->state;
 	struct drm_crtc *crtc = encoder->crtc;
 	const struct drm_display_mode *mode = &crtc->state->adjusted_mode;
@@ -659,7 +656,7 @@ static int vc4_hdmi_audio_startup(struct snd_pcm_substream *substream,
 {
 	struct vc4_hdmi *vc4_hdmi = dai_to_hdmi(dai);
 	struct drm_encoder *encoder = &vc4_hdmi->encoder.base.base;
-	struct drm_connector *connector = &vc4_hdmi->connector.base;
+	struct drm_connector *connector = &vc4_hdmi->connector;
 	int ret;
 
 	if (vc4_hdmi->audio.substream && vc4_hdmi->audio.substream != substream)
@@ -833,7 +830,7 @@ static int vc4_hdmi_audio_eld_ctl_info(struct snd_kcontrol *kcontrol,
 {
 	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 	struct vc4_hdmi *vc4_hdmi = snd_component_to_hdmi(component);
-	struct drm_connector *connector = &vc4_hdmi->connector.base;
+	struct drm_connector *connector = &vc4_hdmi->connector;
 
 	uinfo->type = SNDRV_CTL_ELEM_TYPE_BYTES;
 	uinfo->count = sizeof(connector->eld);
@@ -846,7 +843,7 @@ static int vc4_hdmi_audio_eld_ctl_get(struct snd_kcontrol *kcontrol,
 {
 	struct snd_soc_component *component = snd_kcontrol_chip(kcontrol);
 	struct vc4_hdmi *vc4_hdmi = snd_component_to_hdmi(component);
-	struct drm_connector *connector = &vc4_hdmi->connector.base;
+	struct drm_connector *connector = &vc4_hdmi->connector;
 
 	memcpy(ucontrol->value.bytes.data, connector->eld,
 	       sizeof(connector->eld));
@@ -1335,7 +1332,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 err_delete_cec_adap:
 	cec_delete_adapter(vc4_hdmi->cec_adap);
 err_destroy_conn:
-	vc4_hdmi_connector_destroy(&vc4_hdmi->connector.base);
+	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
 #endif
 err_destroy_encoder:
 	vc4_hdmi_encoder_destroy(encoder);
@@ -1359,7 +1356,7 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	struct vc4_hdmi *vc4_hdmi = snd_soc_card_get_drvdata(card);
 
 	cec_unregister_adapter(vc4_hdmi->cec_adap);
-	vc4_hdmi_connector_destroy(&vc4_hdmi->connector.base);
+	vc4_hdmi_connector_destroy(&vc4_hdmi->connector);
 	vc4_hdmi_encoder_destroy(&vc4_hdmi->encoder.base.base);
 
 	clk_disable_unprepare(vc4_hdmi->hsm_clock);
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.h b/drivers/gpu/drm/vc4/vc4_hdmi.h
index 749a807cd1f3..88794136d2e4 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.h
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.h
@@ -21,23 +21,6 @@ to_vc4_hdmi_encoder(struct drm_encoder *encoder)
 	return container_of(encoder, struct vc4_hdmi_encoder, base.base);
 }
 
-/* VC4 HDMI connector KMS struct */
-struct vc4_hdmi_connector {
-	struct drm_connector base;
-
-	/* Since the connector is attached to just the one encoder,
-	 * this is the reference to it so we can do the best_encoder()
-	 * hook.
-	 */
-	struct drm_encoder *encoder;
-};
-
-static inline struct vc4_hdmi_connector *
-to_vc4_hdmi_connector(struct drm_connector *connector)
-{
-	return container_of(connector, struct vc4_hdmi_connector, base);
-}
-
 /* HDMI audio information */
 struct vc4_hdmi_audio {
 	struct snd_soc_card card;
@@ -56,7 +39,7 @@ struct vc4_hdmi {
 	struct platform_device *pdev;
 
 	struct vc4_hdmi_encoder encoder;
-	struct vc4_hdmi_connector connector;
+	struct drm_connector connector;
 
 	struct vc4_hdmi_audio audio;
 
@@ -81,9 +64,7 @@ struct vc4_hdmi {
 static inline struct vc4_hdmi *
 connector_to_vc4_hdmi(struct drm_connector *connector)
 {
-	struct vc4_hdmi_connector *_connector = to_vc4_hdmi_connector(connector);
-
-	return container_of(_connector, struct vc4_hdmi, connector);
+	return container_of(connector, struct vc4_hdmi, connector);
 }
 
 static inline struct vc4_hdmi *
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
