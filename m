Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671C6E4233
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 05:52:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YDcv4/GSp+8kPj3BOqfJtMGelk688U8ASdfIr6xD4G4=; b=qT8wq8ImjcJDqm
	e4rAjuRoyyA9fE1caXVBw5+88aQG7GF5MYJ4GMF2B22uk8ZR22fA2SKtULc2sjQJQgf0bstXcshO5
	drl6nvcz1MoHvXsQkNk4zPmLXGFMh0gX2Lq8HgmwWnioghQcah5O0IZXuWO/vmTry2+a6SjV8K0jT
	5XgMxJ10yyQwuOSqHhBpSkgYJZ17PVFUHm3ygb3FaWKOHw3sJ7jDTxS7TxbZfA1p0TIpttm7B4PRH
	YWUOBGoOP+1L/9Gk92vPy3yRsjlDWFCpKUefjVJALGjoJsiycUYt3Lc3dbyMYE+Em1XkhridbaQlG
	jAEkafaPc9VpFrcuGdKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNqeW-0005Re-Qu; Fri, 25 Oct 2019 03:52:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNqeI-0005QT-Ea
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 03:52:28 +0000
Received: by mail-pg1-x544.google.com with SMTP id e10so605994pgd.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 20:52:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=VuqGlHCmiP7nazFalCZDat6IlaETXhzlf7ym/08sQW8=;
 b=Ce+0HrNDmFSivub2oBEJVlA0HHWdPOu5+6DmZIJe7npEriRRFg631g4lekMZY0vAiE
 X3w8JaBKz/xk8MUr8g0dIKO02+oQdsng0Yd15tGlAmwd6MIRY+eKa82ZieljWuM1/TXA
 lWrkonKegWaVKApjLAbjNz8voQ4f1oncASGEE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=VuqGlHCmiP7nazFalCZDat6IlaETXhzlf7ym/08sQW8=;
 b=qTQZQUx0ABN4/UUQQ85VnGn3NwnBlbAIXlkDyWXhMl9xik6vENEkDUeBW6Z/IuKhe2
 hj6BmtERGWMrcaenDJgvy1xQrpZ7nGrDx/9N9+Fc1c9YCxwsNPcoCOIAJOdHUN1/0SHk
 ZWi9U0vnkNbifHbYEU8tXOdr29JCjwK94NschRK5U96O8yfO85mRFjFd8hjNRB40082G
 tgkBSUMVIkzTz1T9bVWfPDan809tLRbnke3+43dbOWh9onilGNlVayQvjtMvWFkyQBOv
 Qk+hIpp3zDP0dTNFEEAR9nvMQRq1jzGB8R0kHzlj+PW88IjBU9BI0AxcrvFBK8k3k1dN
 rVhQ==
X-Gm-Message-State: APjAAAXgMxXRORd5zHMI1f59s5Zpsjk8HZmb7P1ioIPYeJU8NHYdl5m0
 3HvfolzbD87AlAKwbGuVsGjQog==
X-Google-Smtp-Source: APXvYqwkwetVcs47sPZxLr5ISxVfMjs558/KCCIrpnAsnIMnYSTi2p/HmtYweJj67U8UZ7Y8mq9qFw==
X-Received: by 2002:a63:4c1c:: with SMTP id z28mr1507674pga.167.1571975545045; 
 Thu, 24 Oct 2019 20:52:25 -0700 (PDT)
Received: from chromium.org ([2401:fa00:8f:203:f5fe:2a5e:f953:c0ed])
 by smtp.gmail.com with ESMTPSA id c16sm571818pja.2.2019.10.24.20.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 20:52:17 -0700 (PDT)
Date: Fri, 25 Oct 2019 12:52:11 +0900
From: Tomasz Figa <tfiga@chromium.org>
To: Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>
Subject: Re: [RFC PATCH V3 3/3] platform: mtk-isp: Add Mediatek FD driver
Message-ID: <20191025035211.GA67000@chromium.org>
References: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
 <20190906101125.3784-4-Jerry-Ch.chen@mediatek.com>
 <1571109375.3706.40.camel@mtksdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571109375.3706.40.camel@mtksdccf07>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_205226_514263_2D281942 
X-CRM114-Status: GOOD (  32.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Sean Cheng =?utf-8?B?KOmEreaYh+W8mCk=?= <Sean.Cheng@mediatek.com>,
 "laurent.pinchart+renesas@ideasonboard.com"
 <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?utf-8?B?KOWQs+iCsuaBqSk=?= <Rynn.Wu@mediatek.com>,
 Christie Yu =?utf-8?B?KOa4uOmbheaDoCk=?= <christie.yu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 Jungo Lin =?utf-8?B?KOael+aYjuS/iik=?= <jungo.lin@mediatek.com>,
 Po-Yang Huang =?utf-8?B?KOm7g+afj+mZvSk=?= <po-yang.huang@mediatek.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 CK Hu =?utf-8?B?KOiDoeS/iuWFiSk=?= <ck.hu@mediatek.com>,
 Sj Huang =?utf-8?B?KOm7g+S/oeeSiyk=?= <sj.huang@mediatek.com>,
 "yuzhao@chromium.org" <yuzhao@chromium.org>, "lkml@metux.net" <lkml@metux.net>,
 "zwisler@chromium.org" <zwisler@chromium.org>,
 Frederic Chen =?utf-8?B?KOmZs+S/iuWFgyk=?= <Frederic.Chen@mediatek.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>, hans.verkuil@cisco.com,
 "mchehab@kernel.org" <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 11:16:15AM +0800, Jerry-ch Chen wrote:
> Hi Tomasz,
> 
> On Fri, 2019-09-06 at 18:11 +0800, Jerry-ch Chen wrote:
> > From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > 
> > This patch adds the driver of Face Detection (FD) unit in
> > Mediatek camera system, providing face detection function.
> > 
> > The mtk-isp directory will contain drivers for multiple IP
> > blocks found in Mediatek ISP system. It will include ISP Pass 1
> > driver (CAM), sensor interface driver, DIP driver and face
> > detection driver.
> > 
> > Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
> > ---
> >  drivers/media/platform/Kconfig                |    2 +
> >  drivers/media/platform/Makefile               |    2 +
> >  drivers/media/platform/mtk-isp/fd/Kconfig     |   19 +
> >  drivers/media/platform/mtk-isp/fd/Makefile    |    5 +
> >  drivers/media/platform/mtk-isp/fd/mtk_fd.h    |  148 ++
> >  drivers/media/platform/mtk-isp/fd/mtk_fd_40.c | 1219 +++++++++++++++++
> >  include/uapi/linux/mtk-fd-v4l2-controls.h     |   69 +
> >  include/uapi/linux/v4l2-controls.h            |    4 +
> >  8 files changed, 1468 insertions(+)
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/Kconfig
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/Makefile
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd.h
> >  create mode 100644 drivers/media/platform/mtk-isp/fd/mtk_fd_40.c
> >  create mode 100644 include/uapi/linux/mtk-fd-v4l2-controls.h
> > 

[snip]

> > +static int mtk_fd_job_abort(struct mtk_fd_dev *fd)
> > +{
> > +	u32 ret;
> > +
> > +	ret = wait_for_completion_timeout(&fd->fd_irq_done,
> > +					  msecs_to_jiffies(MTK_FD_HW_TIMEOUT));
> > +	/* Reset FD HW */
> > +	if (!ret) {
> > +		struct ipi_message fd_ipi_msg;
> > +
> > +		fd_ipi_msg.cmd_id = MTK_FD_IPI_CMD_RESET;
> > +		if (scp_ipi_send(fd->scp_pdev, SCP_IPI_FD_CMD, &fd_ipi_msg,
> > +				 sizeof(fd_ipi_msg), MTK_FD_IPI_SEND_TIMEOUT))
> > +			dev_err(fd->dev, "FD Reset HW error\n");
> > +		return -ETIMEDOUT;
> > +	}
> > +	return 0;
> > +}
> > +
> 
> Continue the discussion about job abort in RFC v2,
> 
> I think the job_abort callback in v4l2_m2m_ops() might be useful.
> 
> ref:
> https://elixir.bootlin.com/linux/v5.4-rc2/source/drivers/media/v4l2-core/v4l2-mem2mem.c#L398
> https://elixir.bootlin.com/linux/v5.4-rc2/source/include/media/v4l2-mem2mem.h#L43
> 
> in drivers/media/v4l2-core/v4l2-mem2mem.c #398 v4l2_m2m_cancel_job()
> ...
> if (m2m_ctx->job_flags & TRANS_RUNNING) {
> 	spin_unlock_irqrestore(&m2m_dev->job_spinlock, flags);
> 	if (m2m_dev->m2m_ops->job_abort)
> 		m2m_dev->m2m_ops->job_abort(m2m_ctx->priv);
> 	dprintk("m2m_ctx %p running, will wait to complete\n", m2m_ctx);
> 	wait_event(m2m_ctx->finished,
> 			!(m2m_ctx->job_flags & TRANS_RUNNING));
> } ...
> 
> If this operation is set, we might use the v4l2_m2m_cancel_job() when
> suspend, and it will do mtk_fd_job_abort() here.
>

The expectation for .job_abort() is that signals the hardware to
instantly abandon the current job. Do we have a way to tell the
firmware/hardware to do so?

Also, suspend must not abort the current job. Anything that was already
running is expected to complete successfuly and further jobs should
continue executing once the system resumes.

[snip]

> > +
> > +static int mtk_fd_suspend(struct device *dev)
> > +{
> > +	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> > +
> > +	if (pm_runtime_suspended(dev))
> > +		return 0;
> > +
> > +	if (fd->fd_stream_count)
> > +		if (mtk_fd_job_abort(fd))
> > +			mtk_fd_hw_job_finish(fd, VB2_BUF_STATE_ERROR);
> > +
> 
> To avoid mtk_fd_hw_job_finish() trigger the next job,
> I suppose that we could use v4l2_m2m_cancel_job instead of job_abort and
> job_finish here.
> 
> /**
>  * v4l2_m2m_cancel_job() - cancel pending jobs for the context
>  * @m2m_ctx: m2m context with jobs to be canceled
>  *
>  * In case of streamoff or release called on any context,
>  * 1] If the context is currently running, then abort job will be called
>  * 2] If the context is queued, then the context will be removed from
>  *    the job_queue
>  */
> 
> or another way,
> we may add a flag and implement mtk_fd_job_ready() that reads the flag
> if we suspend, we set the flag and do job_abort and job_finish, even if
> it try enqueue, it will still not really queue the job, until we reset
> the flag in mtk_fd_resume().
> 
> how do you think?
>

As per my comment above, suspend must just pause the execution of the
jobs. It must not cause any jobs to be skipped.

After analyzing the m2m framework and existing m2m drivers I realized
that they currently provide no way to correctly handle suspend/resume.
Pi-Hsun has been looking into fixing this in crrev.com/c/1878112 and
we'll send it upstream as soon as we get something that should handle
all the cases correctly.

> > +	/* suspend FD HW */
> > +	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> > +	writel(0x0, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> > +	clk_disable_unprepare(fd->fd_clk);
> > +	dev_dbg(dev, "%s:disable clock\n", __func__);
> > +
> > +	return 0;
> > +}
> > +
> > +static int mtk_fd_resume(struct device *dev)
> > +{
> > +	struct mtk_fd_dev *fd = dev_get_drvdata(dev);
> > +	int ret;
> > +
> > +	if (pm_runtime_suspended(dev))
> > +		return 0;
> > +
> > +	ret = clk_prepare_enable(fd->fd_clk);
> > +	if (ret < 0) {
> > +		dev_dbg(dev, "Failed to open fd clk:%d\n", ret);
> > +		return ret;
> > +	}
> > +
> > +	/* resume FD HW */
> > +	writel(MTK_FD_SET_HW_ENABLE, fd->fd_base + MTK_FD_REG_OFFSET_HW_ENABLE);
> > +	writel(0x1, fd->fd_base + MTK_FD_REG_OFFSET_INT_EN);
> > +	dev_dbg(dev, "%s:enable clock\n", __func__);

By the way, we need to kick the m2m framework here to schedule further
jobs. Pi-Hsun's patch will also take care of this.

[snip]

> > +/* Set the face angle and directions to be detected */
> > +#define V4L2_CID_MTK_FD_DETECT_POSE		(V4L2_CID_USER_MTK_FD_BASE + 1)
> > +
> > +/* Set image widths for an input image to be scaled down for face detection */
> > +#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH	(V4L2_CID_USER_MTK_FD_BASE + 2)
> > +
> > +/* Set image heights for an input image to be scaled down for face detection */
> > +#define V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT	(V4L2_CID_USER_MTK_FD_BASE + 3)
> > +
> > +/* Set the length of scale down size array */
> > +#define V4L2_CID_MTK_FD_SCALE_IMG_NUM		(V4L2_CID_USER_MTK_FD_BASE + 4)
> > +
> > +/* Set the detection speed, usually reducing accuracy. */
> > +#define V4L2_CID_MTK_FD_DETECT_SPEED		(V4L2_CID_USER_MTK_FD_BASE + 5)
> > +
> > +/* Select the detection model or algorithm to be used. */
> > +#define V4L2_CID_MTK_FD_DETECTION_MODEL		(V4L2_CID_USER_MTK_FD_BASE + 6)
> > +
> > +/* We reserve 16 controls for this driver. */
> > +#define V4L2_CID_MTK_FD_MAX			16
> > +
> 
> For these control IDs, I think the following should be remained as chip
> specific controls.
> V4L2_CID_MTK_FD_SCALE_DOWN_IMG_WIDTH,
> V4L2_CID_MTK_FD_SCALE_DOWN_IMG_HEIGHT and V4L2_CID_MTK_FD_SCALE_IMG_NUM 
> 
> Hope there would be standardizing face detection api that cover the rest
> controls: V4L2_CID_MTK_FD_DETECT_POSE, V4L2_CID_MTK_FD_DETECT_SPEED and
> V4L2_CID_MTK_FD_DETECTION_MODEL
> 
> Would you have any suggestions on how to propose the standard face
> detection apis?
> 

Given no follow up feedback from the community, I think we can keep them
as driver-specific, but should make sure that they have some reasonable
default values in case an application doesn't recognize them.

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
