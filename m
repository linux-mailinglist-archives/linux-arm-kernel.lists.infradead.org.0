Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDEAF1B7AE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G4aBC+zJqR5inct4PmaauY8eu1VyKR7LdJkm8bss5Zo=; b=pWpIE2jHAMdgSB
	zrX8UbXyT5b1vwpoh+PPn3GWxTKG3kFYarw7r1YP1WHTOpsZbnH2GuYvZIIM9ZVhzywdiMGMSvxip
	BMU7LGi4JGsW/Vo3emrmYWrHc1MLy2EXPwJuwrdvpb8s5cHxhH1uWjuPvcvGlwhHSslxBRf1ceGkN
	DTv3gl+wqNtBpK6HoRxWfL+5T50KefDEcH5SyWWtk7uedGRXwpzEBWCUHmlEI6gvbSAkuakQdNOWS
	WEVyGPS/IgxUKYf0RtA5sRXGWub7esxGBmeRDkonow/MSW+4oxuCRRk9ii364d9bfUXM2tqN6ICCH
	+bGtslCccFhTMzeHbXzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0iw-0003Ho-Jm; Fri, 24 Apr 2020 15:58:42 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Np-00007P-LH; Fri, 24 Apr 2020 15:36:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 42E5E1448;
 Fri, 24 Apr 2020 11:36:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=asGQCYI8B0Fsa
 QYIYT8hwgAfkciP2fjwzTYJ5GfBnVw=; b=Rb88M8Lotjs13+oJgdw6Gf1TSZowv
 uM6uk3W/4iipyAr7sMD3PFytraD+DTed7TVl8/aRyWcu2A8TK5vDYg5ChTHucAXZ
 Y4+IJFCGZs1fRto9x7tT2a1TDyFoQtvH2yE8W4tv2UqclZ6s1Jlh611f+aw6F0EI
 5FfZFM9RoGMK1LibgHkZQzLtk5Ip9HjylFOey2WVHyt8CfDWJY05tMBUwL0FYXMP
 FDfu0qqEqfnXXnppHyj+oe/KinDkSx/Uf52QzR7Lm8wz9xejroysdfQmc8QyR3al
 6tml6oQWIC/9/os4W4deRixLoT+9Sy0jkOmMCQwrUuLvoe+HJlG8+dMUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=asGQCYI8B0FsaQYIYT8hwgAfkciP2fjwzTYJ5GfBnVw=; b=s9YK70OA
 Ee4Ea7u9ogsu3p61VwJ6giiS0bDFrwtalthvZIAB6YPMVP/0ranNUpfpOCFJ1gzL
 KxcnhJ7RXrVXmg3BHAP1RVh7L3TVRJQJ2XpVgEkRy30560HcGrWTZP8AlwTTx5pn
 CD+mMcf4xrEuVBhahMQxbjyrJUbhzEU3hxxobDv/QmvCeNgLbW2OWFsaF6+CQ+8Y
 FWlfxlkzEh/MfvD/l/xWsU96yIeAB8uIzvdDVKSqBMK7HWhcm3Yj1ySSQgcZCJz0
 wldDqUqpkny08Frjdq9rJh9shDb9ATpDlDcM4U7SunZzS5Eghou0uuqm7nPolfJA
 1Q0IoHlM1byKxw==
X-ME-Sender: <xms:kwejXkk9ACMhBJdSygTfJKyYYLxRicR9uTNgV_IT6TZXh8Mnwakc8A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeehheenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:kwejXj8_MS5LxSauV8uoIBuBgGFJjckEjNWHWB-Il49xxRlt08gQgA>
 <xmx:kwejXqGcE2Hsj9VvtGTBpiY3gb1ftTbK8Ta1NSl_Oh5HKnVTVNQLGg>
 <xmx:kwejXnL2RKNC4kQOM1ruqCqYUMTosbrxVZad9skI7rqRPI-W6ddJCg>
 <xmx:kwejXuu7v93QKKY6U5sY-LK73q6LIE2mgeZHzZjZUp2w5LMvKvOo1GDZlGs>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 80D493280068;
 Fri, 24 Apr 2020 11:36:51 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 64/91] drm/vc4: hdmi: Remove DDC argument to connector_init
Date: Fri, 24 Apr 2020 17:34:45 +0200
Message-Id: <3c5197d086da18a2b0d637b6ab10f3a05e63fd52.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083653_741915_292C4082 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
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

Now that we are passing the vc4_hdmi structure to the connector init
function, we can simply use the pointer in that structure instead of
having the pointer as an argument.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index ba3b589af30d..32de99d48a2a 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -191,8 +191,7 @@ static const struct drm_connector_helper_funcs vc4_hdmi_connector_helper_funcs =
 };
 
 static int vc4_hdmi_connector_init(struct drm_device *dev,
-				   struct vc4_hdmi *vc4_hdmi,
-				   struct i2c_adapter *ddc)
+				   struct vc4_hdmi *vc4_hdmi)
 {
 	struct vc4_hdmi_connector *hdmi_connector = &vc4_hdmi->connector;
 	struct drm_connector *connector = &hdmi_connector->base;
@@ -204,7 +203,7 @@ static int vc4_hdmi_connector_init(struct drm_device *dev,
 	drm_connector_init_with_ddc(dev, connector,
 				    &vc4_hdmi_connector_funcs,
 				    DRM_MODE_CONNECTOR_HDMIA,
-				    ddc);
+				    vc4_hdmi->ddc);
 	drm_connector_helper_add(connector, &vc4_hdmi_connector_helper_funcs);
 
 	/* Create and attach TV margin props to this connector. */
@@ -1329,7 +1328,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 			 DRM_MODE_ENCODER_TMDS, NULL);
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
