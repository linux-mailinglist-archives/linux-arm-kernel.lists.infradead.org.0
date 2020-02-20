Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA67E1662B0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:29:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9s6WKfQfDcnodp06fVY/PVO5r/oK5cs7bKJKYzlyUQw=; b=Jis1QfxldYDiu7
	QK063T4pWAulNPaLTwe+Riqjnruuug9j0Ern85jTf9VYvMsXx9hs0GwA5BopoN98kN7j+52GEET8R
	vNySGZcfQ74vToj1SaAfgM9BswbDzhKZ4o8kp26ek3E3JUhB0fbTTkGGvr6USMzR1LeQyr7GVwajK
	kbhycpv4RwVLbo7M9CgR8sEk2wbT4nax70dzTl7cGZ0heXJtTpz3a2nzH2cscgdYsAfwwc2H9e3WV
	JyxZR7BnT7I/ZUQc+zJlUCbrHInFdqW9CxZNcWi5Pht8FmTxwAlNHOqlGuBcuEIxGKYImYCynrMJr
	+SoE9xDAoYCgJlresFrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4ohL-0005HY-OD; Thu, 20 Feb 2020 16:29:11 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ogI-0004HI-Qu
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:28:10 +0000
Received: by mail-wr1-x444.google.com with SMTP id e8so5343268wrm.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 08:28:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ISULOS1UCLwuUa+INumyziDbxt+K8PYtRxwNxV5Yeuk=;
 b=WnGMAtLQ1BCCTXE8agBqLSu7tjqnUQwlOXNdcOZG2WTgrTtohRfd8yhgJCyiPDgKQI
 wN08QRu1F3FR90NjleYoaYGezlCcIhHHkoehPdMnvONU9rvphpFYJ+Fxd3To2wGYSaE3
 vzBlUxcpKnIT9oWUz5obkww8uadktK+qcroSva/9Xd8zusJ+dojUTKEVlaua2E4SxJ/F
 XelhtSVlFvyc3XNghhxDOp8lvp6uAJjYi7H5HeYBWdYkiv58+PbQvOWuENMsj/L9QCNf
 RaNPJAReYGQB11JHGItGH5CFvDsjLMZpc793/9S61khy8uFo3wndq2QJO4xwoneLytsM
 6e9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ISULOS1UCLwuUa+INumyziDbxt+K8PYtRxwNxV5Yeuk=;
 b=U8xHMkWcNqIbAbXETaohB1OiWReSyYqwjNDGXrI4WGIIFJYo8xfjfzWiE09nn9SWZQ
 V4eB5pJhraOrgvz1iyCBqrqu4Rq2HylALrnLWxUqYcaXqoDQxoIoHACO0X7yq1v40v2r
 /0wcRWjwKObysloaH28kjFSp4g/oYDjIZm9YiAgcYtNUp7BUVoaRYM5ptJO1JBVWBGHC
 4caREKeFwumUJfx1EMCXI4CvuLBiSpWwLYNzWcf5Yqz0JfrxetAnR5VgyGVsCpEoCZUk
 WLdLyYSDJZzdqMZ0tIgBfChXl0kyDnLD1gGl6kVuZEscyUseoFuSSrgCHCqVRcmLNjll
 XMqw==
X-Gm-Message-State: APjAAAWByGxrxdfR1I/UZ9a6fIYO8c96fu2Eprnzf3vpXiMjEgBG8Ssv
 0rgUvVBMTMSF5UKrfGQyRmM8gQ==
X-Google-Smtp-Source: APXvYqxL/EWFzZJxLrQYyiTxEjHsa/zv6PsPU+Zr4bJ3TNKvl9R1Dwl2SnSUK47XjyKwAsiW7r0ZwQ==
X-Received: by 2002:a05:6000:1201:: with SMTP id
 e1mr43848428wrx.386.1582216085318; 
 Thu, 20 Feb 2020 08:28:05 -0800 (PST)
Received: from bender.baylibre.local
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id c15sm104164wrt.1.2020.02.20.08.28.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 08:28:04 -0800 (PST)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH 4/4] drm/meson: crtc: handle commit of Amlogic FBC frames
Date: Thu, 20 Feb 2020 17:27:58 +0100
Message-Id: <20200220162758.13524-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200220162758.13524-1-narmstrong@baylibre.com>
References: <20200220162758.13524-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_082806_922206_4B770429 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the VD1 Amlogic FBC decoder is now configured by the overlay driver,
commit the right registers to decode the Amlogic FBC frame.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_crtc.c | 118 +++++++++++++++++++++--------
 1 file changed, 88 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_crtc.c b/drivers/gpu/drm/meson/meson_crtc.c
index e66b6271ff58..d6dcfd654e9c 100644
--- a/drivers/gpu/drm/meson/meson_crtc.c
+++ b/drivers/gpu/drm/meson/meson_crtc.c
@@ -291,6 +291,10 @@ static void meson_crtc_enable_vd1(struct meson_drm *priv)
 			    VPP_VD1_PREBLEND | VPP_VD1_POSTBLEND |
 			    VPP_COLOR_MNG_ENABLE,
 			    priv->io_base + _REG(VPP_MISC));
+
+	writel_bits_relaxed(VIU_CTRL0_AFBC_TO_VD1,
+			    priv->viu.vd1_afbc ? VIU_CTRL0_AFBC_TO_VD1 : 0,
+			    priv->io_base + _REG(VIU_MISC_CTRL0));
 }
 
 static void meson_g12a_crtc_enable_vd1(struct meson_drm *priv)
@@ -300,6 +304,10 @@ static void meson_g12a_crtc_enable_vd1(struct meson_drm *priv)
 		       VD_BLEND_POSTBLD_SRC_VD1 |
 		       VD_BLEND_POSTBLD_PREMULT_EN,
 		       priv->io_base + _REG(VD1_BLEND_SRC_CTRL));
+
+	writel_relaxed(priv->viu.vd1_afbc ?
+		       (VD1_AXI_SEL_AFBC | AFBC_VD1_SEL) : 0,
+		       priv->io_base + _REG(VD1_AFBCD0_MISC_CTRL));
 }
 
 void meson_crtc_irq(struct meson_drm *priv)
@@ -383,36 +391,86 @@ void meson_crtc_irq(struct meson_drm *priv)
 	/* Update the VD1 registers */
 	if (priv->viu.vd1_enabled && priv->viu.vd1_commit) {
 
-		switch (priv->viu.vd1_planes) {
-		case 3:
-			meson_canvas_config(priv->canvas,
-					    priv->canvas_id_vd1_2,
-					    priv->viu.vd1_addr2,
-					    priv->viu.vd1_stride2,
-					    priv->viu.vd1_height2,
-					    MESON_CANVAS_WRAP_NONE,
-					    MESON_CANVAS_BLKMODE_LINEAR,
-					    MESON_CANVAS_ENDIAN_SWAP64);
-		/* fallthrough */
-		case 2:
-			meson_canvas_config(priv->canvas,
-					    priv->canvas_id_vd1_1,
-					    priv->viu.vd1_addr1,
-					    priv->viu.vd1_stride1,
-					    priv->viu.vd1_height1,
-					    MESON_CANVAS_WRAP_NONE,
-					    MESON_CANVAS_BLKMODE_LINEAR,
-					    MESON_CANVAS_ENDIAN_SWAP64);
-		/* fallthrough */
-		case 1:
-			meson_canvas_config(priv->canvas,
-					    priv->canvas_id_vd1_0,
-					    priv->viu.vd1_addr0,
-					    priv->viu.vd1_stride0,
-					    priv->viu.vd1_height0,
-					    MESON_CANVAS_WRAP_NONE,
-					    MESON_CANVAS_BLKMODE_LINEAR,
-					    MESON_CANVAS_ENDIAN_SWAP64);
+		if (priv->viu.vd1_afbc) {
+			writel_relaxed(priv->viu.vd1_afbc_head_addr,
+				       priv->io_base +
+				       _REG(AFBC_HEAD_BADDR));
+			writel_relaxed(priv->viu.vd1_afbc_body_addr,
+				       priv->io_base +
+				       _REG(AFBC_BODY_BADDR));
+			writel_relaxed(priv->viu.vd1_afbc_en,
+				       priv->io_base +
+				       _REG(AFBC_ENABLE));
+			writel_relaxed(priv->viu.vd1_afbc_mode,
+				       priv->io_base +
+				       _REG(AFBC_MODE));
+			writel_relaxed(priv->viu.vd1_afbc_size_in,
+				       priv->io_base +
+				       _REG(AFBC_SIZE_IN));
+			writel_relaxed(priv->viu.vd1_afbc_dec_def_color,
+				       priv->io_base +
+				       _REG(AFBC_DEC_DEF_COLOR));
+			writel_relaxed(priv->viu.vd1_afbc_conv_ctrl,
+				       priv->io_base +
+				       _REG(AFBC_CONV_CTRL));
+			writel_relaxed(priv->viu.vd1_afbc_size_out,
+				       priv->io_base +
+				       _REG(AFBC_SIZE_OUT));
+			writel_relaxed(priv->viu.vd1_afbc_vd_cfmt_ctrl,
+				       priv->io_base +
+				       _REG(AFBC_VD_CFMT_CTRL));
+			writel_relaxed(priv->viu.vd1_afbc_vd_cfmt_w,
+				       priv->io_base +
+				       _REG(AFBC_VD_CFMT_W));
+			writel_relaxed(priv->viu.vd1_afbc_mif_hor_scope,
+				       priv->io_base +
+				       _REG(AFBC_MIF_HOR_SCOPE));
+			writel_relaxed(priv->viu.vd1_afbc_mif_ver_scope,
+				       priv->io_base +
+				       _REG(AFBC_MIF_VER_SCOPE));
+			writel_relaxed(priv->viu.vd1_afbc_pixel_hor_scope,
+				       priv->io_base+
+				       _REG(AFBC_PIXEL_HOR_SCOPE));
+			writel_relaxed(priv->viu.vd1_afbc_pixel_ver_scope,
+				       priv->io_base +
+				       _REG(AFBC_PIXEL_VER_SCOPE));
+			writel_relaxed(priv->viu.vd1_afbc_vd_cfmt_h,
+				       priv->io_base +
+				       _REG(AFBC_VD_CFMT_H));
+		} else {
+			switch (priv->viu.vd1_planes) {
+			case 3:
+				meson_canvas_config(priv->canvas,
+						    priv->canvas_id_vd1_2,
+						    priv->viu.vd1_addr2,
+						    priv->viu.vd1_stride2,
+						    priv->viu.vd1_height2,
+						    MESON_CANVAS_WRAP_NONE,
+						    MESON_CANVAS_BLKMODE_LINEAR,
+						    MESON_CANVAS_ENDIAN_SWAP64);
+			/* fallthrough */
+			case 2:
+				meson_canvas_config(priv->canvas,
+						    priv->canvas_id_vd1_1,
+						    priv->viu.vd1_addr1,
+						    priv->viu.vd1_stride1,
+						    priv->viu.vd1_height1,
+						    MESON_CANVAS_WRAP_NONE,
+						    MESON_CANVAS_BLKMODE_LINEAR,
+						    MESON_CANVAS_ENDIAN_SWAP64);
+			/* fallthrough */
+			case 1:
+				meson_canvas_config(priv->canvas,
+						    priv->canvas_id_vd1_0,
+						    priv->viu.vd1_addr0,
+						    priv->viu.vd1_stride0,
+						    priv->viu.vd1_height0,
+						    MESON_CANVAS_WRAP_NONE,
+						    MESON_CANVAS_BLKMODE_LINEAR,
+						    MESON_CANVAS_ENDIAN_SWAP64);
+			}
+
+			writel_relaxed(0, priv->io_base + _REG(AFBC_ENABLE));
 		}
 
 		writel_relaxed(priv->viu.vd1_if0_gen_reg,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
