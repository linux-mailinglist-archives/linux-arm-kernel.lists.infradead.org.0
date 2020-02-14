Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7412115D775
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 13:33:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4NU3rr7nBGERSNX/Xmr2Eba3bsRph9UX0kQVluJ0V7E=; b=oAyie0/u1ZgKTp
	W853NWBQRR5hUjcz+qMTR/NPEmkOikRXoooVgRa7IX61Ofo5Y36Ju3mdZDFAKtmSGCoFxXuJHFmjX
	TZqsOFd/VibhXMhaFFN+uUJgVJ5gcdzHRQ2j+jr/t36FKoMb2rYdC9sWguTOyQMnzs2lJf6dDVwFB
	lQI2asbL8btoFRDAUbXEpdFTbAnnt/DP9wfaM4zhnuEgECCsB5ViAY9vzOXTYRRZHwIIXDouIMHyz
	Z+wSH19hW/j3cthWAlRvh+cb7YSH68/S6O2qSJsLHRONjFq3Ur7MNzYlf9KmF8G3s6uXcODbEnu66
	eoLMfYyP631B3N2SI21g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2a9V-0007IX-AY; Fri, 14 Feb 2020 12:33:01 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2a9N-0007Hl-5i
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 12:32:54 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4C38D6107;
 Fri, 14 Feb 2020 07:32:49 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Fri, 14 Feb 2020 07:32:49 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=a91FR2Cpmv6xb
 sO27omkaVt7g4YCf2kEALjXSevqod4=; b=CHTH14YKgU8rFPIzXMeR7b2/XBRgy
 5zGD8ifWWjOXfquUrz4uVcsbc9T2wbK5szF8R8QcWDsK4L62VeGpqcmkb6QlAMkU
 FF22u76R6E8sAjxCVVQdUdReAAL2lfZJKoRbeGFjeekeGBcbTid3bCEgUJn8DkUF
 KoRBneSUXQyzBOm1WcaiCgnLVmkKZ8TTl9IHHNcxvJxlHhFUfdN8RMktttFfArux
 GiOUtxT+EOOF7luGMe+N6M7NrUv9nOsWL3wYSRfAUrPS8aY5Zg0xR4NSPkCGlkqA
 DaXPeEt/u1KKpAnFN2N0Dc/DsZjDHc4VZvmun3E3kvADtPi8LhvbNxUsw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=a91FR2Cpmv6xbsO27omkaVt7g4YCf2kEALjXSevqod4=; b=2xxLZeRt
 zC1bobYhWc2taTidhWj0KaX6bdrH5wdNGYU7Kpt0r6w2QEC8DQJp5i+U7NaUd4d0
 JK8QHR7tpPTZbEv8n1nrBMf9uB9DCP9V1jIhhFGciQmfUrV3Vxkz9CUzP7lUGkKf
 a0kuHfoyEyem/wA6n+CoQLwynicwMcbviir04uPZ1GN9qfzzvv7ZD0t8Z/p0P9GN
 vKhzBoap/FdGCFPhURgzh7CrHKBxgnI58HPTgDIzvbBHsxaBL2yRS2Rc3/wwTBnV
 E6tmCC80hDwMtAFGV+yvjVaaV31+C274tfEXw1kHMqMllyIGjWtyE49eD76io9Vo
 kK6IkGTsGvCzqQ==
X-ME-Sender: <xms:cZNGXg5s4RRLWKYBiRztMi-5pTngh3RU97yu8mtidMDY8_V_V8zhkg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjedtgdegvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:cZNGXsXkN1-7Vqvrv2awEL6i_MmHSpjq_jxco7Ps84uifL0blvrgWQ>
 <xmx:cZNGXv6TGp-juVwIL_-vk6uX1mUzL89eruQyTsMkE31doh7n2Oyt4g>
 <xmx:cZNGXnXxt4WMz7bVWPdgUh-xuOncbfoBMMKaEcpDfwJYEl2vaJzd1A>
 <xmx:cZNGXiImITWdYMi9dGkLHzTn7LC8nKj2b4xhYCviE9ggbwqIhsgRaQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id E0DE5328005A;
 Fri, 14 Feb 2020 07:32:48 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 dri-devel@lists.freedesktop.org
Subject: [PATCH 2/2] drm/sun4i: tcon: Support LVDS dual-link
Date: Fri, 14 Feb 2020 13:32:44 +0100
Message-Id: <20200214123244.109300-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200214123244.109300-1-maxime@cerno.tech>
References: <20200214123244.109300-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_043253_354989_16CE1E42 
X-CRM114-Status: GOOD (  10.57  )
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
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some LVDS encoders in the Allwinner SoCs can output on a dual-link. Let's
add a DT property to toggle it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/sun4i/sun4i_tcon.c | 6 ++++++
 drivers/gpu/drm/sun4i/sun4i_tcon.h | 4 ++++
 2 files changed, 10 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.c b/drivers/gpu/drm/sun4i/sun4i_tcon.c
index e616cc901b4e..ed1f09e52ef3 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.c
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.c
@@ -488,6 +488,9 @@ static void sun4i_tcon0_mode_set_lvds(struct sun4i_tcon *tcon,
 	else
 		reg |= SUN4I_TCON0_LVDS_IF_DATA_POL_NORMAL;
 
+	if (tcon->lvds_dual_link)
+		reg |= SUN4I_TCON0_LVDS_IF_DUAL_LINK;
+
 	if (sun4i_tcon_get_pixel_depth(encoder) == 24)
 		reg |= SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS;
 	else
@@ -1219,6 +1222,9 @@ static int sun4i_tcon_bind(struct device *dev, struct device *master,
 		} else {
 			can_lvds = true;
 		}
+
+		tcon->lvds_dual_link = of_property_read_bool(dev->of_node,
+							     "allwinner,lvds-dual-link");
 	} else {
 		can_lvds = false;
 	}
diff --git a/drivers/gpu/drm/sun4i/sun4i_tcon.h b/drivers/gpu/drm/sun4i/sun4i_tcon.h
index d36c304b1607..2a57d24e2772 100644
--- a/drivers/gpu/drm/sun4i/sun4i_tcon.h
+++ b/drivers/gpu/drm/sun4i/sun4i_tcon.h
@@ -98,6 +98,7 @@
 
 #define SUN4I_TCON0_LVDS_IF_REG			0x84
 #define SUN4I_TCON0_LVDS_IF_EN				BIT(31)
+#define SUN4I_TCON0_LVDS_IF_DUAL_LINK			BIT(30)
 #define SUN4I_TCON0_LVDS_IF_BITWIDTH_MASK		BIT(26)
 #define SUN4I_TCON0_LVDS_IF_BITWIDTH_18BITS		(1 << 26)
 #define SUN4I_TCON0_LVDS_IF_BITWIDTH_24BITS		(0 << 26)
@@ -263,6 +264,9 @@ struct sun4i_tcon {
 	/* Associated crtc */
 	struct sun4i_crtc		*crtc;
 
+	/* Is the LVDS link a dual-channel link? */
+	bool				lvds_dual_link;
+
 	int				id;
 
 	/* TCON list management */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
