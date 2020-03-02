Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28424175866
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 11:33:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ShoQIQgQHGxZ7mQSGbxZYzvZnN25DGqZ+agDkn0Vkw8=; b=ReqU0hMUIX7Lqwd7IMqqI6tYOm
	cQ2fiL82cticYHhvsnhcYKoHmgCY/yVtOEs6/Te+ZVKoRPeKVLFmh+WrT5jAGYlM5CFzc8s/BdXRk
	DgVZtOXWMvTukgxhoKdGig3J6PsfgvUy2ItE1lz+789LwiWj+JazgxFsAAl+Q47uRA0SKmPW7X2p7
	jyqv47PhCUPaPUd4S6b0FROw9z6/GNT1sYhLdwUbZQ9S31gCWlpJ1+9LPNYxFUx2f2UonrRT7krUL
	7jqdifPHtkW3ekG5Rv4VwhPd1tLPTskwLKb42Sl6mUbv8upTZVUpIOGbGQcHousONI+XkyU00jhLU
	ue+uPzLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8iNo-000359-4p; Mon, 02 Mar 2020 10:33:08 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8iNC-0002b4-W2
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 10:32:32 +0000
Received: by mail-lf1-x142.google.com with SMTP id v6so7554948lfo.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Mar 2020 02:32:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uLIaYc1loUOAm4+uaD8q8oswzLA6rRb7RCx9g07PJYY=;
 b=MBzdb3+4hisLETfeMWwX64k7SKGvbtMnVn0gvRNrPJ/yOT8xOaVoRAw38w9Q33DZSj
 LbjFcT/5pUq4iYaS+RY+bW1hZcfUYHcKgYS2d2WPBdrADHT5MWzHtchifYkyw5QpiWWp
 Z11Rcyb4HptVPnNdttcwxL9zrJ31x3+vv04R9Uiw+jH2aTe3FVXzV4Yj0AxedG+LmzMX
 JG1DmLbZVM7nOw+sAjakxcA1rGGpjjLv5cBCgyVqCqSoBoD2KkeHAHkLFQY1tCNmTvzR
 O9okeWvAxznl5m1nFE/eFvvkNcofZVjpcTqGYseKxAfGJgKJBtgmzMtb5bQ9aHDn7/6z
 yAZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uLIaYc1loUOAm4+uaD8q8oswzLA6rRb7RCx9g07PJYY=;
 b=Fj/+Q2MNGKRs3q5qW2irqiFfJC3dH81M4fUnamuD8ptU2XRunbdewH5k6IrBQZRS/W
 asa7DwGkkvI7ebaO+f2ILeigRtMgc2lbFq54Lwx23b07Ftf3KU5EfmGuhDtdQZTPhpZv
 i6INw94z7MwOvOqmXXM1TAR+fAcwsOOPGLnsudkgln4mMm3p2Iz8tosvxCzraFAr/78m
 +mj77KysgkyFGNRIoWJ6N2+COyjXQ47BWXAt2vFizjZs4yw6lwRLwvpf2Iy4CNnuV9Dc
 dsSt/RKYtWZDec2EkZ9rbjEz+di3hsVc+DCPk46It0l8VggNPek0ks7TMXgg5k2UclDY
 PoEQ==
X-Gm-Message-State: ANhLgQ0Y92D5Qy3f1vDarXFzUVUlsb5EnNONHKWpjdHDvXfYATfuGEwl
 nA4A/pED5SVfvJLuqXJAWw8=
X-Google-Smtp-Source: ADFU+vtJQp2Aual2mzj/p6gUCjWYgeBfy1s6+U068zXpnJ/8pgXDb7KT5vxx/IM3Duh5s4e4SQqwbw==
X-Received: by 2002:a19:4f4e:: with SMTP id a14mr10315202lfk.175.1583145149536; 
 Mon, 02 Mar 2020 02:32:29 -0800 (PST)
Received: from localhost.localdomain ([149.255.131.2])
 by smtp.gmail.com with ESMTPSA id n21sm3895328lfh.2.2020.03.02.02.32.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 02:32:29 -0800 (PST)
From: Roman Stratiienko <r.stratiienko@gmail.com>
To: jernej.skrabec@siol.net,
	mripard@kernel.org,
	wens@csie.org
Subject: [PATCH v4 2/4] drm/sun4i: Add alpha property for sun8i and sun50i VI
 layer
Date: Mon,  2 Mar 2020 12:31:36 +0200
Message-Id: <20200302103138.17916-3-r.stratiienko@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200302103138.17916-1-r.stratiienko@gmail.com>
References: <.>
 <20200302103138.17916-1-r.stratiienko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_023231_049279_94886374 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [r.stratiienko[at]gmail.com]
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
Cc: airlied@linux.ie, Roman Stratiienko <r.stratiienko@gmail.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DE3.0 VI layers supports plane-global alpha channel.
DE2.0 FCC block have GLOBAL_ALPHA register that can be used as alpha source
for blender.

Add alpha property to the DRM plane and connect it to the
corresponding registers in the mixer.

Do not add alpha property for V3s SOC that have DE2.0 and 2 VI planes.

Signed-off-by: Roman Stratiienko <r.stratiienko@gmail.com>
Reviewed-by: Jernej Skrabec <jernej.skrabec@siol.net>

---
v2: Initial version by mistake
v3:
- Skip adding & applying alpha property if VI count > 1
V4:
- Changed author e-mail address to avoid mail rejecting
- Picked reviewed-by line
---
 drivers/gpu/drm/sun4i/sun8i_vi_layer.c | 48 +++++++++++++++++++++-----
 drivers/gpu/drm/sun4i/sun8i_vi_layer.h | 11 ++++++
 2 files changed, 51 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_vi_layer.c b/drivers/gpu/drm/sun4i/sun8i_vi_layer.c
index 2344938be3e4..f2469b5e97ee 100644
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
@@ -472,6 +496,14 @@ struct sun8i_vi_layer *sun8i_vi_layer_init_one(struct drm_device *drm,
 
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
