Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104C24C655
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 06:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypnhf2rkuNNOTsAZEgT5/raeSWPRBQA0JVuZKNg2KKI=; b=YPg5xg23kufpWO
	cuenSj2UZDs6qSCGp7UoJsefp392/xET5Cg5Zi0L6btXdhn/nGCIjssqBXiKCQI4A79OLp1j8fyxW
	yLGLy6P6Tpe80hM9jQmNcok5tSVBbVLi222cFRg+rT5ZtH8bKtrF38CtwXDW3sA7zZq09uMZAj4bd
	kZop2VZHx9jbGFjHMfHPPszHlTxR9nE2jv3xWpobhTV1nnyS5CWH5yF0NI2E1Cp8sbYzsBtrr3/I3
	x/uNyQIT98adHl4gpxek1WBj9aIB1YOBU1GdKscgEUhmXOSnL7if9Ztn1B8/2EmPE6ss8GTTPLKIg
	Uv0nPOdFB+LBRkZl0YJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdp08-0000y6-0i; Thu, 20 Jun 2019 04:48:44 +0000
Received: from mail-oi1-x241.google.com ([2607:f8b0:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdozv-0000x4-F6
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 04:48:32 +0000
Received: by mail-oi1-x241.google.com with SMTP id a128so1200030oib.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 21:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AJXIcsGFO5lMWZGuEosbW/Dq3JALel5VCKCAbEtYs6Y=;
 b=Yl5NlZzQPUN5Tci0Gf50JsXP4Oo8dpYdihclnZeT66LEb3dxzRiJhHirLoaUqRkGN3
 nd7drf2dBhfS2HA3AMSoOGDADxhZ4nLpQMvB1T2hAahMGJBa0/7+xUJ7aJ0B4ypcW6e5
 BSNJ2PwbPrdk+BCyPhpWGOWiUVhuLmDA6DGw0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AJXIcsGFO5lMWZGuEosbW/Dq3JALel5VCKCAbEtYs6Y=;
 b=MFo8RmZBG0Cfp99ju4oSBsET1z605wvlEw6lenBJCN/e8TdGZNjtYyUiTZg8OeJ1wf
 6ePwq13mEgAWu/J1aoHuCWZTM/G3+QGrL+4+mSJ8qMUXBUCdzesEG+qEcEb6Uj2u2TqE
 Mov5KCRL4/FMfHD6+L8OjPwoUailSppkAuuik8DfEj4ycz0SV0nbtOZ2MXwZywGymDN8
 hC/2IYYA67c7x/q+Z+NdSFRihYRYGDmXLAzvQ0afQD1k9aW5OLzp82833PH3hyXvHDwi
 d8OG1iQ7Pj23SLWKw+d7qpO0vifu4zoD4TTpxdlDzIlamFv2Cr40DkPc/OUNj72q9x8r
 0GXA==
X-Gm-Message-State: APjAAAU3xSnnmeeBYlP1aNOn6mcusIOnKTbZ8bA91rqBpGdcj1u8lC8s
 Ed74h47RXvgYjVnDJ/nlfmw4TaywYzLgCQ==
X-Google-Smtp-Source: APXvYqxjbxLKdDwNRXuuFnbImBbeAtiMa1kDq/lX10i5rVt4L4jsmdHqbtQVplmVaLCjfR0v9bviLQ==
X-Received: by 2002:aca:490d:: with SMTP id w13mr4878291oia.8.1561006108922;
 Wed, 19 Jun 2019 21:48:28 -0700 (PDT)
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com.
 [209.85.210.46])
 by smtp.gmail.com with ESMTPSA id b2sm7367193otf.48.2019.06.19.21.48.27
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 21:48:28 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id j19so1465379otq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 21:48:27 -0700 (PDT)
X-Received: by 2002:a9d:3ee:: with SMTP id f101mr10192019otf.311.1561006107360; 
 Wed, 19 Jun 2019 21:48:27 -0700 (PDT)
MIME-Version: 1.0
References: <20190516032332.56844-1-daoyuan.huang@mediatek.com>
 <20190516032332.56844-5-daoyuan.huang@mediatek.com>
 <20190604112039.GA12168@chromium.org>
In-Reply-To: <20190604112039.GA12168@chromium.org>
From: Alexandre Courbot <acourbot@chromium.org>
Date: Thu, 20 Jun 2019 13:48:15 +0900
X-Gmail-Original-Message-ID: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
Message-ID: <CAPBb6MUCYK3eyk5Oq_p8yBvFh1EszzPDcvbB0VLTu_KKzCLTMA@mail.gmail.com>
Subject: Re: [RFC v2 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_214831_508893_7EC9946A 
X-CRM114-Status: GOOD (  20.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn.Wu@mediatek.com, christie.yu@mediatek.com, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>, holmes.chiou@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, zwisler@chromium.org,
 frederic.chen@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 4, 2019 at 8:20 PM Tomasz Figa <tfiga@chromium.org> wrote:
> > +
> > +     ret = mdp_vpu_get_locked(mdp);
> > +     if (ret < 0)
> > +             goto err_load_vpu;
>
> This shouldn't happen in open(), but rather the latest possible point in
> time. If one needs to keep the VPU running for the time of streaming, then
> it should be start_streaming. If one can safely turn the VPU off if there is
> no frame queued for long time, it should be just in m2m job_run.
>
> Generally the userspace should be able to
> just open an m2m device for querying it, without any side effects like
> actually powering on the hardware or grabbing a hardware instance (which
> could block some other processes, trying to grab one too).

OTOH looking at the code of mdp_vpu_get_locked(), we do the whole
rproc_boot and VPU init procedure if we were the only user. So I can
understand we want to avoid doing this too often.

Maybe mdp_vpu_get_locked() can be reorganized in a better way. I feel
like the call to mdp_vpu_register() should be done in probe, and maybe
we can use runtime PM (with a reasonable timeout) to control the rproc
and VPU init?


>
> > +
> > +     mutex_unlock(&mdp->m2m_lock);
> > +
> > +     mdp_dbg(0, "%s [%d]", dev_name(&mdp->pdev->dev), ctx->id);
> > +
> > +     return 0;
> > +
> > +err_load_vpu:
> > +     mdp_frameparam_release(ctx->curr_param);
> > +err_param_init:
> > +     v4l2_m2m_ctx_release(ctx->m2m_ctx);
> > +err_m2m_ctx:
> > +     v4l2_ctrl_handler_free(&ctx->ctrl_handler);
> > +     v4l2_fh_del(&ctx->fh);
> > +err_ctrls_create:
> > +     v4l2_fh_exit(&ctx->fh);
> > +     mutex_unlock(&mdp->m2m_lock);
> > +err_lock:
>
> Incorrect naming of all the error labels here.
>
> > +     kfree(ctx);
> > +
> > +     return ret;
> > +}
> [snip]
> > +enum mdp_ycbcr_profile mdp_map_ycbcr_prof_mplane(struct v4l2_format *f,
> > +                                              u32 mdp_color)
> > +{
> > +     struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
> > +
> > +     if (MDP_COLOR_IS_RGB(mdp_color))
> > +             return MDP_YCBCR_PROFILE_FULL_BT601;
> > +
> > +     switch (pix_mp->colorspace) {
> > +     case V4L2_COLORSPACE_JPEG:
> > +             return MDP_YCBCR_PROFILE_JPEG;
> > +     case V4L2_COLORSPACE_REC709:
> > +     case V4L2_COLORSPACE_DCI_P3:
> > +             if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +                     return MDP_YCBCR_PROFILE_FULL_BT709;
> > +             return MDP_YCBCR_PROFILE_BT709;
> > +     case V4L2_COLORSPACE_BT2020:
> > +             if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +                     return MDP_YCBCR_PROFILE_FULL_BT2020;
> > +             return MDP_YCBCR_PROFILE_BT2020;
> > +     }
> > +     /* V4L2_COLORSPACE_SRGB or else */
> > +     if (pix_mp->quantization == V4L2_QUANTIZATION_FULL_RANGE)
> > +             return MDP_YCBCR_PROFILE_FULL_BT601;
> > +     return MDP_YCBCR_PROFILE_BT601;
>
> Putting this under the default clause of the switch statement would be
> cleaner and the comment wouldn't be needed.
>
> [snip]
> > +struct mdp_frameparam *mdp_frameparam_init(void)
> > +{
> > +     struct mdp_frameparam *param;
> > +     struct mdp_frame *frame;
> > +
> > +     param = kzalloc(sizeof(*param), GFP_KERNEL);
> > +     if (!param)
> > +             return ERR_PTR(-ENOMEM);
>
> We could just embed mdp_frameparam into the mdp_m2m_ctx struct and then
> wouldn't need any dynamic allocation here anymore. And as a side effect, the
> function could be just made void, because it couldn't fail.
>
> > +
> > +     INIT_LIST_HEAD(&param->list);
> > +     mutex_init(&param->lock);
> > +     param->state = 0;
> > +     param->limit = &mdp_def_limit;
> > +     param->type = MDP_STREAM_TYPE_UNKNOWN;
>
> We always seem to use MDP_STREAM_TYPE_BITBLT in this driver.
>
> > +     param->frame_no = 0;
>
> No need for explicit initialization to 0.
>
> Best regards,
> Tomasz
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
