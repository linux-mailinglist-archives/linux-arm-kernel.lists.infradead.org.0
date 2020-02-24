Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBB7816A23C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:27:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=17p5EJ9VM/pSbB+qvLkg39PQEGShfNed4gxaM1On0jE=; b=JUn+/WTEvQB+4F
	r6kxhFWofa/vyG3zuM5wQyS6JxZnrTK0zIieDjlelmxegXd6yKaCRxY8RzXVMijyy3XRwHJbrB1Y8
	eVT2VgJ1UOzUumil6QPFWbq/yYOiEi/XjyRwPB7e6HcBYfyFmTtk3m6276D+4eRkLVWer+R2dyui/
	6jCrREqrirr1sPPeXMU4IpA+/B2wqzm542fOs2IMqmEfq1kST8wl7D3ZzscjyQNDhLZ1Ky9b8L+Cg
	NotX0csitDi/iquLQg8XIGDUnkYhHR117dIjoruVKKjHZGBtDXtuYGJcFw5qifBYtO4kA3fNb4nkM
	KB5vGuivduymgW/lBPyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6A0r-0002lV-IB; Mon, 24 Feb 2020 09:26:53 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69ku-0003b8-Fr; Mon, 24 Feb 2020 09:10:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 1A25D64F;
 Mon, 24 Feb 2020 04:10:22 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=6JOaOIBdtoUeg
 Tom2QhdvjNsliMPVjzGF5uofD2u6GM=; b=Qwp3WREauSmn3syjd2bLg6Kp0KLJl
 1S8qZDMGmTJrRCy6UKsxLGDY8s1iGZ1II+dE28sJG+BqbDxWLoimibqBh19FatYv
 8l9OxZFlIFdVYFwP5l+3fSZJa9R2MuQ/3sQKWpFJD5/1zEPD+ELuORvLli/9DpOv
 1TAd97CJ/q8jy1vg29suZFskvGUe0vGAMGuebYuWL1rCRa979x8XHyRkhvxXHGoS
 HvCO4uu28rbIWhyj0vRXWOgikuhgfxddBTsw0u9vWJmTuetgDM92AOlRSrKIU06K
 UDOtTCFWtiXO11wyOHVEf3hVC6+fBg2Cj0QJjYw8p/Pqcxu4XCpceW7Bw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=6JOaOIBdtoUegTom2QhdvjNsliMPVjzGF5uofD2u6GM=; b=F6a6wT3i
 hdeG4O8c+tU2PiY9n7KTlspa1912oveMwFLIsgAJ2l+yZK3gyWOru0pP6A/IJq9o
 FVWzyJ1e7xv4vlnRltEJmlLg2x85QhW8cE+iBQMM+tJTzRIZXHBp1kZC3lcl3QXV
 lhWe9ybOlOrYHuKCW+AQIZHs+U606AVgI3e1dMhKXv1tC7bGWBCelXv+S5/JxmTJ
 jD3kH9nmpwfeoxyoQgoOLasxKHGzeOP6DTFEC7X9mx9d4RJ9Cdp3SxRCi0RT7Qq2
 Rtb02moXEZTmsCnMea5dSFr+1vj5GnTswO6oS8J53wL8esTK1cLBeQV8/Dyibqp8
 7px6LaAXTyQUKw==
X-ME-Sender: <xms:_ZJTXrKjEB-nE1m6jQlJ-6BCSlMuCpxA5Gp4UIiULrEeMITj56R60Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:_ZJTXsXT70TtNnpj0hr-flM9M67K2OuZDhBIbCQDoYd6dMMoZ8YGPQ>
 <xmx:_ZJTXsR2_3Z6leGn1EOMplEoVAMoATFZRvcbedjBEq4pcO3i-mwaRQ>
 <xmx:_ZJTXkBHZV5TSp59Bi02XsX2Al9gt4FZn-L98mSGcOLNliWvqLRLog>
 <xmx:_ZJTXr5OG8n2hjJZVcclbrQeQ-FMsbb77orqb-2XI5WdETINDgjMzmOfJjI>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 55D16328005D;
 Mon, 24 Feb 2020 04:10:21 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 64/89] drm/vc4: hdmi: Remove DDC argument to connector_init
Date: Mon, 24 Feb 2020 10:07:06 +0100
Message-Id: <dcd899740da0e221ae9bcfe8906e7de3a68922ad.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011024_752002_9A9DC62B 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
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

Now that we are passing the vc4_hdmi structure to the connector init
function, we can simply use the pointer in that structure instead of
having the pointer as an argument.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 5db003bb3cf5..4964ec6f5608 100644
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
@@ -1317,7 +1316,7 @@ static int vc4_hdmi_bind(struct device *dev, struct device *master, void *data)
 			 DRM_MODE_ENCODER_TMDS, NULL);
 	drm_encoder_helper_add(encoder, &vc4_hdmi_encoder_helper_funcs);
 
-	ret = vc4_hdmi_connector_init(drm, vc4_hdmi, vc4_hdmi->ddc);
+	ret = vc4_hdmi_connector_init(drm, vc4_hdmi);
 	if (ret)
 		goto err_destroy_encoder;
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
