Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B902D1F5284
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:39:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VXw+Ek6J4n5ykNs6RFU+2mP2g9wu3FXXakKXrvVd7o=; b=k7O207yIIZO2Kn
	lXyWQ3vf3UalKiYhRWggp9IS5CrZy7TWPUiZvkXM+SgrH9ZZKcHk3kKPOUZJb8D4XkmZkKQ+17hZP
	llNmhqB0jOsHk/TJ0LA/jtL+5MzLScetYWnfaxnqHKivB0RGYrP7G6J2xwvhQuMMZLH7LJXgQyltM
	eOZrhA8gYaA7skCkwREWoun8gA2+LZa5TAEddyjQAzA4FCRs01lxGM8MAf/3mEyKqqb5otGAhESaC
	14e5nM5bo2cDTYh6euqFxie2eru1WKA/Q3oaqRpBsxMgunGMxBuKTcaebbUYv+6RFtOJdmLwqVcgy
	lp4VqWJynkBqZaYG1Y9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy97-0005Tp-9K; Wed, 10 Jun 2020 10:39:49 +0000
Received: from mail-ej1-x641.google.com ([2a00:1450:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy8J-0005JT-TN
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:39:01 +0000
Received: by mail-ej1-x641.google.com with SMTP id o15so1953765ejm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 03:38:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b4xt9ro4s6EJh9yAJChrfwEE70fQqv8RKm8O5jxwnF8=;
 b=l1lc9WvNx7QdPB4+apffY5SPACt/ijyjhjbYY0C9EkWG3RnABAwn7TKeVaauSy9NMU
 MPhfLiuNtdM7gCzTJw6ftAbcxtZY2ersGZ0blDLT2GHrZiBZgnN0CO2oE5ddHmxZvIWd
 jimEGBuvkuu8oPARZ7ltp1pHctgWaMHIOf8o4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b4xt9ro4s6EJh9yAJChrfwEE70fQqv8RKm8O5jxwnF8=;
 b=JiRcgPk88We5ZskMPZKs4NhaiNCKqKagHpksgx7XYlQ5NO6MN+fP1FBFg1Tapr58AF
 qwQG7UwwVexgIAjUT8MGfyRoXLrf37wpmeIPPlO6J7ay6TewsXKLQ1eO6YFVfsN5zFk0
 hWscz9mHqt8yXteSt+FjQQzshfcOOQ/Bj+ObNTRdSlHBqQmRw78IGpxKHmV699IkwAI8
 QRycufRpAGqikYCG+bDPFlgKLxE8t9b2w8RE5tHSp41uhu2lzHUNPbKpDfd2GUPp7dkW
 kGt27PVi2s0S+Uhj8FtkkVKQAkZ+CV7pdpyHGULyQctX0y+1SI7OGzbntivTTsl4ELv+
 1eAA==
X-Gm-Message-State: AOAM5337VpInhBPgoZtJ8pH+Bmznd2E8DXth1rxw0L7fkMMfvzuWvWR9
 O6xj53NWYbD8XK2cXUUj30aUY/fMIdf9Yg==
X-Google-Smtp-Source: ABdhPJwtmEZdwD5NVHCCfa3IZopFYTiaH42Bqd0wukwl7dpYM7Jp/gCL5aUU0n78Yy/PKelV3S1+yw==
X-Received: by 2002:a17:906:55c9:: with SMTP id
 z9mr2887889ejp.276.1591785536817; 
 Wed, 10 Jun 2020 03:38:56 -0700 (PDT)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com.
 [209.85.208.52])
 by smtp.gmail.com with ESMTPSA id q12sm15162872ejn.23.2020.06.10.03.38.56
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 10 Jun 2020 03:38:56 -0700 (PDT)
Received: by mail-ed1-f52.google.com with SMTP id w7so1027099edt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 10 Jun 2020 03:38:56 -0700 (PDT)
X-Received: by 2002:adf:e2ce:: with SMTP id d14mr2923508wrj.415.1591785187039; 
 Wed, 10 Jun 2020 03:33:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
 <20191204124732.10932-2-Jerry-Ch.chen@mediatek.com>
 <20200521171101.GA243874@chromium.org>
 <e31fe64a-c5c1-7b1e-eec1-27111fe43ac2@xs4all.nl>
In-Reply-To: <e31fe64a-c5c1-7b1e-eec1-27111fe43ac2@xs4all.nl>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 10 Jun 2020 12:32:56 +0200
X-Gmail-Original-Message-ID: <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
Message-ID: <CAAFQd5Ad_cnv0qztZOk9c2H0Y+XO6tRcRmS1t4dBw5qbG-d8Nw@mail.gmail.com>
Subject: Re: [RFC PATCH V4 1/4] media: v4l2-mem2mem: add v4l2_m2m_suspend,
 v4l2_m2m_resume
To: Hans Verkuil <hverkuil@xs4all.nl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033859_978017_CF80E8CD 
X-CRM114-Status: GOOD (  25.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <Rynn.Wu@mediatek.com>,
 zwisler@chromium.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>,
 Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>,
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

On Wed, Jun 10, 2020 at 12:29 PM Hans Verkuil <hverkuil@xs4all.nl> wrote:
>
> On 21/05/2020 19:11, Tomasz Figa wrote:
> > Hi Jerry,
> >
> > On Wed, Dec 04, 2019 at 08:47:29PM +0800, Jerry-ch Chen wrote:
> >> From: Pi-Hsun Shih <pihsun@chromium.org>
> >>
> >> Add two functions that can be used to stop new jobs from being queued /
> >> continue running queued job. This can be used while a driver using m2m
> >> helper is going to suspend / wake up from resume, and can ensure that
> >> there's no job running in suspend process.
> >>
> >> BUG=b:143046833
> >> TEST=build
> >>
> >> Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> >> Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.corp-partner.google.com>
> >> ---
> >>  drivers/media/v4l2-core/v4l2-mem2mem.c | 40 ++++++++++++++++++++++++++
> >>  include/media/v4l2-mem2mem.h           | 22 ++++++++++++++
> >>  2 files changed, 62 insertions(+)
> >>
> >> diff --git a/drivers/media/v4l2-core/v4l2-mem2mem.c b/drivers/media/v4l2-core/v4l2-mem2mem.c
> >> index 5bbdec55b7d7..76ba203e0035 100644
> >> --- a/drivers/media/v4l2-core/v4l2-mem2mem.c
> >> +++ b/drivers/media/v4l2-core/v4l2-mem2mem.c
> >> @@ -47,6 +47,10 @@ module_param(debug, bool, 0644);
> >>  #define TRANS_ABORT         (1 << 2)
> >>
> >>
> >> +/* The job queue is not running new jobs */
> >> +#define QUEUE_PAUSED                (1 << 0)
> >> +
> >> +
> >>  /* Offset base for buffers on the destination queue - used to distinguish
> >>   * between source and destination buffers when mmapping - they receive the same
> >>   * offsets but for different queues */
> >> @@ -88,6 +92,7 @@ static const char * const m2m_entity_name[] = {
> >>   * @job_queue:              instances queued to run
> >>   * @job_spinlock:   protects job_queue
> >>   * @job_work:               worker to run queued jobs.
> >> + * @job_queue_flags:        flags of the queue status, %QUEUE_PAUSED.
> >>   * @m2m_ops:                driver callbacks
> >>   */
> >>  struct v4l2_m2m_dev {
> >> @@ -105,6 +110,7 @@ struct v4l2_m2m_dev {
> >>      struct list_head        job_queue;
> >>      spinlock_t              job_spinlock;
> >>      struct work_struct      job_work;
> >> +    unsigned long           job_queue_flags;
> >>
> >>      const struct v4l2_m2m_ops *m2m_ops;
> >>  };
> >> @@ -267,6 +273,12 @@ static void v4l2_m2m_try_run(struct v4l2_m2m_dev *m2m_dev)
> >>              return;
> >>      }
> >>
> >> +    if (m2m_dev->job_queue_flags & QUEUE_PAUSED) {
> >> +            spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> >> +            dprintk("Running new jobs is paused\n");
> >> +            return;
> >> +    }
> >> +
> >>      m2m_dev->curr_ctx = list_first_entry(&m2m_dev->job_queue,
> >>                                 struct v4l2_m2m_ctx, queue);
> >>      m2m_dev->curr_ctx->job_flags |= TRANS_RUNNING;
> >> @@ -447,6 +459,34 @@ void v4l2_m2m_job_finish(struct v4l2_m2m_dev *m2m_dev,
> >>  }
> >>  EXPORT_SYMBOL(v4l2_m2m_job_finish);
> >>
> >> +void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev)
> >> +{
> >> +    unsigned long flags;
> >> +    struct v4l2_m2m_ctx *curr_ctx;
> >> +
> >> +    spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> >> +    m2m_dev->job_queue_flags |= QUEUE_PAUSED;
> >> +    curr_ctx = m2m_dev->curr_ctx;
> >> +    spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> >> +
> >> +    if (curr_ctx)
> >> +            wait_event(curr_ctx->finished,
> >> +                       !(curr_ctx->job_flags & TRANS_RUNNING));
> >> +}
> >> +EXPORT_SYMBOL(v4l2_m2m_suspend);
> >> +
> >> +void v4l2_m2m_resume(struct v4l2_m2m_dev *m2m_dev)
> >> +{
> >> +    unsigned long flags;
> >> +
> >> +    spin_lock_irqsave(&m2m_dev->job_spinlock, flags);
> >> +    m2m_dev->job_queue_flags &= ~QUEUE_PAUSED;
> >> +    spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> >> +
> >> +    v4l2_m2m_try_run(m2m_dev);
> >> +}
> >> +EXPORT_SYMBOL(v4l2_m2m_resume);
> >> +
> >>  int v4l2_m2m_reqbufs(struct file *file, struct v4l2_m2m_ctx *m2m_ctx,
> >>                   struct v4l2_requestbuffers *reqbufs)
> >>  {
> >> diff --git a/include/media/v4l2-mem2mem.h b/include/media/v4l2-mem2mem.h
> >> index 5467264771ec..119a195da390 100644
> >> --- a/include/media/v4l2-mem2mem.h
> >> +++ b/include/media/v4l2-mem2mem.h
> >> @@ -183,6 +183,28 @@ v4l2_m2m_buf_done(struct vb2_v4l2_buffer *buf, enum vb2_buffer_state state)
> >>      vb2_buffer_done(&buf->vb2_buf, state);
> >>  }
> >>
> >> +/**
> >> + * v4l2_m2m_suspend() - stop new jobs from being run and wait for current job
> >> + * to finish
> >> + *
> >> + * @m2m_dev: opaque pointer to the internal data to handle M2M context
> >> + *
> >> + * Called by a driver in the suspend hook. Stop new jobs from being run, and
> >> + * wait for current running job to finish.
> >> + */
> >> +void v4l2_m2m_suspend(struct v4l2_m2m_dev *m2m_dev);
> >> +
> >> +/**
> >> + * v4l2_m2m_resume() - resume job running and try to run a queued job
> >> + *
> >> + * @m2m_dev: opaque pointer to the internal data to handle M2M context
> >> + *
> >> + * Called by a driver in the resume hook. This reverts the operation of
> >> + * v4l2_m2m_suspend() and allows job to be run. Also try to run a queued job if
> >> + * there is any.
> >> + */
> >> +void v4l2_m2m_resume(struct v4l2_m2m_dev *m2m_dev);
> >> +
> >>  /**
> >>   * v4l2_m2m_reqbufs() - multi-queue-aware REQBUFS multiplexer
> >>   *
> >> --
> >> 2.18.0
> >
> > Reviewed-by: Tomasz Figa <tfiga@chromium.org>
> >
> > [Corrected Hans's email address.]
> > Hans, does this look good to you?
>
> Yes, this looks good.
>
> Sorry for the late reply.

No worries! Thanks a lot.

>
> I assume this will be part of a future patch series that calls these new functions?

The mtk-jpeg encoder series depends on this patch as well, so I guess
it would go together with whichever is ready first.

I would also envision someone changing the other existing drivers to
use the helpers, as I'm pretty much sure some of them don't handle
suspend/resume correctly.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
