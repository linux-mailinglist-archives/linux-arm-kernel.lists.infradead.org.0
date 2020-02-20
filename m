Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B4F716660F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3brxEgNKnBbE/U/xs03XSwxnpskG6//EjiCsQWB7NMg=; b=TlSyXNkNHDUMjD
	I1lU7jkXFvwQOcMmTdNmtKJbY7MPZvDQD3mqvu7tmQEu8Fe1FRT3tYxa94/ttJzwM5l2NswA7NngA
	5NyXGj6sbr/92cw3nBAK3ZzaAks9tSkaX39CYj0EvzshV0vh6n//6Eda7vjNxNAxX20uHI0Iviz7r
	FDRr17kA/JmXuyX18TZPDhKT/ixq3Pe9qRGbY+ZMXAV79sESBSedTUlP+NRIlgJRaMdGTKd/PoYcr
	ICkxhU2z5pqJjWT9KNgEPV+F4IKkeDRINsXjOiyKvsvVeHpoQAeUDgcWgW/Qpy/jFxA1z4luAqPfe
	aVQr3bU4ZNo0SHqhEJmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qNK-0002t4-9B; Thu, 20 Feb 2020 18:16:38 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qMB-0001pk-0O
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:15:29 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 585E221E5B;
 Thu, 20 Feb 2020 13:15:26 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 13:15:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=EO4iHaNxeieQg
 LG+TqEp9sUs9WIn/s4CrJUTMJBjELo=; b=zrqAodOpNdj3RUp2IZomKJmh1InYg
 DMIunaYe5pwFkSN/OH4Ai+zPqSZz1CAr3ifV+fLVrw+0mz+nuYaEe9cMdKp9tyo0
 Yqxv0nUPkF3AdMZ0bFmMulwH+p0g/fr6KbTqSHnpU9m3v8d6yOurE4jXBkyT7ai+
 vgfcEI1FccxP0gqit2UGJWpuvZnpD/hdBaxNxicsqQ7fNT56PwHScjNL/EcsMpxP
 71prnuPNmeJMIN0oD5Ndj6y+PxnmXpowIWaWll52n8FKVA5AE5tGeIjwmZm+XXd2
 PEOXxHtsdyDhbVPlGTHB4QTvt2pfxJ8go7AxsbopTLh+PP7UCRHK6I32g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=EO4iHaNxeieQgLG+TqEp9sUs9WIn/s4CrJUTMJBjELo=; b=WgmsgJ/Z
 QiEtmM4Vhn7AFskFoNxWrwLynxpIGfDQuuU+eWufiFZyi8Kfj5cqYXmA887NYTwr
 a7Qrp2FuT6DAzhG0DMcQVv7+HRHu7i91eQ5tC6InJ4t+WSayfYCbu/Lov8llIu9T
 Qo/Qi0CJyo4OAyFgCfHf+aye/RAWAMOKa0wX2xQ16ptSeFgKFzoT/V7jp6DXWL3S
 mHB8AJeAx9DYuQY2EvvThNE00u6Cauv/WDp3wbWOdME6LdkJ6zArJHfQF2o2OhxA
 EGG+mubs5UWZBp8nMx16EFf65/UPyQJnmBvsJ3Tp4ZANt6C0H6ZX4CFwcOOR3USj
 MiXwjlSCj7PvVQ==
X-ME-Sender: <xms:vsxOXmD_DXlqg-MRJQ-TFjnTVARVW0sWdrzqvhrfeqDJadCwrD6BjQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgdduudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:vsxOXtQlS2l-d4RUiFJYpaAyTw5fLRQ2WwP5b8Lv9GgymxKNoeruHA>
 <xmx:vsxOXpJdjdhXq6XXMqODEBwTrehRQ-Wiky4s0_o3eY3Hekd1es2Vxw>
 <xmx:vsxOXtZdPuhj9cGfKZHaV0HtBZDNtYaguuXcLD01keRny_wZDGAHpQ>
 <xmx:vsxOXpYIOC4sgdyyG8UsVTT5drBHzNrjBvckfOMvapPA3Ilfz9oV3w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0BC893280060;
 Thu, 20 Feb 2020 13:15:25 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 4/4] drm/sun4i: mixer: Call of_dma_configure if there's an
 IOMMU
Date: Thu, 20 Feb 2020 19:15:16 +0100
Message-Id: <5ebdf117248c6189e7e4a2631a6681cf9909bd66.1582222496.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_101527_223012_FF831664 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The main DRM device is actually a virtual device so it doesn't have the
iommus property, which is instead on the DMA masters, in this case the
mixers.

Add a call to of_dma_configure with the mixers DT node but on the DRM
virtual device to configure it in the same way than the mixers.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 7c24f8f832a5..85b8930e334c 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -372,6 +372,19 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
 	mixer->engine.ops = &sun8i_engine_ops;
 	mixer->engine.node = dev->of_node;
 
+	if (of_find_property(dev->of_node, "iommus", NULL)) {
+		/*
+		 * This assume we have the same DMA constraints for
+		 * all our the mixers in our pipeline. This sounds
+		 * bad, but it has always been the case for us, and
+		 * DRM doesn't do per-device allocation either, so we
+		 * would need to fix DRM first...
+		 */
+		ret = of_dma_configure(drm->dev, dev->of_node, true);
+		if (ret)
+			return ret;
+	}
+
 	/*
 	 * While this function can fail, we shouldn't do anything
 	 * if this happens. Some early DE2 DT entries don't provide
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
