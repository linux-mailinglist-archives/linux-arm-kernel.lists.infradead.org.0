Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B32D51C6728
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 07:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7ecyfbPRxjEIw1jb3qt3lhZ4JthV7ANORqc1fnN1iYg=; b=Om3n2ZGD+qZ2bU
	Va1gpv4mkmEEqjXpQ9UvzM3I87HrvjsAPXNhS3QnTtR9MQR5Q7eMfijU2uD8DP4rs6CDlMFu/lAYa
	M2V/x2/hpcm6AjsDz2LaeXRi/GAcYQVyDW5ORHjDE/ZIp9Ph6FmTGhZMqxMB9GlmFaNXzh03+p530
	FN4SW9FQYF49VB/OJBoP4Ew/6HCrFZYg+Q4Fdp8v5varFIAW5BOrUUyRnylz+YgzZhLALHAIhUrCP
	FQdDpPgRkkc9I7fCsBW6MHFz7/9wIC30FLS7qmFDJ3TALC2PQ0gFNGrUyO+Gxa3qAxvqQUCW0VRyd
	AHSVLc069byciC8/lp/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWCC9-0006Kt-1o; Wed, 06 May 2020 05:02:09 +0000
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWCC2-0006Ji-LF
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 05:02:04 +0000
Received: by mail-pj1-x1042.google.com with SMTP id y6so283019pjc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 May 2020 22:01:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gRH6mP5DkzvDWC4BDrXU46q1GfnJROfRsSs9Enh6Aj8=;
 b=oCw0B/XiMV8seZdiFN6gUWTR0Y153v/PDpXeWEGiBgetI4eVkDccMuQaAEk607OF3X
 Q7/zPDc1KnH+3AbqlpwwsiKDForB2mZVM+HQINTsxSPjQh+cw9VIn49svgZyfWeF8x9q
 SHXK3mCi2hPaGJ8UWMwbQOKV5I35WHHMRowqo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gRH6mP5DkzvDWC4BDrXU46q1GfnJROfRsSs9Enh6Aj8=;
 b=jPuwVdQ98KjmxCrgv/rgSmKzToy1KU5vn2GXBw24EArUckNoK99UWduBF8rOhPs3fv
 5xlcXZXYyvBnibihyNvvNH9aWj80V5KdQeFYF3jBMScSbz8g7peR/x6KeQoTRsQ0fuAr
 chognqT9mKnYTJQSe28G2x7FE/prtafdlwaxeXZujA0kmzwFeZI/lh6AoXi7nqvoAm6i
 SIMDsV5M426mbqEmiCw4aNnkn81XMYlTL/hCpKlE5w5wELP7mVJiOoqMRRlbRIk3CSuS
 YvY+AipOKzJxlt+BJ5KYH10QNPo1AdxC1aKwgAqg4fKJKDQdjIMkRztpd/b4cXQ3y4Qa
 3CoA==
X-Gm-Message-State: AGi0PubgIGyu1wIUE1Z51gsowEv4YPo9+52ForBm/ee51EHuAlPGBws+
 WC4rnjikFiYbkUlTcGWHywP0pw==
X-Google-Smtp-Source: APiQypKPe+BFKl0nmU6VwfRqKkFP56+voyr9ECvJUtW0PAP3CNx9OxXNwP82M75LqkF/fVSOBs1lUw==
X-Received: by 2002:a17:90a:fb4e:: with SMTP id
 iq14mr6895190pjb.146.1588741318495; 
 Tue, 05 May 2020 22:01:58 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id 14sm512613pfy.38.2020.05.05.22.01.53
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 05 May 2020 22:01:57 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v2] [media] mtk-mdp: Remove states for format checks
Date: Wed,  6 May 2020 15:01:37 +1000
Message-Id: <20200506150122.v2.1.If64533ce7519a22cbd584fff07214bcf9cb9260b@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_220202_691659_A9792987 
X-CRM114-Status: GOOD (  16.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1042 listed in]
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
Cc: Francois Buergisser <fbuergisser@chromium.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Eizan Miyamoto <eizan@chromium.org>,
 Enric Balletbo I Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
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
Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
Reviewed-by: Enric Balletbo I Serra <enric.balletbo@collabora.com>
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
