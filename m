Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1901815D753
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VCHvjliIkxg07vVvqyUgfqn03DhUf1Lm907nNaSAUtg=; b=GDY6MzKUPNyjjz
	DN6cn/q8y/W9IQ9VuCQ/dOpHyM2bkOcsTBROOUo9Pxn/O/0qmKTtlIyBWk9SrIOy0qtJA6zx9m8Rv
	LiZM0m6ObPbrNqYnTWVMeGtAsyhQjOBrOp9J+v94nMBr9TJViDBZI/fNK+UCEW6sK6YyCaKYYpx1q
	PEGbQpxEy0Y89pHqFQyB5Neiw2l/XqpBKPmZWOtHsyQGpc7NAVSGPHhHLVqVmKcb/++0WSEsa0qLu
	Fg7MEOD7JKM0VhU/K319Q0zrffI7/BOw5RxnD4rIMNQhtmw8iq8i8w1tcncpcRCO9BXHWCYao+GB2
	NR/qBvoW2Q5TMkhCiI6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a1S-0002f9-Q8; Fri, 14 Feb 2020 12:24:42 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a1L-0002eG-Bn
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:24:36 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D0FE03AF4;
 Fri, 14 Feb 2020 07:24:31 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:24:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=2f3VFRjW3B+zONorxo3OTyEyy8
 z5poB18m7XL4T/tlo=; b=ht49Dt1YpFBVR6qEV2lxiV0ZvCn9WXy/XSB8C8v3fj
 kizud/Z8YazI0LislRtAooDuAFtWqfMn3H5bQXX3bOsar0HU9QtKHV1OMT6kehMd
 zohdoS7aoBv9Pbto230VOwh6pXVnW/5wKnD2wX5S9+y5PvdJwRHgiE6oITiBR/TE
 vBtunnRT/VIegClqgGZ6BhfpMXcOUrlLJ64stOMcbBVi0EFoOo1njeAsppHWcnqi
 hBMWItowQPNvNtyLip0w8/ZTV695vthkeKZ3uiChDns/yn8KN58BgyRsWSguGYia
 1mfLYVYf20WD+j9mwr4ky37YVay09s+UN5YX391l8H8g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2f3VFRjW3B+zONorx
 o3OTyEyy8z5poB18m7XL4T/tlo=; b=slO2uGFs4EkJN83M7x4pGERBGwNqyEh+1
 hXlAl8ZidI1J7pJ9ADDMySyfsWF2gTDxvXyFslTgoZCCGPcgrXG6foU6y9E3cGJW
 ZVjID9oIttD3FWgdoopxk8y4VSy63jKGCevrFiKvcJ0q6maM9xWvCD8oG6NwW9jj
 T7VOBfCq4hJhGiCV1FEN9HPLihIi9VnaVaVxk/qG9kDzdONCaOvH6SdLxwCWqs4q
 xYUlBc1PwIpsPFaSFvuGoYJ7U1OJN/D4hy5vT6MdtKSvjCH2YNcJLPezahPb7eY7
 DMqaRMv7ObsHsFGoLTsnQEWULJ6A9HTEEHLnDs3WEsaQN3YuSaemQ==
X-ME-Sender: <xms:fZFGXgNYKVkylRZpKb5k6Y9PPhxkoo43yJOAQM4IJ8lNyf7SiPOAYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepofgrgihimhgvucft
 ihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrdekle
 drieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:fZFGXl4wnGzixgpbuwFprXm49iPzt5bjM5iFa3k3cTs3G_nx6ux6BQ>
 <xmx:fZFGXjV_R-Crz4VvDURlqG-OSApRvbsyj91j9KR6WgTyXv0248iVPg>
 <xmx:fZFGXsM3elag3TffXXGnSkZ1MbVzHukdPq2jivJLhmd6-4D3dAAjvQ>
 <xmx:f5FGXkLQNIDHojlcgi4bI8K3by7TVKbddCulJhR0ORtoNV6BteBWSQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E495A3280062;
 Fri, 14 Feb 2020 07:24:28 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH] drm/sun4i: tcon: Support LVDS on the A33
Date: Fri, 14 Feb 2020 13:24:27 +0100
Message-Id: <20200214122427.108675-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_042435_542904_0643FF13 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, Sam Ravnborg <sam@ravnborg.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Maxime Ripard <maxime@cerno.tech>, Thierry Reding <thierry.reding@gmail.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A33 TCON supports LVDS, so we can toggle the support switch.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index fdf143042f83..14026b4fa7c7 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -1475,6 +1475,7 @@ static const struct sun4i_tcon_quirks sun8i_a33_quirks = {
 	.has_channel_0		= true,
 	.has_lvds_alt		= true,
 	.dclk_min_div		= 1,
+	.supports_lvds		= true,
 };
 
 static const struct sun4i_tcon_quirks sun8i_a83t_lcd_quirks = {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
