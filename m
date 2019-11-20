Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 951041035EA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 09:21:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WHUhHfuwFsRlBr+JZGrDMFFOlkRvnv3A3wvddg2KtAQ=; b=jrvL3Hv/4keLZR
	IV33UFCiLzmYG+SzMGSFag1LqPOuNTIuK5VXuhBk7mOHXsPWXXRpoGgCLjRDsVT67pHU81O/vc1uH
	nOiuzIEdPkt6nYZRc7ny4/Y+Sc7krLcM/IjnMIjNGRIbmxKBVPxokoV6Ca6J38iAenZ3lfM8X8Ybs
	ron3IbvWUe4XMXbpL/W43His2yTV7twcwsPkn1wpDPuhAaN4u366xr/jxFP3umuT0QjbtHiR9qgu1
	mIKzGzaDLNPo/T6gKIPzDEb4rRITAlp7GMS8/4jDsNDuoqHIKHi3/w7D+WpGEuXzByu0DgCUFGJfF
	U9kq19guD8wDzlc+P3vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXLEh-0008AX-9h; Wed, 20 Nov 2019 08:21:15 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXLEW-00089h-Gn; Wed, 20 Nov 2019 08:21:06 +0000
X-UUID: a0a99c6b69b84e028239cfce7db7ddf1-20191120
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Vm5saM+GW0YUbJUNwRCvnRKSP+TQW5BbAxj4dw2J4dY=; 
 b=dBCv593JHT5q6x8wGg9cEEFnlPEW6vdoHgV08dotVzQ4nd+dGQhbKXq+bh8LRvcCUmRmT1iRwwumlbL6OWAGyjks5pxOdQlLuqvUzTyi4NmFlxelzYE7pKulu7SfnxtJdI7H1H86ze4OY/C5IANY+796kSPemvTdflQ7lVW0nX4=;
X-UUID: a0a99c6b69b84e028239cfce7db7ddf1-20191120
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1633443104; Wed, 20 Nov 2019 00:21:01 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 00:11:15 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 20 Nov 2019 16:10:34 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 20 Nov 2019 16:10:49 +0800
Message-ID: <1574237450.20087.17.camel@mtksdccf07>
Subject: Re: [RFC PATCH V3 3/3] platform: mtk-isp: Add Mediatek FD driver
From: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 20 Nov 2019 16:10:50 +0800
In-Reply-To: <20191025035211.GA67000@chromium.org>
References: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
 <20190906101125.3784-4-Jerry-Ch.chen@mediatek.com>
 <1571109375.3706.40.camel@mtksdccf07> <20191025035211.GA67000@chromium.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_002104_574123_876462CE 
X-CRM114-Status: GOOD (  36.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 <Sean.Cheng@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <Frederic.Chen@mediatek.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, srv_heupstream <srv_heupstream@mediatek.com>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>,
 Po-Yang Huang =?UTF-8?Q?=28=E9=BB=83=E6=9F=8F=E9=99=BD=29?=
 <po-yang.huang@mediatek.com>,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>, Sj
 Huang =?UTF-8?Q?=28=E9=BB=83=E4=BF=A1=E7=92=8B=29?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>, "lkml@metux.net" <lkml@metux.net>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 "hans.verkuil@cisco.com" <hans.verkuil@cisco.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Fri, 2019-10-25 at 11:52 +0800, Tomasz Figa wrote:
> On Tue, Oct 15, 2019 at 11:16:15AM +0800, Jerry-ch Chen wrote:
> > Hi Tomasz,
> > 
> > On Fri, 2019-09-06 at 18:11 +0800, Jerry-ch Chen wrote:
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
> > >  drivers/media/platform/Kconfig                |    2 +
> > >  drivers/media/platform/Makefile               |    2 +
> > >  drivers/media/platform/mtk-isp/fd/Kconfig     |   19 +
> > >  drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
> > >  drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  148 ++
> > >  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1219 +++++++++++++++++
> > >  include/uapi/linux/mtk-fd-v4l2-controls.h     |   69 +
> > >  include/uapi/linux/v4l2-controls.h            |    4 +
> > >  8 files changed, 1468 insertions(+)
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
> > >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> > >  create mode 100644 include/uapi/linux/mtk-fd-v4l2-controls.h
> > > 
> 
> [snip]
> 
> > > +static int mtk_fd_job_abort(struct mtk_fd_dev *fd)
> > > +{
> > > +	u32 ret;
> > > +
> > > +	ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > > +					  msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> > > +	/* Reset FD HW */
> > > +	if (!ret) {
> > > +		struct ipi_message fd_ipi_msg;
> > > +
> > > +		fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_RESET;
> > > +		if (scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
> > > +				 sizeof(fd_ipi_msg), MTK_FD_IPI_SEND_TIMEOUT))
> > > +			dev_err(fd->dev, "FD Reset HW error\n");
> > > +		return -ETIMEDOUT;
> > > +	}
> > > +	return 0;
> > > +}
> > > +
> > 
> > Continue the discussion about job abort in RFC v2,
> > 
> > I think the job_abort callback in v4l2_m2m_ops() might be useful.
> > 
> > ref:
> > https://elixir.bootlin.com/linux/v5.4-rc2/source/drivers/media/v4l2-core/v4l2-mem2mem.c#L398
> > https://elixir.bootlin.com/linux/v5.4-rc2/source/include/media/v4l2-mem2mem.h#L43
> > 
> > in drivers/media/v4l2-core/v4l2-mem2mem.c #398 v4l2_m2m_cancel_job()
> > ...
> > if (m2m_ctx->job_flags & TRANS_RUNNING) {
> > 	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> > 	if (m2m_dev->m2m_ops->job_abort)
> > 		m2m_dev->m2m_ops->job_abort(m2m_ctx->priv);
> > 	dprintk("m2m_ctx %p running, will wait to complete\n", m2m_ctx);
> > 	wait_event(m2m_ctx->finished,
> > 			!(m2m_ctx->job_flags & TRANS_RUNNING));
> > } ...
> > 
> > If this operation is set, we might use the v4l2_m2m_cancel_job() when
> > suspend, and it will do mtk_fd_job_abort() here.
> >
> 
> The expectation for .job_abort() is that signals the hardware to
> instantly abandon the current job. Do we have a way to tell the
> firmware/hardware to do so?
> 
> Also, suspend must not abort the current job. Anything that was already
> running is expected to complete successfuly and further jobs should
> continue executing once the system resumes.
> 
I appreciate your comments and Pi-Hsun's patch,

Ok, I see.
For FD40, we can't tell the firmware/hardware to instantly abandon the
current job.
Therefore, for suspend, we stop sending further jobs to hardware and
wait for the completion of the running job.
For resume, we continue sending jobs to hardware.

> [snip]
> 
> > > +
> > > +static int mtk_fd_suspend(struct device *dev)
> > > +{
> > > +	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> > > +
> > > +	if (pm_runtime_suspended(dev))
> > > +		return 0;
> > > +
> > > +	if (fd->fd_stream_count)
> > > +		if (mtk_fd_job_abort(fd))
> > > +			mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> > > +
> > 
> > To avoid mtk_fd_hw_job_finish() trigger the next job,
> > I suppose that we could use v4l2_m2m_cancel_job instead of job_abort and
> > job_finish here.
> > 
> > /**
> >  * v4l2_m2m_cancel_job() - cancel pending jobs for the context
> >  * @m2m_ctx: m2m context with jobs to be canceled
> >  *
> >  * In case of streamoff or release called on any context,
> >  * 1] If the context is currently running, then abort job will be called
> >  * 2] If the context is queued, then the context will be removed from
> >  *    the job_queue
> >  */
> > 
> > or another way,
> > we may add a flag and implement mtk_fd_job_ready() that reads the flag
> > if we suspend, we set the flag and do job_abort and job_finish, even if
> > it try enqueue, it will still not really queue the job, until we reset
> > the flag in mtk_fd_resume().
> > 
> > how do you think?
> >
> 
> As per my comment above, suspend must just pause the execution of the
> jobs. It must not cause any jobs to be skipped.
> 
> After analyzing the m2m framework and existing m2m drivers I realized
> that they currently provide no way to correctly handle suspend/resume.
> Pi-Hsun has been looking into fixing this in crrev.com/c/1878112 and
> we'll send it upstream as soon as we get something that should handle
> all the cases correctly.
> 
Ok, thanks for the patches.

> > > +	/* suspend FD HW */
> > > +	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> > > +	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> > > +	clk_disable_unprepare(fd->fd_clk);
> > > +	dev_dbg(dev, "%s:disable clock\n", __func__);
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +static int mtk_fd_resume(struct device *dev)
> > > +{
> > > +	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> > > +	int ret;
> > > +
> > > +	if (pm_runtime_suspended(dev))
> > > +		return 0;
> > > +
> > > +	ret = clk_prepare_enable(fd->fd_clk);
> > > +	if (ret < 0) {
> > > +		dev_dbg(dev, "Failed to open fd clk:%d\n", ret);
> > > +		return ret;
> > > +	}
> > > +
> > > +	/* resume FD HW */
> > > +	writel(MTK_FD_SET_HW_ENABLE, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> > > +	writel(0x1, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> > > +	dev_dbg(dev, "%s:enable clock\n", __func__);
> 
> By the way, we need to kick the m2m framework here to schedule further
> jobs. Pi-Hsun's patch will also take care of this.
> 
Ok, I see.
I would like to use Pi-Hsun's patch, otherwise I would need to call
v4l2_m2m_try_run() here.

> [snip]
> 
> > > +/* Set the face angle and directions to be detected */
> > > +#define V4L2_CID_MTK_FD_DETECT_POSE		(V4L2_CID_USER_MTK_FD_BASE + 1)
> > > +
> > > +/* Set image widths for an input image to be scaled down for face detection */
> > > +#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH	(V4L2_CID_USER_MTK_FD_BASE + 2)
> > > +
> > > +/* Set image heights for an input image to be scaled down for face detection */
> > > +#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT	(V4L2_CID_USER_MTK_FD_BASE + 3)
> > > +
> > > +/* Set the length of scale down size array */
> > > +#define V4L2_CID_MTK_FD_SCALE_IMG_NUM		(V4L2_CID_USER_MTK_FD_BASE + 4)
> > > +
> > > +/* Set the detection speed, usually reducing accuracy. */
> > > +#define V4L2_CID_MTK_FD_DETECT_SPEED		(V4L2_CID_USER_MTK_FD_BASE + 5)
> > > +
> > > +/* Select the detection model or algorithm to be used. */
> > > +#define V4L2_CID_MTK_FD_DETECTION_MODEL		(V4L2_CID_USER_MTK_FD_BASE + 6)
> > > +
> > > +/* We reserve 16 controls for this driver. */
> > > +#define V4L2_CID_MTK_FD_MAX			16
> > > +
> > 
> > For these control IDs, I think the following should be remained as chip
> > specific controls.
> > V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH,
> > V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT and V4L2_CID_MTK_FD_SCALE_IMG_NUM 
> > 
> > Hope there would be standardizing face detection api that cover the rest
> > controls: V4L2_CID_MTK_FD_DETECT_POSE, V4L2_CID_MTK_FD_DETECT_SPEED and
> > V4L2_CID_MTK_FD_DETECTION_MODEL
> > 
> > Would you have any suggestions on how to propose the standard face
> > detection apis?
> > 
> 
> Given no follow up feedback from the community, I think we can keep them
> as driver-specific, but should make sure that they have some reasonable
> default values in case an application doesn't recognize them.
> 
> Best regards,
> Tomasz
> 
Should I keep the file "mtk-fd-v4l2-controls.h" which defines the
control ids under the folder "/include/uapi/linux"?


Thanks and Best regards,
Jerry
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
