Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDE99B7683
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 11:41:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AnP2cVB3wOXM6o97/4toL0hHLWK6+5GSgYcHzJ+e3mU=; b=M8Xaj5SGSn/Kbn
	YZDuwzsGGxKpXaubjdOqYNghq/ABEVSmjMBm4A1t7/q/jpCgUcFGYYJ/iHbEAwhS1gklHABJoM8uv
	bAVDAbPi2JMqSwmurJRWq/ju/3rJt2nqiPeyt5K4yOinTI5v1s9oDsVpknXnBXYZ2/DGERtXxrRiQ
	Hp3DaKeTJ8+NlDKgC4nWdHIFJxP+FPpETXYPpl8x4OGPtf6MR//NaAyIkaKHRFxWfajldpzeCEodz
	8NqmQJS6cOXbXPk20pflUaUkh/gl2ZP0/9F5+UWTS2sAFB1Hwju6k+CkjKzYQU0NCa7fkfGzlQSFh
	ZAnL0f532hViIVB7dPOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAswR-0000Yj-SO; Thu, 19 Sep 2019 09:41:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAsw7-0000SC-Ec; Thu, 19 Sep 2019 09:41:17 +0000
X-UUID: c0ae8cc8930b474f8020ecf6991cbeac-20190919
X-UUID: c0ae8cc8930b474f8020ecf6991cbeac-20190919
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 229598550; Thu, 19 Sep 2019 01:41:06 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 02:41:05 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 19 Sep 2019 17:41:04 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 19 Sep 2019 17:41:04 +0800
Message-ID: <1568886066.19171.16.camel@mtksdccf07>
Subject: Re: [RFC PATCH V3 4/5] platform: mtk-isp: Add Mediatek DIP driver
From: Frederic Chen <frederic.chen@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 19 Sep 2019 17:41:06 +0800
In-Reply-To: <CAAFQd5Cd2-dyQnMEy0LBwaajn7UfzEbHiJp7AkDy=T8Zy6t_=A@mail.gmail.com>
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
 <20190909192244.9367-5-frederic.chen@mediatek.com>
 <CAAFQd5DEn_N26M7B4X7fKHVA=XBtWJN=Y4VF7D9B=TkgXf_i+Q@mail.gmail.com>
 <1568223671.19171.12.camel@mtksdccf07>
 <CAAFQd5Cd2-dyQnMEy0LBwaajn7UfzEbHiJp7AkDy=T8Zy6t_=A@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_024115_515806_7686713D 
X-CRM114-Status: GOOD (  30.10  )
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
Cc: Shik Chen <shik@chromium.org>, devicetree@vger.kernel.org,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <Sean.Cheng@mediatek.com>,
 Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <Rynn.Wu@mediatek.com>,
 Christie Yu =?UTF-8?Q?=28=E6=B8=B8=E9=9B=85=E6=83=A0=29?=
 <christie.yu@mediatek.com>, srv_heupstream <srv_heupstream@mediatek.com>,
 Allan Yang =?UTF-8?Q?=28=E6=A5=8A=E6=99=BA=E9=88=9E=29?=
 <Allan.Yang@mediatek.com>,
 Holmes Chiou =?UTF-8?Q?=28=E9=82=B1=E6=8C=BA=29?= <holmes.chiou@mediatek.com>,
 suleiman@chromium.org, Jerry-ch Chen <Jerry-ch.Chen@mediatek.com>,
 Jungo Lin =?UTF-8?Q?=28=E6=9E=97=E6=98=8E=E4=BF=8A=29?=
 <jungo.lin@mediatek.com>, Sj
 Huang <sj.huang@mediatek.com>, yuzhao@chromium.org,
 Hans Verkuil <hans.verkuil@cisco.com>, zwisler@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>, "moderated list:ARM/Mediatek
 SoC support" <linux-mediatek@lists.infradead.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU
 DRIVERS <iommu@lists.linux-foundation.org>,  Joerg  Roedel
 <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear Tomasz,


On Thu, 2019-09-12 at 14:58 +0900, Tomasz Figa wrote:
> On Thu, Sep 12, 2019 at 2:41 AM Frederic Chen
> <frederic.chen@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > I appreciate your helpful comments.
> >
> >
> > On Tue, 2019-09-10 at 13:04 +0900, Tomasz Figa wrote:
> > > Hi Frederic,
> > >
> > > On Tue, Sep 10, 2019 at 4:23 AM <frederic.chen@mediatek.com> wrote:
> > > >
> > > > From: Frederic Chen <frederic.chen@mediatek.com>
> > > >
> > > > This patch adds the driver of Digital Image Processing (DIP)
> > > > unit in Mediatek ISP system, providing image format
> > > > conversion, resizing, and rotation features.
> > > >
> > > > The mtk-isp directory will contain drivers for multiple IP
> > > > blocks found in Mediatek ISP system. It will include ISP
> > > > Pass 1 driver(CAM), sensor interface driver, DIP driver and
> > > > face detection driver.
> > > >
> > > > Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
> > > > ---
> > > >  drivers/media/platform/mtk-isp/Makefile       |    7 +
> > > >  .../media/platform/mtk-isp/isp_50/Makefile    |    7 +
> > > >  .../platform/mtk-isp/isp_50/dip/Makefile      |   18 +
> > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.c |  650 +++++
> > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-dev.h |  566 +++++
> > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-hw.h  |  156 ++
> > > >  .../platform/mtk-isp/isp_50/dip/mtk_dip-sys.c |  521 ++++
> > > >  .../mtk-isp/isp_50/dip/mtk_dip-v4l2.c         | 2255 +++++++++++++++++
> > > >  8 files changed, 4180 insertions(+)
> > > >  create mode 100644 drivers/media/platform/mtk-isp/Makefile
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/Makefile
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/Makefile
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.c
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-dev.h
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-hw.h
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-sys.c
> > > >  create mode 100644 drivers/media/platform/mtk-isp/isp_50/dip/mtk_dip-v4l2.c
> > > >
> > >
> > > Thanks for sending v3!
> > >
> > > I'm going to do a full review a bit later, but please check one
> > > comment about power handling below.
> > >
> > > Other than that one comment, from a quick look, I think we only have a
> > > number of style issues left. Thanks for the hard work!
> > >
> > > [snip]
> > > > +static void dip_runner_func(struct work_struct *work)
> > > > +{
> > > > +       struct mtk_dip_request *req = mtk_dip_hw_mdp_work_to_req(work);
> > > > +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> > > > +       struct img_config *config_data =
> > > > +               (struct img_config *)req->working_buf->config_data.vaddr;
> > > > +
> > > > +       /*
> > > > +        * Call MDP/GCE API to do HW excecution
> > > > +        * Pass the framejob to MDP driver
> > > > +        */
> > > > +       pm_runtime_get_sync(dip_dev->dev);
> > > > +       mdp_cmdq_sendtask(dip_dev->mdp_pdev, config_data,
> > > > +                         &req->img_fparam.frameparam, NULL, false,
> > > > +                         dip_mdp_cb_func, req);
> > > > +}
> > > [snip]
> > > > +static void dip_composer_workfunc(struct work_struct *work)
> > > > +{
> > > > +       struct mtk_dip_request *req = mtk_dip_hw_fw_work_to_req(work);
> > > > +       struct mtk_dip_dev *dip_dev = req->dip_pipe->dip_dev;
> > > > +       struct img_ipi_param ipi_param;
> > > > +       struct mtk_dip_hw_subframe *buf;
> > > > +       int ret;
> > > > +
> > > > +       down(&dip_dev->sem);
> > > > +
> > > > +       buf = mtk_dip_hw_working_buf_alloc(req->dip_pipe->dip_dev);
> > > > +       if (!buf) {
> > > > +               dev_err(req->dip_pipe->dip_dev->dev,
> > > > +                       "%s:%s:req(%p): no free working buffer available\n",
> > > > +                       __func__, req->dip_pipe->desc->name, req);
> > > > +       }
> > > > +
> > > > +       req->working_buf = buf;
> > > > +       mtk_dip_wbuf_to_ipi_img_addr(&req->img_fparam.frameparam.subfrm_data,
> > > > +                                    &buf->buffer);
> > > > +       memset(buf->buffer.vaddr, 0, DIP_SUB_FRM_SZ);
> > > > +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.config_data,
> > > > +                                       &buf->config_data);
> > > > +       memset(buf->config_data.vaddr, 0, DIP_COMP_SZ);
> > > > +
> > > > +       if (!req->img_fparam.frameparam.tuning_data.present) {
> > > > +               /*
> > > > +                * When user enqueued without tuning buffer,
> > > > +                * it would use driver internal buffer.
> > > > +                */
> > > > +               dev_dbg(dip_dev->dev,
> > > > +                       "%s: frame_no(%d) has no tuning_data\n",
> > > > +                       __func__, req->img_fparam.frameparam.frame_no);
> > > > +
> > > > +               mtk_dip_wbuf_to_ipi_tuning_addr
> > > > +                               (&req->img_fparam.frameparam.tuning_data,
> > > > +                                &buf->tuning_buf);
> > > > +               memset(buf->tuning_buf.vaddr, 0, DIP_TUNING_SZ);
> > > > +       }
> > > > +
> > > > +       mtk_dip_wbuf_to_ipi_img_sw_addr(&req->img_fparam.frameparam.self_data,
> > > > +                                       &buf->frameparam);
> > > > +       memcpy(buf->frameparam.vaddr, &req->img_fparam.frameparam,
> > > > +              sizeof(req->img_fparam.frameparam));
> > > > +       ipi_param.usage = IMG_IPI_FRAME;
> > > > +       ipi_param.frm_param.handle = req->id;
> > > > +       ipi_param.frm_param.scp_addr = (u32)buf->frameparam.scp_daddr;
> > > > +
> > > > +       mutex_lock(&dip_dev->hw_op_lock);
> > > > +       atomic_inc(&dip_dev->num_composing);
> > > > +       ret = scp_ipi_send(dip_dev->scp_pdev, SCP_IPI_DIP, &ipi_param,
> > > > +                          sizeof(ipi_param), 0);
> > >
> > > We're not holding the pm_runtime enable count here
> > > (pm_runtime_get_sync() wasn't called), so rproc_shutdown() might have
> > > been called. Wouldn't that affect the ability for this IPI to run?
> > >
> > > We had a related discussion with Jerry on the FD series and I think
> > > the conclusion is:
> > > a) if there is any state that needs to be preserved between jobs, that
> > > would be cleared by rproc_shutdown() then we need to call
> > > rproc_boot/shutdown() when we start/stop streaming.
> > > b) it there is no such state, we can keep them inside runtime PM
> > > callbacks, but we need to call pm_runtime_get_sync() before sending an
> > > IPI and pm_runtime_mark_last_busy() + pm_runtime_put_autosuspend()
> > > after the SCP signals completion. In this case the runtime PM
> > > autosuspend delay should be set to around 2-3 times the delay needed
> > > for rproc_shutdown() + rproc_boot() to complete.
> >
> > Since each IMG_IPI_FRAME command is stateless, I would like to
> > use pm_runtime_get_sync()/ pm_runtime_mark_last_busy()/
> > pm_runtime_put_autosuspend() to fix this issue (solution b).
> 
> What does IMG_IPI_INIT do then? Do we need it at all?
> 
> I'm worried about the fact that we call rproc_boot(), IMG_IPI_INIT and
> then rproc_shutdown(). The latter can completely shutdown the SCP and
> clear any state there. How would the effects of IMG_IPI_INIT be
> preserved until IMG_IPI_FRAME is called?
> 

The command IMG_IPI_INIT is to initialize the DIP hardware. Although the
DIP hardware status is not cleared when SCP is powered off, it can still
be cleared after mtk_dip_runtime_suspend() is called (it means that DIP
is going to be powered off).

I would like to re-initialize the DIP with IMG_IPI_INIT in
mtk_dip_runtime_resume() to handle this case. Is is OK?


> Best regards,
> Tomasz


Sincerely,

Frederic Chen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
