Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B2C1E4A3A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DJHNvmPHlAdw0NiJ6Db8hYZhHV8x7zcLTMHXuuLU1so=; b=l+v/jAKLRdNTVr
	y3jgqWafvt/kpN8QmXEVrkq7k5td8vohUdiuO4z5GwwWtVYncOYh4HB/mFSZbVO9uQFnLSrrZ4+rg
	DUJHT93vCzkANrq81Wp2/OCv2Fu8qLplblukVegMz2MgqeKeDKR/Oc9e0Nw1FyDy0k42YPMyZ0Sbq
	+ooOawXtFzyeKZkSjXL1HCGwI/Nf/ONxYY+OeHS4Fhg7s4hZZNEqPUdJPx/Xz8fx3sqz1fpBKfxxR
	TpwGP0K2K/5ScacF/fQFJJSb7fH2UUM4ViZ2Nj9JGSG182fo/cz8X/Qptfe+fcGGwSW2x69VnE9av
	vqvtl6oQk/mEGWNIUyLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyyD-0000TH-2v; Wed, 27 May 2020 16:31:57 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLH-0001o3-0a; Wed, 27 May 2020 15:51:46 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3AECF582101;
 Wed, 27 May 2020 11:51:42 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:51:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Z5JNWa+khkkPT
 A5Ia7+v7mohqb/B090X4sPaakkB4jc=; b=qqWPMuAyTDdQfrfyYk1Ym0j/4p/Uv
 91o0yqsQMtl8AkIEiKrHrVTkhasZKcy+KhJqAqbSpDNchz3vkrDsRHM6L7ekh0T9
 +SMIniMCmTU+dVLVAX5btS4ko0f5JMTfs+qBXBnNX8PuWwY5hBiwaMa+r9goHnBs
 bOiafp2wfsZ96I8xPBcpJik/tjWnJ+xwkwn7iCHxxc21sTfqBJzSVbjtDge8bwhk
 1pVLrOVKQXLQ9fAdMJMp7m/e5id2UbxiYYfGI2Bfa4/RwJwCMsnZKuBJNyeYTPUw
 RruV6TmpTyOiVO/OveI/6hrjnX3UCZfgQ7E2bDWIrJ+Gjs/7TvrCXsDeQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Z5JNWa+khkkPTA5Ia7+v7mohqb/B090X4sPaakkB4jc=; b=XlOWjSI/
 MV7i8bVZ8sMTprDuGNG8P4oDOJcKQ1O5LTBsKakTaVOL9Xy/UFcK+wqp2U55IIm6
 QjRJaWG0Ir8Y0xs29qyetxXo4qnrFsVn2lIhvizSThMc6gosRLO0XFqs4eAoH17/
 GXAnZ4u6e+Mxuv1C1NNoGKqwuZrH7p4jQf+FcoY+SXOmMkRecU+r38B37yHBpxDj
 JEFI9ur2NM+IsV+QDyRYDdS+S5T/t+gpVpyiIL9B2Jln8gjhb85gOSAyXYgr5KbM
 EwagJYi6Gg4c58Vo62XiU90TVk/eQNsjQ/cHRjWLg2jqdk1kQX/Lrr71Um76XKBr
 ZMg3PkjpJCTYOA==
X-ME-Sender: <xms:jozOXhDCp8m8hrjw9gGeTQxw__G6CM8fqjTp330kwSWpF6cWTbM-0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieejne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:jozOXvgcfqNDOY-hpin0hmQyB9PB7vquHF3dhNZGbbma4IQn30X5gA>
 <xmx:jozOXsl9uabmycJPIgdmCCrTRrNbekUoWBIMpNv8t8R08RC77io3-A>
 <xmx:jozOXryQLCye_aseRfXUS7KNs0ur5LpvzCHy7B50hkHipqxMcUgGTg>
 <xmx:jozOXjTVCJKduXePkdEL_RnQIdYY9Y7ocAk7dVOW4SP3jvne49xagg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C90743280068;
 Wed, 27 May 2020 11:51:41 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 092/105] drm/vc4: hdmi: Use clk_set_min_rate instead
Date: Wed, 27 May 2020 17:49:02 +0200
Message-Id: <c946ab1946901d2d9426ce24733ff1f190f6096b.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085143_225109_487D0D8E 
X-CRM114-Status: GOOD (  10.81  )
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

The HSM clock needs to be running at 101% the pixel clock of the HDMI
controller, however it's shared between the two HDMI controllers, which
means that if the resolutions are different between the two HDMI
controllers, and the lowest resolution is on the second (in enable order)
controller, the first HDMI controller will end up with a smaller than
expected clock rate.

Since we don't really need an exact frequency there, we can simply change
the minimum rate we expect instead.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index eda48f58dc01..c069bf8e6d7c 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -462,7 +462,7 @@ static void vc4_hdmi_encoder_enable(struct drm_encoder *encoder)
 	 * pixel clock, but HSM ends up being the limiting factor.
 	 */
 	hsm_rate = max_t(unsigned long, 120000000, (pixel_rate / 100) * 101);
-	ret = clk_set_rate(vc4_hdmi->hsm_clock, hsm_rate);
+	ret = clk_set_min_rate(vc4_hdmi->hsm_clock, hsm_rate);
 	if (ret) {
 		DRM_ERROR("Failed to set HSM clock rate: %d\n", ret);
 		return;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
