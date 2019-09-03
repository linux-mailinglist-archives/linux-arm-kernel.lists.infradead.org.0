Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC2AA6075
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 07:20:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uOsWIFN1oluadiHP62PZMunJ5OePGou1v40Db+cJdEk=; b=g18zJK2GHgBgjH
	tvTxOqaYkKMUsTTaHZsPETanvndLGKOIkmFiyw+WSmGkMMhq17Ib7wsiIR3ebKHCNQOjSrGvH3SiS
	KIOMVj7i0YovjuaifTEkEnT6jvliAsCEcZHHj13pouhfjgHTSvBha/68WwvEwFVLck5SdRmjgIgg5
	Y807em/UQd0fUy+eRDS0BKDHfQI1ip1WH+Rfu1op0rEYcKiimci8XVrfrSpI78EYlb7iPRH4hkQzk
	vczOsgYNUhkZiEmLr0PSlSuxhV9XL87dDvGxsOaEsB7yv79eUE4LadrUxnsJLj5kI31ON8/53bvmS
	p7sANfNQfaLaC26Mgphw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i51Ec-00044s-IH; Tue, 03 Sep 2019 05:20:06 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i51EL-000430-KZ
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 05:19:51 +0000
Received: by mail-ed1-x541.google.com with SMTP id a21so17254926edt.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 22:19:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nRWk1hiNsgYKDx0eHOI6vp6cA2gI01WBhMOu+BZ2jiE=;
 b=XRznKuQFypiCThT4oXIQSIBA7FNl2mvcrR0pkBLgUBKjwgIbdfglCn2WZbp2oaWnie
 5SIqUtqyGftLXp4KNEyzDy+t+MhsoDwqHd6t0wZtQfXgYzkn6fX17iHhLPhI3hNOVr1g
 58lg3a5A2vXrMBrASbA4h4/L+NJVUmauuvOvQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nRWk1hiNsgYKDx0eHOI6vp6cA2gI01WBhMOu+BZ2jiE=;
 b=D9uuFZEfYjccZZ+bXGnS3xwRRFZrrpn2Om+GSUaVS89E86kgIpF/4xD4/pEHAHjCzA
 5xDGYDFX8Sg/VveC6rla4/ft3/hi2562IbOnyjCAbMoEbaBEHZs1FOVCQUPRWQ5E5RyA
 eUhB5Er6jUILxKn5efafmgaLOQe7SSBaKwmI9kKbaQ2G15RpPpCTIEEbkm2GDoepCSDt
 hfoY4GaIw0hLWqxvuVdTK3qfTIYQ686A4Kqe5yAB0tlSnt7geidqFtlcg32y5IG7cIUO
 LSDKd5H4Es8CT0Y6krCx4f70ssldxjKadbcFQFhbe/2LrPCLyXt8jB8a8bSYZVPQsHJR
 1sNg==
X-Gm-Message-State: APjAAAXyi/yAkw0s74jDLoaYaH8GGZu1lxT1UtE+NN1zACSYBGyNrDSc
 ilmWrIKwzvcxj/XCxWN3qmB8M7wz2Z6mfg==
X-Google-Smtp-Source: APXvYqwygLHmFX0Sf0c6RgHk4V6jj/GHliRrnwcgSb4t6LNFaku7asXLtWEVzEgSn37xUPnj4vj4vg==
X-Received: by 2002:a50:ed1a:: with SMTP id j26mr21820761eds.138.1567487987810; 
 Mon, 02 Sep 2019 22:19:47 -0700 (PDT)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com.
 [209.85.128.52])
 by smtp.gmail.com with ESMTPSA id f23sm1743105edd.39.2019.09.02.22.19.45
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 02 Sep 2019 22:19:45 -0700 (PDT)
Received: by mail-wm1-f52.google.com with SMTP id g207so12553272wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 22:19:45 -0700 (PDT)
X-Received: by 2002:a1c:f704:: with SMTP id v4mr28499086wmh.90.1567487984880; 
 Mon, 02 Sep 2019 22:19:44 -0700 (PDT)
MIME-Version: 1.0
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org> <1566724680.20680.8.camel@mtksdccf07>
 <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
 <1566957625.20680.33.camel@mtksdccf07>
 <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
 <1567424859.18318.32.camel@mtksdccf07>
In-Reply-To: <1567424859.18318.32.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 3 Sep 2019 14:19:32 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AGgeFbto6V1KkL0dp1QPziOKV3pWQDU2OJ+S1QKvnBdg@mail.gmail.com>
Message-ID: <CAAFQd5AGgeFbto6V1KkL0dp1QPziOKV3pWQDU2OJ+S1QKvnBdg@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_221949_671038_23E868BA 
X-CRM114-Status: GOOD (  27.04  )
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

On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > Hi Jerry,
> > > >
> > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > >
> > > > > Hi Tomasz,
> > > > >
> > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > Hi Jerry,
> > > > > >
> > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
[snip]
> > > static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > >                                   unsigned int *num_buffers,
> > >                                   unsigned int *num_planes,
> > >                                   unsigned int sizes[],
> > >                                   struct device *alloc_devs[])
> > > {
> > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > >         struct device *dev = ctx->dev;
> > >         unsigned int size[2];
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
> > >         if (*num_planes == 1) {
> > >                 if (sizes[0] < size[0])
> > >                         return -EINVAL;
> > >         } else if (*num_planes == 2) {
> > >                 if ((sizes[0] < size[0]) && (sizes[1] < size[1]))
> > >                         return -EINVAL;
> >
> > Can we just use a loop here and combine the 2 cases above?
> >
> > Also, we need to fail with -EINVAL if *num_planes is > 2.
> >
> > >         } else {
> > >                 *num_planes = 1;
> > >                 sizes[0] = size[0];
> >
> > This should be the case if *num_planes == 0 and the number of planes
> > and sizes should match the currently active format.
> >
> I appreciate your comments,
>
> Ok, I will update as following:
> static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
>                                   unsigned int *num_buffers,
>                                   unsigned int *num_planes,
>                                   unsigned int sizes[],
>                                   struct device *alloc_devs[])
> {
>         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
>         unsigned int size[2];
>         unsigned int plane;
>
>         switch (vq->type) {
>         case V4L2_BUF_TYPE_META_CAPTURE:
>                 size[0] = ctx->dst_fmt.buffersize;
>                 break;
>         case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
>                 size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
>                 if (*num_planes == 2)
>                         size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
>                 break;
>         }
>
>         if (*num_planes > 2)
>                 return -EINVAL;
>         if (*num_planes == 0) {
>                 if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
>                         sizes[0] = ctx->dst_fmt.buffersize;
>                         *num_planes = 1;
>                         return 0;
>                 }
>
>                 *num_planes = ctx->src_fmt.num_planes;
>                 for (plane = 0; plane < *num_planes; plane++)
>                         sizes[plane] = ctx->src_fmt.plane_fmt[plane].sizeimage;
>                 return 0;
>         }
>
>         for (plane = 0; plane < *num_planes; plane++) {
>                 if(sizes[plane] < size[plane])
>                         return -EINVAL;
>         }
>         return 0;
> }
>

Looks good, thanks!

> > >         }
> > >
> > >         return 0;
> > > }
> > >
> > > > [snip]
> > > >
> > > > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > +{
> > > > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > +   struct vb2_buffer *vb;
> > > > > >
> > > > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > > > removed below?
> > > > > >
> > > > > Maybe we can check the driver state flag and aborting the unfinished
> > > > > jobs?
> > > > > (fd_hw->state == FD_ENQ)
> > > > >
> > > >
> > > > Yes, we need to either cancel or wait for the currently processing
> > > > job. It depends on hardware capabilities, but cancelling is generally
> > > > preferred for the lower latency.
> > > >
> > > Ok, it the state is ENQ, then we can disable the FD hw by controlling
> > > the registers.
> > >
> > > for example:
> > >         writel(0x0, fd->fd_base + FD_HW_ENABLE);
> > >         writel(0x0, fd->fd_base + FD_INT_EN);
> > >
> >
> > What's exactly the effect of writing 0 to FD_HW_ENABLE?
> >
> Sorry, my last reply didn't solve the question,
> we should implement a mtk_fd_job_abort() for v4l2_m2m_ops().
>
> which is able to readl_poll_timeout_atomic()
> and check the HW busy bits in the register FD_INT_EN;
>
> if they are not cleared until timeout, we could handle the last
> processing job.
> Otherwise, the FD irq handler should have handled the last processing
> job and we could continue the stop_streaming().
>
> For job_abort():
> static void mtk_fd_job_abort(void *priv)
> {
>         struct mtk_fd_ctx *ctx = priv;
>         struct mtk_fd_dev *fd = ctx->fd_dev;
>         u32 val;
>         u32 ret;
>
>         ret = readl_poll_timeout_atomic(fd->fd_base + MTK_FD_REG_OFFSET_INT_EN,
>                                         val,
>                                         (val & MTK_FD_HW_BUSY_MASK) ==
>                                         MTK_FD_HW_STATE_IS_BUSY,
>                                         USEC_PER_MSEC, MTK_FD_STOP_HW_TIMEOUT);

Hmm, would it be possible to avoid the busy wait by having a
completion that could be signalled from the interrupt handler?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
