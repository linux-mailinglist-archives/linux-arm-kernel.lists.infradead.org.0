Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E37821E4A38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=50HpKnb0top/ra0vFboE7TAAIw37Hxujspa8z6Bu/PQ=; b=Tfiqa5fYDNrWep
	d26FyBLADe2NLgEvJM5URip31Ho5OQPWRM5suxkN77T5XoHdiVpa48n95CWh+ObOay99rMF3E/aIX
	weopPbZVlwBJHS0WQa2JP20Iltnmnyzq/to2IWDimMd18v1bQqyrPxSAgB3nkcP9RZW4PNNgI8qaS
	/iauw6W+/Eu27gm65E2QyOwb3e1VfN6MEp9XEL2SKp3C0Ts2BLvdo85gmEDmBLOJlzJclj2X02s4M
	vJEPk5FzWbuvwbOBGWBm8Xx6sQzOECi/W609tPGXIsYgQRH6q86knO1t/Jm047aBzdpTbeXMiOs7H
	VEmjJdqNRoVHI7RtRAbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyxw-00009F-0j; Wed, 27 May 2020 16:31:40 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLI-0001pO-PU; Wed, 27 May 2020 15:51:49 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id DB6D1581518;
 Wed, 27 May 2020 11:51:43 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:43 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=IIw9eaxB3Tpgt
 3X5YVSg5tPQ4IfOI1UBHNLfesXywhY=; b=YeducADtmzS5QrXvADLOpISdwenaJ
 EoptJM+OmVmn7AVsICJ/0eic01yD66D+O/n2Ss4UTHXXTeMNawxkJ5zl5vIBWO5q
 N+CD+WqXSdmHJbKYsuJC9IcWXM+TuFUUGBvydyeaA1NY5fYPAxXDTLACvWdUOccg
 9mN/dNiTN69eNXxjkb/7N0Qo3ONv78PIl7Yj7GDRsjxy+qkbHepIye1dvpJLy36z
 +no6TylzGWoqlO1U2F668Sq7v0pQgZqp9tH8vteVyMRZXuSrvRHhGcS9GjgL0Bj6
 lUPtbVMunMY95EhNhw7M1+MMCt5o5ZtpU1pFLknIuYFrsWJxeVjVRM6mg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=IIw9eaxB3Tpgt3X5YVSg5tPQ4IfOI1UBHNLfesXywhY=; b=xrT8LMKp
 RYKDoiZNHP+/ZDYdRzzaRAK1ggID2FDrvpUdJKCic/FuAF76TurZO8hvnszLy1Uy
 AAc1VzWPAPmMmeOcRN9QY1Z9mKAqjSBMTkpnQrSqQit8EaLpp1NFXvykQppaNdBC
 Y0/iLsJdupTtQHTxR0z7aWNfGLvK9ga+cf3RQZ1/+nflqMeLqVeTN8bsCOWQs5Gg
 TBsN8MrySvOslkKKdOcMbZytUoEwAmoiG81G+fP8Lx7jpBYikgloKgGbBkvc9pPN
 jCOETse9Z+1c8jnY+AYhvRb80bXepQLI52crs2jOrPFusLivkmHqF4AIrV5vv/5e
 4mIBifuisryTpA==
X-ME-Sender: <xms:j4zOXgH5xrQf5RJuDrQyL2kQyk0_QIGfekdeNqCFuBftbcKAe2cvZw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepjedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:j4zOXpUHUW8dTd9TjWNO-KPjtAACAhStJlwiVDiNVb36Lao4sEEQMQ>
 <xmx:j4zOXqJwDF3S4m-HgwsRN1QNINmjbJ9Gp62VSvRUjDth_FXdd0kj2A>
 <xmx:j4zOXiHtuGHoQ86_kbdZRaZURBD_bm8fvCa2qE5oen1ixNyaavbqVA>
 <xmx:j4zOXhGhjyeKpbq9OwYIhCyIhtWWluElPv0Mm5hntTzCxRc-LlCYhg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 55FCF3062551;
 Wed, 27 May 2020 11:51:43 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 093/105] drm/vc4: hdmi: Use reg-names to retrieve the HDMI
 audio registers
Date: Wed, 27 May 2020 17:49:03 +0200
Message-Id: <e01d4d2216a382ca3842a936972b5cdb13d13066.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085144_972572_0009FCE7 
X-CRM114-Status: GOOD (  10.41  )
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

From: Dave Stevenson <dave.stevenson@raspberrypi.com>

The register range used for audio setup in the previous generations of
SoC were always the second range in the device tree. However, now that
the BCM2711 has way more register ranges, it makes sense to retrieve it
by names for it, while preserving the id-based lookup as a fallback.

Signed-off-by: Dave Stevenson <dave.stevenson@raspberrypi.com>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c |  9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index c069bf8e6d7c..ebe9dd25c65a 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -953,6 +953,7 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 	struct snd_soc_card *card = &vc4_hdmi->audio.card;
 	struct device *dev = &vc4_hdmi->pdev->dev;
 	const __be32 *addr;
+	int index;
 	int ret;
 
 	if (!of_find_property(dev->of_node, "dmas", NULL)) {
@@ -973,7 +974,13 @@ static int vc4_hdmi_audio_init(struct vc4_hdmi *vc4_hdmi)
 	 * for DMA transfers.
 	 * This VC/MMU should probably be exposed to avoid this kind of hacks.
 	 */
-	addr = of_get_address(dev->of_node, 1, NULL, NULL);
+	index = of_property_match_string(dev->of_node, "reg-names", "hd");
+	/* Before BCM2711, we don't have a named register range */
+	if (index < 0)
+		index = 1;
+
+	addr = of_get_address(dev->of_node, index, NULL, NULL);
+
 	vc4_hdmi->audio.dma_data.addr = be32_to_cpup(addr) + mai_data->offset;
 	vc4_hdmi->audio.dma_data.addr_width = DMA_SLAVE_BUSWIDTH_4_BYTES;
 	vc4_hdmi->audio.dma_data.maxburst = 2;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
