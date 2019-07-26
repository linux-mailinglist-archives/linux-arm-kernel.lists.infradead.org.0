Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918B97605E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 10:07:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RA29ErD3PwM622T0gL9dn01wwA5CU0iq4fCeOuc1t4M=; b=PAU47R50w8lqqg
	lQggAIuPBvYrpPDmWZ1UiV97zCVl4ASnizsbIv6W2fEhFhMlE2jAJr/61HuY8eOeyuxeuYoF53uYx
	vT/byPxVuXImndpFBlkgrgWKRGY+AJDEHE+puOXI/iqN4vPQEDX1o6E5B/ZcRKRMltIG+9vzt5a5L
	KU++oT8neHWEXaEHUhoxR3g2Iv+nRCVeDOkI7MTylewTA9+1myzLQKrGCKcsL5Pk56LaJ19iZKsWw
	zlxzM3q2NguA+EPavwbQc4AbkpcnVTq544NOKtDVyjr4Dys1NNt0g3T1dumovBs4UM5X9oatTbfdi
	Jnrwv0nZMMmbFM0LkVJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvGd-0007Ta-1m; Fri, 26 Jul 2019 08:07:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvGG-0007Sw-VJ; Fri, 26 Jul 2019 08:07:34 +0000
X-UUID: 686622a3cb524163b26db958b4c8a2eb-20190726
X-UUID: 686622a3cb524163b26db958b4c8a2eb-20190726
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 164958814; Fri, 26 Jul 2019 00:07:27 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 01:07:25 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 16:07:17 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 26 Jul 2019 16:07:17 +0800
Message-ID: <1564128437.1212.615.camel@mtksdccf07>
Subject: Re: [RFC,v3 8/9] media: platform: Add Mediatek ISP P1 SCP
 communication
From: Jungo Lin <jungo.lin@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 26 Jul 2019 16:07:17 +0800
In-Reply-To: <CAAFQd5BT7M425AbFicYuX+wr-twgS_cxQ937+Rgxo6Y2fA6_gA@mail.gmail.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-9-jungo.lin@mediatek.com>
 <20190710095827.GC181405@chromium.org>
 <1563675513.1212.444.camel@mtksdccf07>
 <CAAFQd5BT7M425AbFicYuX+wr-twgS_cxQ937+Rgxo6Y2fA6_gA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_010733_024326_42436D2B 
X-CRM114-Status: GOOD (  23.99  )
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
Cc: devicetree@vger.kernel.org,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <sean.cheng@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Ryan Yu =?UTF-8?Q?=28=E4=BD=99=E5=AD=9F=E4=BF=AE=29?= <ryan.yu@mediatek.com>,
 Frankie Chiu =?UTF-8?Q?=28=E9=82=B1=E6=96=87=E5=87=B1=29?=
 <frankie.chiu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 ddavenport@chromium.org, Sj Huang <sj.huang@mediatek.com>, "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
 Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tomasz:

On Thu, 2019-07-25 at 19:56 +0900, Tomasz Figa wrote:
> Hi Jungo,
> 
> On Sun, Jul 21, 2019 at 11:18 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
> [snip]
> > > > +           wake_up_interruptible(&isp_ctx->composer_tx_thread.wq);
> > > > +           isp_ctx->composer_tx_thread.thread = NULL;
> > > > +   }
> > > > +
> > > > +   if (isp_ctx->composer_deinit_thread.thread) {
> > > > +           wake_up(&isp_ctx->composer_deinit_thread.wq);
> > > > +           isp_ctx->composer_deinit_thread.thread = NULL;
> > > > +   }
> > > > +   mutex_unlock(&isp_ctx->lock);
> > > > +
> > > > +   pm_runtime_put_sync(&p1_dev->pdev->dev);
> > >
> > > No need to use the sync variant.
> > >
> >
> > We don't get this point. If we will call pm_runtime_get_sync in
> > mtk_isp_hw_init function, will we need to call
> > pm_runtime_put_sync_autosuspend in mtk_isp_hw_release in next patch?
> > As we know, we should call runtime pm functions in pair.
> >
> 
> My point is that pm_runtime_put_sync() is only needed if one wants the
> runtime count to be decremented after the function returns. Normally
> there is no need to do so and one would call pm_runtime_put(), or if
> autosuspend is used, pm_runtime_put_autosuspend() (note there is no
> "sync" in the name).
> 
> [snip]

Ok, got your point.
We will change to use pm_runtime_put_autosuspend() which has ASYNC flag.

> > > +static void isp_composer_handler(void *data, unsigned int len, void *priv)
> > > > +{
> > > > +   struct mtk_isp_p1_ctx *isp_ctx = (struct mtk_isp_p1_ctx *)priv;
> > > > +   struct isp_p1_device *p1_dev = p1_ctx_to_dev(isp_ctx);
> > > > +   struct device *dev = &p1_dev->pdev->dev;
> > > > +   struct mtk_isp_scp_p1_cmd *ipi_msg;
> > > > +
> > > > +   ipi_msg = (struct mtk_isp_scp_p1_cmd *)data;
> > >
> > > Should we check that len == sizeof(*ipi_msg)? (Or at least >=, if data could
> > > contain some extra bytes at the end.)
> > >
> >
> > The len parameter is the actual sending bytes from SCP to kernel.
> > In the runtime, it is only 6 bytes for isp_ack_info command
> > However, sizeof(*ipi_msg) is large due to struct mtk_isp_scp_p1_cmd is
> > union structure.
> >
> 
> That said we still should check if len is enough to cover the data
> we're accessing below.
> 

Ok, we will add the len checking before accessing the data.

> > > > +
> > > > +   if (ipi_msg->cmd_id != ISP_CMD_ACK)
> > > > +           return;
> > > > +
> > > > +   if (ipi_msg->ack_info.cmd_id == ISP_CMD_FRAME_ACK) {
> > > > +           dev_dbg(dev, "ack frame_num:%d",
> > > > +                   ipi_msg->ack_info.frame_seq_no);
> > > > +           atomic_set(&isp_ctx->composed_frame_id,
> > > > +                      ipi_msg->ack_info.frame_seq_no);
> > >
> > > I suppose we are expecting here that ipi_msg->ack_info.frame_seq_no would be
> > > just isp_ctx->composed_frame_id + 1, right? If not, we probably dropped some
> > > frames and we should handle that somehow.
> > >
> >
> > No, we use isp_ctx->composed_frame_id to save which frame sequence
> > number are composed done in SCP. In new design, we will move this from
> > isp_ctx to p1_dev.
> 
> But we compose the frames in order, don't we? Wouldn't every composed
> frame would be just previous frame ID + 1?
> 
> [snip]

Yes, we compose the frames in order.
At the same time, we already increased "frame ID + 1" in
mtk_isp_req_enqueue() for each new request before sending to SCP for
composing. After receiving the ACK from SCP, we think the frame ID is
composed done and save by isp_ctx->composed_frame_id(v3).

[RFC v3]
void mtk_isp_req_enqueue(struct device *dev, struct media_request *req)
{
	...
	frameparams.frame_seq_no = isp_ctx->frame_seq_no++;

[RFC v4]
void mtk_isp_req_enqueue(struct mtk_cam_dev *cam,
			 struct mtk_cam_dev_request *req)
{
	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(cam->dev);

	/* Accumulated frame sequence number */
	req->frame_params.frame_seq_no = ++p1_dev->enqueue_frame_seq_no;

 

> > > > +void isp_composer_hw_init(struct device *dev)
> > > > +{
> > > > +   struct mtk_isp_scp_p1_cmd composer_tx_cmd;
> > > > +   struct isp_p1_device *p1_dev = get_p1_device(dev);
> > > > +   struct mtk_isp_p1_ctx *isp_ctx = &p1_dev->isp_ctx;
> > > > +
> > > > +   memset(&composer_tx_cmd, 0, sizeof(composer_tx_cmd));
> > > > +   composer_tx_cmd.cmd_id = ISP_CMD_INIT;
> > > > +   composer_tx_cmd.frameparam.hw_module = isp_ctx->isp_hw_module;
> > > > +   composer_tx_cmd.frameparam.cq_addr.iova = isp_ctx->scp_mem_iova;
> > > > +   composer_tx_cmd.frameparam.cq_addr.scp_addr = isp_ctx->scp_mem_pa;
> > >
> > > Should we also specify the size of the buffer? Otherwise we could end up
> > > with some undetectable overruns.
> > >
> >
> > The size of SCP composer's memory is fixed to 0x200000.
> > Is it necessary to specify the size of this buffer?
> >
> > #define MTK_ISP_COMPOSER_MEM_SIZE 0x200000
> >
> > ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
> >                         MTK_ISP_COMPOSER_MEM_SIZE, &addr, GFP_KERNEL);
> >
> 
> Okay, but please add a comment saying that this is an implicit
> requirement of the firmware.
> 
> Best regards,
> Tomasz

Ok, we will add comments.

Best regards,


Jungo





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
