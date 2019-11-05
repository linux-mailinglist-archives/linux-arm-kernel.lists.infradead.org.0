Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A99F0807
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 22:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7FYWpushm8QCQG3DW+Kf3/5L6oUtssBioqF5D6PxAQ=; b=KOjiBCOcBoVs+A
	iIYqNdE5rc5LUyC1HjotF2Ob91fzwVVu8Wh7UYPGQSeuPB4jQ4ihXtV3a/JaB0W8h/ZIG13vdSxxd
	3M+0AgXqSOVCxt4A4tzC2agItKAA/He8gh4f/YX9vWFyfo8RIh7m8PPO/zLQOckgncIo8QEnt598F
	tw1Zn0rvyIrYWUoSD50o+lgkmyNns/odUqO4ArJH+biKPyh8JWedMkBvNV5iYFezZ7BgFmqnrYOb/
	65IfhdcDIq2VaICehwnm+1eQO7gKETzchd5jy+Lw312+ebAN0+Sz2dL/8AATc3QXal775AO+3MFmp
	jAyQGU7rnr/L4QLNqfZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS6BD-00010q-Eh; Tue, 05 Nov 2019 21:15:59 +0000
Received: from mail-yb1-xb43.google.com ([2607:f8b0:4864:20::b43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS66N-00031o-CJ
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 21:11:06 +0000
Received: by mail-yb1-xb43.google.com with SMTP id w6so8431943ybj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 13:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zsWMYnPd4Aw1CcoU1mvThLbX9TGaEGFP0Ia7fKCg/po=;
 b=XLW1y6CQbRxMSOYcoi5wZSuKszC0GIywu0TVxMMjfwFK1PnNXWKRUIH6TK4/d5kMO1
 /ww32khexerF4EmfttsPK6IEubjlkxvsbV1NZrgKzY4l5FzqonI+/eBp6TEZTCPzs00A
 iGztN2ZPkPUH115D6+aBVICxtW0khGZIU2sJZUOV8N8XRiodrapKWOk78mTGZA+v90p/
 b9tPSxG9B9wJOzQO27Rq4m2HtAEoEfcxFb5MZ3rtqbe7YfLhS+cL9aan0PaflwhRfSnM
 dWXbhFH5Ia/KEA98zjYpIdoCmh+l55LuEdIoIAxUjARlKE626MTmrMQ2Uhdgb9RfG5Hw
 cXHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zsWMYnPd4Aw1CcoU1mvThLbX9TGaEGFP0Ia7fKCg/po=;
 b=niCZpiyLGOF5zujh92NwcSeoPdO+Hb37VTK2zww1TH8/1CxzzkTcts+RmV9H8Hyz0D
 8gyXAzUD9TKUAwhwoY3x873wTrjgElT6bNaEZ82oW0HQF3FW44hLe9+YtgtCVn4YWNlg
 3pwjrGwis7TWg/KoIs0JqsNc5kzYkfHHeTbHHwnE4LBZVNylGKm+gzfFLYToD2FHx/ZV
 OfprEWxTyLLUicytg0a0a77I+KCR2SRRaDlIkrjKHJlDd/7/kXDQHgCSMNi5xfYIP+Ov
 deO8r4n04mn78bFF5mJcYqi2Pdw/KVU2zQEh1Qr09U4nWESwQKy4/YwqVevwmsELKR+T
 yLDg==
X-Gm-Message-State: APjAAAXzA/RjvoxknLjZBwOw7CK5f1x1NCSQJIlgH1xysy8KdErjdRqF
 AA2PdOovaG83GrrU1nwh72/eUQ==
X-Google-Smtp-Source: APXvYqzOzXSiMBon8QdPw00BMVJRl1tQsrr2noW3epgpCXkqmtMfVGaEK0hFffrZka1kAFUZhMO3RA==
X-Received: by 2002:a25:bd88:: with SMTP id f8mr28380318ybh.135.1572988257623; 
 Tue, 05 Nov 2019 13:10:57 -0800 (PST)
Received: from rosewood.cam.corp.google.com
 ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id j66sm1815216ywb.101.2019.11.05.13.10.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 13:10:57 -0800 (PST)
From: Sean Paul <sean@poorly.run>
To: dri-devel@lists.freedesktop.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH v2 5/7] drm/mediatek: Support reflect-y plane rotation
Date: Tue,  5 Nov 2019 16:10:22 -0500
Message-Id: <20191105211034.123937-6-sean@poorly.run>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
In-Reply-To: <20191105211034.123937-1-sean@poorly.run>
References: <20191105211034.123937-1-sean@poorly.run>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_131059_481344_EFF96BD6 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dcastagna@chromium.org, matthias.bgg@gmail.com, mcasas@chromium.org,
 Sean Paul <seanpaul@chromium.org>, p.zabel@pengutronix.de,
 frkoenig@chromium.org, ck.hu@mediatek.com,
 linux-arm-kernel@lists.infradead.org, markyacoub@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Sean Paul <seanpaul@chromium.org>

Expose the rotation property and handle REFLECT_Y rotations.

Changes in v2:
- Move the check logic into mtk_disp_ovl.c since it doesn't apply to rdma

Link to v1: https://lists.freedesktop.org/archives/dri-devel/2019-November/242312.html

Cc: Fritz Koenig <frkoenig@chromium.org>
Cc: Daniele Castagna <dcastagna@chromium.org>
Cc: Miguel Casas <mcasas@chromium.org>
Cc: Mark Yacoub <markyacoub@google.com>
Signed-off-by: Sean Paul <seanpaul@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_disp_ovl.c | 42 +++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
index 14878ebf59d7..fae10aead3d5 100644
--- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
+++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
@@ -3,6 +3,8 @@
  * Copyright (c) 2015 MediaTek Inc.
  */
 
+#include <drm/drm_fourcc.h>
+
 #include <linux/clk.h>
 #include <linux/component.h>
 #include <linux/module.h>
@@ -50,6 +52,7 @@
 					OVL_CON_CLRFMT_RGB : 0)
 #define	OVL_CON_AEN		BIT(8)
 #define	OVL_CON_ALPHA		0xff
+#define	OVL_CON_VIRT_FLIP	BIT(9)
 
 struct mtk_disp_ovl_data {
 	unsigned int addr;
@@ -137,6 +140,38 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
 	return ovl->data->layer_nr;
 }
 
+static unsigned int mtk_ovl_supported_rotations(struct mtk_ddp_comp *comp)
+{
+	return DRM_MODE_ROTATE_0 | DRM_MODE_REFLECT_Y;
+}
+
+static int mtk_ovl_layer_check(struct mtk_ddp_comp *comp, unsigned int idx,
+			       struct mtk_plane_state *mtk_state)
+{
+	struct drm_plane_state *state = &mtk_state->base;
+	unsigned int rotation = 0;
+
+	rotation = drm_rotation_simplify(state->rotation,
+					 DRM_MODE_ROTATE_0 |
+					 DRM_MODE_REFLECT_Y);
+	rotation &= ~DRM_MODE_ROTATE_0;
+
+	/* We can only do reflection, not rotation */
+	if ((rotation & DRM_MODE_ROTATE_MASK) != 0)
+		return -EINVAL;
+
+	/*
+	 * TODO: Rotating/reflecting YUV buffers is not supported at this time.
+	 *	 Only RGB[AX] variants are supported.
+	 */
+	if (state->fb->format->is_yuv && rotation != 0)
+		return -EINVAL;
+
+	state->rotation = rotation;
+
+	return 0;
+}
+
 static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
 {
 	unsigned int reg;
@@ -229,6 +264,11 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
 	if (idx != 0)
 		con |= OVL_CON_AEN | OVL_CON_ALPHA;
 
+	if (pending->rotation & DRM_MODE_REFLECT_Y) {
+		con |= OVL_CON_VIRT_FLIP;
+		addr += (pending->height - 1) * pending->pitch;
+	}
+
 	writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
 	writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
 	writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
@@ -263,9 +303,11 @@ static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
 	.stop = mtk_ovl_stop,
 	.enable_vblank = mtk_ovl_enable_vblank,
 	.disable_vblank = mtk_ovl_disable_vblank,
+	.supported_rotations = mtk_ovl_supported_rotations,
 	.layer_nr = mtk_ovl_layer_nr,
 	.layer_on = mtk_ovl_layer_on,
 	.layer_off = mtk_ovl_layer_off,
+	.layer_check = mtk_ovl_layer_check,
 	.layer_config = mtk_ovl_layer_config,
 	.bgclr_in_on = mtk_ovl_bgclr_in_on,
 	.bgclr_in_off = mtk_ovl_bgclr_in_off,
-- 
Sean Paul, Software Engineer, Google / Chromium OS


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
