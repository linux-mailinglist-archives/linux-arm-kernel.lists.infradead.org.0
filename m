Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BB87A79A5
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 06:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZ41G3JuC+Z0kCB8SQ1mJ2oe0hfYfZWJ+Sx/4k+5E2Q=; b=G4wuaBl2KZDbZJ
	KTCCvTiEGL7qIu9dU+UiEg1X8PInXyg0HSCDIDTlN4OiDIb//kPHM89nwaidE/YwORVq48fZ8HVIT
	mlEt/FPHjKvPlaS7MfQnpBi5pyxs6Upw/AZScj3TZbO8zQZKJCp6AKxPGb/Jiv6Pn+/V7l+vi/PtK
	PBBwh2/8YcljAdH85EcUoJcioMwNenm5GSd/+4FEaVk0YhBjUreKR3L2MiuSMSBv6Y+6w19Pqb2ML
	q8QDKHVY+VPVoEm8erOTH6jVFXOZD44B5Ngd67h4JnLpTxtZH3vi52j3/PRK2MWl7GOnD8oJS09zw
	GHCoH1WCz4+Sbgdx4VeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5MoE-0004vw-Gt; Wed, 04 Sep 2019 04:22:18 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5Mo4-0004vY-FV
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 04:22:10 +0000
Received: by mail-ed1-x541.google.com with SMTP id r12so21052790edo.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 21:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=q5y8opnX2BroSXjeQvIIpMYdtoQXE/i3qwOw+SgBMWc=;
 b=iYDRBf8+vO0Fifjo9hD461k+SooWnhbGjeBijRzwO6XmFh5LjRuA5meKxXnqc3+lPO
 2bnXk3QfBL1s04WFgseoqXQzmYznzmlEnHDCV9l3HsYfJkOdIlfLSjj6Pga09gXpv1PK
 73U8I3amxAhgx96sNaNy/UuCZIabceJbnVo+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=q5y8opnX2BroSXjeQvIIpMYdtoQXE/i3qwOw+SgBMWc=;
 b=NojXJHiOPJ+EntT4N48/kQgFKHKGxef/fbk3SAHFeCWfNjO3HhP0HHF1icv+y5WKon
 m9Kj39JdBUDTpIePL6ZNBYehyKfjqthQrmKEV2FeG1OUh5Xevz9t8XZN1QC1JJpPy25Q
 Gc2peG9/DzeLk1nQTB74jLWPItO3mgeeAotP3q0Q7ySHunEI6CU9q18Kt0wlc9R3s+WF
 zoGliD9XKaT3JM5Tm9UKtXIGiyAVL5CxrOu7PaqojS8fMjd8+Hkrt8aqwwKqaWV+aCnN
 OkgS1Lv9Iwh7FB1cL7iGlPBtOMNSOv/S0ySluZaVP66EKgDrmXrD9sd+RGAcT7Tt7F4m
 DZrg==
X-Gm-Message-State: APjAAAU1O6tDdhCEIpqEJEP5g+gMfP7RqQx2ZYoECUL2bywJQ+276EJo
 AGFKnS4Mlci7FruKOuBm826RBw8Xe8fE7A==
X-Google-Smtp-Source: APXvYqykYKnQrnin9wRBIfHAHQ+BevxygKf8huYG/auQf36gA9wtWPsbHOIpuhN4emGHQJVStuchww==
X-Received: by 2002:aa7:db43:: with SMTP id n3mr33168759edt.136.1567570926802; 
 Tue, 03 Sep 2019 21:22:06 -0700 (PDT)
Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com.
 [209.85.221.41])
 by smtp.gmail.com with ESMTPSA id v13sm3866865edr.38.2019.09.03.21.22.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 03 Sep 2019 21:22:06 -0700 (PDT)
Received: by mail-wr1-f41.google.com with SMTP id s18so19668105wrn.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Sep 2019 21:22:06 -0700 (PDT)
X-Received: by 2002:a5d:6585:: with SMTP id q5mr14990028wru.162.1567570518232; 
 Tue, 03 Sep 2019 21:15:18 -0700 (PDT)
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
In-Reply-To: <1567568281.18318.80.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 4 Sep 2019 13:15:06 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CRC2cyV30B4Qv59HdrJ7Cpe_yK5aY-BecQQ3J3i0PtCQ@mail.gmail.com>
Message-ID: <CAAFQd5CRC2cyV30B4Qv59HdrJ7Cpe_yK5aY-BecQQ3J3i0PtCQ@mail.gmail.com>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_212208_548883_47E021A0 
X-CRM114-Status: GOOD (  36.88  )
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

On Wed, Sep 4, 2019 at 12:38 PM Jerry-ch Chen
<Jerry-ch.Chen@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Tue, 2019-09-03 at 20:05 +0800, Tomasz Figa wrote:
> > On Tue, Sep 3, 2019 at 8:46 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> > > > On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > >
> > > > > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > > > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > >
> > > > > > > Hi Tomasz,
> > > > > > >
> > > > > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > >
> > > > > > > > > Hi Tomasz,
> > > > > > > > >
> > > > > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > > > > Hi Jerry,
> > > > > > > > > >
> > > > > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > > > > >
> > > > > > > > > > > Hi Tomasz,
> > > > > > > > > > >
> > > > > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > > > > Hi Jerry,
> > > > > > > > > > > >
> > > > > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> [snip]
> > > > > > > > > > [snip]
> > > > > > > > > >
> > > > > > > > > > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > > > > > +{
> > > > > > > > > > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > > > > > > +   struct vb2_buffer *vb;
> > > > > > > > > > > >
> > > > > > > > > > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > > > > > > > > > removed below?
> > > > > > > > > > > >
> > > > > > > > > > > Maybe we can check the driver state flag and aborting the unfinished
> > > > > > > > > > > jobs?
> > > > > > > > > > > (fd_hw->state == FD_ENQ)
> > > > > > > > > > >
> > > > > > > > > >
> > > > > > > > > > Yes, we need to either cancel or wait for the currently processing
> > > > > > > > > > job. It depends on hardware capabilities, but cancelling is generally
> > > > > > > > > > preferred for the lower latency.
> > > > > > > > > >
> > > > > > > > > Ok, it the state is ENQ, then we can disable the FD hw by controlling
> > > > > > > > > the registers.
> > > > > > > > >
> > > > > > > > > for example:
> > > > > > > > >         writel(0x0, fd->fd_base + FD_HW_ENABLE);
> > > > > > > > >         writel(0x0, fd->fd_base + FD_INT_EN);
> > > > > > > > >
> > > > > > > >
> > > > > > > > What's exactly the effect of writing 0 to FD_HW_ENABLE?
> > > > > > > >
> > > > > > > Sorry, my last reply didn't solve the question,
> > > > > > > we should implement a mtk_fd_job_abort() for v4l2_m2m_ops().
> > > > > > >
> > > > > > > which is able to readl_poll_timeout_atomic()
> > > > > > > and check the HW busy bits in the register FD_INT_EN;
> > > > > > >
> > > > > > > if they are not cleared until timeout, we could handle the last
> > > > > > > processing job.
> > > > > > > Otherwise, the FD irq handler should have handled the last processing
> > > > > > > job and we could continue the stop_streaming().
> > > > > > >
> > > > > > > For job_abort():
> > > > > > > static void mtk_fd_job_abort(void *priv)
> > > > > > > {
> > > > > > >         struct mtk_fd_ctx *ctx = priv;
> > > > > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > > > > >         u32 val;
> > > > > > >         u32 ret;
> > > > > > >
> > > > > > >         ret = readl_poll_timeout_atomic(fd->fd_base + MTK_FD_REG_OFFSET_INT_EN,
> > > > > > >                                         val,
> > > > > > >                                         (val & MTK_FD_HW_BUSY_MASK) ==
> > > > > > >                                         MTK_FD_HW_STATE_IS_BUSY,
> > > > > > >                                         USEC_PER_MSEC, MTK_FD_STOP_HW_TIMEOUT);
> > > > > >
> > > > > > Hmm, would it be possible to avoid the busy wait by having a
> > > > > > completion that could be signalled from the interrupt handler?
> > > > > >
> > > > > > Best regards,
> > > > > > Tomasz
> > > > >
> > > > > I suppose that would be wakeup a wait queue in the interrupt handler,
> > > > > the the wait_event_interrupt_timeout() will be used in here and system
> > > > > suspend e.g. mtk_fd_suspend().
> > > >
> > > > Yes, that should work.
> > > >
> > > > > Or do you suggest to wait_event_interrupt_timeout() every frame in the
> > > > > mtk_fd_ipi_handler()?
> > > >
> > > > Nope, we shouldn't need that.
> > > >
> > > > > I think maybe the readl_poll_timeout_atomic would be good enough.
> > > > >
> > > >
> > > > Not really. Busy waiting should be avoided as much as possible. What's
> > > > the point of entering suspend if you end up burning the power by
> > > > spinning the CPU for some milliseconds?
> > > >
> > > Ok, I see, busy waiting is not a good idea, I will use the wait queue
> > > instead. the job abort will refine as following:
> > >
> > > static void mtk_fd_job_abort(void *priv)
> > > {
> > >         struct mtk_fd_ctx *ctx = priv;
> > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > >         u32 ret;
> > >
> > >         ret = wait_event_interruptible_timeout
> > >                 (fd->wq, (fd->fd_irq_result & MTK_FD_HW_IRQ_MASK),
> > >                  usecs_to_jiffies(50000));
> > >         if (ret)
> > >                 mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> > >         dev_dbg(fd->dev, "%s, ret:%d\n", __func__, ret);
> > >
> > >         fd->fd_irq_result = 0;
> > > }
> > >
> > > static struct v4l2_m2m_ops fd_m2m_ops = {
> > >         .device_run = mtk_fd_device_run,
> > >         .job_abort = mtk_fd_job_abort,
> >
> > I'm not sure we should be using the functon above as the .job_abort
> > callback. It's expected to abort the job, but we're just waiting for
> > it to finish. I think we should just call mtk_fd_job_abort() manually
> > from .stop_streaming.
> >
>
> Ok, I will fix it.
>
> > > };
> > >
> > > and we could use it in suspend.
> > > static int mtk_fd_suspend(struct device *dev)
> > > {
> > >         struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> > >
> > >         if (pm_runtime_suspended(dev))
> > >                 return 0;
> > >
> > >         if (fd->fd_stream_count)
> > >                 mtk_fd_job_abort(fd->ctx);
> > >
> > >         /* suspend FD HW */
> > >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> > >         writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> > >         clk_disable_unprepare(fd->fd_clk);
> > >         dev_dbg(dev, "%s:disable clock\n", __func__);
> > >
> > >         return 0;
> > > }
> > >
> > > static irqreturn_t mtk_fd_irq(int irq, void *data)
> > > {
> > >         struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;
> > >
> > >         fd->fd_irq_result = readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
> > >         wake_up_interruptible(&fd->wq);
> >
> > The wake up should be done at the very end of this function. Otherwise
> > we end up with m2m framework racing with the mtk_fd_hw_job_finish()
> > below.
> >
> > Also, I'd use a completion here rather than an open coded wait and
> > wake-up. The driver could reinit_completion() before queuing a job to
> > the hardware and the IRQ handler would complete(). There would be no
> > need to store the IRQ flags in driver data anymore.
> Ok, It will be refined as following:
>
> suspend and stop streaming will call mtk_fd_job_abort()
>
> static void mtk_fd_job_abort(struct mtk_fd_dev *fd)
> {
>         u32 ret;
>
>         ret = wait_for_completion_timeout(&fd->fd_irq_done,
>                                           msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
>         if (ret)

For the _timeout variants, !ret means the timeout and ret > 0 means
that the wait ended successfully before.

Also please make sure that the timeout is big enough not to happen
normally on a heavily loaded system. Something like 1 second should be
good.

>                 mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> }
>
> complete at irq handler
>
> static irqreturn_t mtk_fd_irq(int irq, void *data)
> {
>         struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;
>
>         /* must read this register otherwise HW will keep sending irq */
>         readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
>         fd->output->number = readl(fd->fd_base + MTK_FD_REG_OFFSET_RESULT);
>         dev_dbg(fd->dev, "mtk_fd_face_num:%d\n", fd->output->number);
>
>         pm_runtime_put((fd->dev));
>         mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_DONE);
>         complete(&fd->fd_irq_done);
>         return IRQ_HANDLED;
> }
>
> and reinit_completion before time before sending a job to HW
>
> static int mtk_fd_hw_job_exec(struct mtk_fd_dev *fd,
>                               struct fd_enq_param *fd_param)
> {
>         struct ipi_message fd_ipi_msg;
>         int ret;
>
>         pm_runtime_get_sync((fd->dev));
>
>         reinit_completion(&fd->fd_irq_done);
>         fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_ENQUEUE;
>         memcpy(&fd_ipi_msg.fd_enq_param, fd_param, sizeof(struct
> fd_enq_param));
>         ret = scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
>                            sizeof(fd_ipi_msg), MTK_FD_IPI_SEND_TIMEOUT);
>         if (ret) {
>                 pm_runtime_put((fd->dev));
>                 mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
>                 return ret;
>         }
>         return 0;
> }

Looks good, thanks. Please also don't forget about init_completion()
in driver probe.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
