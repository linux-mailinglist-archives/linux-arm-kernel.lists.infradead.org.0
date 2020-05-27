Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E28D1E49F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rsds97CMGBFt9pcWbPBBcT0UNYa+9grz1cFXaAKmgJE=; b=ZiTYO52vuEDCGQ
	gRji3tBT2JZuija55PsMaA/BzHdyGAfUBNcxHImWTFoGNow3b4+fRC61wn4X9TiW4YnikAMQFV5ys
	GWJaKjjTGnXrFtIisHQbKtNFtRKEM6xiECegKrELvwZqdvjbID07cwpZ9jufR/1WyyvT5cdyILDlL
	48RYehfXY9lBx6Jss4usgI7dpzURvbx34s04KSR3Ok8AEybauFyT+GsqdCz0KjuXMUQJn4S2MFiJ3
	PabvaISPDAAExYEMjqCwujUkyrhCZ8pdClQ9rLVJP3J9aXyLwMy1rPcEJ5bihe3mshAUpgi0N92iG
	ahueDD+TQUJFG7lv8Rsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdysU-0001ij-BV; Wed, 27 May 2020 16:26:02 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyKk-0001FJ-Jy; Wed, 27 May 2020 15:51:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C8B955820EF;
 Wed, 27 May 2020 11:51:09 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=a92ye8CT9BQpX
 TwkDsbitHAvM3sVybGIU67y/bytg0o=; b=vsMIPqHk8gloYkblOEfj+UnqSGxxq
 Ff80+kMhIYAvc61uQmJNFeBLXufQG2ue4blxFdLxHUD1suEJ4EvBzf2r/LTBG0CK
 ll0ifLvzGWyMD8nONyzlWJ3pM/NTWhNCK8m0TQLzjx/1Xgz0u8aa+M6hbk4/PI4Z
 9M/1dkRV1LIjw/WcyUPRniR+kNpNE0eL2lhhrWc2e813yiuKWivhUYX8Q5yuOcT2
 cCKzx+1TD3YHCDH3D7XaE1zWmOK4Bv3Sfd4TX1WsBKDqHeenVSgxNQYux0qYz+P5
 cGtbMfBva1BFCAa9vkc9xwcGBzyePZZY+cZtxVu5zv1QLpeWwxHwT1EYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=a92ye8CT9BQpXTwkDsbitHAvM3sVybGIU67y/bytg0o=; b=IOrnHTla
 15u5ko3UssWvooDHsgQaeyiZWX43NnMuekfDQLvMQBxEMFKyKsl7hQqofpywWZCL
 q0u//CElssDKJxrL2FV04Db5YQmqQiIuSGU/0R1mkCpvEWbmtG4FbLs52tw1xNmK
 +86w7E4FEGV3pdPKEtLoAX9hqy+mutJCEgoox03sYSE9RqBEyY1JqWka2+3+lnOR
 U5H4DaEZbM5qtdLLicQcII8yzmHzMUpB3HiBGFdtyyZyQBMEzI+OSiBJP++W4k1F
 71juG1WNtuSiDKFwOEhzGwxarQ9/Uf/SWK7JwEF79iPD48PrphhkXETYgUmlBqcw
 JcoZxul4G0FSiw==
X-ME-Sender: <xms:bYzOXp6U7KwkBA-5l9WQMCjxEO2Ix0A59_K0eHxD1G8K9h7OyxtcFQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgephedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:bYzOXm5X33sz3FJN81X6yS538TmuNzGeThOfO8HxAh9nJzaqz_PCvg>
 <xmx:bYzOXgdmbVvgCnPYVk3VMPHLiDsM3Yye7usDENC53jBJdqwLbD-SKA>
 <xmx:bYzOXiInlpwFXRusx37lCnvSXv13zLQQOkKYZTk4e8pi6laKb01LUw>
 <xmx:bYzOXiqZpQLS7ZQpFkVCVeJXaBGWL-Zl_o1c6DRcciJAJ2Di7XMAAg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6CE51306218B;
 Wed, 27 May 2020 11:51:09 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 071/105] drm/vc4: hdmi: Remove DDC argument to
 connector_init
Date: Wed, 27 May 2020 17:48:41 +0200
Message-Id: <2d84b0d8b6cac6207d4e75c6341d127499001670.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085111_040098_D99BA5B1 
X-CRM114-Status: UNSURE (   9.37  )
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

Now that we are passing the vc4_hdmi structure to the connector init
function, we can simply use the pointer in that structure instead of
having the pointer as an argument.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index c1cb8790b552..a2f848632e8d 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -192,8 +192,7 @@ static const struct drm_connector_helper_funcs vc4_hdmi_connector_helper_funcs =
 };
 
 static int vc4_hdmi_connector_init(struct drm_device *dev,
-				   struct vc4_hdmi *vc4_hdmi,
-				   struct i2c_adapter *ddc)
+				   struct vc4_hdmi *vc4_hdmi)
 {
 	struct vc4_hdmi_connector *hdmi_connector = &vc4_hdmi->connector;
 	struct drm_connector *connector = &hdmi_connector->base;
@@ -205,7 +204,7 @@ static int vc4_hdmi_connector_init(struct drm_device *dev,
 	drm_connector_init_with_ddc(dev, connector,
 				    &vc4_hdmi_connector_funcs,
 				    DRM_MODE_CONNECTOR_HDMIA,
-				    ddc);
+				    vc4_hdmi->ddc);
 	drm_connector_helper_add(connector, &vc4_hdmi_connector_helper_funcs);
 
 	/* Create and attach TV margin props to this connector. */
@@ -1320,7 +1319,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 	drm_simple_encoder_init(drm, encoder, DRM_MODE_ENCODER_TMDS);
 	drm_encoder_helper_add(encoder, &vc4_hdmi_encoder_helper_funcs);
 
-	ret = vc4_hdmi_connector_init(drm, hdmi, hdmi->ddc);
+	ret = vc4_hdmi_connector_init(drm, hdmi);
 	if (ret)
 		goto err_destroy_encoder;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
