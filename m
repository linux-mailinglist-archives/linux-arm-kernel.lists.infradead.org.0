Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB26B1C6351
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 23:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TYtHVstNI+PP4pPn8iQpwrP4iBcEqAz30YBg76UIvG0=; b=bNgHHm+YLBfOcB
	YpGMK985Io0jP41Ujx/xfJItKS9XGtukNDF+ONVwj7JIPPtoFr1Jalb4NKwfuQYaNxC1wIbCfkivV
	4Kmz2YW+fJJ+NLXalRvMe3zSXQA2S68eKqPSDW4mgDzGiDJ+o2wIKxzcMTSpJGI4zfLTExeDRkeGs
	Ypbo7ldPLweH7idc4wqtRvkLeXrgdf8s37SD1Zt/u8qnouOLqhBa7dl2ylWQcjZKqvsJtBEhBAj6w
	gCvApPXaOdBboZ2jsTZXY1DfvSOp3/GZkhCZlphrB4bCbTYTxXNExNzlSyd5XYpnLMI2r3hZIC86V
	2wU4xseM0B/lV62Of34Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW5O2-0000kf-Ss; Tue, 05 May 2020 21:45:59 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW5Np-0000jF-L0; Tue, 05 May 2020 21:45:47 +0000
Received: by mail-qv1-xf43.google.com with SMTP id v10so63966qvr.2;
 Tue, 05 May 2020 14:45:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=s66XPkgMwGFSFmHdN4XrXjad6dUlsV4ovrv9xRFYc8U=;
 b=kVMitITx0hzfbz/PVolq7QDRCcCPFBsT3hxiGclz/IUyW6it4xuWFiSfiK4zDEHln4
 HrLkQ4yq6L7xaIZclHnqhS4pQuJs8IbV3lFRVFOK7dv8Gdgk3AU3DiwN1VKt6yi+u1kH
 KuD+4TLIWVojzJixQk96HMbBUc1z5UOsDd7ik2y//0NYRle7NY/83Z3xCibxeHrpcVs9
 ngR21sNPfyKgAIwPjpEsOHCQLvK4pnBnxNyJui4jEHyVwlnHILauPoV1l7VfxYoaaDgJ
 EpMaVY/hFrnyEXK//cCvBaTtNpGQuoglfsLW12WsNEytnwft7eMinWJbbraGbS17jxx/
 hK2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=s66XPkgMwGFSFmHdN4XrXjad6dUlsV4ovrv9xRFYc8U=;
 b=oJ7XcwwS63wiOO4G2nFlUyISD+GJ2D1LrbQC+rmbP7ZclkDf16T83dJ4PY4jxLq5kL
 XqZZ5J8WH4T5nWz0mFUl0INDOsZgYgo0zbmy/py8cApJhzP5yuRI/kdv8WqAg/Yl1MWe
 pYv4RQcnyhXDw9EsY362s8s+CaVLqicgr3xJDlpnU3nkEZTG4XVkR9aK/ArFjOLwhYE1
 yT4KVuN5NhPRdLfmb0kXCAZ9R4pGAvxK/ot463AzsAa4so58EW/ea1T6PpWec/G1QAjY
 4Y4mIJvqIb3IO4q3F3a9q2488FJjJN/8QF9A4gPJaS2hxkHEOnObjuPK+Kjrnf56vC1U
 M8zQ==
X-Gm-Message-State: AGi0PuYZR1Q3pP2x+FaQmThdMjZeq3dC0mzwSZZn7+5rYujdDIX/JMcg
 sJLRtIHSI+05WZReX7aMqIP0kf2qKkeZy2SYhPI=
X-Google-Smtp-Source: APiQypJFCA7bIBQcIPXGf65hMMzl5Ubgd/CRnfOw5kselIiTWTYUO4nuMhm6aC6/ObAD90bzhq4CH0CGhSFXW807ufs=
X-Received: by 2002:a0c:ed42:: with SMTP id v2mr4945783qvq.94.1588715143885;
 Tue, 05 May 2020 14:45:43 -0700 (PDT)
MIME-Version: 1.0
References: <20200505113410.v1.1.I30f6c1f7d6001931439d5950f31b1b0f8ca9b6e8@changeid>
In-Reply-To: <20200505113410.v1.1.I30f6c1f7d6001931439d5950f31b1b0f8ca9b6e8@changeid>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 5 May 2020 23:45:32 +0200
Message-ID: <CAFqH_50grfy_Bd_R7tPvKu=kmuUU96+G74iZXzmP0F_LaJJa2Q@mail.gmail.com>
Subject: Re: [PATCH v1] [media] mtk-mdp: Remove states for format checks
To: Eizan Miyamoto <eizan@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_144545_718351_C32B1B44 
X-CRM114-Status: GOOD (  23.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [eballetbo[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Francois Buergisser <fbuergisser@chromium.org>,
 LKML <linux-kernel@vger.kernel.org>, Houlong Wei <houlong.wei@mediatek.com>,
 Tomasz Figa <tfiga@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Eizan,

Thank you for your patch. Two trivial comments, see below ...

Missatge de Eizan Miyamoto <eizan@chromium.org> del dia dt., 5 de maig
2020 a les 4:07:
>
> From: Francois Buergisser <fbuergisser@chromium.org>
>
> The mtk-mdp driver uses states to check if the formats have been set
> on the capture and output when turning the streaming on, setting
> controls or setting the selection rectangles.
> Those states are reset when 0 buffers are requested like when checking
> capabilities.
> This patch removes all format checks and set one by default as queues in
> V4L2 are expected to always have a format set.
>
> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/vidioc-streamon.html
> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/vidioc-g-ctrl.html
> https://linuxtv.org/downloads/v4l-dvb-apis/uapi/v4l/vidioc-g-selection.html
>
> Signed-off-by: Francois Buergisser <fbuergisser@chromium.org>
> Reviewed-by: Tomasz Figa <tfiga@chromium.org>

I guess that this Reviewed-by comes from a previous Gerrit workflow.
Usually, when you submit a patch to upstream you should remove the
Reviewed-by internally done, so I'd remove it, and ask Tomasz to give
you the Reviewed-by on the upstream patch.

> (cherry picked from commit 1887bb3924d030352df179347c8962248cdb903e)

Also, drop this, only has sense in the context of ChromeOS tree.

> Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
> ---

Apart from that, the patch looks good to me, so:

Reviewed-by: Enric Balletbo I Serra <enric.balletbo@collabora.com>



>
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.h |  2 -
>  drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c  | 90 +++++++------------
>  2 files changed, 34 insertions(+), 58 deletions(-)
>
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
> index bafcccd71f31..dd130cc218c9 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.h
> @@ -28,8 +28,6 @@
>  #define MTK_MDP_FMT_FLAG_CAPTURE       BIT(1)
>
>  #define MTK_MDP_VPU_INIT               BIT(0)
> -#define MTK_MDP_SRC_FMT                        BIT(1)
> -#define MTK_MDP_DST_FMT                        BIT(2)
>  #define MTK_MDP_CTX_ERROR              BIT(5)
>
>  /**
> diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c b/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
> index 821f2cf325f0..bb9caaf513bc 100644
> --- a/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
> +++ b/drivers/media/platform/mtk-mdp/mtk_mdp_m2m.c
> @@ -369,13 +369,6 @@ void mtk_mdp_ctx_state_lock_set(struct mtk_mdp_ctx *ctx, u32 state)
>         mutex_unlock(&ctx->slock);
>  }
>
> -static void mtk_mdp_ctx_state_lock_clear(struct mtk_mdp_ctx *ctx, u32 state)
> -{
> -       mutex_lock(&ctx->slock);
> -       ctx->state &= ~state;
> -       mutex_unlock(&ctx->slock);
> -}
> -
>  static bool mtk_mdp_ctx_state_is_set(struct mtk_mdp_ctx *ctx, u32 mask)
>  {
>         bool ret;
> @@ -726,11 +719,6 @@ static int mtk_mdp_m2m_s_fmt_mplane(struct file *file, void *fh,
>                 ctx->quant = pix_mp->quantization;
>         }
>
> -       if (V4L2_TYPE_IS_OUTPUT(f->type))
> -               mtk_mdp_ctx_state_lock_set(ctx, MTK_MDP_SRC_FMT);
> -       else
> -               mtk_mdp_ctx_state_lock_set(ctx, MTK_MDP_DST_FMT);
> -
>         mtk_mdp_dbg(2, "[%d] type:%d, frame:%dx%d", ctx->id, f->type,
>                     frame->width, frame->height);
>
> @@ -742,13 +730,6 @@ static int mtk_mdp_m2m_reqbufs(struct file *file, void *fh,
>  {
>         struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
>
> -       if (reqbufs->count == 0) {
> -               if (reqbufs->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
> -                       mtk_mdp_ctx_state_lock_clear(ctx, MTK_MDP_SRC_FMT);
> -               else
> -                       mtk_mdp_ctx_state_lock_clear(ctx, MTK_MDP_DST_FMT);
> -       }
> -
>         return v4l2_m2m_reqbufs(file, ctx->m2m_ctx, reqbufs);
>  }
>
> @@ -758,14 +739,6 @@ static int mtk_mdp_m2m_streamon(struct file *file, void *fh,
>         struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
>         int ret;
>
> -       /* The source and target color format need to be set */
> -       if (V4L2_TYPE_IS_OUTPUT(type)) {
> -               if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_SRC_FMT))
> -                       return -EINVAL;
> -       } else if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_DST_FMT)) {
> -               return -EINVAL;
> -       }
> -
>         if (!mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_VPU_INIT)) {
>                 ret = mtk_mdp_vpu_init(&ctx->vpu);
>                 if (ret < 0) {
> @@ -899,24 +872,21 @@ static int mtk_mdp_m2m_s_selection(struct file *file, void *fh,
>                 frame = &ctx->d_frame;
>
>         /* Check to see if scaling ratio is within supported range */
> -       if (mtk_mdp_ctx_state_is_set(ctx, MTK_MDP_DST_FMT | MTK_MDP_SRC_FMT)) {
> -               if (V4L2_TYPE_IS_OUTPUT(s->type)) {
> -                       ret = mtk_mdp_check_scaler_ratio(variant, new_r.width,
> -                               new_r.height, ctx->d_frame.crop.width,
> -                               ctx->d_frame.crop.height,
> -                               ctx->ctrls.rotate->val);
> -               } else {
> -                       ret = mtk_mdp_check_scaler_ratio(variant,
> -                               ctx->s_frame.crop.width,
> -                               ctx->s_frame.crop.height, new_r.width,
> -                               new_r.height, ctx->ctrls.rotate->val);
> -               }
> +       if (V4L2_TYPE_IS_OUTPUT(s->type))
> +               ret = mtk_mdp_check_scaler_ratio(variant, new_r.width,
> +                       new_r.height, ctx->d_frame.crop.width,
> +                       ctx->d_frame.crop.height,
> +                       ctx->ctrls.rotate->val);
> +       else
> +               ret = mtk_mdp_check_scaler_ratio(variant,
> +                       ctx->s_frame.crop.width,
> +                       ctx->s_frame.crop.height, new_r.width,
> +                       new_r.height, ctx->ctrls.rotate->val);
>
> -               if (ret) {
> -                       dev_info(&ctx->mdp_dev->pdev->dev,
> -                               "Out of scaler range");
> -                       return -EINVAL;
> -               }
> +       if (ret) {
> +               dev_info(&ctx->mdp_dev->pdev->dev,
> +                       "Out of scaler range");
> +               return -EINVAL;
>         }
>
>         s->r = new_r;
> @@ -989,7 +959,6 @@ static int mtk_mdp_s_ctrl(struct v4l2_ctrl *ctrl)
>         struct mtk_mdp_ctx *ctx = ctrl_to_ctx(ctrl);
>         struct mtk_mdp_dev *mdp = ctx->mdp_dev;
>         struct mtk_mdp_variant *variant = mdp->variant;
> -       u32 state = MTK_MDP_DST_FMT | MTK_MDP_SRC_FMT;
>         int ret = 0;
>
>         if (ctrl->flags & V4L2_CTRL_FLAG_INACTIVE)
> @@ -1003,17 +972,15 @@ static int mtk_mdp_s_ctrl(struct v4l2_ctrl *ctrl)
>                 ctx->vflip = ctrl->val;
>                 break;
>         case V4L2_CID_ROTATE:
> -               if (mtk_mdp_ctx_state_is_set(ctx, state)) {
> -                       ret = mtk_mdp_check_scaler_ratio(variant,
> -                                       ctx->s_frame.crop.width,
> -                                       ctx->s_frame.crop.height,
> -                                       ctx->d_frame.crop.width,
> -                                       ctx->d_frame.crop.height,
> -                                       ctx->ctrls.rotate->val);
> -
> -                       if (ret)
> -                               return -EINVAL;
> -               }
> +               ret = mtk_mdp_check_scaler_ratio(variant,
> +                               ctx->s_frame.crop.width,
> +                               ctx->s_frame.crop.height,
> +                               ctx->d_frame.crop.width,
> +                               ctx->d_frame.crop.height,
> +                               ctx->ctrls.rotate->val);
> +
> +               if (ret)
> +                       return -EINVAL;
>
>                 ctx->rotation = ctrl->val;
>                 break;
> @@ -1090,6 +1057,7 @@ static int mtk_mdp_m2m_open(struct file *file)
>         struct video_device *vfd = video_devdata(file);
>         struct mtk_mdp_ctx *ctx = NULL;
>         int ret;
> +       struct v4l2_format default_format;
>
>         ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
>         if (!ctx)
> @@ -1144,6 +1112,16 @@ static int mtk_mdp_m2m_open(struct file *file)
>         list_add(&ctx->list, &mdp->ctx_list);
>         mutex_unlock(&mdp->lock);
>
> +       /* Default format */
> +       memset(&default_format, 0, sizeof(default_format));
> +       default_format.type = V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE;
> +       default_format.fmt.pix_mp.width = 32;
> +       default_format.fmt.pix_mp.height = 32;
> +       default_format.fmt.pix_mp.pixelformat = V4L2_PIX_FMT_YUV420M;
> +       mtk_mdp_m2m_s_fmt_mplane(file, &ctx->fh, &default_format);
> +       default_format.type = V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE;
> +       mtk_mdp_m2m_s_fmt_mplane(file, &ctx->fh, &default_format);
> +
>         mtk_mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);
>
>         return 0;
> --
> 2.26.2.526.g744177e7f7-goog
>
>
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
