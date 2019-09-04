Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8DBBA7BDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 08:41:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RX1ITSwsb+Cg+H7dIL2KMgojDTmNreh+GxHHpnvH19E=; b=dSfxMftXGpydYL
	6fz61djA93DhzQ5wBSW15qfFY0D/CV1h4aT9mMPAX9QAqrhwDXGV/kUsdG9yp9FRhPDzHpqNUr1/n
	9vCOgn21590f5UWuNQHdAIqX7MSDzfgGW32bS+9CecAzPoSFmHdJTdvVLAbsQfoPN7cqqfYOGctd6
	41ilyo2OkIiffgkiKdHf5ves4b6MKdbxjqwsP8VMew27Kv0T6rkkAep+dsOUN+uBjFcF/5pF2AWUT
	OWqPXAHCIajKY357yEF44hlzH5cfAzc95zlPfZgaucHsqTt49QwuIe2oYVQM3u/4ABQ7zp5JSw5h4
	l2I96CWR+N/Isql7PlmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5OyL-0002S3-8T; Wed, 04 Sep 2019 06:40:53 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Oy6-0002Rd-Tv
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 06:40:40 +0000
Received: by mail-ed1-x541.google.com with SMTP id u6so15436126edq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:40:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uzFLdhbgSnrND9QTcjvajbzPmAYV+6gkINiHJrQkhdI=;
 b=bg17k3NxTjJ1s8pxlaHYpznUGstFGDp7UQg+U4wbYtQxezvo8s7PcmieG9/BFZAjkv
 SAjS9ZSye5eyWaj4Tn8b0yxrEWVgyRHU5As9J+MXIwgojSDOSfTlr2ofmX/exIwZxeNd
 SM4RN99DABtL4t/B4HxsYJ9i7i5ruVxncoOhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uzFLdhbgSnrND9QTcjvajbzPmAYV+6gkINiHJrQkhdI=;
 b=NwR1A6h4famV5xqJ0uk9Wy/G15qMhyh4kAYqrkNdbB6kedGzt1881fQdfZr/PFI0Of
 Kak2ICFyINPP82Fly5wUu2cTFFDVO/OxHwSxO35vhk6msmNZ8V/+1rmfG5V4FW0JRy4w
 bHELal/VxQfmV9eLTpiOQaHc7KlW72nn/h/meeD0RCfB1Uy7fiXYJsj/Ym9N2bNi4rwa
 tLBh5KJJwc2+cvZLxdeMSyOu+9LPdzTVDMaMwU3RWUYOwp5jaTcC+KphihKv1HXrFZ8K
 apIjiDyFPYrYDZXvXMGhmx+72IM/UATZmn7S5D7/JEOrHJA1SXd0TY2KC9iXYz25olJ1
 awJQ==
X-Gm-Message-State: APjAAAVlRJBbGFKvS3g+NOBfeXeUjrP0eZEd1/xk1VkjEPDk+wtFoGSz
 941aopUnTKs+RcQvDVfaQGzQ8DLRY7m6MA==
X-Google-Smtp-Source: APXvYqzxb5haDxW0W/q8On4QvVP58uS3GNF5fRljv49vVrZsIjlFdl0Po4v5AOl5RpibcEy9mjxVdQ==
X-Received: by 2002:a50:b501:: with SMTP id y1mr22244842edd.167.1567579236873; 
 Tue, 03 Sep 2019 23:40:36 -0700 (PDT)
Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com.
 [209.85.128.44])
 by smtp.gmail.com with ESMTPSA id r18sm1824717edl.6.2019.09.03.23.40.36
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 23:40:36 -0700 (PDT)
Received: by mail-wm1-f44.google.com with SMTP id q12so332683wmj.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 23:40:36 -0700 (PDT)
X-Received: by 2002:a05:600c:240a:: with SMTP id
 10mr3080893wmp.113.1567578900809; 
 Tue, 03 Sep 2019 23:35:00 -0700 (PDT)
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
 <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
 <1567511169.18318.65.camel@mtksdccf07>
 <CAAFQd5DiPcUxd+R-v_-BdRx+QqZ35Riii_jpgbqr5mc3BnQvDw@mail.gmail.com>
 <1567568281.18318.80.camel@mtksdccf07>
 <CAAFQd5CRC2cyV30B4Qv59HdrJ7Cpe_yK5aY-BecQQ3J3i0PtCQ@mail.gmail.com>
 <1567577389.18318.100.camel@mtksdccf07>
In-Reply-To: <1567577389.18318.100.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 4 Sep 2019 15:34:49 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AxTQPD+nP9CJs45QTzGHKssjv3vRtMqHONABfp12afYw@mail.gmail.com>
Message-ID: <CAAFQd5AxTQPD+nP9CJs45QTzGHKssjv3vRtMqHONABfp12afYw@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_234038_994287_62F29A02 
X-CRM114-Status: GOOD (  39.48  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Wed, Sep 4, 2019 at 3:09 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Wed, 2019-09-04 at 12:15 +0800, Tomasz Figa wrote:
> > On Wed, Sep 4, 2019 at 12:38 PM Jerry-ch Chen
> > <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Tue, 2019-09-03 at 20:05 +0800, Tomasz Figa wrote:
> > > > On Tue, Sep 3, 2019 at 8:46 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > >
> > > > > Hi Tomasz,
> > > > >
> > > > > On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> > > > > > On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > >
> > > > > > > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > > > > > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > >
> > > > > > > > > Hi Tomasz,
> > > > > > > > >
> > > > > > > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > > > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > >
> > > > > > > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > >
> > > > > > > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > > > >
> > > > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > > > >
> > > > > > > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > > [snip]
> > > > > > > > > > > > [snip]
> > > > > > > > > > > >
> > > > > > > > > > > > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > > > > > > > +{
> > > > > > > > > > > > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > > > > > > > > +   struct vb2_buffer *vb;
> > > > > > > > > > > > > >
> > > > > > > > > > > > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > > > > > > > > > > > removed below?
> > > > > > > > > > > > > >
> > > > > > > > > > > > > Maybe we can check the driver state flag and aborting the unfinished
> > > > > > > > > > > > > jobs?
> > > > > > > > > > > > > (fd_hw->state == FD_ENQ)
> > > > > > > > > > > > >
> > > > > > > > > > > >
> > > > > > > > > > > > Yes, we need to either cancel or wait for the currently processing
> > > > > > > > > > > > job. It depends on hardware capabilities, but cancelling is generally
> > > > > > > > > > > > preferred for the lower latency.
> > > > > > > > > > > >
> > > > > > > > > > > Ok, it the state is ENQ, then we can disable the FD hw by controlling
> > > > > > > > > > > the registers.
> > > > > > > > > > >
> > > > > > > > > > > for example:
> > > > > > > > > > >         writel(0x0, fd->fd_base + FD_HW_ENABLE);
> > > > > > > > > > >         writel(0x0, fd->fd_base + FD_INT_EN);
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > What's exactly the effect of writing 0 to FD_HW_ENABLE?
> > > > > > > > > >
> > > > > > > > > Sorry, my last reply didn't solve the question,
> > > > > > > > > we should implement a mtk_fd_job_abort() for v4l2_m2m_ops().
> > > > > > > > >
> > > > > > > > > which is able to readl_poll_timeout_atomic()
> > > > > > > > > and check the HW busy bits in the register FD_INT_EN;
> > > > > > > > >
> > > > > > > > > if they are not cleared until timeout, we could handle the last
> > > > > > > > > processing job.
> > > > > > > > > Otherwise, the FD irq handler should have handled the last processing
> > > > > > > > > job and we could continue the stop_streaming().
> > > > > > > > >
> > > > > > > > > For job_abort():
> > > > > > > > > static void mtk_fd_job_abort(void *priv)
> > > > > > > > > {
> > > > > > > > >         struct mtk_fd_ctx *ctx = priv;
> > > > > > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > > > > > >         u32 val;
> > > > > > > > >         u32 ret;
> > > > > > > > >
> > > > > > > > >         ret = readl_poll_timeout_atomic(fd->fd_base + MTK_FD_REG_OFFSET_INT_EN,
> > > > > > > > >                                         val,
> > > > > > > > >                                         (val & MTK_FD_HW_BUSY_MASK) ==
> > > > > > > > >                                         MTK_FD_HW_STATE_IS_BUSY,
> > > > > > > > >                                         USEC_PER_MSEC, MTK_FD_STOP_HW_TIMEOUT);
> > > > > > > >
> > > > > > > > Hmm, would it be possible to avoid the busy wait by having a
> > > > > > > > completion that could be signalled from the interrupt handler?
> > > > > > > >
> > > > > > > > Best regards,
> > > > > > > > Tomasz
> > > > > > >
> > > > > > > I suppose that would be wakeup a wait queue in the interrupt handler,
> > > > > > > the the wait_event_interrupt_timeout() will be used in here and system
> > > > > > > suspend e.g. mtk_fd_suspend().
> > > > > >
> > > > > > Yes, that should work.
> > > > > >
> > > > > > > Or do you suggest to wait_event_interrupt_timeout() every frame in the
> > > > > > > mtk_fd_ipi_handler()?
> > > > > >
> > > > > > Nope, we shouldn't need that.
> > > > > >
> > > > > > > I think maybe the readl_poll_timeout_atomic would be good enough.
> > > > > > >
> > > > > >
> > > > > > Not really. Busy waiting should be avoided as much as possible. What's
> > > > > > the point of entering suspend if you end up burning the power by
> > > > > > spinning the CPU for some milliseconds?
> > > > > >
> > > > > Ok, I see, busy waiting is not a good idea, I will use the wait queue
> > > > > instead. the job abort will refine as following:
> > > > >
> > > > > static void mtk_fd_job_abort(void *priv)
> > > > > {
> > > > >         struct mtk_fd_ctx *ctx = priv;
> > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > >         u32 ret;
> > > > >
> > > > >         ret = wait_event_interruptible_timeout
> > > > >                 (fd->wq, (fd->fd_irq_result & MTK_FD_HW_IRQ_MASK),
> > > > >                  usecs_to_jiffies(50000));
> > > > >         if (ret)
> > > > >                 mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> > > > >         dev_dbg(fd->dev, "%s, ret:%d\n", __func__, ret);
> > > > >
> > > > >         fd->fd_irq_result = 0;
> > > > > }
> > > > >
> > > > > static struct v4l2_m2m_ops fd_m2m_ops = {
> > > > >         .device_run = mtk_fd_device_run,
> > > > >         .job_abort = mtk_fd_job_abort,
> > > >
> > > > I'm not sure we should be using the functon above as the .job_abort
> > > > callback. It's expected to abort the job, but we're just waiting for
> > > > it to finish. I think we should just call mtk_fd_job_abort() manually
> > > > from .stop_streaming.
> > > >
> > >
> > > Ok, I will fix it.
> > >
> > > > > };
> > > > >
> > > > > and we could use it in suspend.
> > > > > static int mtk_fd_suspend(struct device *dev)
> > > > > {
> > > > >         struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> > > > >
> > > > >         if (pm_runtime_suspended(dev))
> > > > >                 return 0;
> > > > >
> > > > >         if (fd->fd_stream_count)
> > > > >                 mtk_fd_job_abort(fd->ctx);
> > > > >
> > > > >         /* suspend FD HW */
> > > > >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> > > > >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> > > > >         clk_disable_unprepare(fd->fd_clk);
> > > > >         dev_dbg(dev, "%s:disable clock\n", __func__);
> > > > >
> > > > >         return 0;
> > > > > }
> > > > >
> > > > > static irqreturn_t mtk_fd_irq(int irq, void *data)
> > > > > {
> > > > >         struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;
> > > > >
> > > > >         fd->fd_irq_result = readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
> > > > >         wake_up_interruptible(&fd->wq);
> > > >
> > > > The wake up should be done at the very end of this function. Otherwise
> > > > we end up with m2m framework racing with the mtk_fd_hw_job_finish()
> > > > below.
> > > >
> > > > Also, I'd use a completion here rather than an open coded wait and
> > > > wake-up. The driver could reinit_completion() before queuing a job to
> > > > the hardware and the IRQ handler would complete(). There would be no
> > > > need to store the IRQ flags in driver data anymore.
> > > Ok, It will be refined as following:
> > >
> > > suspend and stop streaming will call mtk_fd_job_abort()
> > >
> > > static void mtk_fd_job_abort(struct mtk_fd_dev *fd)
> > > {
> > >         u32 ret;
> > >
> > >         ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > >                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> > >         if (ret)
> >
> > For the _timeout variants, !ret means the timeout and ret > 0 means
> > that the wait ended successfully before.
> >
> Thanks, fixed.
>
> > Also please make sure that the timeout is big enough not to happen
> > normally on a heavily loaded system. Something like 1 second should be
> > good.
> >
> Ok, I will make it 1 second
> #define MTK_FD_HW_TIMEOUT 1000
>
> Also, I will add a condition in mtk_fd_vb2_stop_streaming(), since it
> would be called twice, now it works fine whether I reuse the condition
> with mtk_fd_hw_disconnect or not, however, I think do it before buffer
> remove looks more reasonable.
>
> static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> {
>         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
>         struct mtk_fd_dev *fd = ctx->fd_dev;
>         struct vb2_v4l2_buffer *vb;
>         struct v4l2_m2m_ctx *m2m_ctx = ctx->fh.m2m_ctx;
>         struct v4l2_m2m_queue_ctx *queue_ctx;
>
>         if (vq->type == V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE)
>                 mtk_fd_job_abort(fd);

We need to do it regardless of the queue type, otherwise we could
still free CAPTURE buffers before the hardware releases them.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
