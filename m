Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 448EF181E05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 17:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6SXbPKuLCTMpPf5E7eHulyekFicTdHjwd1ePxeSuLWk=; b=jRTgc39JrXzHI4
	T705wTm+S9iTFchWKxW9TYXd9lbiyvi4Cm0/2OVlurSC67Hwx1g38+mdF2fZFdB3gS9n7VwlIFzsn
	xThameL/Z5UmCcaUwrcAAfz7XoDUNlQSS/E5P3LeGLSesKY20HP9PTvLgWGXDrC9kuk/RPqaVQocM
	XE7HQ3Zc70nPjxayngzy8IiuVG39mkJk6pz1MVoZhQmoj+RKQmm7FX479Cjgd9RfZ1VKmOGASL+qk
	hikL0vUZ9nUJW/IC8wbNBdstzGpULCndYxNasIakpGFkMAip3A8iB4vkfOZLQIRn9gC9JPtYe6Km3
	+V7ORYCKLFAJ5PWwsd7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC4KH-0004NX-8D; Wed, 11 Mar 2020 16:35:21 +0000
Received: from dodo.xh.is ([2001:19f0:8001:184d:5400:2ff:fe7b:e8bd])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC4JZ-00046P-9Q
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 16:34:39 +0000
X-Spam: yes
X-Spam-Score: 6.6 / 99999
X-Spam-Symbols: TO_DN_SOME, R_MISSING_CHARSET, BROKEN_CONTENT_TYPE, MIME_TRACE,
 ARC_NA, FREEMAIL_ENVRCPT, TO_MATCH_ENVRCPT_SOME, FROM_HAS_DN,
 TAGGED_RCPT, FREEMAIL_TO, RCVD_NO_TLS_LAST, FROM_EQ_ENVFROM,
 ASN, RCVD_VIA_SMTP_AUTH, MID_CONTAINS_FROM, RCPT_COUNT_TWELVE,
 RCVD_COUNT_TWO, SUSPICIOUS_RECIPS
Received: by dodo.xh.is (OpenSMTPD) with ESMTPSA id 7cbb8e7a
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO); 
 Wed, 11 Mar 2020 09:34:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 2554C4C335;
 Wed, 11 Mar 2020 16:34:29 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Ondrej Jirman <megous@megous.com>
Subject: [PATCH 4/5] drm/sun4i: sun6i_mipi_dsi: fix horizontal timing
 calculation
Date: Thu, 12 Mar 2020 00:33:28 +0800
Message-Id: <20200311163329.221840-5-icenowy@aosc.io>
In-Reply-To: <20200311163329.221840-1-icenowy@aosc.io>
References: <20200311163329.221840-1-icenowy@aosc.io>
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aosc.io; s=dkim;
 t=1583944474;
 h=from:subject:date:message-id:to:cc:mime-version:content-transfer-encoding:in-reply-to:references;
 bh=U2GxqfdymldYXpFrmpoV6T/L6VN/aPLvUF+27UYMKNM=;
 b=tIV6lwpp+xUu1yh4SMhtRjYtnNU8O1efXGjwMBU6+K4WLy9VFlS6syxUXosBQHHhVI5sXQ
 wqqe/lJ0Z0jZtgQMh+g7fgIPlImrhm2xCibz4wNeaYLAvpCZYuL5mQc6UnYyZk+jw7Rzhd
 dd7JFj4hPaMvnnyRnz+4/VYq9QYocXw=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_093437_621342_407459B4 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:19f0:8001:184d:5400:2ff:fe7b:e8bd listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The max() function call in horizontal timing calculation shouldn't pad a
length already subtracted with overhead to overhead, instead it should
only prevent the set timing to underflow.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 059939789730..5f2313c40328 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -555,7 +555,7 @@ static void sun6i_dsi_setup_timings(struct sun6i_dsi *dsi,
 		 */
 #define HSA_PACKET_OVERHEAD	10
 		hsa = max((unsigned int)HSA_PACKET_OVERHEAD,
-			  (mode->hsync_end - mode->hsync_start) * Bpp - HSA_PACKET_OVERHEAD);
+			  (mode->hsync_end - mode->hsync_start) * Bpp) - HSA_PACKET_OVERHEAD;
 
 		/*
 		 * The backporch is set using a blanking packet (4
@@ -564,7 +564,7 @@ static void sun6i_dsi_setup_timings(struct sun6i_dsi *dsi,
 		 */
 #define HBP_PACKET_OVERHEAD	6
 		hbp = max((unsigned int)HBP_PACKET_OVERHEAD,
-			  (mode->htotal - mode->hsync_end) * Bpp - HBP_PACKET_OVERHEAD);
+			  (mode->htotal - mode->hsync_end) * Bpp) - HBP_PACKET_OVERHEAD;
 
 		/*
 		 * The frontporch is set using a sync event (4 bytes)
@@ -574,7 +574,7 @@ static void sun6i_dsi_setup_timings(struct sun6i_dsi *dsi,
 		 */
 #define HFP_PACKET_OVERHEAD	16
 		hfp = max((unsigned int)HFP_PACKET_OVERHEAD,
-			  (mode->hsync_start - mode->hdisplay) * Bpp - HFP_PACKET_OVERHEAD);
+			  (mode->hsync_start - mode->hdisplay) * Bpp) - HFP_PACKET_OVERHEAD;
 
 		/*
 		 * The blanking is set using a sync event (4 bytes)
@@ -583,8 +583,8 @@ static void sun6i_dsi_setup_timings(struct sun6i_dsi *dsi,
 		 */
 #define HBLK_PACKET_OVERHEAD	10
 		hblk = max((unsigned int)HBLK_PACKET_OVERHEAD,
-			   (mode->htotal - (mode->hsync_end - mode->hsync_start)) * Bpp -
-			   HBLK_PACKET_OVERHEAD);
+			   (mode->htotal - (mode->hsync_end - mode->hsync_start)) * Bpp) -
+			   HBLK_PACKET_OVERHEAD;
 
 		/*
 		 * And I'm not entirely sure what vblk is about. The driver in
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
