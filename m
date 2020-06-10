Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 304281F5B86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 20:53:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzzQhKgw42eE+ambmDric1AuHg0AAnCdOIvbbTyr9+A=; b=SdHXNZ1zgsv4GH
	NDFu/ydJ5WEBJEMrajApQzfBomEp75FEVhWpC6hTYADc8N0iZDRjmE+FmtbnStaYpMzzpdvyyuBl9
	pykMTQnF+7qHimDeLXGMqZ1UnsPXUIKQGgd5NTHg0RiTZqv/xUisgQ88PneSGR6wKbVAcytNqe3m/
	Dt9rCJkKZKd0X5uL4Gb20ZYi5Tvv60M9IurhaldjoJYVe1YAG//fBM/8h6hjja2rdiPJN2xOPa5Ws
	KmSgAF8xg06y/KqVFkEISMPlKEGd9ZExCJLi9XyMMbY6eEQXVcNlskBRXCb7JoaW1/DAPbkD1cC6B
	FvtqjNLXqqSpuDL1Yycw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jj5qZ-0003VV-Bx; Wed, 10 Jun 2020 18:53:11 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jj5qG-0003Mi-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 18:52:54 +0000
Received: by mail-ed1-x544.google.com with SMTP id k8so2165568edq.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 11:52:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=CbR96mtjILK7CXyFeJfJjgwimFAgYdYYoASbhiEt3b8=;
 b=UoA6mdIYYeZDClqnXSQssygIn/PG+NX40vT80Y6VCQxi+EBFCnFS6Wr7ztvKGCkcH4
 4kVSxit+x0RXy1PUroeD0u6Mbawsqh6va1iTczz8VDIdEiS/jdwT6C3SByXK6bJ8SaMZ
 LV6c/7zlWnLB6JilPSBzPSB5L+bjUdVQuQ5GhXTTqLQlopf14FpK8Aso+WDEhC12FsN/
 fxrMi0/plvpnlcpV/SF+2RehWTeVpskRO3SpSH7qOyw6ly41UFj97rly8sB2ZBQhHCNa
 Ad5iqI3BSb6PpZET2RVQNsoYfKMfTEqHxGejMSn1QviLBu1165Otf+5nmA5rlKCAWQ+h
 ad1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=CbR96mtjILK7CXyFeJfJjgwimFAgYdYYoASbhiEt3b8=;
 b=qOtBkbpbj/mIep7Y9PF4WGpPEFwZZ5zW28PwfnHEplbmd+YF56wA8f/DNW4vIp/nBX
 ZrdHXVUJe6Xslv5chVOce8FnJmyDQpolODtblKw8q+ZRB13LAgsS6YPZUKhYyTtUyiZ5
 CQMd/GTCs6m0/X0poM+45KPJot/CTEan41kM2yh56AAG2LXdANlGbuOS4ldZn4tqDnhP
 f7U9IrMysklEOEQG28w4L1kWL6yIeIw/xQhefDbjfbg9fA4xXRNjFdb2ZrmTRvkOetqy
 6I2kpD2c2Uf15ZjkOa1vdR/bZrRr0fsESQiVqitNhi3UYoASx5JTD1PC4hs89JDjIP0F
 iF9w==
X-Gm-Message-State: AOAM532DmLMvVH2cePo96f+obMls71THvpO32SWVX0lfGtrrzq/iQFG9
 giL885SFpu0ac+auOQrJ/n1SCTFx3gfZcYWGLEMWaw==
X-Google-Smtp-Source: ABdhPJxN/GLInQdzFlFb6QNZ7kF/EMF0jdmnsSPEii+SZBgYAz5zF8iUnVPfSKOUH7zSH4rYKOySSHmBDtruvjQjLd8=
X-Received: by 2002:a05:6402:149:: with SMTP id
 s9mr3576778edu.375.1591815170564; 
 Wed, 10 Jun 2020 11:52:50 -0700 (PDT)
MIME-Version: 1.0
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
 <20200521171101.GA243874@chromium.org>
 <e31fe64a-c5c1-7b1e-eec1-27111fe43ac2@xs4all.nl>
 <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
In-Reply-To: <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Wed, 10 Jun 2020 15:52:39 -0300
Message-ID: <CAAEAJfDboyra5XcEiviJP_3Kk-mDNZH5nstDa_7P7XCV7bu7Pg@mail.gmail.com>
Subject: Re: [RFC PATCH V4 1/4] media: v4l2-mem2mem: add v4l2_m2m_suspend,
 v4l2_m2m_resume
To: Tomasz Figa <tfiga@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_115252_807902_22BA233B 
X-CRM114-Status: GOOD (  27.60  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>,
 Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 =?UTF-8?B?SnVuZ28gTGluICjmnpfmmI7kv4op?= <jungo.lin@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Pi-Hsun Shih <pihsun@chromium.org>,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 =?UTF-8?B?Q2hyaXN0aWUgWXUgKOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi everyone,

Thanks for the patch.

On Wed, 10 Jun 2020 at 07:33, Tomasz Figa <tfiga@chromium.org> wrote:
>
> On Wed, Jun 10, 2020 at 12:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
> >
> > On 21/05/2020 19:11, Tomasz Figa wrote:
> > > Hi Jerry,
> > >
> > > On Wed, Dec 04, 2019 at 08:47:29PM +0800, Jerry-ch Chen wrote:
> > >> From: Pi-Hsun Shih <pihsun@chromium.org>
> > >>
> > >> Add two functions that can be used to stop new jobs from being queued /
> > >> continue running queued job. This can be used while a driver using m2m
> > >> helper is going to suspend / wake up from resume, and can ensure that
> > >> there's no job running in suspend process.
> > >>
> > >> BUG=b:143046833
> > >> TEST=build
> > >>

BUG/TEST tags need to be removed.

> > >> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> > >> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>

This mail address probably needs correction?

> > >> ---
> > >>  drivers/media/v4l2-core/v4l2-mem2mem.c | 40 ++++++++++++++++++++++++++
> > >>  include/media/v4l2-mem2mem.h           | 22 ++++++++++++++
> > >>  2 files changed, 62 insertions(+)
> > >>
> > >> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> > >> index 5bbdec55b7d7..76ba203e0035 100644
> > >> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> > >> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> > >> @@ -47,6 +47,10 @@ module_param(debug, bool, 0644);
> > >>  #define TRANS_ABORT         (1 << 2)
> > >>
> > >>
> > >> +/* The job queue is not running new jobs */
> > >> +#define QUEUE_PAUSED                (1 << 0)
> > >> +
> > >> +
> > >>  /* Offset base for buffers on the destination queue - used to distinguish
> > >>   * between source and destination buffers when mmapping - they receive the same
> > >>   * offsets but for different queues */
> > >> @@ -88,6 +92,7 @@ static const char * const m2m_entity_name[] = {
> > >>   * @job_queue:              instances queued to run
> > >>   * @job_spinlock:   protects job_queue
> > >>   * @job_work:               worker to run queued jobs.
> > >> + * @job_queue_flags:        flags of the queue status, %QUEUE_PAUSED.
> > >>   * @m2m_ops:                driver callbacks
> > >>   */
> > >>  struct v4l2_m2m_dev {
> > >> @@ -105,6 +110,7 @@ struct v4l2_m2m_dev {
> > >>      struct list_head        job_queue;
> > >>      spinlock_t              job_spinlock;
> > >>      struct work_struct      job_work;
> > >> +    unsigned long           job_queue_flags;
> > >>
> > >>      const struct v4l2_m2m_ops *m2m_ops;
> > >>  };
> > >> @@ -267,6 +273,12 @@ static void v4l2_m2m_try_run(struct v4l2_m2m_dev *m2m_dev)
> > >>              return;
> > >>      }
> > >>
> > >> +    if (m2m_dev->job_queue_flags & QUEUE_PAUSED) {
> > >> +            spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> > >> +            dprintk("Running new jobs is paused\n");
> > >> +            return;
> > >> +    }
> > >> +
> > >>      m2m_dev->curr_ctx = list_first_entry(&m2m_dev->job_queue,
> > >>                                 struct v4l2_m2m_ctx, queue);
> > >>      m2m_dev->curr_ctx->job_flags |= TRANS_RUNNING;
> > >> @@ -447,6 +459,34 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> > >>  }
> > >>  EXPORT_SYMBOL(v4l2_m2m_job_finish);
> > >>
> > >> +void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev)
> > >> +{
> > >> +    unsigned long flags;
> > >> +    struct v4l2_m2m_ctx *curr_ctx;
> > >> +
> > >> +    spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> > >> +    m2m_dev->job_queue_flags |= QUEUE_PAUSED;
> > >> +    curr_ctx = m2m_dev->curr_ctx;
> > >> +    spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> > >> +
> > >> +    if (curr_ctx)
> > >> +            wait_event(curr_ctx->finished,
> > >> +                       !(curr_ctx->job_flags & TRANS_RUNNING));
> > >> +}
> > >> +EXPORT_SYMBOL(v4l2_m2m_suspend);
> > >> +
> > >> +void v4l2_m2m_resume(struct v4l2_m2m_dev *m2m_dev)
> > >> +{
> > >> +    unsigned long flags;
> > >> +
> > >> +    spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> > >> +    m2m_dev->job_queue_flags &= ~QUEUE_PAUSED;
> > >> +    spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> > >> +
> > >> +    v4l2_m2m_try_run(m2m_dev);
> > >> +}
> > >> +EXPORT_SYMBOL(v4l2_m2m_resume);
> > >> +
> > >>  int v4l2_m2m_reqbufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> > >>                   struct v4l2_requestbuffers *reqbufs)
> > >>  {
> > >> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> > >> index 5467264771ec..119a195da390 100644
> > >> --- a/include/media/v4l2-mem2mem.h
> > >> +++ b/include/media/v4l2-mem2mem.h
> > >> @@ -183,6 +183,28 @@ v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
> > >>      vb2_buffer_done(&buf->vb2_buf, state);
> > >>  }
> > >>
> > >> +/**
> > >> + * v4l2_m2m_suspend() - stop new jobs from being run and wait for current job
> > >> + * to finish
> > >> + *
> > >> + * @m2m_dev: opaque pointer to the internal data to handle M2M context
> > >> + *
> > >> + * Called by a driver in the suspend hook. Stop new jobs from being run, and
> > >> + * wait for current running job to finish.
> > >> + */
> > >> +void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev);
> > >> +
> > >> +/**
> > >> + * v4l2_m2m_resume() - resume job running and try to run a queued job
> > >> + *
> > >> + * @m2m_dev: opaque pointer to the internal data to handle M2M context
> > >> + *
> > >> + * Called by a driver in the resume hook. This reverts the operation of
> > >> + * v4l2_m2m_suspend() and allows job to be run. Also try to run a queued job if
> > >> + * there is any.
> > >> + */
> > >> +void v4l2_m2m_resume(struct v4l2_m2m_dev *m2m_dev);
> > >> +
> > >>  /**
> > >>   * v4l2_m2m_reqbufs() - multi-queue-aware REQBUFS multiplexer
> > >>   *
> > >> --
> > >> 2.18.0
> > >
> > > Reviewed-by: Tomasz Figa <tfiga@chromium.org>
> > >
> > > [Corrected Hans's email address.]
> > > Hans, does this look good to you?
> >
> > Yes, this looks good.
> >
> > Sorry for the late reply.
>
> No worries! Thanks a lot.
>
> >
> > I assume this will be part of a future patch series that calls these new functions?
>
> The mtk-jpeg encoder series depends on this patch as well, so I guess
> it would go together with whichever is ready first.
>
> I would also envision someone changing the other existing drivers to
> use the helpers, as I'm pretty much sure some of them don't handle
> suspend/resume correctly.
>

This indeed looks very good. If I understood the issue properly,
the change would be useful for both stateless (e.g. hantro, et al)
and stateful (e.g. coda) codecs.

Hantro uses pm_runtime_force_suspend, and I believe that
could is enough for proper suspend/resume operation.

I'm not seeing any code in CODA to handle this, so not sure
how it's handling suspend/resume.

Maybe we can have CODA as the first user, given it's a well-maintained
driver and should be fairly easy to test.

Regards,
Ezequiel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
