Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9B9F1B2C83
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 18:21:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T3fj+egQ1pNY8hsuJs0LBftOR6huQgBYeHLvNGfZH/g=; b=PiiEXJaCFv0Hi8
	60kFCmeukFiNzdTGcDODmd8oXuKlLjwZh/jeTZ8Z4792XOVx/4cA19r1KIL4fbQb+R8AxOtqPq8P1
	CDcKtoB9j6zHLhpoelhk571MPUysa3P/kXlwHUou9K24/RpEFyEaMcwga2+vPEltX0gD5peNuI0O5
	b9nLlA1fGiYfDLXCI1NEOM/wQWInTLPnVlTI/OL0ZBjJCjaH4SnRjsTpM3o7iqfJS8cYRMuUJtsSl
	T67l3bHZ8YAeYVWFZBplnbLxxBMssLNVcAvZyshqBitoSGlGQXv/D3wZE+ASYS/EIO8Fx3YjLzEEh
	RAORZvHr/7VknB6zBOgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQve1-00086M-N9; Tue, 21 Apr 2020 16:21:09 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQvZE-0001jC-P0
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 16:16:21 +0000
Received: by mail-wr1-x443.google.com with SMTP id j2so17085659wrs.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 09:16:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bxjlfwjwrOxt5UTQatxMHEDDG1cEpZr3A7ziLWB5/Ps=;
 b=TJcxWuWz1iZePtAcZ/E3AYbh3x+CNrtUx8v+FYQOP4C4vDnuaNYFBe62GSKGvLmjbM
 Woqrs/gyHv5eVrRzPm8uUypT5aAAZAg20wQCY3Fve0YvAmOSpOlhE3akCajen3htbIdd
 G2oi3Y5BAT5RaFfbPBeAbQSu1rRlHjOhEMOO5iYTDUWEyoG4s9TFWs2YEV58HKQBpqkC
 vwCJ3FFAqXVQkX29Er0wLd6IufmyQne/UOYpZFYBhswlmjqJHMa8dYNs3eO0nzq0oR6P
 +3zz/pq8pkMR6cm2GA0c25SjOtEGAOJz9KDoorgX7XKsCGARbp3epRV8jwt0VEEnfFKQ
 iDZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bxjlfwjwrOxt5UTQatxMHEDDG1cEpZr3A7ziLWB5/Ps=;
 b=RGn8fScJOlN9D/NNZDFbEBfoMcHGEzvKTxtxYbvQatNxEIIof6VAdfMkjiQIFfZFqs
 +nYLg6wSvW22N5W2ZyokDEtKb+POwRfqQjf0ALiflb+uibb62Q588NP8gyGjoxXdPMLT
 6vLUUOcu5qZ8WBh5eLEs/HNTGWxW/oVtdWrYlmzJ62NXA9Zfc6IA109F2Th4uqU1pHNv
 sS5C0mAQzSg/Nx2nw0NmH1MHmJ/wZ7nVWgl3LMZqdASVCe0vUWYVREB3ORxJqs8hkvrn
 cFPw4uGBkalHRXYjyPnrkaW9u1+NiyUkcSB+hiLdXwGKYpNLT+VMEabwOEKQxz5SQzSh
 vP4A==
X-Gm-Message-State: AGi0PuaV/fGhy7U8eHWdTYcF4OwuTwBMctZGmRkrm0r7GVFqyXRtdNLk
 a+/dN2edarQr21a+k+w6tj1hta2q2ng=
X-Google-Smtp-Source: APiQypKSrF90nkPUeJv1B6kw+A1LEftlhBMrqlOM7dX47kD7No68QmGRWBakv5/GctmtsKTElciSog==
X-Received: by 2002:adf:b310:: with SMTP id j16mr23012380wrd.95.1587485770685; 
 Tue, 21 Apr 2020 09:16:10 -0700 (PDT)
Received: from localhost.localdomain ([2a01:e35:2ec0:82b0:39cc:a07:8b48:cc56])
 by smtp.gmail.com with ESMTPSA id
 m8sm4410873wrx.54.2020.04.21.09.16.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 09:16:10 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: daniel@ffwll.ch,
	dri-devel@lists.freedesktop.org
Subject: [PATCH v6 4/6] drm/meson: overlay: setup overlay for Amlogic FBC
 Memory Saving mode
Date: Tue, 21 Apr 2020 18:15:57 +0200
Message-Id: <20200421161559.2347-5-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200421161559.2347-1-narmstrong@baylibre.com>
References: <20200421161559.2347-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_091612_870421_D1991850 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Setup the Amlogic FBC decoder for the VD1 video overlay plane to use
a different superblock size for the Memory Saving mode.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/gpu/drm/meson/meson_overlay.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/meson/meson_overlay.c b/drivers/gpu/drm/meson/meson_overlay.c
index 2713d008cee8..b5c502876428 100644
--- a/drivers/gpu/drm/meson/meson_overlay.c
+++ b/drivers/gpu/drm/meson/meson_overlay.c
@@ -487,6 +487,10 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 					  AFBC_HOLD_LINE_NUM(8) |
 					  AFBC_BURST_LEN(2);
 
+		if (fb->modifier & DRM_FORMAT_MOD_AMLOGIC_FBC(0,
+						AMLOGIC_FBC_OPTION_MEM_SAVING))
+			priv->viu.vd1_afbc_mode |= AFBC_BLK_MEM_MODE;
+
 		priv->viu.vd1_afbc_en = 0x1600 | AFBC_DEC_ENABLE;
 
 		priv->viu.vd1_afbc_conv_ctrl = AFBC_CONV_LBUF_LEN(256);
@@ -672,12 +676,17 @@ static void meson_overlay_atomic_update(struct drm_plane *plane,
 	}
 
 	if (priv->viu.vd1_afbc) {
+		/* Default mode is 4k per superblock */
+		unsigned long block_size = 4096;
 		unsigned long body_size;
 
-		/* Default mode is 4k per superblock */
+		/* 8bit mem saving mode is 3072bytes per superblock */
+		if (priv->viu.vd1_afbc_mode & AFBC_BLK_MEM_MODE)
+			block_size = 3072;
+
 		body_size = (ALIGN(priv->viu.vd1_stride0, 64) / 64) *
 			    (ALIGN(priv->viu.vd1_height0, 32) / 32) *
-			    4096;
+			    block_size;
 
 		priv->viu.vd1_afbc_body_addr = priv->viu.vd1_addr0 >> 4;
 
@@ -735,6 +744,9 @@ static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
 		unsigned int layout = modifier &
 			DRM_FORMAT_MOD_AMLOGIC_FBC(
 				__fourcc_mod_amlogic_layout_mask, 0);
+		unsigned int options =
+			(modifier >> __fourcc_mod_amlogic_options_shift) &
+			__fourcc_mod_amlogic_options_mask;
 
 		if (format != DRM_FORMAT_YUV420_8BIT &&
 		    format != DRM_FORMAT_YUV420_10BIT) {
@@ -749,6 +761,13 @@ static bool meson_overlay_format_mod_supported(struct drm_plane *plane,
 			return false;
 		}
 
+		if (options &&
+		    options != AMLOGIC_FBC_OPTION_MEM_SAVING) {
+			DRM_DEBUG_KMS("%llx invalid layout %x\n",
+				      modifier, layout);
+			return false;
+		}
+
 		return true;
 	}
 
@@ -782,6 +801,8 @@ static const uint32_t supported_drm_formats[] = {
 };
 
 static const uint64_t format_modifiers[] = {
+	DRM_FORMAT_MOD_AMLOGIC_FBC(AMLOGIC_FBC_LAYOUT_BASIC,
+				   AMLOGIC_FBC_OPTION_MEM_SAVING),
 	DRM_FORMAT_MOD_AMLOGIC_FBC(AMLOGIC_FBC_LAYOUT_BASIC, 0),
 	DRM_FORMAT_MOD_LINEAR,
 	DRM_FORMAT_MOD_INVALID,
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
