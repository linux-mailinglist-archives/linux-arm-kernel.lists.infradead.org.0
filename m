Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 693391C52AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:11:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PQrXBWRSbSxNT+TmKftFi8QrZaPtfOOv6u8A/Jdzis0=; b=V09DKzpWuP/LQu
	pwPneAzm+kYS4R3rL1oa2kliB+4umIAzc41Qp7GW3ghpPZspKVFSvpEXjAUjIo0S4LD8XJ1NmTCIf
	yitJXZnVtfKYTwm+n0ArQtt48w4fYi2Vaxa52Xmg9STO8uM2/zhVSkB6bs7tXwvobbJcPxGIzdmTu
	+N59p5O/hhhvhSXtkDthigTNcvocfV0lIwSCkDLrNlKCAqkF13dr8CGMsHEqMSCaeAgg93wN01i5Z
	d0eD3JaRbWL27tNmWVqQqSdoI+Djndh/seegZc+UTUMqxawBoLXqIMN0zVVDr8xwtod/kf7pvmrYj
	i0UipllB3yVsOrzcHsSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuXW-0006AR-Uj; Tue, 05 May 2020 10:11:02 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuWJ-0002oX-2P
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:09:48 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 6802F5C00FB;
 Tue,  5 May 2020 06:09:46 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Tue, 05 May 2020 06:09:46 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=ZkRxrxZSNGuow
 kN4P769eI5gSRZrMFISAKsJx9k9slQ=; b=nA5ILPf0AQg6dLXKDa1ck8Gb+YYRF
 T5c58/RVJ2DznRfZo4/RkbPy7k5x75tRx8xr2hkxLVat18hth9KHZm7J0DlAqV3a
 /kczUXEeySSfcTIwrz8CV/vxlFGEb/iNivsJrclQ2hw89JKo71U3N3NgXbx5gEIP
 z8eEBUR+wehlk33HCb7seB6Do5XmFVcXCwpYXCssd8d/e81MoQclMQU/O29t5UwT
 Z8rokeSnhBhsbde/cAQ83UqEtq45JqxVNE54JJx3H5IXGJohOZmZfs4vk4CX2xPq
 9HUnmNrabYFPzNkaf6657PkcjC9nGsJ6X4hDpVEsIn7diHUehmq1itjNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=ZkRxrxZSNGuowkN4P769eI5gSRZrMFISAKsJx9k9slQ=; b=cO3vRcMa
 s3L8Bjhyk8eMNasE8zQcsyHrjeP2ZTbE2o3wo5k9HpkH4q2KDxWq2dcx4ylACzJP
 4UNtoedlFhCCdpCndNu/VOmr+6FkxUmXDtM0bFnTiMAYgepk5cnNdLduhURNF11P
 YAxEtLvg0IoTVQPNIbLjXuENdQNh5CvkzLP3WvvcudUDkdb/Y5s/hjenP2q6xrqV
 7EVfn+fzRQRBETYI2mmqhLWxCywhlVzcwBtUJlmx6OMgS31gVUgsB5jb6e969Upn
 glBnfDVJJ6k+UICOqVP7lOu8w8zpqB87mhN92CHvsQjZ5mx7KPtvDPkOVK21KP1I
 Qui73hm68dmXlQ==
X-ME-Sender: <xms:ajuxXvaG3u16RtYgSZVj7EYmoy4QSwxdJklqz1Nsk0PJxz4LL9RnRA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeigddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeefnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:ajuxXnusJuVCfT5YMomHO2hFabtOZf5u27yomLpVstiz8pfcaipwcw>
 <xmx:ajuxXp9bo0VzCtr4r3ByUnHKhrkNA67ehvGV2GAWgoKMAoi4Y5BnGQ>
 <xmx:ajuxXvU7ggdsEYp9GKR_mDEDOTITE5QsqilG5ZoFFC_RI94htSd6oA>
 <xmx:ajuxXvcDgSdce_cjKghqPHHNfpTt1vdtkOJPUEPeFTyAnLe7ZC1ElA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 060DC3065FD6;
 Tue,  5 May 2020 06:09:45 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 5/5] drm/sun4i: mixer: Call of_dma_configure if there's an
 IOMMU
Date: Tue,  5 May 2020 12:09:34 +0200
Message-Id: <842e925855d32dc394ebe358b2678474eddd3f33.1588673353.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030947_283940_0617B8B2 
X-CRM114-Status: GOOD (  13.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index 4a64f7ae437a..19b3b4184704 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -452,6 +452,19 @@ static int sun8i_mixer_bind(struct device *dev, struct device *master,
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
