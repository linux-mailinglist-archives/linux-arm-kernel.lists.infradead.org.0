Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED2261C4BB9
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 04:07:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=27Sp4I2RXgi5R/TdDKqITgh9CeWmuEPDk43xDbkEABA=; b=hNs1Gf+NDM5Q3q
	fF9cst965Ohvrl4Rbt0BgWrQwxP7UiAeDT4PcpMNuYFwEurvXpHE15otfkXYKRI+cX6BFqIxsN9Bs
	3xZWxOIP4/lOIBuMHl1XskDrXnyfU24ziWwluA9dwHgUqj+R5AEtct5oTZbgk6x67rHsKzVZv1Ez+
	IFsV9OfEOdDZOnWwYS6uzA6gXRFG3Fg+t0QDI9rfCHRIorpb/k5hKyvo9iMEssqRZXLcQHRgiMGqn
	803Ud1CMRV/hi1i4rq6APZACT59Vh7D3AN/5IFGfG6sMsIzdTM44IEu6vNqyLdi1uwqJ0o7AA6kvs
	T+b9PQD4uAdITFNAchAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVmze-0001c8-8S; Tue, 05 May 2020 02:07:34 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVmzW-0001ZV-BU
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 02:07:28 +0000
Received: by mail-pl1-x642.google.com with SMTP id z6so176767plk.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 19:07:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZPosvbquSRPM2qokONJTC41jB9sKVgsjvzmGgfAPG8U=;
 b=c/TWMLnqo5Dm80uDR9KPOfCKWZ+dggeudxOuSXVusW70ZtxQ9rjhGVoOvgX4pr+Q/G
 Ew71YhnoA5+0KPMoV5orhzarX7mr1IVyjgEmVcC8zS8KEJ5E9zaVo9w4BV/AZq34VCjq
 CstdcVYSIb68dcB2YZc351VfilFeOB/TceziM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ZPosvbquSRPM2qokONJTC41jB9sKVgsjvzmGgfAPG8U=;
 b=AqJjz6t04vgL4Bgr1tba72R8Ix9s2m9nSWfCTi9IU1Tfj5J7/TCU4ARAR8JWClNS6A
 9NBstEjrt+nqv5HtVuecy8CWL/vF0Df/TyVM5w9mbhE64WFFZlUv7LAtzVy4X/8yNzw2
 DTvOqUgfdFI+k6G4NdAbNhE1d1h2zQteF/u8zTC0vi8cb6mYgy2FL6qsl89taJhV62RB
 yVZcP+PNtO/CocIkVPUOi2exzaWj1loTq7tj15yWyQkaZ4IAoCjSosb63e+HOgnJ3g9F
 MHlIz0OVOKyvpv+S9dFGqXkuPSQ5r/TTl3KR1byJ2piavJT/IAf8ZqdRAggveN5tOZhj
 4p5Q==
X-Gm-Message-State: AGi0PuZmWt2gJgB1MWzypaQ/o4K7KOCc2p5XRQ6zACsljRKOANaxiIMa
 DI4zzShrn6ZfioA0ZanR8u83xw==
X-Google-Smtp-Source: APiQypLiH1c6WnP3fPEUMjWHIWyHNFaHdWtb/Dsnac1aifbf7291ALSCyDTGRaolWA1kGk1whE8TEw==
X-Received: by 2002:a17:90a:d0c3:: with SMTP id y3mr45161pjw.133.1588644444435; 
 Mon, 04 May 2020 19:07:24 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id s4sm287692pgv.78.2020.05.04.19.07.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 19:07:23 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1] [media] mtk-mdp: Remove states for format checks
Date: Tue,  5 May 2020 12:06:58 +1000
Message-Id: <20200505113410.v1.1.I30f6c1f7d6001931439d5950f31b1b0f8ca9b6e8@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_190726_387223_834251C7 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Francois Buergisser <fbuergisser@chromium.org>,
 Houlong Wei <houlong.wei@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Eizan Miyamoto <eizan@chromium.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Francois Buergisser <fbuergisser@chromium.org>

The mtk-mdp driver uses states to check if the formats have been set
on the capture and output when turning the streaming on, setting
controls or setting the selection rectangles.
Those states are reset when 0 buffers are requested like when checking
capabilities.
This patch removes all format checks and set one by default as queues in
V4L2 are expected to always have a format set.

https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/vidioc-streamon.html
https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/vidioc-g-ctrl.html
https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/vidioc-g-selection.html

Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
Reviewed-by: Tomasz Figa <tfiga@chromium.org>
(cherry picked from commit 1887bb3924d030352df179347c8962248cdb903e)
Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_core.h |  2 -
 drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c  | 90 +++++++------------
 2 files changed, 34 insertions(+), 58 deletions(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
index bafcccd71f31..dd130cc218c9 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
@@ -28,8 +28,6 @@
 #define MTK_MDP_FMT_FLAG_CAPTURE	BIT(1)
 
 #define MTK_MDP_VPU_INIT		BIT(0)
-#define MTK_MDP_SRC_FMT			BIT(1)
-#define MTK_MDP_DST_FMT			BIT(2)
 #define MTK_MDP_CTX_ERROR		BIT(5)
 
 /**
diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c b/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
index 821f2cf325f0..bb9caaf513bc 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
@@ -369,13 +369,6 @@ void mtk_mdp_ctx_state_lock_set(struct mtk_mdp_ctx *ctx, u32 state)
 	mutex_unlock(&ctx->slock);
 }
 
-static void mtk_mdp_ctx_state_lock_clear(struct mtk_mdp_ctx *ctx, u32 state)
-{
-	mutex_lock(&ctx->slock);
-	ctx->state &= ~state;
-	mutex_unlock(&ctx->slock);
-}
-
 static bool mtk_mdp_ctx_state_is_set(struct mtk_mdp_ctx *ctx, u32 mask)
 {
 	bool ret;
@@ -726,11 +719,6 @@ static int mtk_mdp_m2m_s_fmt_mplane(struct file *file, void *fh,
 		ctx->quant = pix_mp->quantization;
 	}
 
-	if (V4L2_TYPE_IS_OUTPUT(f->type))
-		mtk_mdp_ctx_state_lock_set(ctx, MTK_MDP_SRC_FMT);
-	else
-		mtk_mdp_ctx_state_lock_set(ctx, MTK_MDP_DST_FMT);
-
 	mtk_mdp_dbg(2, "[%d] type:%d, frame:%dx%d", ctx->id, f->type,
 		    frame->width, frame->height);
 
@@ -742,13 +730,6 @@ static int mtk_mdp_m2m_reqbufs(struct file *file, void *fh,
 {
 	struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
 
-	if (reqbufs->count == 0) {
-		if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
-			mtk_mdp_ctx_state_lock_clear(ctx, MTK_MDP_SRC_FMT);
-		else
-			mtk_mdp_ctx_state_lock_clear(ctx, MTK_MDP_DST_FMT);
-	}
-
 	return v4l2_m2m_reqbufs(file, ctx->m2m_ctx, reqbufs);
 }
 
@@ -758,14 +739,6 @@ static int mtk_mdp_m2m_streamon(struct file *file, void *fh,
 	struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
 	int ret;
 
-	/* The source and target color format need to be set */
-	if (V4L2_TYPE_IS_OUTPUT(type)) {
-		if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_SRC_FMT))
-			return -EINVAL;
-	} else if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_DST_FMT)) {
-		return -EINVAL;
-	}
-
 	if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_VPU_INIT)) {
 		ret = mtk_mdp_vpu_init(&ctx->vpu);
 		if (ret < 0) {
@@ -899,24 +872,21 @@ static int mtk_mdp_m2m_s_selection(struct file *file, void *fh,
 		frame = &ctx->d_frame;
 
 	/* Check to see if scaling ratio is within supported range */
-	if (mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_DST_FMT | MTK_MDP_SRC_FMT)) {
-		if (V4L2_TYPE_IS_OUTPUT(s->type)) {
-			ret = mtk_mdp_check_scaler_ratio(variant, new_r.width,
-				new_r.height, ctx->d_frame.crop.width,
-				ctx->d_frame.crop.height,
-				ctx->ctrls.rotate->val);
-		} else {
-			ret = mtk_mdp_check_scaler_ratio(variant,
-				ctx->s_frame.crop.width,
-				ctx->s_frame.crop.height, new_r.width,
-				new_r.height, ctx->ctrls.rotate->val);
-		}
+	if (V4L2_TYPE_IS_OUTPUT(s->type))
+		ret = mtk_mdp_check_scaler_ratio(variant, new_r.width,
+			new_r.height, ctx->d_frame.crop.width,
+			ctx->d_frame.crop.height,
+			ctx->ctrls.rotate->val);
+	else
+		ret = mtk_mdp_check_scaler_ratio(variant,
+			ctx->s_frame.crop.width,
+			ctx->s_frame.crop.height, new_r.width,
+			new_r.height, ctx->ctrls.rotate->val);
 
-		if (ret) {
-			dev_info(&ctx->mdp_dev->pdev->dev,
-				"Out of scaler range");
-			return -EINVAL;
-		}
+	if (ret) {
+		dev_info(&ctx->mdp_dev->pdev->dev,
+			"Out of scaler range");
+		return -EINVAL;
 	}
 
 	s->r = new_r;
@@ -989,7 +959,6 @@ static int mtk_mdp_s_ctrl(struct v4l2_ctrl *ctrl)
 	struct mtk_mdp_ctx *ctx = ctrl_to_ctx(ctrl);
 	struct mtk_mdp_dev *mdp = ctx->mdp_dev;
 	struct mtk_mdp_variant *variant = mdp->variant;
-	u32 state = MTK_MDP_DST_FMT | MTK_MDP_SRC_FMT;
 	int ret = 0;
 
 	if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE)
@@ -1003,17 +972,15 @@ static int mtk_mdp_s_ctrl(struct v4l2_ctrl *ctrl)
 		ctx->vflip = ctrl->val;
 		break;
 	case V4L2_CID_ROTATE:
-		if (mtk_mdp_ctx_state_is_set(ctx, state)) {
-			ret = mtk_mdp_check_scaler_ratio(variant,
-					ctx->s_frame.crop.width,
-					ctx->s_frame.crop.height,
-					ctx->d_frame.crop.width,
-					ctx->d_frame.crop.height,
-					ctx->ctrls.rotate->val);
-
-			if (ret)
-				return -EINVAL;
-		}
+		ret = mtk_mdp_check_scaler_ratio(variant,
+				ctx->s_frame.crop.width,
+				ctx->s_frame.crop.height,
+				ctx->d_frame.crop.width,
+				ctx->d_frame.crop.height,
+				ctx->ctrls.rotate->val);
+
+		if (ret)
+			return -EINVAL;
 
 		ctx->rotation = ctrl->val;
 		break;
@@ -1090,6 +1057,7 @@ static int mtk_mdp_m2m_open(struct file *file)
 	struct video_device *vfd = video_devdata(file);
 	struct mtk_mdp_ctx *ctx = NULL;
 	int ret;
+	struct v4l2_format default_format;
 
 	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
@@ -1144,6 +1112,16 @@ static int mtk_mdp_m2m_open(struct file *file)
 	list_add(&ctx->list, &mdp->ctx_list);
 	mutex_unlock(&mdp->lock);
 
+	/* Default format */
+	memset(&default_format, 0, sizeof(default_format));
+	default_format.type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
+	default_format.fmt.pix_mp.width = 32;
+	default_format.fmt.pix_mp.height = 32;
+	default_format.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_YUV420M;
+	mtk_mdp_m2m_s_fmt_mplane(file, &ctx->fh, &default_format);
+	default_format.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
+	mtk_mdp_m2m_s_fmt_mplane(file, &ctx->fh, &default_format);
+
 	mtk_mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);
 
 	return 0;
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
