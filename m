Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E751B7A94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:50:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GWtwU9gZjWKzKfjyTGfqGwAm1rhz2uRGzwifxJTTkg=; b=Mq+Ed59lOh2r1E
	MDphpy9h7btl3cn3Nh/kN/fSP/e0smy4IyjZpaS0xhvA0kd4yXMwihlLXVrmgO9COGxX03nUSLtDN
	m/HiJIgEGgVp+2otKc7mhcSqvXi4b+yAUb1oMQhsE0LCOJigrCc8uIPa64TvMraqes3iAZPXDLM8m
	zUD+Dm+e3rhYYfth26pm0wSZ/T/RdPVqAPQii+QF5oixveJMaXLUZC0SewDDDC8br/XkpxChd74sa
	VO5R3scMC54NOOyJn73SP5y8w8NT0ZXChp3sDLn9jUAFW3aNSG8wNmFi6WGQyMsParj/4yYp+hMEJ
	DdljnmdnyWYMLIgm0PuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0aQ-0007XH-Fl; Fri, 24 Apr 2020 15:49:54 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0NS-0008Dx-Oo; Fri, 24 Apr 2020 15:36:32 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 9B85F1458;
 Fri, 24 Apr 2020 11:36:28 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:36:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=RZBN3MbgcEFAH
 BaADdNdwB2P6fayKSZ6ak4G/krg+rk=; b=idrkZXnUF+NCbQssNUAmhs4NcSJtJ
 qXmqiZvI8E570cGKis1DsgYwBhxDV56Zl8GENyFX7V82HeObWMOo6feXvJeltbc3
 7u0fm4gC7bg+906JE51INK6mffyUZQXZ5nUYJT5/yDfks/8OjcrX3qUv+oixO7DL
 DVd7J3q59f6ZqjASbMsZV0q1JQ+2QExWFZqNRp7asvjWBYcNBZYaGJkBy3V0c+AQ
 3KiPrZzGAHncDwXHMTmNXvp6kUa6qURzUcR6xWo9okttEn8Ooq3ZRxIn6c77Udxf
 CYXea00Jf6yu4+J0uaF94+w6ZRugsGhkVFIYRKTB/vam0G91z7G8YJ7RA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=RZBN3MbgcEFAHBaADdNdwB2P6fayKSZ6ak4G/krg+rk=; b=UwaWsHSI
 KH0guK4v9aITs1UqQ79TgAM1c+C7YLJmmi8eo29qDwlKZzCEDQw2vCv8YqzpWtwa
 AboEbmpsMWJvQAopVCQ4hL4N0wLHlskqnje8iU1+FIp6SRRDh3+vqzK4zvy6Ukjf
 vvTUPhzbw1aN7CCgoTSDqU6TbmiXBGOW49NjB9bEAy07wj+8pxk5b4K7VxTc14bZ
 GREnzmG1BzUPYLfPzBmN5IBQ7vBzeKfbT1NgPR+yJM9bqsCYLCa+Dsfarg4zjC5L
 J4nLQOGgpZtlzjHYvOMhRW3OyTX6qcaLk9CdI/pU4WDqX9YSjkkcNzZ+AK23SYGA
 TD1gj5HT4j6G6A==
X-ME-Sender: <xms:fAejXpRsWpGDiT68WIJuALPPiPK9aoKRvWojcDxg9TN2RFngg28iag>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeegvdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:fAejXnJszll0Nj_a4rT1c2K0s18cgllovCD0gwNKhlDQm2jTdivOPg>
 <xmx:fAejXsvVGLrdSAODNVSjpfO9X_SuT2jYulya_H6dlZOj434mLE19xA>
 <xmx:fAejXu__VfQguBPGw2suiW3Q8Ye1uNcMlb_q-3IRfv6NHRRwhTiYmw>
 <xmx:fAejXg1L1v3ACvYyWhbbIcShpfuxK6VfyPQIlaSwRKMgUL0Lw6_hHXCXT38>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D3F923065D97;
 Fri, 24 Apr 2020 11:36:27 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 47/91] drm/vc4: crtc: Turn static const variable into a
 define
Date: Fri, 24 Apr 2020 17:34:28 +0200
Message-Id: <153ceee1cd4823d03e5c64c95be15b03208e45f6.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083630_920583_5C330EFE 
X-CRM114-Status: UNSURE (   7.05  )
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

The hvs_latency_pix variable doesn't need to be a variable and can just be
defined.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/vc4/vc4_crtc.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/vc4/vc4_crtc.c b/drivers/gpu/drm/vc4/vc4_crtc.c
index 5d713fbae139..06bda23cd560 100644
--- a/drivers/gpu/drm/vc4/vc4_crtc.c
+++ b/drivers/gpu/drm/vc4/vc4_crtc.c
@@ -44,6 +44,8 @@
 #include "vc4_drv.h"
 #include "vc4_regs.h"
 
+#define HVS_FIFO_LATENCY_PIX	6
+
 #define CRTC_WRITE(offset, val) writel(val, vc4_crtc->regs + (offset))
 #define CRTC_READ(offset) readl(vc4_crtc->regs + (offset))
 
@@ -231,18 +233,17 @@ vc4_crtc_update_gamma_lut(struct drm_crtc *crtc)
 static u32 vc4_get_fifo_full_level(u32 format)
 {
 	static const u32 fifo_len_bytes = 64;
-	static const u32 hvs_latency_pix = 6;
 
 	switch (format) {
 	case PV_CONTROL_FORMAT_DSIV_16:
 	case PV_CONTROL_FORMAT_DSIC_16:
-		return fifo_len_bytes - 2 * hvs_latency_pix;
+		return fifo_len_bytes - 2 * HVS_FIFO_LATENCY_PIX;
 	case PV_CONTROL_FORMAT_DSIV_18:
 		return fifo_len_bytes - 14;
 	case PV_CONTROL_FORMAT_24:
 	case PV_CONTROL_FORMAT_DSIV_24:
 	default:
-		return fifo_len_bytes - 3 * hvs_latency_pix;
+		return fifo_len_bytes - 3 * HVS_FIFO_LATENCY_PIX;
 	}
 }
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
