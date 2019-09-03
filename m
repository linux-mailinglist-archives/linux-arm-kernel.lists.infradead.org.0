Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C6F8A67C2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 13:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xM97vfeljacwLMkVEhI/DrCRJN0GQTxl3bBm+sO5xU0=; b=LMg0BT0rscu0mh
	VZtomRSTQWGwk2V4LryUTqWcOB/AGmpnMjsik7T1Xk/ntHehnLuGX9V6PMHvib8kMn8gk+6guV1qi
	M5uKai7QAYk4vKqCb8kXdLuPhePttMetAMMycQX0WhTvQ/raPmb1hKyfVQJ6BW7998lMGI3IPouc6
	KAPlBW2nr9HLqN43l9n0JngXn8fUuANq/0O9u+8ozTdzvqvc4ZNjkOgjYKkIKExyEH2wLIuwYZgPs
	czdCWuRyvlLMXQo6TDgZHanD2i95trGbTIzZcE1ixPzN38rtMTicpYBOL1YYdw9qwBmSqZK9rYwXx
	21LVOZN0EJpdpD72fz+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i57Ge-0000iH-ON; Tue, 03 Sep 2019 11:46:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i57GP-0000gn-4f; Tue, 03 Sep 2019 11:46:23 +0000
X-UUID: 81649e4e9bcf4aa3af61a58937ebb366-20190903
X-UUID: 81649e4e9bcf4aa3af61a58937ebb366-20190903
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 992677765; Tue, 03 Sep 2019 03:46:12 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 04:46:11 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Sep 2019 19:46:09 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 3 Sep 2019 19:46:09 +0800
Message-ID: <1567511169.18318.65.camel@mtksdccf07>
Subject: Re: [RFC PATCH V2 4/4] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 3 Sep 2019 19:46:09 +0800
In-Reply-To: <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
References: <1562661672-22439-1-git-send-email-Jerry-Ch.chen@mediatek.com>
 <1562661672-22439-5-git-send-email-Jerry-Ch.chen@mediatek.com>
 <20190802082815.GA203993@chromium.org>
 <1566724680.20680.8.camel@mtksdccf07>
 <CAAFQd5Dw+jaT-+LAUEVeB8W1zdnOgPw7u+aCfDWhYW1SfbzO8g@mail.gmail.com>
 <1566957625.20680.33.camel@mtksdccf07>
 <CAAFQd5D-Yg1FjUE_rwmqfS1gvfE0=MZ=r-ziueU_37-uo9QTbw@mail.gmail.com>
 <1567424859.18318.32.camel@mtksdccf07>
 <CAAFQd5AGgeFbto6V1KkL0dp1QPziOKV3pWQDU2OJ+S1QKvnBdg@mail.gmail.com>
 <1567493081.18318.49.camel@mtksdccf07>
 <CAAFQd5DWM=R7sFHYGhhR_rXrzgRnc4xtH_t8Pig-4tcP9KTSYg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_044621_192161_D08B540C 
X-CRM114-Status: GOOD (  34.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>, "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Po-Yang Huang =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?=
 <po-yang.huang@mediatek.com>, "mchehab@kernel.org" <mchehab@kernel.org>,
 "suleiman@chromium.org" <suleiman@chromium.org>,
 "shik@chromium.org" <shik@chromium.org>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Tue, 2019-09-03 at 15:04 +0800, Tomasz Figa wrote:
> On Tue, Sep 3, 2019 at 3:44 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> >
> > On Tue, 2019-09-03 at 13:19 +0800, Tomasz Figa wrote:
> > > On Mon, Sep 2, 2019 at 8:47 PM Jerry-ch Chen <Jerry-ch.Chen@mediatek.com> wrote:
> > > >
> > > > Hi Tomasz,
> > > >
> > > > On Fri, 2019-08-30 at 16:33 +0800, Tomasz Figa wrote:
> > > > > On Wed, Aug 28, 2019 at 11:00 AM Jerry-ch Chen
> > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > >
> > > > > > Hi Tomasz,
> > > > > >
> > > > > > On Mon, 2019-08-26 at 14:36 +0800, Tomasz Figa wrote:
> > > > > > > Hi Jerry,
> > > > > > >
> > > > > > > On Sun, Aug 25, 2019 at 6:18 PM Jerry-ch Chen
> > > > > > > <Jerry-ch.Chen@mediatek.com> wrote:
> > > > > > > >
> > > > > > > > Hi Tomasz,
> > > > > > > >
> > > > > > > > On Fri, 2019-08-02 at 16:28 +0800, Tomasz Figa wrote:
> > > > > > > > > Hi Jerry,
> > > > > > > > >
> > > > > > > > > On Tue, Jul 09, 2019 at 04:41:12PM +0800, Jerry-ch Chen wrote:
> > > [snip]
> > > > > > static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > > > > >                                   unsigned int *num_buffers,
> > > > > >                                   unsigned int *num_planes,
> > > > > >                                   unsigned int sizes[],
> > > > > >                                   struct device *alloc_devs[])
> > > > > > {
> > > > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > >         struct device *dev = ctx->dev;
> > > > > >         unsigned int size[2];
> > > > > >
> > > > > >         switch (vq->type) {
> > > > > >         case V4L2_BUF_TYPE_META_CAPTURE:
> > > > > >                 size[0] = ctx->dst_fmt.buffersize;
> > > > > >                 break;
> > > > > >         case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > > > > >                 size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> > > > > >                 if (*num_planes == 2)
> > > > > >                         size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> > > > > >                 break;
> > > > > >         }
> > > > > >
> > > > > >         if (*num_planes == 1) {
> > > > > >                 if (sizes[0] < size[0])
> > > > > >                         return -EINVAL;
> > > > > >         } else if (*num_planes == 2) {
> > > > > >                 if ((sizes[0] < size[0]) && (sizes[1] < size[1]))
> > > > > >                         return -EINVAL;
> > > > >
> > > > > Can we just use a loop here and combine the 2 cases above?
> > > > >
> > > > > Also, we need to fail with -EINVAL if *num_planes is > 2.
> > > > >
> > > > > >         } else {
> > > > > >                 *num_planes = 1;
> > > > > >                 sizes[0] = size[0];
> > > > >
> > > > > This should be the case if *num_planes == 0 and the number of planes
> > > > > and sizes should match the currently active format.
> > > > >
> > > > I appreciate your comments,
> > > >
> > > > Ok, I will update as following:
> > > > static int mtk_fd_vb2_queue_setup(struct vb2_queue *vq,
> > > >                                   unsigned int *num_buffers,
> > > >                                   unsigned int *num_planes,
> > > >                                   unsigned int sizes[],
> > > >                                   struct device *alloc_devs[])
> > > > {
> > > >         struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > >         unsigned int size[2];
> > > >         unsigned int plane;
> > > >
> > > >         switch (vq->type) {
> > > >         case V4L2_BUF_TYPE_META_CAPTURE:
> > > >                 size[0] = ctx->dst_fmt.buffersize;
> > > >                 break;
> > > >         case V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE:
> > > >                 size[0] = ctx->src_fmt.plane_fmt[0].sizeimage;
> > > >                 if (*num_planes == 2)
> > > >                         size[1] = ctx->src_fmt.plane_fmt[1].sizeimage;
> > > >                 break;
> > > >         }
> > > >
> > > >         if (*num_planes > 2)
> > > >                 return -EINVAL;
> > > >         if (*num_planes == 0) {
> > > >                 if (vq->type == V4L2_BUF_TYPE_META_CAPTURE) {
> > > >                         sizes[0] = ctx->dst_fmt.buffersize;
> > > >                         *num_planes = 1;
> > > >                         return 0;
> > > >                 }
> > > >
> > > >                 *num_planes = ctx->src_fmt.num_planes;
> > > >                 for (plane = 0; plane < *num_planes; plane++)
> > > >                         sizes[plane] = ctx->src_fmt.plane_fmt[plane].sizeimage;
> > > >                 return 0;
> > > >         }
> > > >
> > > >         for (plane = 0; plane < *num_planes; plane++) {
> > > >                 if(sizes[plane] < size[plane])
> > > >                         return -EINVAL;
> > > >         }
> > > >         return 0;
> > > > }
> > > >
> > >
> > > Looks good, thanks!
> > >
> > > > > >         }
> > > > > >
> > > > > >         return 0;
> > > > > > }
> > > > > >
> > > > > > > [snip]
> > > > > > >
> > > > > > > > > > +static void mtk_fd_vb2_stop_streaming(struct vb2_queue *vq)
> > > > > > > > > > +{
> > > > > > > > > > +   struct mtk_fd_ctx *ctx = vb2_get_drv_priv(vq);
> > > > > > > > > > +   struct vb2_buffer *vb;
> > > > > > > > >
> > > > > > > > > How do we guarantee here that the hardware isn't still accessing the buffers
> > > > > > > > > removed below?
> > > > > > > > >
> > > > > > > > Maybe we can check the driver state flag and aborting the unfinished
> > > > > > > > jobs?
> > > > > > > > (fd_hw->state == FD_ENQ)
> > > > > > > >
> > > > > > >
> > > > > > > Yes, we need to either cancel or wait for the currently processing
> > > > > > > job. It depends on hardware capabilities, but cancelling is generally
> > > > > > > preferred for the lower latency.
> > > > > > >
> > > > > > Ok, it the state is ENQ, then we can disable the FD hw by controlling
> > > > > > the registers.
> > > > > >
> > > > > > for example:
> > > > > >         writel(0x0, fd->fd_base + FD_HW_ENABLE);
> > > > > >         writel(0x0, fd->fd_base + FD_INT_EN);
> > > > > >
> > > > >
> > > > > What's exactly the effect of writing 0 to FD_HW_ENABLE?
> > > > >
> > > > Sorry, my last reply didn't solve the question,
> > > > we should implement a mtk_fd_job_abort() for v4l2_m2m_ops().
> > > >
> > > > which is able to readl_poll_timeout_atomic()
> > > > and check the HW busy bits in the register FD_INT_EN;
> > > >
> > > > if they are not cleared until timeout, we could handle the last
> > > > processing job.
> > > > Otherwise, the FD irq handler should have handled the last processing
> > > > job and we could continue the stop_streaming().
> > > >
> > > > For job_abort():
> > > > static void mtk_fd_job_abort(void *priv)
> > > > {
> > > >         struct mtk_fd_ctx *ctx = priv;
> > > >         struct mtk_fd_dev *fd = ctx->fd_dev;
> > > >         u32 val;
> > > >         u32 ret;
> > > >
> > > >         ret = readl_poll_timeout_atomic(fd->fd_base + MTK_FD_REG_OFFSET_INT_EN,
> > > >                                         val,
> > > >                                         (val & MTK_FD_HW_BUSY_MASK) ==
> > > >                                         MTK_FD_HW_STATE_IS_BUSY,
> > > >                                         USEC_PER_MSEC, MTK_FD_STOP_HW_TIMEOUT);
> > >
> > > Hmm, would it be possible to avoid the busy wait by having a
> > > completion that could be signalled from the interrupt handler?
> > >
> > > Best regards,
> > > Tomasz
> >
> > I suppose that would be wakeup a wait queue in the interrupt handler,
> > the the wait_event_interrupt_timeout() will be used in here and system
> > suspend e.g. mtk_fd_suspend().
> 
> Yes, that should work.
> 
> > Or do you suggest to wait_event_interrupt_timeout() every frame in the
> > mtk_fd_ipi_handler()?
> 
> Nope, we shouldn't need that.
> 
> > I think maybe the readl_poll_timeout_atomic would be good enough.
> >
> 
> Not really. Busy waiting should be avoided as much as possible. What's
> the point of entering suspend if you end up burning the power by
> spinning the CPU for some milliseconds?
> 
Ok, I see, busy waiting is not a good idea, I will use the wait queue
instead. the job abort will refine as following:

static void mtk_fd_job_abort(void *priv)
{
	struct mtk_fd_ctx *ctx = priv;
	struct mtk_fd_dev *fd = ctx->fd_dev;
	u32 ret;

	ret = wait_event_interruptible_timeout
		(fd->wq, (fd->fd_irq_result & MTK_FD_HW_IRQ_MASK),
		 usecs_to_jiffies(50000));
	if (ret)
		mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
	dev_dbg(fd->dev, "%s, ret:%d\n", __func__, ret);

	fd->fd_irq_result = 0;
}

static struct v4l2_m2m_ops fd_m2m_ops = {
	.device_run = mtk_fd_device_run,
	.job_abort = mtk_fd_job_abort,
};

and we could use it in suspend.
static int mtk_fd_suspend(struct device *dev)
{
	struct mtk_fd_dev *fd = dev_get_drvdata(dev);

	if (pm_runtime_suspended(dev))
		return 0;

	if (fd->fd_stream_count)
		mtk_fd_job_abort(fd->ctx);

	/* suspend FD HW */
	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
	clk_disable_unprepare(fd->fd_clk);
	dev_dbg(dev, "%s:disable clock\n", __func__);

	return 0;
}

static irqreturn_t mtk_fd_irq(int irq, void *data)
{
	struct mtk_fd_dev *fd = (struct mtk_fd_dev *)data;

	fd->fd_irq_result = readl(fd->fd_base + MTK_FD_REG_OFFSET_INT_VAL);
	wake_up_interruptible(&fd->wq);
	fd->output->number = readl(fd->fd_base + MTK_FD_REG_OFFSET_RESULT);
	dev_dbg(fd->dev, "mtk_fd_face_num:%d\n", fd->output->number);

	pm_runtime_put((fd->dev));
	mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_DONE);
	return IRQ_HANDLED;
}
> >
> > One more thing, for the mtk_fd_video_device_register()
> > Sorry that I would need to use intermediate variable here since the 80
> > columns check.
> >
> >         function = MEDIA_ENT_F_PROC_VIDEO_STATISTICS;
> >         ret = v4l2_m2m_register_media_controller(m2m_dev, vfd, function);
> 
> Why not just make it like this:
> 
> ret = v4l2_m2m_register_media_controller(m2m_dev,
>                 MEDIA_ENT_F_PROC_VIDEO_STATISTICS);
> 
> The above line is aligned using tabs so that its end is as close to
> the 80 character boundary as possible.
> 
I tried but the checkpatch script still gave me a check saying align to
the scope, I will refine as following:

	ret = v4l2_m2m_register_media_controller
		(m2m_dev, vfd, MEDIA_ENT_F_PROC_VIDEO_STATISTICS);


Thanks and best regards,
Jerry
> Best regards,
> Tomasz



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
