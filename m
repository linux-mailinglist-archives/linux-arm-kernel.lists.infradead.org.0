Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1AE01E4A17
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:27:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQXkaMBMDGxNKB2P9E0XRshyiSJ1zkepy4EeAyQ/xOs=; b=C3UG1W7ZH8DK4Q
	c1p4yLqNGtPPi/F2WWiZEVxdSoFgT/deOq430lxpm9To5592QuDimSSZvq8td4iAq4zkR57GGiDBQ
	3bC2jO1SV+PhMQCWqvkFUlzqnc/Bf4JD6DxPNjwi5MXqvM+vsKSY6pDugZiTvAJisr/kFS5Kg/jFT
	2bStXOMvp028U+31y2e8nARArlm3R2wDzvs5lnliD04xWK5vcdv5mWRzwdNmWzsc33p0VBW3JNIaC
	zq7CEeuE2tEealgP0a50kx53Udy8z8y6wyVQ0/9iQTJS4bIpaH0RcimyCCFtHalqE68nHVVuHbEnl
	p6ZGh1oKKlOgZQoPM1OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyuH-0003D7-BV; Wed, 27 May 2020 16:27:53 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKu-0001ME-78; Wed, 27 May 2020 15:51:22 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 1BC77580D6B;
 Wed, 27 May 2020 11:51:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=M9qzLnK7deTu/
 moPvhZOkgepq1FHMqToIp67UgEwLvc=; b=rCeLvw623CaovtKdeyk4wfIUIu/3M
 AFHQQAJfEKeSoFKlHiCbVmwy3iDxW12+pVSgUK2FnchYHg2AmirAHue4K/ZP9Twq
 1P5cfC6XsF0BtJwQ65XVjBXpXsSnXqQEQS/kjDgM2isVXT6DC8gQepMneWohLrq9
 co5zzrNPh76jt0hO1xBVe2qYV5ogQttffTDRSXrv+OFxHSPMJQr5msnhnaBORFk3
 QV9upNE4c3rMwZ8wR6V+g9E0xw0C1en766u+6DB4sfI8+Q/bsevltXkHaSe0JdSm
 hSN5pdtlEEcvhMBm92yABkLqocdyGHvhUI3cOfp9dHq229ZK1LTlUZCVA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=M9qzLnK7deTu/moPvhZOkgepq1FHMqToIp67UgEwLvc=; b=gN20S6cz
 RwiTvSMhZRfcbtnuaHtSFZaNxEGhhdlYh4yvk+h5e+7YKs2ofchK8bxVfHzUHNB3
 K+tEsSkm9UGV0+h/eEKYlm2nYtk+5NdAmico/hYWwCLJCQvYibHrp0QfipR4cdiF
 PXxRHGtQz2eX8IANSE/aHTE8OTRQe6Q9J7ERNObJhpcfqfDcdQ5Zfwku0hN/f3+O
 tNeFb4F262akV0w0wYV7le4h8qwefHCc3d6C3qzMoe6z1cz8u5KU4wWCCrTPob2t
 4oUcUF87p7/It1e3UChsWb5g9V6EVD540FP+sLBsNq/zSzIVIamQGJdbmBxRpI0e
 1hU8weQAui4lCg==
X-ME-Sender: <xms:dozOXt3PHG_Z-xO47HbVzsXwVb6vhaqtezIzWbWIwGECvJ7Li9NoMw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepheefne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:dozOXkErt78p8UF-BuxAQaL-tBxjxpIxeUTHaD8qFHW6JwEeuxPvtg>
 <xmx:dozOXt4oJmewji4ydAIK6EpdtNPBNImqmki6XQJwGg-9dtyRxUSQ3w>
 <xmx:dozOXq1Ggqk8YgemgosoyZW6JI5N8fBcHq8RmeKz6AgOGaURQ-YbeQ>
 <xmx:d4zOXr0HtgcvswR3qEnXCEvLGSACWzt2CvTJEVx5p-6CL8g_O8JiPA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B10C930614FA;
 Wed, 27 May 2020 11:51:18 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 077/105] drm/vc4: hdmi: Remove vc4_dev hdmi pointer
Date: Wed, 27 May 2020 17:48:47 +0200
Message-Id: <3fd0a9dc3b2f9f5914a6dab4c003a13b0cf6f09f.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085120_470632_2DC23242 
X-CRM114-Status: GOOD (  11.60  )
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

Now that we don't have any users anymore, we can kill that pointer.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_drv.h  |  1 -
 drivers/gpu/drm/vc4/vc4_hdmi.c | 14 ++++++--------
 2 files changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_drv.h b/drivers/gpu/drm/vc4/vc4_drv.h
index e14ed9799ecc..52ba5d7323c8 100644
--- a/drivers/gpu/drm/vc4/vc4_drv.h
+++ b/drivers/gpu/drm/vc4/vc4_drv.h
@@ -73,7 +73,6 @@ struct vc4_perfmon {
 struct vc4_dev {
 	struct drm_device *dev;
 
-	struct vc4_hdmi *hdmi;
 	struct vc4_hvs *hvs;
 	struct vc4_v3d *v3d;
 	struct vc4_dpi *dpi;
diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 892108f16802..850111665839 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -1188,7 +1188,6 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 #endif
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
-	struct vc4_dev *vc4 = drm->dev_private;
 	struct vc4_hdmi *vc4_hdmi;
 	struct drm_encoder *encoder;
 	struct device_node *ddc_node;
@@ -1276,8 +1275,6 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 		vc4_hdmi->hpd_active_low = hpd_gpio_flags & OF_GPIO_ACTIVE_LOW;
 	}
 
-	vc4->hdmi = vc4_hdmi;
-
 	/* HDMI core must be enabled. */
 	if (!(HD_READ(VC4_HD_M_CTL) & VC4_HD_M_ENABLE)) {
 		HD_WRITE(VC4_HD_M_CTL, VC4_HD_M_SW_RST);
@@ -1357,9 +1354,12 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 			    void *data)
 {
-	struct drm_device *drm = dev_get_drvdata(master);
-	struct vc4_dev *vc4 = drm->dev_private;
-	struct vc4_hdmi *vc4_hdmi = vc4->hdmi;
+	/*
+	 * snd_soc_register_card will set the device drvdata pointer
+	 * to the card being registered.
+	 */
+	struct snd_soc_card *card = dev_get_drvdata(dev);
+	struct vc4_hdmi *vc4_hdmi = snd_soc_card_get_drvdata(card);
 
 	cec_unregister_adapter(vc4_hdmi->cec_adap);
 	vc4_hdmi_connector_destroy(&vc4_hdmi->connector.base);
@@ -1369,8 +1369,6 @@ static void vc4_hdmi_unbind(struct device *dev, struct device *master,
 	pm_runtime_disable(dev);
 
 	put_device(&vc4_hdmi->ddc->dev);
-
-	vc4->hdmi = NULL;
 }
 
 static const struct component_ops vc4_hdmi_ops = {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
