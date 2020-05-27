Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B6311E4952
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:07:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pDUnDDl+w/yDZPefa7OPgD+/RbmiBvRYoNC/+9dhXhc=; b=Rlnmtf4XROuprE
	sHu/WhbNT7bRvH89bCe9puC+sgI+FA1EV/cuuxJ1XLZ2MN1EBn2JCNCz2mmC2Kl7WNORfi4KLx+fD
	OednIXynnumBQj9CLJcwOASU7Vixhz2BAozZQ40WVqW6+J+dd/Cskwa85HXFGXk+89PAiSPRb3KXD
	hhlYEjneOKuoyY6Je+07ggbIiLifhfA/dEmH1kVKu2uZkCxFG75V8UDgB12Y3mG0DUewjFxItSkjP
	poMZhL94OFta6OgnWOfGgjMiaxIIm+PbTnV/1Lbi8zHuQ4h7Nl9cUkm5Ysg1IBWkPjCPu+xw7Y0jv
	BEUB2Qayqv6CNtflw8YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyan-00035K-Ij; Wed, 27 May 2020 16:07:45 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyJW-0006Lw-70; Wed, 27 May 2020 15:49:56 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id D27CF582020;
 Wed, 27 May 2020 11:49:52 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:49:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=sxWZl5KKn2VhR
 9WppS1aPoxRwWoqEP4r1tn8UEwXsu8=; b=xsDbRjAH4E8roBw+4bsE65xtP78Gk
 gxvX/1ATphCEOz2X3cAXpUrh0Frt0VwBmmNH7+pZSP80dFy0Xga0ojqF/sntNXs2
 nwHEu3ZtBdYCI/3J9LBJzZykaXf0adbrCsNIN827CGJbbvZ1ll29qxZTG78fJyn9
 TRy7sJtKypJ1HB+PNQDPJcgt/lz72B6o2VjP9r5nEJbl1atHfexdMK96L83E6CaZ
 lq60zRfGijk+JCft7zu/9wPB3G1OLwuW/kGKbLcb1Gs7G45z9GyDqYHE5pkgehMO
 ffb4LPIJ/Mg3Rk3lAo3rl6BZveYXanWbBv7JL7fpfxY+sZqKbIn7t6qlQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=sxWZl5KKn2VhR9WppS1aPoxRwWoqEP4r1tn8UEwXsu8=; b=TWTyJiJU
 HzBu4z/dHtkpxzy2KHNaQqO4bh0bdUU7fCH7NihoTtWJnoUUMpZ2fcwueKMJn0in
 DE27PmsmYzwsA3zOIQpsawmmv5XyeRYz95imGm3BhBSvrVE7sIXhsTxFZ5na2qgh
 bEA1qr8mHoZI42oMxIPwE6T+z+Z4fNqcqHL7WnLTPR1phQvFbO9A3VVlEWHrTVmM
 1DbKWlsBtOHOwTAmZvwMRwO/NhU279H3p1NB2cHUDMSoM2Nx4EFz9SRhn8OjlXiN
 sPLHAh4xtnDY83EL49R3YuOpsGoKVdoEbWlOktnDUnuXbJ+ZwEQ21+FzmCRXku5J
 HECqWiHjLoUyEw==
X-ME-Sender: <xms:IIzOXrhgSCcmZRKQ1mlbmYZPWGqpXcU-3qgBk3qcHbIveyhNvoOV4w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepfeenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:IIzOXoCaTMIiZlYOcIDBoqPUI8DDw03GTCXBPHtmPT-8WOtC2uvgKQ>
 <xmx:IIzOXrEgzfLw7ay_9FFcsiheX0nDozCRVRV9eSvvoxtwQI_VY3hpvg>
 <xmx:IIzOXoRdxZIf46T451WQ0OyCtgUI310Uj7xcb-9pcn5wNirXqTIg8A>
 <xmx:IIzOXrzEEeMmWL4vrH2WcyqLleIrO-IcJa5TxAa8d2RmqbGaJW9yog>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 719AB3061CB6;
 Wed, 27 May 2020 11:49:52 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 023/105] drm/vc4: crtc: Switch to of_device_get_match_data
Date: Wed, 27 May 2020 17:47:53 +0200
Message-Id: <1ff06413a1350d28bc3e88b034ed7ad23834e5bd.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084954_428995_1593B064 
X-CRM114-Status: GOOD (  10.77  )
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

of_device_get_match_data allow to simplify a bit the retrieval of the data
associated to the pixelvalve compatible. Let's use it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 9fdb0ccc4a28..b668bb8d060c 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -1142,10 +1142,10 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 {
 	struct platform_device *pdev = to_platform_device(dev);
 	struct drm_device *drm = dev_get_drvdata(master);
+	const struct vc4_crtc_data *pv_data;
 	struct vc4_crtc *vc4_crtc;
 	struct drm_crtc *crtc;
 	struct drm_plane *primary_plane, *destroy_plane, *temp;
-	const struct of_device_id *match;
 	int ret, i;
 
 	vc4_crtc = devm_kzalloc(dev, sizeof(*vc4_crtc), GFP_KERNEL);
@@ -1153,10 +1153,10 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 		return -ENOMEM;
 	crtc = &vc4_crtc->base;
 
-	match = of_match_device(vc4_crtc_dt_match, dev);
-	if (!match)
+	pv_data = of_device_get_match_data(dev);
+	if (!pv_data)
 		return -ENODEV;
-	vc4_crtc->data = match->data;
+	vc4_crtc->data = pv_data;
 	vc4_crtc->pdev = pdev;
 
 	vc4_crtc->regs = vc4_ioremap_regs(pdev, 0);
@@ -1211,7 +1211,7 @@ static int vc4_crtc_bind(struct device *dev, struct device *master, void *data)
 
 	platform_set_drvdata(pdev, vc4_crtc);
 
-	vc4_debugfs_add_regset32(drm, vc4_crtc->data->debugfs_name,
+	vc4_debugfs_add_regset32(drm, pv_data->debugfs_name,
 				 &vc4_crtc->regset);
 
 	return 0;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
