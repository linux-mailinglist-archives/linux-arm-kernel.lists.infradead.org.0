Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BBE312E06F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 21:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rQ4c/emGwR7AkpKdup0mdWZvwcLwe0ltqd5qQVDKOzE=; b=UeJ0F33dpV2fZpsXMhH2P6rEis
	OzFuR3/LwyLBJZtt74KdXsGXhR89AkvoUA7uyMTRvxkRmRWqspPjcbeLH5i87wkMM08tBvZriGOfn
	o0ICTuOAyQjxlWqqYq0iFamHDK5F98HU3QmOziO4Tpxa4xESXCQ0Sqvz+VQtaiKv98RzyIx2tHD08
	THvPodyqSwNf8FDzKNyPf+OM5jope9Q4R3tmNBTTDDLBVfHK1UZgVEH3k3i+j3opfNRpril0zl029
	bhsQfJBe2VdFcJrUsGqmpXR0ov1dfMVT9wHOKAT3hv+hwGBIJl6fJNQJVNpYX3EWbPoBdxwgPtd+2
	zSWg0mcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imkv6-0006nH-UQ; Wed, 01 Jan 2020 20:48:44 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imkub-0006cg-Pn
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 20:48:15 +0000
Received: by mail-pg1-x543.google.com with SMTP id x8so20959727pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 12:48:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=2SofJSOHMh3xU8jt0Vq5SjDaM8NbyGjoDZ2alxMEzaI=;
 b=TkDoA/GOpLilfkhY45zdpROfXwaqSswl3PEiMomaAj61KJ2mPl7mZP4eoYd0D8cMbV
 koWhIsX4GgD9sXow8D3YnpagmMS9S3Zggr2taw+a4O2OxeMviQfz92w1IbqTFFy9EE07
 Xd6LHQKPaDyGI8HHEIlc40SYq797WDKBfXQvtomfv8Zof7+6cTpfDNVexoPuhCYJkTU5
 N6yOxF99DsuKns+Xry28KLYRYsFK/Nu5vcbb5xzuwo/UWaij5skCatk8MqZ8dDP/Zhox
 C0EmJSNdXTEcicCBbKTUWajjMGx9QTZpHpGaJFAmh6JCz2z9mAZJVXD3GcuZf+auztZD
 Xa8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=2SofJSOHMh3xU8jt0Vq5SjDaM8NbyGjoDZ2alxMEzaI=;
 b=W/cdpwQTxSeeCt1Dst4iXT8KebX/eImYYae+X4ievzhsab5lEo/1C0vl1tAytmCLRc
 DPZsiviEzVHzvbvc7wLr/RX4FuI1iXOk/MFvLeEaRah3S0HJ/Pnfc/LVHeqhBxfyEsOh
 aBmbCcihCJNOAkH7OvdaAaqPF38+sNFETMaJwzWOdylNxmlpgonb7pOOLuUEZwOMeLxV
 yphAtDx/v6U0F4GV2+HrBZr5Ubzsyo8h0ySDm3yuwIFWSTBCVp8KaXM4f1ztIgcI8Kbo
 63ZmZ85G/tueBvhaJdpAVVLYypKhMsI0YWqCZuke2+L3mYZvkg5UobJKjMSziM2TE9+d
 1noA==
X-Gm-Message-State: APjAAAXltoUmR39SRpQJleP08y1oF0hMhpoffG5pz/OEOPICUCdZaJQ9
 WRiz2a34XEOJWvqLMYx87szSbA==
X-Google-Smtp-Source: APXvYqwJxFrNQkwzAgXpkMn+jkAYit5FqFL/OM2wFthBwFkvOSC8RerPz0lZCpFgIYnOSkfBWmsWGQ==
X-Received: by 2002:a63:2355:: with SMTP id u21mr84065943pgm.179.1577911692958; 
 Wed, 01 Jan 2020 12:48:12 -0800 (PST)
Received: from virtualhost-PowerEdge-R810.synapse.com ([195.238.92.107])
 by smtp.gmail.com with ESMTPSA id z22sm53774752pfr.83.2020.01.01.12.48.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 12:48:12 -0800 (PST)
From: roman.stratiienko@globallogic.com
To: mripard@kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 jernej.skrabec@siol.net
Subject: [PATCH v3 2/2] drm/sun4i: Use CRTC size instead of PRIMARY plane size
 as mixer frame.
Date: Wed,  1 Jan 2020 22:47:50 +0200
Message-Id: <20200101204750.50541-2-roman.stratiienko@globallogic.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
References: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_124813_834881_F44F5A33 
X-CRM114-Status: GOOD (  14.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Roman Stratiienko <roman.stratiienko@globallogic.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Roman Stratiienko <roman.stratiienko@globallogic.com>

According to DRM documentation the only difference between PRIMARY
and OVERLAY plane is that each CRTC must have PRIMARY plane and
OVERLAY are optional.

Allow PRIMARY plane to have dimension different from full-screen.

Fixes: 5bb5f5dafa1a ("drm/sun4i: Reorganize UI layer code in DE2")
Signed-off-by: Roman Stratiienko <roman.stratiienko@globallogic.com>
---
v2:
- Split commit in 2 parts
- Add Fixes line to the commit message

v3:
- Address review comments of v2 + removed 3 local varibles
- Change 'Fixes' line

Since I've put more changes from my side, please review/sign again.
---
 drivers/gpu/drm/sun4i/sun8i_mixer.c    | 28 ++++++++++++++++++++++++
 drivers/gpu/drm/sun4i/sun8i_ui_layer.c | 30 --------------------------
 2 files changed, 28 insertions(+), 30 deletions(-)

diff --git a/drivers/gpu/drm/sun4i/sun8i_mixer.c b/drivers/gpu/drm/sun4i/sun8i_mixer.c
index 8b803eb903b8..658cf442c121 100644
--- a/drivers/gpu/drm/sun4i/sun8i_mixer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_mixer.c
@@ -257,6 +257,33 @@ const struct de2_fmt_info *sun8i_mixer_format_info(u32 format)
 	return NULL;
 }
 
+static void sun8i_mode_set(struct sunxi_engine *engine,
+			   struct drm_display_mode *mode)
+{
+	u32 size = SUN8I_MIXER_SIZE(mode->crtc_hdisplay, mode->crtc_vdisplay);
+	struct sun8i_mixer *mixer = engine_to_sun8i_mixer(engine);
+	u32 bld_base = sun8i_blender_base(mixer);
+	u32 val;
+
+	DRM_DEBUG_DRIVER("Mode change, updating global size W: %u H: %u\n",
+			 mode->crtc_hdisplay, mode->crtc_vdisplay);
+	regmap_write(mixer->engine.regs, SUN8I_MIXER_GLOBAL_SIZE, size);
+	regmap_write(mixer->engine.regs,
+		     SUN8I_MIXER_BLEND_OUTSIZE(bld_base), size);
+
+	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
+		val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
+	else
+		val = 0;
+
+	regmap_update_bits(mixer->engine.regs,
+			   SUN8I_MIXER_BLEND_OUTCTL(bld_base),
+			   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
+			   val);
+	DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
+			 val ? "on" : "off");
+}
+
 static void sun8i_mixer_commit(struct sunxi_engine *engine)
 {
 	DRM_DEBUG_DRIVER("Committing changes\n");
@@ -310,6 +337,7 @@ static struct drm_plane **sun8i_layers_init(struct drm_device *drm,
 static const struct sunxi_engine_ops sun8i_engine_ops = {
 	.commit		= sun8i_mixer_commit,
 	.layers_init	= sun8i_layers_init,
+	.mode_set	= sun8i_mode_set,
 };
 
 static struct regmap_config sun8i_mixer_regmap_config = {
diff --git a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
index 4343ea9f8cf8..f01ac55191f1 100644
--- a/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
+++ b/drivers/gpu/drm/sun4i/sun8i_ui_layer.c
@@ -120,36 +120,6 @@ static int sun8i_ui_layer_update_coord(struct sun8i_mixer *mixer, int channel,
 	insize = SUN8I_MIXER_SIZE(src_w, src_h);
 	outsize = SUN8I_MIXER_SIZE(dst_w, dst_h);
 
-	if (plane->type == DRM_PLANE_TYPE_PRIMARY) {
-		bool interlaced = false;
-		u32 val;
-
-		DRM_DEBUG_DRIVER("Primary layer, updating global size W: %u H: %u\n",
-				 dst_w, dst_h);
-		regmap_write(mixer->engine.regs,
-			     SUN8I_MIXER_GLOBAL_SIZE,
-			     outsize);
-		regmap_write(mixer->engine.regs,
-			     SUN8I_MIXER_BLEND_OUTSIZE(bld_base), outsize);
-
-		if (state->crtc)
-			interlaced = state->crtc->state->adjusted_mode.flags
-				& DRM_MODE_FLAG_INTERLACE;
-
-		if (interlaced)
-			val = SUN8I_MIXER_BLEND_OUTCTL_INTERLACED;
-		else
-			val = 0;
-
-		regmap_update_bits(mixer->engine.regs,
-				   SUN8I_MIXER_BLEND_OUTCTL(bld_base),
-				   SUN8I_MIXER_BLEND_OUTCTL_INTERLACED,
-				   val);
-
-		DRM_DEBUG_DRIVER("Switching display mixer interlaced mode %s\n",
-				 interlaced ? "on" : "off");
-	}
-
 	/* Set height and width */
 	DRM_DEBUG_DRIVER("Layer source offset X: %d Y: %d\n",
 			 state->src.x1 >> 16, state->src.y1 >> 16);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
