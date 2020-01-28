Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D461C14AE0F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Jan 2020 03:24:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ivCtLt9A/E1J4DS+G0/4MBwL5MUWBNKutxPpBAdAeZQ=; b=dPS7x4IfZQaoaa
	69nYIPj+e7qnn1rv+xssNyAqU/dRuZRhxLTo009txyGum3QW22p99uhCPR8xBV87DZJ8wEtbr12IN
	eWojgTXpbYocMayjg4JUA8FFV48RMz6kQkYuuvNQr37BawGSmDQK+WLfCowOSY5fXuo9xQP+Tv17P
	I86t0eHh07vYFbAtL6AIaI0SUSXSn+VBy2lGCyuH3BUfGH1xo0q9TdKADElHft79e9hLhr9pvtyrb
	KNPUV8jGKywkXD6D+w/YPFYjvvpPYdpP1eUve/Vhq4yu0GEAJPObezb6/BWjg32mihLL44AMUYsGd
	nR4kuqY08ShoabPzw9cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwGXz-0004Ci-Cw; Tue, 28 Jan 2020 02:24:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwGXo-0004C5-7m; Tue, 28 Jan 2020 02:24:02 +0000
X-UUID: 8d10e93ab4234aad89416d7a412427ef-20200127
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=p0nnIJ+ph00THpKCeQPEgq8IEXgYibuUyEVe40bgwLo=; 
 b=tweU/fVXTQAo6VX3cUKRcrPqoH3joTikGDwRk6ERECb30fZcp85+4Jnoa0QemtlMTk6j9oO5O/hgle1Q0NtqxqNfOHXOraLzLzKF1+8lrie2+0hwPhPDyGIOIjOV5gG25lwxLLzSATpZJa7YbPSeYj9ILx7ZsNAT4+zs5Io+xd8=;
X-UUID: 8d10e93ab4234aad89416d7a412427ef-20200127
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1567482917; Mon, 27 Jan 2020 18:23:51 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 Jan 2020 18:15:09 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 Jan 2020 10:13:47 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 Jan 2020 10:14:00 +0800
Message-ID: <1580177627.13350.8.camel@mtksdccf07>
Subject: Re: [v6, 5/5] media: platform: Add Mediatek ISP P1 V4L2 device driver
From: Jungo Lin <jungo.lin@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Date: Tue, 28 Jan 2020 10:13:47 +0800
In-Reply-To: <c481734a-c706-2ea9-3888-ab2fb9c805ef@xs4all.nl>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20191219054930.29513-1-jungo.lin@mediatek.com>
 <20191219054930.29513-6-jungo.lin@mediatek.com>
 <c481734a-c706-2ea9-3888-ab2fb9c805ef@xs4all.nl>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_182400_299078_CA084A6C 
X-CRM114-Status: GOOD (  23.09  )
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 URIBL_DBL_ABUSE_MALW   Contains an abused malware URL listed in
 the Spamhaus DBL blocklist [URIs: infradead.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ryan.yu@mediatek.com, frankie.chiu@mediatek.com,
 laurent.pinchart@ideasonboard.com, robh@kernel.org, Rynn.Wu@mediatek.com,
 suleiman@chromium.org, Jerry-ch.Chen@mediatek.com, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 Pi-Hsun Shih <pihsun@chromium.org>, matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, shik@chromium.org, tfiga@chromium.org,
 zwisler@chromium.org, ddavenport@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Hans:

On Thu, 2020-01-23 at 14:59 +0100, Hans Verkuil wrote:
> Hi Jungo,
> 
> On 12/19/19 6:49 AM, Jungo Lin wrote:
> > This patch adds the Mediatek ISP P1 HW control device driver.
> > It handles the ISP HW configuration, provides interrupt handling and
> > initializes the V4L2 device nodes and other V4L2 functions. Moreover,
> > implement standard V4L2 video driver that utilizes V4L2 and media
> > framework APIs. It supports one media device, one sub-device and
> > several video devices during initialization. Moreover, it also connects
> > with sensor and seninf drivers with V4L2 async APIs. Communicate with
> > co-process via SCP communication to compose ISP registers in the
> > firmware.
> > 
> > (The current metadata interface used in meta input and partial
> > meta nodes is only a temporary solution to kick off the driver
> > development and is not ready to be reviewed yet.)
> > 
> > Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
> > Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> > Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
> > ---
> > Changes from v6:
> >  - Revise help description for VIDEO_MEDIATEK_ISP_PASS1
> >  - Apply SCP v21 change in P1 driver by Pi-Hsun Shih
> >  - Correct auto suspend timer value for suspend/resume issue
> >  - Increase IPI guard timer to 1 second to avoid false alarm command timeout event
> >  - Fix KE due to no sen-inf sub-device
> > ---
> >  drivers/media/platform/mtk-isp/Kconfig        |   20 +
> >  .../media/platform/mtk-isp/isp_50/Makefile    |    3 +
> >  .../platform/mtk-isp/isp_50/cam/Makefile      |    6 +
> >  .../platform/mtk-isp/isp_50/cam/mtk_cam-hw.c  |  636 +++++
> >  .../platform/mtk-isp/isp_50/cam/mtk_cam-hw.h  |   64 +
> >  .../platform/mtk-isp/isp_50/cam/mtk_cam-ipi.h |  222 ++
> >  .../mtk-isp/isp_50/cam/mtk_cam-regs.h         |   95 +
> >  .../platform/mtk-isp/isp_50/cam/mtk_cam.c     | 2087 +++++++++++++++++
> >  .../platform/mtk-isp/isp_50/cam/mtk_cam.h     |  244 ++
> >  9 files changed, 3377 insertions(+)
> >  create mode 100644 drivers/media/platform/mtk-isp/Kconfig
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/Makefile
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-hw.c
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-hw.h
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-ipi.h
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam-regs.h
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam.c
> >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/cam/mtk_cam.h
> 
> <snip>
> 
> > +static void isp_tx_frame_worker(struct work_struct *work)
> > +{
> > +	struct mtk_cam_dev_request *req =
> > +		container_of(work, struct mtk_cam_dev_request, frame_work);
> > +	struct mtk_cam_dev *cam =
> > +		container_of(req->req.mdev, struct mtk_cam_dev, media_dev);
> > +	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(cam->dev);
> > +
> > +	scp_ipi_send(p1_dev->scp, SCP_IPI_ISP_FRAME, &req->frame_params,
> > +		     sizeof(req->frame_params), MTK_ISP_IPI_SEND_TIMEOUT);
> > +}
> 
> <snip>
> 
> > +void mtk_isp_req_enqueue(struct mtk_cam_dev *cam,
> > +			 struct mtk_cam_dev_request *req)
> > +{
> > +	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(cam->dev);
> > +
> > +	/* Accumulated frame sequence number */
> > +	req->frame_params.frame_seq_no = ++p1_dev->enqueued_frame_seq_no;
> > +
> > +	INIT_WORK(&req->frame_work, isp_tx_frame_worker);
> > +	queue_work(p1_dev->composer_wq, &req->frame_work);
> > +	dev_dbg(cam->dev, "enqueue fd:%s frame_seq_no:%d job cnt:%d\n",
> > +		req->req.debug_str, req->frame_params.frame_seq_no,
> > +		cam->running_job_count);
> > +}
> 
> <snip>
> 
> > +/*
> > + * struct dma_buffer - DMA buffer address information
> > + *
> > + * @iova: DMA address for ISP DMA device
> > + * @scp_addr: SCP address for external co-process unit
> > + *
> > + */
> > +struct dma_buffer {
> > +	u32 iova;
> > +	u32 scp_addr;
> > +} __packed;
> 
> <snip>
> 
> > +static void mtk_cam_vb2_buf_queue(struct vb2_buffer *vb)
> > +{
> > +	struct mtk_cam_dev *cam = vb2_get_drv_priv(vb->vb2_queue);
> > +	struct mtk_cam_dev_buffer *buf = mtk_cam_vb2_buf_to_dev_buf(vb);
> > +	struct mtk_cam_dev_request *req = mtk_cam_req_to_dev_req(vb->request);
> > +	struct mtk_cam_video_device *node = mtk_cam_vbq_to_vdev(vb->vb2_queue);
> > +	struct device *dev = cam->dev;
> > +	unsigned long flags;
> > +
> > +	dev_dbg(dev, "%s: node:%d fd:%d idx:%d\n", __func__,
> > +		node->id, buf->vbb.request_fd, buf->vbb.vb2_buf.index);
> > +
> > +	/* added the buffer into the tracking list */
> > +	spin_lock_irqsave(&node->buf_list_lock, flags);
> > +	list_add_tail(&buf->list, &node->buf_list);
> > +	spin_unlock_irqrestore(&node->buf_list_lock, flags);
> > +
> > +	/* update buffer internal address */
> > +	req->frame_params.dma_bufs[buf->node_id].iova = buf->daddr;
> > +	req->frame_params.dma_bufs[buf->node_id].scp_addr = buf->scp_addr;
> > +}
> > +
> 
> <snip>
> 
> > +/*
> > + * struct mtk_p1_frame_param - MTK ISP P1 driver frame parameters.
> > + *
> > + * @frame_seq_no: The frame sequence of frame in driver layer.
> > + * @dma_bufs: The DMA buffer address information of enabled DMA nodes.
> > + *
> > + */
> > +struct mtk_p1_frame_param {
> > +	unsigned int frame_seq_no;
> > +	struct dma_buffer dma_bufs[MTK_CAM_P1_TOTAL_NODES];
> > +} __packed;
> 
> So if I understand this correctly, to set the ISP frame parameters userspace
> provides an array of pointers to other memory areas that are magically created
> somewhere and containing magic, undocumented data.
> 
> I know you said that this is 'not ready to be reviewed yet', but I just wanted
> to mention that this is of course not acceptable and needs to be replaced with
> a documented metadata structure that userspace can pass in the metadata buffer.
> 
> Just ignore this email if you were already planning on doing that. I just wanted
> to make sure that it is clear that the current approach won't fly.
> 
> Regards,
> 
> 	Hans
> 

Thanks for your comment.

Firstly, I think I miss meta data types definition in this series.
https://patchwork.kernel.org/patch/11126055/
include/uapi/linux/videodev2.h
+#define V4L2_META_FMT_MTISP_3A    v4l2_fourcc('M', 'T', 'f', 'a') /*
AE/AWB histogram */
+#define V4L2_META_FMT_MTISP_AF    v4l2_fourcc('M', 'T', 'f', 'f') /* AF
histogram */
+#define V4L2_META_FMT_MTISP_LCS   v4l2_fourcc('M', 'T', 'f', 'c') /*
Local contrast enhanced statistics */
+#define V4L2_META_FMT_MTISP_LMV   v4l2_fourcc('M', 'T', 'f', 'm') /*
Local motion vector histogram */
+#define V4L2_META_FMT_MTISP_PARAMS v4l2_fourcc('M', 'T', 'f', 'p') /*
ISP tuning parameters */
We will correct this missing error in next patch set.

Secondly, we are working on the documented meta-data structures for
these meta nodes, especially on 4L2_META_FMT_MTISP_PARAMS which is used
for tuning parameters  from user space.

Sincerely

Jungo

> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
