Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0969E1D1717
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:08:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NJVnTFYfTdjcir3c7KLWset1MBBwvqcqIRYl3HBFo0s=; b=lFi+b/oauJvmlK
	8RwcP47xSyQzfrY/NRHuHoqi4e1LY3J9mAakrpQTXTa/vorwCnaTQwIpLNib0/5SYqdh1+3UPGYpd
	8ThKbgyXirvo8QJ5TzDEMKmcxg/TzczxwNIW3m2QCgI0CmNyPRfkvzRBkwwiUUghXqybgLqC7tKiP
	h3e+Nqvldk0bZzjLzHmta79UULeVzDUyrcitfWMvCqWjGttl+lyTdiHXb6d6+Ul1MN9ZXlQVHuliF
	txzRDoZU0jNQ/b1ViPXdGCk5ATvhypE4ymDC7KZ9/BPtdHFWTFYtmq2kgIhjc1j0jSeQyONqkAL5I
	4zzxGsEFiJaPmMrVXf4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs3i-0005Zs-4K; Wed, 13 May 2020 14:08:30 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs2t-00053U-RA
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:07:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 4570C5C01D4;
 Wed, 13 May 2020 10:07:39 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:07:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=M/uT2VAMvJxq+
 N8SIgjpFxvdiYGvkWfI32zs4UAQuM4=; b=TyN/Kass/M132biLl9vpinE7KZ58U
 vXLigWwELkOFihewym59vM5MWrjupzlbcsqdGnF6hjCg8fBepMdEUW26gKm95NXR
 4fWi5lFXqamZS7Iv/pSk96xbVWjuZELYsQ538vfyYgpTVQyxolKaeqy4DOmr6cPJ
 gdZrsZDVYcN1TUE2rIn+XPFWQeZFku2mKe9N02AtvRJnVIFzM11PRIp1xEILDQEa
 l5PeV7MWMqvn578w85jUJNJId8lIouv6zw+G+TG7dc+9omeYI8FWvJt3sLDsXrp0
 QaWlfC7N+K4mhsiT8W/d/LVslG1OiDxx9AvSRECyylds5Y7qbwL2HePxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=M/uT2VAMvJxq+N8SIgjpFxvdiYGvkWfI32zs4UAQuM4=; b=jbDoz/0+
 /19pRxYNOLGM4fX1jG/0X4Wrwr9rYziyAAZspwLC0bnFSwDhW1t6h+mYfIUMi9Jc
 JBanS5GLd82bs0fA3e7VqpxYyJt0+YljOAYQ8b7o3UF/FKP3/Nw0KH7rUTZVNsGr
 DCE7VOlOg+KSftsKFK3AdulwmPcwCcdu3xf1rmXGKx1ylNYJtVT+aSTp4n1+m+vw
 BpSQ/qVKEcjJqQE5VWUatrLi/QbEUwzg4hc6I4vWm0CuyTUaEe2bOlecgVMRk3Oq
 CYTEJRMtdawWchWDCsLS7Yj9Fds+C3hlYqPd+k6t13o8oYpbV21ckkXhEV3rRAbZ
 8wRjBn0UbC7I1w==
X-ME-Sender: <xms:K_-7XsD2tylqE5CUUVk_addz0TZKCChKmfpFrjzMVIJoSpKMUaiAgA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:K_-7Xuir-ku70jvSRLp4u9i6pyV9poZSinRdM8QtTFIK_ck4Wsy24g>
 <xmx:K_-7Xvn5bTHi9aaS78pZir_hT16msnDAE86uznBoSygIa84xJDLlWQ>
 <xmx:K_-7XiyR2H58xceS9ymBELIBbAar2sbB8I9d0S-s7M8G5BHoQvhbKw>
 <xmx:K_-7XgGMEIKJEr_H2128NPPU_lDebadA1WqOLCWCS1afVNzWstvfkQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id BA2FD306630A;
 Wed, 13 May 2020 10:07:38 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v4 5/5] drm/sun4i: mixer: Call of_dma_configure if there's an
 IOMMU
Date: Wed, 13 May 2020 16:07:24 +0200
Message-Id: <9a4daf438dd3f2fe07afb23688bfb793a0613d7d.1589378833.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070740_026385_E5969DE1 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 56cc037fd312..cc4fb916318f 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -363,6 +363,19 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
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
