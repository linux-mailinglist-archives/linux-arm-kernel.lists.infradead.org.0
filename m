Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021F6A6244
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 09:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9SrhIN1QxudU5O1nPJhZBqoJKqfUEvfIJ0UcSeZa7Hs=; b=hYEgVGbbXy9KH0
	Z+0SM9OfoIFWJzhk9fooxvRHMBtaKswvBykYIUoYb1Q58kAbi4pkLbdjYJBNkvvDrChsCJ3czSCKf
	QWRcNi80WoU816kOwhGdj4ACtsE2g6MNondGGDFH7RyMNDzBGXmGAHBNkSP3GPRplcINGXWWLwo2r
	5/J8nQ7aPNeJTwtl254vbCXON4Z8M3gztcK60j2TwsOZW70SgLTPFdlD0yy4NMUWC3ij/kp2ot9x6
	asBzlt+3EA9ttom23YtekCHqCnT3bGeBqoHQo9OJg5veSgbNO4qXnfsWvozTbzfZm77LYItS8k0Re
	fhf9SpGY2Clb+4RZLXLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52ys-00009Q-2C; Tue, 03 Sep 2019 07:11:58 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52wo-00078u-Ky
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 07:10:06 +0000
Received: by mail-ed1-x541.google.com with SMTP id f22so17508505edt.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:09:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=db032M6/zE4omf+cGRilv5nsZk5oRYhR48JuFpDhX0E=;
 b=K0+YX7VtC8i3mcTjCo3bRNli9qCdtHJx01NQ5bMbRKQAf6oJKzsNLIiknOSlueBKPy
 ETBBVeyeVTpEEsMEyuRaacy0a65EUnUp7Kc0XA/w6kpcCGhoFe3zG91siutUiHv5iEu8
 lPt9ap0YWic/FlpxdQLJiHU/hTqmtFQiviOow=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=db032M6/zE4omf+cGRilv5nsZk5oRYhR48JuFpDhX0E=;
 b=bGicuQI14QzehZncgPLP3KqGZJYaiNboCf3YxhOlH1q6zFtJbDgCEQH4PoJg4hVIJ6
 7bKR4IjOzRPLQAeURlMBKRk/j+CSmP3RZGL9o3w9VMhMwDirVO+GO22dMdMCdKIkAnuY
 /3Cyl9F0AJqSYcslS+IZM+tSKfJYo8aFfXeEOiLCkxT5B6J8z4IxXHZTl/4YfVHQS8qg
 MHPmwBPrmun6tUnw2gBKKygyoJbUpPER9FnWQ6lROPcnTbzekK1PhVGhW85znXrijGPF
 hFBk7QnOhJ4l4LYhm9gWbg7l2eIY/BhchKtPAb4LCKL+ioQaCAqySYGRacM8Q14lt1T0
 +nlA==
X-Gm-Message-State: APjAAAUHYCaf4OZeQFnQHgZv7e1DWniNSjwvgBsX5igH1ByQSNXBwjMF
 Pylu/sIl2wX83svtuuYZat7L7v84nCw7cA==
X-Google-Smtp-Source: APXvYqwfPe5MjSbXQXAWaxrZfovGoe/WxSCCDRLqoEAfGRyBFeceBMijarA6CJ/jkv6JfABHbL8bEg==
X-Received: by 2002:a17:906:1542:: with SMTP id
 c2mr9237631ejd.120.1567494586645; 
 Tue, 03 Sep 2019 00:09:46 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id l1sm764143edc.11.2019.09.03.00.09.46
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 00:09:46 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id h7so14841366wrt.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 00:09:46 -0700 (PDT)
X-Received: by 2002:a5d:6585:: with SMTP id q5mr9827920wru.162.1567494281422; 
 Tue, 03 Sep 2019 00:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org> <1566724680.20680.8.camel@mtksdccf07>
 <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
 <1566957625.20680.33.camel@mtksdccf07>
 <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
 <1567424859.18318.32.camel@mtksdccf07>
 <CAAFQd5AGgeFbto6V1KkL0dp1QPziOKV3pWQDU2OJ+S1QKvnBdg@mail.gmail.com>
 <1567493081.18318.49.camel@mtksdccf07>
In-Reply-To: <1567493081.18318.49.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 3 Sep 2019 16:04:29 +0900
X-Gmail-Original-Message-ID: <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
Message-ID: <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_000952_920130_84E87285 
X-CRM114-Status: GOOD (  31.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 =?UTF-8?B?UG8tWWFuZyBIdWFuZyAo6buD5p+P6Zm9KQ==?= <po-yang.huang@mediatek.com>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 =?UTF-8?B?U2ogSHVhbmcgKOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <Frederic.Chen@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
>
> On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > >
> > > > > Hi Tomasz,
> > > > >
> > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > Hi Jerry,
> > > > > >
> > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > >
> > > > > > > Hi Tomasz,
> > > > > > >
> > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > Hi Jerry,
> > > > > > > >
> > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > [snip]
> > > > > static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > > > >                                   unsigned int *num_buffers,
> > > > >                                   unsigned int *num_planes,
> > > > >                                   unsigned int sizes[],
> > > > >                                   struct device *alloc_devs[])
> > > > > {
> > > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > >         struct device *dev = ctx->dev;
> > > > >         unsigned int size[2];
> > > > >
> > > > >         switch (vq->type) {
> > > > >         case V4L2_BUF_TYPE_META_CAPTURE:
> > > > >                 size[0] = ctx->dst_fmt.buffersize;
> > > > >                 break;
> > > > >         case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > > > >                 size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> > > > >                 if (*num_planes == 2)
> > > > >                         size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> > > > >                 break;
> > > > >         }
> > > > >
> > > > >         if (*num_planes == 1) {
> > > > >                 if (sizes[0] < size[0])
> > > > >                         return -EINVAL;
> > > > >         } else if (*num_planes == 2) {
> > > > >                 if ((sizes[0] < size[0]) && (sizes[1] < size[1]))
> > > > >                         return -EINVAL;
> > > >
> > > > Can we just use a loop here and combine the 2 cases above?
> > > >
> > > > Also, we need to fail with -EINVAL if *num_planes is > 2.
> > > >
> > > > >         } else {
> > > > >                 *num_planes = 1;
> > > > >                 sizes[0] = size[0];
> > > >
> > > > This should be the case if *num_planes == 0 and the number of planes
> > > > and sizes should match the currently active format.
> > > >
> > > I appreciate your comments,
> > >
> > > Ok, I will update as following:
> > > static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > >                                   unsigned int *num_buffers,
> > >                                   unsigned int *num_planes,
> > >                                   unsigned int sizes[],
> > >                                   struct device *alloc_devs[])
> > > {
> > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > >         unsigned int size[2];
> > >         unsigned int plane;
> > >
> > >         switch (vq->type) {
> > >         case V4L2_BUF_TYPE_META_CAPTURE:
> > >                 size[0] = ctx->dst_fmt.buffersize;
> > >                 break;
> > >         case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > >                 size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> > >                 if (*num_planes == 2)
> > >                         size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> > >                 break;
> > >         }
> > >
> > >         if (*num_planes > 2)
> > >                 return -EINVAL;
> > >         if (*num_planes == 0) {
> > >                 if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
> > >                         sizes[0] = ctx->dst_fmt.buffersize;
> > >                         *num_planes = 1;
> > >                         return 0;
> > >                 }
> > >
> > >                 *num_planes = ctx->src_fmt.num_planes;
> > >                 for (plane = 0; plane < *num_planes; plane++)
> > >                         sizes[plane] = ctx->src_fmt.plane_fmt[plane].sizeimage;
> > >                 return 0;
> > >         }
> > >
> > >         for (plane = 0; plane < *num_planes; plane++) {
> > >                 if(sizes[plane] < size[plane])
> > >                         return -EINVAL;
> > >         }
> > >         return 0;
> > > }
> > >
> >
> > Looks good, thanks!
> >
> > > > >         }
> > > > >
> > > > >         return 0;
> > > > > }
> > > > >
> > > > > > [snip]
> > > > > >
> > > > > > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > +{
> > > > > > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > > +   struct vb2_buffer *vb;
> > > > > > > >
> > > > > > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > > > > > removed below?
> > > > > > > >
> > > > > > > Maybe we can check the driver state flag and aborting the unfinished
> > > > > > > jobs?
> > > > > > > (fd_hw->state == FD_ENQ)
> > > > > > >
> > > > > >
> > > > > > Yes, we need to either cancel or wait for the currently processing
> > > > > > job. It depends on hardware capabilities, but cancelling is generally
> > > > > > preferred for the lower latency.
> > > > > >
> > > > > Ok, it the state is ENQ, then we can disable the FD hw by controlling
> > > > > the registers.
> > > > >
> > > > > for example:
> > > > >         writel(0x0, fd->fd_base + FD_HW_ENABLE);
> > > > >         writel(0x0, fd->fd_base + FD_INT_EN);
> > > > >
> > > >
> > > > What's exactly the effect of writing 0 to FD_HW_ENABLE?
> > > >
> > > Sorry, my last reply didn't solve the question,
> > > we should implement a mtk_fd_job_abort() for v4l2_m2m_ops().
> > >
> > > which is able to readl_poll_timeout_atomic()
> > > and check the HW busy bits in the register FD_INT_EN;
> > >
> > > if they are not cleared until timeout, we could handle the last
> > > processing job.
> > > Otherwise, the FD irq handler should have handled the last processing
> > > job and we could continue the stop_streaming().
> > >
> > > For job_abort():
> > > static void mtk_fd_job_abort(void *priv)
> > > {
> > >         struct mtk_fd_ctx *ctx = priv;
> > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > >         u32 val;
> > >         u32 ret;
> > >
> > >         ret = readl_poll_timeout_atomic(fd->fd_base + MTK_FD_REG_OFFSET_INT_EN,
> > >                                         val,
> > >                                         (val & MTK_FD_HW_BUSY_MASK) ==
> > >                                         MTK_FD_HW_STATE_IS_BUSY,
> > >                                         USEC_PER_MSEC, MTK_FD_STOP_HW_TIMEOUT);
> >
> > Hmm, would it be possible to avoid the busy wait by having a
> > completion that could be signalled from the interrupt handler?
> >
> > Best regards,
> > Tomasz
>
> I suppose that would be wakeup a wait queue in the interrupt handler,
> the the wait_event_interrupt_timeout() will be used in here and system
> suspend e.g. mtk_fd_suspend().

Yes, that should work.

> Or do you suggest to wait_event_interrupt_timeout() every frame in the
> mtk_fd_ipi_handler()?

Nope, we shouldn't need that.

> I think maybe the readl_poll_timeout_atomic would be good enough.
>

Not really. Busy waiting should be avoided as much as possible. What's
the point of entering suspend if you end up burning the power by
spinning the CPU for some milliseconds?

>
> One more thing, for the mtk_fd_video_device_register()
> Sorry that I would need to use intermediate variable here since the 80
> columns check.
>
>         function = MEDIA_ENT_F_PROC_VIDEO_STATISTICS;
>         ret = v4l2_m2m_register_media_controller(m2m_dev, vfd, function);

Why not just make it like this:

ret = v4l2_m2m_register_media_controller(m2m_dev,
                MEDIA_ENT_F_PROC_VIDEO_STATISTICS);

The above line is aligned using tabs so that its end is as close to
the 80 character boundary as possible.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
