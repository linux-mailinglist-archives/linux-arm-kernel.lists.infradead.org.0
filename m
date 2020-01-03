Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7734812FE46
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 22:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KT6c3j17l5Aw2rFVhurWJLd1y2dbwLAmKX0ewqs8yv8=; b=cgax26JhMJ7xVotn0F0GZ/RHby
	UFOE290XVzoqwrYNLdeXqkoR6n0ybZnRMMFQC6p00+eSIo/sQDmbsEnNcmh74/GpZIuBnTZxp/xUN
	tw+3xZXHFqKSZGXNZR8W6hgYhzV046fxx83zASk7M+fTfvB22IQhlteKNjkY3lYrJ70njo+nk/lea
	atKvY4/uYCirCGhzaa/yQqKAOMzqnkjARD2O9/lWVgnVth3c0QQXl2MeEC25/8ndj+CH1XXAf85f6
	XrLyRPNW+4+AwooVlZKOc4Y1+o1EnDwwbwR6w/v53OmI8muSN7ineVkMf1Y3/t7oT2N3dpXbj4BuD
	B76hs2bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inUMi-0006Dw-V6; Fri, 03 Jan 2020 21:20:16 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inULj-0005Rp-Td
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 21:19:17 +0000
Received: by mail-lf1-x141.google.com with SMTP id y1so32672878lfb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 13:19:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=opKYnKPgrfgs6DL2jExuYki2MokOaTmbOuEyaIwELRw=;
 b=aYNfW9hmDHZtNaeHoqyCpMR9J53zbj/6VaqU8qE1fnAmxk9ZcUmlrHWFJk80Vnl5FR
 5nZD/XcJ95W2QmrkrzYB/FT5pPQHiSPqx1HQJLDomXNwTuY5m3lO2N4NWfdJQTIwRKjv
 f0saAQwGAJMk/1sEIFBe9osBAhyFLoXnvB0cFPIXHY2Htu/GWH6w5L1VXhdRTDv7qKAJ
 zJYKgGH16l8ftjV3S3hixleYtHoi4scbWlEEoaR8Yua1Ied3pLddJTa57bnAd7b3pjWR
 anEcG93NxLMjGnrPdYOFmV4iEFD084Xvaw95Fyxiqh+s+ErAFKwkYs1KEl7Rq5ro5dK7
 PF1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=opKYnKPgrfgs6DL2jExuYki2MokOaTmbOuEyaIwELRw=;
 b=f3AGszD2nT5QjK4gBTNmYk8cJEBSCWmiCZrRydy7QCHxVMTcoO3giaKh7SsJGLh71V
 lIKkUefHNMyYcsFpJtCV5uNlDjVt1pM7vdtWVSS1Giz7GhDc0k+QPtUo/w1AK5KLlpdH
 cVDKXCgp3XEd29gO2nByfdg8sf7SLk0apMeDkJW4f4Q3mRml8k6Zx0wV74RCHODI8Y9d
 jhNjfqAZV/NccOPpcLtBbqFS35cbHBbaRse8gK+ShohAcX4CAtH1UfVb5ehEJaUW4Kyn
 RtPLIKlJVQCftrnc/nQEfw5DYlnsFivNRK4cYQxwqSa+mj44os7h/pvfY9i0iUfv6f0b
 5FVA==
X-Gm-Message-State: APjAAAVJN9w/czwoFacg/kngPKA6AiTf8xDbXfYaE/PUCR04gt5LyrGP
 cg88Zxcxl0utB3WB/vyTO5ayNA==
X-Google-Smtp-Source: APXvYqxpCPH5IJYHJHFcUVveZAYcdzswXwFCrVzCLM6GERC5X7e3+Vbzg+lGUWc0YgZoCV3CLUePYQ==
X-Received: by 2002:ac2:4212:: with SMTP id y18mr50378966lfh.2.1578086354024; 
 Fri, 03 Jan 2020 13:19:14 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id e9sm18107683ljp.75.2020.01.03.13.19.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 13:19:13 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v3 2/2] drm/sun4i: Add alpha property for sun8i and sun50i VI
 layer
Date: Fri,  3 Jan 2020 23:19:01 +0200
Message-Id: <20200103211901.44201-2-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200103211901.44201-1-roman.stratiienko@globallogic.com>
References: <20200103211901.44201-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_131915_984013_43C25F37 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

DE3.0 VI layers supports plane-global alpha channel.
DE2.0 FCC block have GLOBAL_ALPHA register that can be used as alpha source
for blender.

Add alpha property to the DRM plane and connect it to the
corresponding registers in the mixer.

Do not add alpha property for systems with DE2.0 and more than 1 VI planes.

Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
v2: Initial version by mistake
v3:
- Skip adding & applying alpha property if VI count > 1
---
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 48 +++++++++++++++++++++-----
 drivers/gpu/drm/sun4i/sun8i_vi_layer.h | 11 ++++++
 2 files changed, 51 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 42d445d23773..e61aec7d6d07 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
@@ -65,6 +65,36 @@ static void sun8i_vi_layer_enable(struct sun8i_mixer *mixer, int channel,
 	}
 }
 
+static void sun8i_vi_layer_update_alpha(struct sun8i_mixer *mixer, int channel,
+					int overlay, struct drm_plane *plane)
+{
+	u32 mask, val, ch_base;
+
+	ch_base = sun8i_channel_base(mixer, channel);
+
+	if (mixer->cfg->is_de3) {
+		mask = SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK |
+		       SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_MASK;
+		val = SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA
+			(plane->state->alpha >> 8);
+
+		val |= (plane->state->alpha == DRM_BLEND_ALPHA_OPAQUE) ?
+			SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_PIXEL :
+			SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_COMBINED;
+
+		regmap_update_bits(mixer->engine.regs,
+				   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base,
+								  overlay),
+				   mask, val);
+	} else if (mixer->cfg->vi_num == 1) {
+		regmap_update_bits(mixer->engine.regs,
+				   SUN8I_MIXER_FCC_GLOBAL_ALPHA_REG,
+				   SUN8I_MIXER_FCC_GLOBAL_ALPHA_MASK,
+				   SUN8I_MIXER_FCC_GLOBAL_ALPHA
+					(plane->state->alpha >> 8));
+	}
+}
+
 static int sun8i_vi_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 				       int overlay, struct drm_plane *plane,
 				       unsigned int zpos)
@@ -248,14 +278,6 @@ static int sun8i_vi_layer_update_formats(struct sun8i_mixer *mixer, int channel,
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base, overlay),
 			   SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE, val);
 
-	/* It seems that YUV formats use global alpha setting. */
-	if (mixer->cfg->is_de3)
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_CHAN_VI_LAYER_ATTR(ch_base,
-								  overlay),
-				   SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK,
-				   SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(0xff));
-
 	return 0;
 }
 
@@ -373,6 +395,8 @@ static void sun8i_vi_layer_atomic_update(struct drm_plane *plane,
 
 	sun8i_vi_layer_update_coord(mixer, layer->channel,
 				    layer->overlay, plane, zpos);
+	sun8i_vi_layer_update_alpha(mixer, layer->channel,
+				    layer->overlay, plane);
 	sun8i_vi_layer_update_formats(mixer, layer->channel,
 				      layer->overlay, plane);
 	sun8i_vi_layer_update_buffer(mixer, layer->channel,
@@ -464,6 +488,14 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 
 	plane_cnt = mixer->cfg->ui_num + mixer->cfg->vi_num;
 
+	if (mixer->cfg->vi_num == 1 || mixer->cfg->is_de3) {
+		ret = drm_plane_create_alpha_property(&layer->plane);
+		if (ret) {
+			dev_err(drm->dev, "Couldn't add alpha property\n");
+			return ERR_PTR(ret);
+		}
+	}
+
 	ret = drm_plane_create_zpos_property(&layer->plane, index,
 					     0, plane_cnt - 1);
 	if (ret) {
diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.h b/drivers/gpu/drm/sun4i/sun8i_vi_layer.h
index eaa6076f5dbc..48c399e1c86d 100644
--- a/drivers/gpu/drm/sun4i/sun8i_vi_layer.h
+++ b/drivers/gpu/drm/sun4i/sun8i_vi_layer.h
@@ -29,14 +29,25 @@
 #define SUN8I_MIXER_CHAN_VI_VDS_UV(base) \
 		((base) + 0xfc)
 
+#define SUN8I_MIXER_FCC_GLOBAL_ALPHA_REG \
+		(0xAA000 + 0x90)
+
+#define SUN8I_MIXER_FCC_GLOBAL_ALPHA(x)			((x) << 24)
+#define SUN8I_MIXER_FCC_GLOBAL_ALPHA_MASK		GENMASK(31, 24)
+
 #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_EN		BIT(0)
 /* RGB mode should be set for RGB formats and cleared for YCbCr */
 #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_RGB_MODE		BIT(15)
 #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_OFFSET	8
 #define SUN8I_MIXER_CHAN_VI_LAYER_ATTR_FBFMT_MASK	GENMASK(12, 8)
+#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_MASK	GENMASK(2, 1)
 #define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MASK	GENMASK(31, 24)
 #define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA(x)	((x) << 24)
 
+#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_PIXEL	((0) << 1)
+#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_LAYER	((1) << 1)
+#define SUN50I_MIXER_CHAN_VI_LAYER_ATTR_ALPHA_MODE_COMBINED	((2) << 1)
+
 #define SUN8I_MIXER_CHAN_VI_DS_N(x)			((x) << 16)
 #define SUN8I_MIXER_CHAN_VI_DS_M(x)			((x) << 0)
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
