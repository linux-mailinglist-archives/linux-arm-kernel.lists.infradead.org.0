Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E64479E0C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 03:45:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MX+BihfzOcq2eeQ7YmU2go3RLnApTYhdKCod0RFbrBE=; b=oVGTJXTi3c/ptW
	MvpirlxiiGtkahnEqiDJ6vhPYFaFzbQ+LmWYH2iZ6LlzE2S+mwXfmwYdbfM3Y3i2rAPgTrrsdOrlj
	wn8VVtUnEmRB1XOGeh1uP8B31VDcxmU/YCd4NnKa7ikm/HmY8ybnBXQeb+7Ze/ZH5VNDtEB/5IKvv
	5uwkb0RWXeh7D+I/w7at61K2DxSbh9i7e+b5QnPGmf7JbUcYyvi8/G12vIuEeuRAkCSW/XJ5Ew6Fr
	QQp4pWr9JkqenQ0Smt7B8MamSN6KobLWke5t4ACFJKho1gZ43C2bZAvcU5uPJGvlQzm+F0Og2nIVf
	spv2YZ52VkGdceMiHrNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsHCb-0004z5-9B; Tue, 30 Jul 2019 01:45:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsHCD-0004xp-CO; Tue, 30 Jul 2019 01:44:59 +0000
X-UUID: 7b83e80c48f444968c856bfc0ddacc9a-20190729
X-UUID: 7b83e80c48f444968c856bfc0ddacc9a-20190729
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1589039847; Mon, 29 Jul 2019 17:44:52 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 29 Jul 2019 18:44:51 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 09:44:49 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Jul 2019 09:44:49 +0800
Message-ID: <1564451089.1212.649.camel@mtksdccf07>
Subject: Re: [RFC,v3 6/9] media: platform: Add Mediatek ISP P1 V4L2 functions
From: Jungo Lin <jungo.lin@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 30 Jul 2019 09:44:49 +0800
In-Reply-To: <CAAFQd5D4Roc05H1NnXSp=W+L1RN7LEPHY0EA0mRhpHAcZ3wvMg@mail.gmail.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-7-jungo.lin@mediatek.com>
 <20190710095429.GA181405@chromium.org>
 <1563424741.1212.212.camel@mtksdccf07>
 <CAAFQd5CXeQv74RtqDxYYLVEpsnFbsm0m-kUBDpY_AFmCBO0PyA@mail.gmail.com>
 <1563942689.1212.494.camel@mtksdccf07>
 <CAAFQd5A8zW9s8cewmHnr9HFmrkxDnEqjrTiwLF2m8sKp0619hA@mail.gmail.com>
 <1564363089.1212.636.camel@mtksdccf07>
 <CAAFQd5D4Roc05H1NnXSp=W+L1RN7LEPHY0EA0mRhpHAcZ3wvMg@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_184457_431043_48A8D945 
X-CRM114-Status: GOOD (  33.88  )
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
Cc: devicetree@vger.kernel.org, Sean
 Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Ryan Yu =?UTF-8?Q?=28=E4=BD=99=E5=AD=9F=E4=BF=AE=29?= <ryan.yu@mediatek.com>,
 Frankie Chiu =?UTF-8?Q?=28=E9=82=B1=E6=96=87=E5=87=B1=29?=
 <frankie.chiu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
 Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-07-29 at 19:04 +0900, Tomasz Figa wrote:
> On Mon, Jul 29, 2019 at 10:18 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > On Fri, 2019-07-26 at 14:49 +0900, Tomasz Figa wrote:
> > > On Wed, Jul 24, 2019 at 1:31 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > > On Tue, 2019-07-23 at 19:21 +0900, Tomasz Figa wrote:
> > > > > On Thu, Jul 18, 2019 at 1:39 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > > > > On Wed, 2019-07-10 at 18:54 +0900, Tomasz Figa wrote:
> > > > > > > On Tue, Jun 11, 2019 at 11:53:41AM +0800, Jungo Lin wrote:
> [snip]
> > > >                 dev_dbg(cam->dev, "jobs are full\n");
> > > >                 spin_unlock_irqrestore(&cam->pending_job_lock, flags);
> > > >                 return;
> > > >         }
> > > >         list_for_each_entry_safe(req, req_prev, &cam->pending_job_list, list) {
> > >
> > > Could we instead check the counter here and break if it's >=
> > > MTK_ISP_MAX_RUNNING_JOBS?
> > > Then we could increment it here too to simplify the code.
> > >
> >
> > Thanks for your advice.
> > We simplified this function as below:
> >
> > void mtk_cam_dev_req_try_queue(struct mtk_cam_dev *cam)
> > {
> >         struct mtk_cam_dev_request *req, *req_prev;
> >         unsigned long flags;
> >
> >         if (!cam->streaming) {
> >                 dev_dbg(cam->dev, "stream is off\n");
> >                 return;
> >         }
> >
> >         spin_lock_irq(&cam->pending_job_lock);
> >         spin_lock_irqsave(&cam->running_job_lock, flags);
> 
> Having the inner call spin_lock_irqsave() doesn't really do anything
> useful, because the outer spin_lock_irq() disables the IRQs and flags
> would always have the IRQ disabled state. Please use irqsave for the
> outer call.
> 
> [snip]

Thanks for your comment.
This is a bug which triggers one kernel warning about wrong ISR state as
you said. We have fixed it.

> > > > > > > > +
> > > > > > > > +static struct v4l2_subdev *
> > > > > > > > +mtk_cam_cio_get_active_sensor(struct mtk_cam_dev *cam_dev)
> > > > > > > > +{
> > > > > > > > +   struct media_device *mdev = cam_dev->seninf->entity.graph_obj.mdev;
> > > > > > > > +   struct media_entity *entity;
> > > > > > > > +   struct device *dev = &cam_dev->pdev->dev;
> > > > > > > > +   struct v4l2_subdev *sensor;
> > > > > > >
> > > > > > > This variable would be unitialized if there is no streaming sensor. Was
> > > > > > > there no compiler warning generated for this?
> > > > > > >
> > > > > >
> > > > > > No, there is no compiler warning.
> > > > > > But, we will assign sensor to NULL to avoid unnecessary compiler warning
> > > > > > with different compiler options.
> > > > > >
> > > > >
> > > > > Thanks. It would be useful if you could check why the compiler you're
> > > > > using doesn't show a warning here. We might be missing other
> > > > > uninitialized variables.
> > > > >
> > > >
> > > > We will feedback to your project team to check the possible reason about
> > > > compiler warning issue.
> > > >
> > >
> > > Do you mean that it was the Clang toolchain used on Chromium OS (e.g.
> > > emerge chromeos-kernel-4_19)?
> >
> > > [snip]
> >
> > Yes, I checked this comment in the Chromium OS build environment.
> > But, I think I have made the mistake here. I need to check the build
> > status in the Mediatek's kernel upstream environment. I will pay
> > attention in next path set upstream.
> >
> 
> Thanks a lot. I will recheck this in the Chromium OS toolchain too.
> 

For these complier warnings, we have fixed them in Mediatek upstream
environment[1]. In this build environment, we could observe some
comelier warnings which are not generated by Chromium OS toolchain.

[1]
toolchain/aarch64/usr/bin/aarch64-poky-linux

> > > > > > > > +
> > > > > > > > +   dev_dbg(dev, "%s: node:%d fd:%d idx:%d\n",
> > > > > > > > +           __func__,
> > > > > > > > +           node->id,
> > > > > > > > +           buf->vbb.request_fd,
> > > > > > > > +           buf->vbb.vb2_buf.index);
> > > > > > > > +
> > > > > > > > +   /* For request buffers en-queue, handled in mtk_cam_req_try_queue */
> > > > > > > > +   if (vb->vb2_queue->uses_requests)
> > > > > > > > +           return;
> > > > > > >
> > > > > > > I'd suggest removing non-request support from this driver. Even if we end up
> > > > > > > with a need to provide compatibility for non-request mode, then it should be
> > > > > > > built on top of the requests mode, so that the driver itself doesn't have to
> > > > > > > deal with two modes.
> > > > > > >
> > > > > >
> > > > > > The purpose of non-request function in this driver is needed by
> > > > > > our camera middle-ware design. It needs 3A statistics buffers before
> > > > > > image buffers en-queue. So we need to en-queue 3A statistics with
> > > > > > non-request mode in this driver. After MW got the 3A statistics data, it
> > > > > > will en-queue the images, tuning buffer and other meta buffers with
> > > > > > request mode. Based on this requirement, do you have any suggestion?
> > > > > > For upstream driver, should we only consider request mode?
> > > > > >
> > > > >
> > > > > Where does that requirement come from? Why the timing of queuing of
> > > > > the buffers to the driver is important?
> > > > >
> > > > > [snip]
> > > >
> > > > Basically, this requirement comes from our internal camera
> > > > middle-ware/3A hal in user space. Since this is not generic requirement,
> > > > we will follow your original suggestion to keep the request mode only
> > > > and remove other non-request design in other files. For upstream driver,
> > > > it should support request mode only.
> > > >
> > >
> > > Note that Chromium OS will use the "upstream driver" and we don't want
> > > to diverge, so please make the userspace also use only requests. I
> > > don't see a reason why there would be any need to submit any buffers
> > > outside of a request.
> > >
> > > [snip]
> >
> > Ok, I have raised your concern to our colleagues and let him to discuss
> > with you in another communication channel.
> >
> 
> Thanks!
> 
> Best regards,
> Tomasz

Our colleague is preparing material to explain the our 3A/MW design. If
he is ready, he will discuss this with you.

In the original plan, we will deliver P1 v4 patch set tomorrow (31th
Jul.). But, there are some comments waiting for other experts' input.
Do you suggest it is better to resolve all comments before v4 patch set
submitting or continue to discuss these comments on v4?

Thanks,


Jungo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
