Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32D35102E5E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 22:42:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NW6/1tJbWpll8y6fiqytNYQHEhIVysic2XL84jsYvfI=; b=RWlzY8kgc9I25k
	nEps2IaVskS/LT1PfY16xuG+2y6LDv8DXnKa0DJHEWNu7NoDmNQ//F1cIu/Cc6ljwygfQZDvmORfv
	RUI0Ci/umaf7B+EY1o/boHdC2TQqmqdq/idY6aCzObZjn6eLJdqfFBVlQdp8fhxD01iBHxts6h+rQ
	XdCFv6Vl/L/bvA2ykJ+yTjfBJdWrctAwWS0sUM9LkMEpUnYdjybsD9twok0jHV0JsPvNqC8gaNaoN
	kcBAX7IHLlGgLOLTDBZXN6p0Y3Okh/nE0cwV5+akM11koXImJiCJx1AlYCsVoGDqNZ5tt3Fk2A7Mx
	qzO2JLtdMjE1Mel4mj+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXBGx-0000Hn-Cu; Tue, 19 Nov 2019 21:42:55 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXBGp-0000HB-Gm
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 21:42:48 +0000
Received: by mail-lj1-x243.google.com with SMTP id r7so25097603ljg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 13:42:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XQwbcad//Pe4uYDzL68QH8A/dhMUUQ9ecZejem5rxiM=;
 b=cGYm68rHZuLOe1+MxZNpcDmEEX13/yAjIzEFaSwcLvgbinvb59QiB2trvkZdyePMly
 KUB2rdO9t8xA4j2pMhLlZtuM9poWU70pdeb78rQGxjjNbHKI6Da9oGVRi7nPFpEAgnyK
 HC6coOrYA72lun1398rVBEdelKiIvxm2Lfz/il23K4nv9vEutoTgJPHGnRj+Qs9YhMEJ
 CrQH3RA7CHc4FnTdXFRQ9cKkcHc3jVnPQPOXr6Mah9++DjFMCxzAP8oN1S8cKP6K4XTm
 TJxhIP3dCYTrYwSp/iaSkOfTawDnwKyVaxfd1FQyegH+Q6GztRnuCh2yQIbAln1RjpRs
 oXKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=XQwbcad//Pe4uYDzL68QH8A/dhMUUQ9ecZejem5rxiM=;
 b=TgvsgMTmpBcoGNcj+RLXdytZMeR07nea10HzLpWzLt5VMfrlcS5Hw5oIO6aRUtaXai
 lWmYulI+mq+EFhDD4K4a/w5ItrfQ8IJqqn4wV1KcI7Pj/laEacMmmRWYBTe1hyxj0HfG
 TNSU5hSiPWDj2WExgXd3L78AmeOAFn/UHZNG4P3M5lCPOg/rAA24iFG2kVz77c7j31u8
 CJi5HAbmulAeBUvJssG5TLmWDig3Iyoi9wfHEEnqwNggqqeIJrEvpqGVwQe2sun4DiHp
 ySmfQrECpS4kWmMr/igx3FDUzOcB9gJlwM6ivejkkm/2C54D6FsC9MIQGA/No7h1fhfX
 q+kg==
X-Gm-Message-State: APjAAAW4vY9kHHYPZvCkDBwrswYo3wo4/XZ/DPdZgD029rmqhH0AjMeg
 23kK4YQ7qNAU0ixMhjiQzOzeVg==
X-Google-Smtp-Source: APXvYqwN/eyaWDtN0T2DivmihiRjPrfTNLBpp4c8KNaDgHf+GGH+luUgDARapbxJL6lM1g3J5KLPpg==
X-Received: by 2002:a05:651c:95:: with SMTP id 21mr5805470ljq.40.1574199764396; 
 Tue, 19 Nov 2019 13:42:44 -0800 (PST)
Received: from localhost.bredbandsbolaget
 (c-79c8225c.014-348-6c756e10.bbcust.telenor.se. [92.34.200.121])
 by smtp.gmail.com with ESMTPSA id u5sm10829885ljg.68.2019.11.19.13.42.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Nov 2019 13:42:43 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/mcde: Support using DSI in LP mode
Date: Tue, 19 Nov 2019 22:42:34 +0100
Message-Id: <20191119214234.27932-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_134247_684552_28771869 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It is possible to set a flag in the struct mipi_dsi_device
so the panel is handled in low power (LP) mode. Some displays
only support this mode and it is also good for testing.

Cc: Stephan Gerhold <stephan@gerhold.net>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_dsi.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_dsi.c b/drivers/gpu/drm/mcde/mcde_dsi.c
index 889c39efa80c..d4a12fe7ff01 100644
--- a/drivers/gpu/drm/mcde/mcde_dsi.c
+++ b/drivers/gpu/drm/mcde/mcde_dsi.c
@@ -648,10 +648,11 @@ static void mcde_dsi_start(struct mcde_dsi *d)
 	/* Command mode, clear IF1 ID */
 	val = readl(d->regs + DSI_CMD_MODE_CTL);
 	/*
-	 * If we enable low-power mode here, with
-	 * val |= DSI_CMD_MODE_CTL_IF1_LP_EN
+	 * If we enable low-power mode here,
 	 * then display updates become really slow.
 	 */
+	if (d->mdsi->mode_flags & MIPI_DSI_MODE_LPM)
+		val |= DSI_CMD_MODE_CTL_IF1_LP_EN;
 	val &= ~DSI_CMD_MODE_CTL_IF1_ID_MASK;
 	writel(val, d->regs + DSI_CMD_MODE_CTL);
 
@@ -740,10 +741,11 @@ static void mcde_dsi_bridge_pre_enable(struct drm_bridge *bridge)
 		/* Command mode, clear IF1 ID */
 		val = readl(d->regs + DSI_CMD_MODE_CTL);
 		/*
-		 * If we enable low-power mode here with
-		 * val |= DSI_CMD_MODE_CTL_IF1_LP_EN
+		 * If we enable low-power mode here
 		 * the display updates become really slow.
 		 */
+		if (d->mdsi->mode_flags & MIPI_DSI_MODE_LPM)
+			val |= DSI_CMD_MODE_CTL_IF1_LP_EN;
 		val &= ~DSI_CMD_MODE_CTL_IF1_ID_MASK;
 		writel(val, d->regs + DSI_CMD_MODE_CTL);
 	}
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
