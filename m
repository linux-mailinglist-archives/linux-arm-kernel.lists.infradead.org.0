Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 402BF1B7ABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:54:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PuE0I/WiriL14bcdm4GntbbrJdh1RS++4ea0VZlvGi0=; b=FfcjehL7AznYzo
	F69PYzN7iyhCUVUhy4Q53GqdVzjh2cgfKZZtdYmOzKTg6X8aQ2ZTJxno1Tui3Mj6jVUyBx6AP3lCV
	6xcTUaE0LJNlndCcu2YShUKvtt98g8ETHpVNwCTE3Rtl6xuHic4so7BOhRbw0npg4ONlSxTtSoITO
	MQ9t0Us+Vh5e3UN446wgnwZF1BldpwOfncQNOEbxIBYRyeDYOkYw6TmhT44Q/K9gNchy35mCWeCUX
	IJhGz7gZ/natLygDY2lyCdBW36gus86zblabWpxrIEynEZj2uEnXp5HLVqPrroCfYHtOoxQAlBv7Z
	J7KslTtpwFGkYE2jNfPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0f9-00061G-9o; Fri, 24 Apr 2020 15:54:47 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NL-00088K-1i; Fri, 24 Apr 2020 15:36:24 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id A53A91450;
 Fri, 24 Apr 2020 11:36:21 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=fse909+Uy/SxW
 fg4vh9c6yKXmMtSynUFNN2rQ9mVfiM=; b=hYg3l6fdlAFrgZSWEPIjkWIcnwxha
 Qag9Q+JwYNlM7yuaeHtnZkjWUgobDiHdDkUEDifCesulStvhzgToa2V7xDR8Enhu
 eHpW4umfiDGwfsnkpa8A/T43CgzS1Uya7KSPlFMp9YuradUY8FZOF4rCpCLQ0ag2
 4DiCCkJf2/UwbQzlRt8DstlVP6bA6OIIsp68or4K7o8Ypqdi1/2H7NXgkV8RVt+/
 M/MAMmNMUHydEjCRIN69GOYp9KEFcQjINNfMZlyJxgv+fRXCzvIDAMC6lR2DdcGX
 orm/YIaunefNoCJfaaki7WCouxZ5SdfK7emE6Y5hjSDvPKn6GbfAkCieQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=fse909+Uy/SxWfg4vh9c6yKXmMtSynUFNN2rQ9mVfiM=; b=3dbYHeoB
 vE8Rep/MlLNAwsRAjDoVCQieqM6vDGvn0dJIRRkSY7IW6x91Rc3yHESjkQ3uf0MU
 AhbkIQHLzRgaAN2PG8Pum9HPxPw6JW7xMszdecVOyFVdFwhpXprNL4D9hxYZXXkE
 c4NIyLJxZPE475AN5A88ceWCpOgYOsUE7+0CWdS3hyuACrr9lo0qXUU4B//iUva4
 u1OjoU/5lTblc5BbTsJD3+GR6oAXknFvNRiNGseQS3bJGaf3VgIN7B0gty1KF8Ek
 8BuYAaFOwOE1u3rWoNxhBnmVkx2EnnP1PrmAcBrneL06xYcsPRoPpFPYrBZsjm51
 q2eIoyTEaH+0iQ==
X-ME-Sender: <xms:dQejXrnq73nQPyNZoLBmnICCDNsSUX8uT1GXm1tU89F3kW7TJcYjDg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeefgeenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:dQejXsMdFZ8tNIdtV4geE6mfEWw6_JKnV6e1eN0VLLmpciUQsqM7WA>
 <xmx:dQejXtrSYBNBw1oYoxWmXk3MjnxdC7DMKm-Kz3RdXlR24lq0VlxAqg>
 <xmx:dQejXnQlbEycIu-6U53_z58JBTO6WH2cy4j4qFK9_0WS0ics_iTiaA>
 <xmx:dQejXgydEpi0GVzKuAAWdKn2qwzECNW4rKUG7luDWnkkQ1RXIzBYGdrCWZk>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DC519328006A;
 Fri, 24 Apr 2020 11:36:20 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 42/91] drm/vc4: plane: Create more planes
Date: Fri, 24 Apr 2020 17:34:23 +0200
Message-Id: <3f6e92b101bee5fc8609c41440d9fc81f69a6704.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083623_138820_D9BD6F97 
X-CRM114-Status: UNSURE (   8.53  )
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

Let's now create more planes that can be affected to all the CRTCs.

vc4 has 3 CRTCs, 1 primary and 1 cursor each, and was having 24 (8
planes per CRTC) overlays.

However, vc5 has 5 CRTCs, so keeping the same logic would put us at 50
planes which is well above the 32 planes limit imposed by DRM.

Using 16 seems like a good tradeoff between staying under 32 and yet
providing enough planes.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_plane.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_plane.c b/drivers/gpu/drm/vc4/vc4_plane.c
index 5335123ae2a0..c190ccc42c51 100644
--- a/drivers/gpu/drm/vc4/vc4_plane.c
+++ b/drivers/gpu/drm/vc4/vc4_plane.c
@@ -1387,7 +1387,7 @@ int vc4_plane_create_additional_planes(struct drm_device *drm)
 	 * modest number of planes to expose, that should hopefully
 	 * still cover any sane usecase.
 	 */
-	for (i = 0; i < 8; i++) {
+	for (i = 0; i < 16; i++) {
 		struct drm_plane *plane =
 			vc4_plane_init(drm, DRM_PLANE_TYPE_OVERLAY);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
