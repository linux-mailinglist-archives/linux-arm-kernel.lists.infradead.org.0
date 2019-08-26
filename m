Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD169C984
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 08:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J85WWD1wPaA8T2DszldVeXgbcxTQyqlURIGn4HxABv0=; b=qnjBIXS+p0yT9/
	xUE1J+98YQTpXjbQgii27xh5uZfcYLEMUzwQMNJxkNP505pVR7wcpWhTlAoD8tiiEs3usXktKr/gJ
	fNezBTDq0XvtnCWpsSUBZw+20qHxT3hzvZikACx4eABWJqpGYSavilpG9AV74UlnOwC8vAX1I8T8Q
	PEyGv1dD2eTTbQstrW3LaQO1dQW+ZkXEhRysBhojTNLcJKKbCKXVUIkBibZKENvb1Du8+8puVwz1Q
	LXFAG0/BByzZfRp4TKaVN45OndMgJwPyczzhwVlOorUvPpmmzYtAM5DalvPun9CvWOi/pqdjCu9Xe
	qC2sX1qYffQAD00mofAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i28cq-0007cU-Se; Mon, 26 Aug 2019 06:37:13 +0000
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i28cA-0007bn-4j
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 06:36:32 +0000
Received: by mail-ed1-x542.google.com with SMTP id w5so24891919edl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 23:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=dA2WZyMm67w3lO2i0AwQCrVkkd/5XMnhJesFUl2G2rU=;
 b=C4YDeZtuVwQGdLrgUjSHPgr3obyG56oJ9qOyoHqZVYDtnV3aKIZuzTZ3pvAqLgP+9D
 3o0OcS6arw/aiYkexbBui+5rQIgxrzMnO4OeaU7CYczkUWBuaVHH1y8sp8jO/FeEBaOZ
 eBZJ8YiLcvvqjYk38LgndlGhf2Im4QlTXQfxk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dA2WZyMm67w3lO2i0AwQCrVkkd/5XMnhJesFUl2G2rU=;
 b=DQ8OBqaEGZtzMMqeTVxuXgEeN4keRDsCJ76iLz0WX3JW4Tu4I50zbWobxZ5AcFvRn2
 P0rOaLzHJzU8Jux9G/8zXftevEZSbaGaiEomWvrrOll46XP0AempDj1gDFIqgBWPqemj
 8LUbMpWutFi+Cx7gblpecF05VEkjgHdQmFeLWXBYl3Et9eljoFNWaDtF+pWGce5aLGkp
 3SzP+Ijm5uXjGcebnEmTi+y3fdMrkXCkPEw5wCCSg55L/cp131PkdmtLmo+rMLrqAp7r
 VAevb0R9AueI/5j8TfQmHtxaEzOHkIK6xWUUYXObv2d2xnP9kYlCBVwqveBcZXhpGdQM
 GGYg==
X-Gm-Message-State: APjAAAWy33qQxozU/TNfN/aKjydI2zpybuyPHJHY7ZAAJt84eowQ/KVq
 7RekV2TH+ISMP9HESvhejg4nB2hFpjhncg==
X-Google-Smtp-Source: APXvYqxPCVkTOfvE/mHtUIKSli130mr2DBoq6fZWCPESAYGy1JymRsabmXTfTYa+7fTgfylY5SZBPQ==
X-Received: by 2002:a50:cdd9:: with SMTP id h25mr16691525edj.231.1566801387589; 
 Sun, 25 Aug 2019 23:36:27 -0700 (PDT)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com.
 [209.85.128.42])
 by smtp.gmail.com with ESMTPSA id v13sm1091008edr.38.2019.08.25.23.36.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 25 Aug 2019 23:36:26 -0700 (PDT)
Received: by mail-wm1-f42.google.com with SMTP id i63so14630583wmg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 25 Aug 2019 23:36:25 -0700 (PDT)
X-Received: by 2002:a05:600c:254a:: with SMTP id
 e10mr20720968wma.113.1566801385282; 
 Sun, 25 Aug 2019 23:36:25 -0700 (PDT)
MIME-Version: 1.0
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org> <1566724680.20680.8.camel@mtksdccf07>
In-Reply-To: <1566724680.20680.8.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 26 Aug 2019 15:36:13 +0900
X-Gmail-Original-Message-ID: <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
Message-ID: <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_233630_214226_5E995838 
X-CRM114-Status: GOOD (  43.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <Frederic.Chen@mediatek.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?UG8tWWFuZyBIdWFuZyAo6buD5p+P6Zm9KQ==?= <po-yang.huang@mediatek.com>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jerry,

On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
<Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > Hi Jerry,
> >
> > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > >
> > > This patch adds the driver of Face Detection (FD) unit in
> > > Mediatek camera system, providing face detection function.
> > >
> > > The mtk-isp directory will contain drivers for multiple IP
> > > blocks found in Mediatek ISP system. It will include ISP Pass 1
> > > driver (CAM), sensor interface driver, DIP driver and face
> > > detection driver.
> > >
> > > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > > ---
> > >  drivers/media/platform/Makefile               |    2 +
> > >  drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
> > >  drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  157 +++
> > >  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1259 +++++++++++++++++++++++++
> > >  include/uapi/linux/v4l2-controls.h            |    4 +
> > >  5 files changed, 1427 insertions(+)
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> > >
> >
> > Thanks for the patch! I finally got a chance to fully review the code. Sorry
> > for the delay. Please check my comments inline.
> >
> I appreciate your comments.
> I've fixed most of the comments and verifying them,
> Sorry for the delay, here is the reply.
>

Thanks for replying to all the comments, it's very helpful. I'll snip
the parts that I don't have any further comments.

[snip]

> > > +   if (usercount == 1) {
> > > +           pm_runtime_get_sync(&fd_dev->pdev->dev);
> > > +           if (mtk_fd_hw_enable(fd_hw)) {
> > > +                   pm_runtime_put_sync(&fd_dev->pdev->dev);
> > > +                   atomic_dec_return(&fd_hw->fd_user_cnt);
> > > +                   mutex_unlock(&fd_hw->fd_hw_lock);
> > > +                   return -EINVAL;
> > > +           }
> > > +   }
> >
> > This is a simple mem-to-mem device, so there is no reason to keep it active
> > all the time it's streaming. Please just get the runtime PM counter when
> > queuing a job to the hardware and release it when the job finishes.
> >
> > I guess we might still want to do the costly operations like rproc_boot()
> > when we start streaming, though.
> >
> Do you mean by moving the pm_runtime_get/put stuff to the job execution
> and job finish place?

Yes.

> the rproc_boot() operation will be done here.
>

How much time does the rproc_boot() operation take?

[snip]

> > > +
> > > +           pm_runtime_put_sync(&fd_dev->pdev->dev);
> >
> > Any reason to use pm_runtime_put_sync() over pm_runtime_put()?
> >
> No special reason to do so, the pm_runtime_put_sync here will be moved
> to the place each job finished.
>

If there is no reason, then the _sync() variant shouldn't be used, as
it could affect the performance negatively.

[snip]

> > > +static int mtk_fd_hw_job_exec(struct mtk_fd_hw *fd_hw,
> > > +                         struct fd_hw_param *fd_param,
> > > +                         void *output_vaddr)
> > > +{
> > > +   struct fd_user_output *fd_output;
> > > +   struct ipi_message fd_ipi_msg;
> > > +   int ret;
> > > +   u32 num;
> > > +
> > > +   if (fd_param->user_param.src_img_fmt == FMT_UNKNOWN)
> > > +           goto param_err;
> >
> > Is this possible?
> >
> Only if user set wrong format, I will remove this.
>

It shouldn't be possible to set a wrong format, because TRY_/S_FMT
should adjust what the user set to something that is valid.

> > > +
> > > +   mutex_lock(&fd_hw->fd_hw_lock);
> > > +   fd_hw->state = FD_ENQ;
> >
> > What is this state for?
> >
> It was for checking status, if a job is processing, the state is
> FD_ENQ,
> then we should wait for the last job to be done when pm_suspend().
>

If so, would it be possible to make it a bool and call is_processing?

[snip]

> > > +static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > > +                             unsigned int *num_buffers,
> > > +                             unsigned int *num_planes,
> > > +                             unsigned int sizes[],
> > > +                             struct device *alloc_devs[])
> > > +{
> > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > +   struct device *dev = ctx->dev;
> > > +   unsigned int size;
> > > +
> > > +   switch (vq->type) {
> > > +   case V4L2_BUF_TYPE_META_CAPTURE:
> > > +           size = ctx->dst_fmt.buffersize;
> > > +           break;
> > > +   case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > > +           size = ctx->src_fmt.plane_fmt[0].sizeimage;
> > > +           break;
> > > +   default:
> > > +           dev_err(dev, "invalid queue type: %d\n", vq->type);
> >
> > We should need to handle this.
> >
> Do you mean by giving a size instead of return -EINVAL?
>

Sorry, typo. I meant we shouldn't need to handle it, because we can't
get any other queue type here.

[snip]

> > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > +{
> > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > +   struct vb2_buffer *vb;
> >
> > How do we guarantee here that the hardware isn't still accessing the buffers
> > removed below?
> >
> Maybe we can check the driver state flag and aborting the unfinished
> jobs?
> (fd_hw->state == FD_ENQ)
>

Yes, we need to either cancel or wait for the currently processing
job. It depends on hardware capabilities, but cancelling is generally
preferred for the lower latency.

> > > +
> > > +   if (V4L2_TYPE_IS_OUTPUT(vq->type))
> > > +           vb = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> > > +   else
> > > +           vb = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > > +
> > > +   while (vb) {
> > > +           v4l2_m2m_buf_done(to_vb2_v4l2_buffer(vb), VB2_BUF_STATE_ERROR);
> > > +           if (V4L2_TYPE_IS_OUTPUT(vq->type))
> > > +                   vb = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> > > +           else
> > > +                   vb = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> > > +   }
> >
> > We can use v4l2_m2m_buf_remove(). Also we can move the call into the loop
> > condition:
> >
> > while ((vb == v4l2_m2m_buf_remove(...)))
> >       v4l2_m2m_buf_done(...);
> >
> Ok, I will refine as following:
>
> while ((vb = v4l2_m2m_buf_remove(V4L2_TYPE_IS_OUTPUT(vq->type)?
>   &m2m_ctx->out_q_ctx :
>   &m2m_ctx->cap_q_ctx)))
> v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);

Please move the queue type check before the loop and save the queue
context in a local variable.

[snip]

> > > +}
> > > +
> > > +static void mtk_fd_vb2_request_complete(struct vb2_buffer *vb)
> > > +{
> > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vb->vb2_queue);
> > > +
> > > +   v4l2_ctrl_request_complete(vb->req_obj.req, &ctx->hdl);
> > > +}
> > > +
> > > +static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
> > > +                             const struct v4l2_pix_format_mplane *sfmt)
> > > +{
> > > +   dfmt->width = sfmt->width;
> > > +   dfmt->height = sfmt->height;
> > > +   dfmt->pixelformat = sfmt->pixelformat;
> > > +   dfmt->field = sfmt->field;
> > > +   dfmt->colorspace = sfmt->colorspace;
> > > +   dfmt->num_planes = sfmt->num_planes;
> > > +
> > > +   /* Use default */
> > > +   dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> > > +   dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> > > +   dfmt->xfer_func =
> > > +           V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
> > > +   dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
> > > +   dfmt->plane_fmt[0].sizeimage =
> > > +           dfmt->height * dfmt->plane_fmt[0].bytesperline;
> > > +   memset(dfmt->reserved, 0, sizeof(dfmt->reserved));
> > > +}
> >
> > Could we unify this function with mtk_fd_m2m_try_fmt_out_mp()? That function
> > should be almost directly reusable for the default format initialization +/-
> > the arguments passed to it.
> >
> Ok, I will try to reuse it as following:
>
> static void mtk_fd_fill_pixfmt_mp(struct v4l2_pix_format_mplane *dfmt,
>   const struct v4l2_pix_format_mplane *sfmt)
> {
> dfmt->field = V4L2_FIELD_NONE;
> dfmt->colorspace = V4L2_COLORSPACE_BT2020;
> dfmt->num_planes = sfmt->num_planes;
> dfmt->ycbcr_enc = V4L2_YCBCR_ENC_DEFAULT;
> dfmt->quantization = V4L2_QUANTIZATION_DEFAULT;
> dfmt->xfer_func =
> V4L2_MAP_XFER_FUNC_DEFAULT(dfmt->colorspace);
>
> /* Keep user setting as possible */
> dfmt->width = clamp(dfmt->width,
>     MTK_FD_OUTPUT_MIN_WIDTH,
>     MTK_FD_OUTPUT_MAX_WIDTH);
> dfmt->height = clamp(dfmt->height,
>      MTK_FD_OUTPUT_MIN_HEIGHT,
>      MTK_FD_OUTPUT_MAX_HEIGHT);
>
> if (sfmt->num_planes == 2) {
> /* NV16M and NV61M has 1 byte per pixel */
> dfmt->plane_fmt[0].bytesperline = dfmt->width;
> dfmt->plane_fmt[1].bytesperline = dfmt->width;
> } else {
> /* 2 bytes per pixel */
> dfmt->plane_fmt[0].bytesperline = dfmt->width * 2;
> }
>
> dfmt->plane_fmt[0].sizeimage =
> dfmt->height * dfmt->plane_fmt[0].bytesperline;
> }

How would the implementation of TRY_FMT look in this case?

[snip]

> > > +static int mtk_fd_m2m_enum_fmt_out_mp(struct file *file, void *fh,
> > > +                                 struct v4l2_fmtdesc *f)
> > > +{
> > > +   int i;
> > > +
> > > +   for (i = 0; i < NUM_FORMATS; ++i) {
> > > +           if (i == f->index) {
> > > +                   f->pixelformat = in_img_fmts[i].pixelformat;
> > > +                   return 0;
> > > +           }
> > > +   }
> >
> > Why don't we just check if f->index is within the [0, ARRAY_SIZE()-1] bounds
> > and then just use it to index the array directly?
> >
> I will refine as :
>
> static int mtk_fd_m2m_enum_fmt_out_mp(struct file *file, void *fh,
>       struct v4l2_fmtdesc *f)
> {
> if ((f->index >= 0) && (f->index < NUM_FORMATS)) {

f->index is unsigned

> f->pixelformat = in_img_fmts[f->index].pixelformat;
> return 0;
> }
>
> return -EINVAL;
> }

nit: The usual convention is to check for invalid values and return early, i.e.

if (f->index >= NUM_FORMATS)
    return -EINVAL;

f->pixelformat = in_img_fmts[f->index].pixelformat;
return 0;

> > > +
> > > +   return -EINVAL;
> > > +}
> > > +
> > > +static int mtk_fd_m2m_try_fmt_out_mp(struct file *file,
> > > +                                void *fh,
> > > +                                struct v4l2_format *f)
> >
> > I think we could just shorten the function prefixes to "mtk_fd_".
> >
> Do you mean by replace mtk_fd_m2m_* with mtk_fd_ ?
>

Yes.

[snip]

> > > +static int mtk_fd_request_validate(struct media_request *req)
> > > +{
> > > +   unsigned int count;
> > > +
> > > +   count = vb2_request_buffer_cnt(req);
> > > +   if (!count)
> > > +           return -ENOENT;
> >
> > Why -ENOENT?
> >
> Reference the return code in vb2_request_validate()

You're right, -ENOENT seems to be the right error code here.

> I consider refining as following:
> static int mtk_fd_request_validate(struct media_request *req)
> {
> if (vb2_request_buffer_cnt(req) > 1)
> return -EINVAL;
>
> return vb2_request_validate(req);
> }
> or maybe I don't need to worry the request count greater than 1,
> just remove this function and set vb2_request_validate as .req_validate
> directly?
>

Given that we only have 1 queue handling requests, we should be able
to just use vb2_request_validate() indeed.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
