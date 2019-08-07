Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F418421C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 04:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4vivVKzJsF+tpOoa/5hdLav3wUysYJBSHobN9gttwA=; b=FJVC53mBn24JQT
	6NZklaWQNkJ5DDkMfls8YRxs/nabybwJPTEIwIZ+EwXE8Cu/8kLwL5u0MBCDLbPbX9+C/JRsJeeZ7
	KiqyeAv37nFW6I/EdhkIsAE7XEd4BqcJe9WI9skPe9m+LxfDYIeCQBhfpxB0PIThsT+bq2yGq85bA
	/1v9z4uURuFNHhaPdiFZmh/vr5c5aranoSSIGtQs7juFXfmfjDCeP8C5EbmFqaV2K7jIK7SZkkIkq
	nrct2SJcS1POvQ/X4yM/ANOuFKLMKM1O47FWprfFCjgjZZ2tyLU2l6BYaAvYoVtu5ni5LmSBndjuS
	zGZu5NA3OfJw/ijOdf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvBR2-00035f-NF; Wed, 07 Aug 2019 02:12:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvBQp-00034X-AU; Wed, 07 Aug 2019 02:12:05 +0000
X-UUID: 14bbdecca43a4f2fb5f2174ed7f1c3bd-20190806
X-UUID: 14bbdecca43a4f2fb5f2174ed7f1c3bd-20190806
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1117752066; Tue, 06 Aug 2019 18:11:43 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 19:11:41 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 10:11:39 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 7 Aug 2019 10:11:39 +0800
Message-ID: <1565143899.9157.19.camel@mtksdccf07>
Subject: Re: [RFC,v3 7/9] media: platform: Add Mediatek ISP P1 device driver
From: Jungo Lin <jungo.lin@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 7 Aug 2019 10:11:39 +0800
In-Reply-To: <CAAFQd5D5m=gGViSY++r5uUS1+91y9=Gpcss1dEXrin_T07H+uQ@mail.gmail.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-8-jungo.lin@mediatek.com>
 <20190710095646.GB181405@chromium.org>
 <1563616681.1212.386.camel@mtksdccf07>
 <CAAFQd5AmAXm1T0eLPiUTFLv9qiKxe-wZGyXxk0jvge+EanZ3FQ@mail.gmail.com>
 <1564125828.1212.600.camel@mtksdccf07>
 <CAAFQd5D5m=gGViSY++r5uUS1+91y9=Gpcss1dEXrin_T07H+uQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_191203_382875_39B32D14 
X-CRM114-Status: GOOD (  43.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <sean.cheng@mediatek.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Ryan Yu =?UTF-8?Q?=28=E4=BD=99=E5=AD=9F=E4=BF=AE=29?= <ryan.yu@mediatek.com>,
 Frankie Chiu =?UTF-8?Q?=28=E9=82=B1=E6=96=87=E5=87=B1=29?=
 <frankie.chiu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
 Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Tomasz:

On Tue, 2019-08-06 at 18:47 +0900, Tomasz Figa wrote:
> Hi Jungo,
> 
> On Fri, Jul 26, 2019 at 4:24 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> >
> > Hi, Tomasz:
> >
> > On Thu, 2019-07-25 at 18:23 +0900, Tomasz Figa wrote:
> > > .Hi Jungo,
> > >
> > > On Sat, Jul 20, 2019 at 6:58 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > >
> > > > Hi, Tomasz:
> > > >
> > > > On Wed, 2019-07-10 at 18:56 +0900, Tomasz Figa wrote:
> > > > > Hi Jungo,
> > > > >
> > > > > On Tue, Jun 11, 2019 at 11:53:42AM +0800, Jungo Lin wrote:
> [snip]

I just keep some questions to be clarified.
[snip]

> > > > > > +           isp_dev->meta0_vb2_index = meta0_vb2_index;
> > > > > > +           isp_dev->meta1_vb2_index = meta1_vb2_index;
> > > > > > +   } else {
> > > > > > +           if (irq_status & SOF_INT_ST) {
> > > > > > +                   isp_dev->current_frame = hw_frame_num;
> > > > > > +                   isp_dev->meta0_vb2_index = meta0_vb2_index;
> > > > > > +                   isp_dev->meta1_vb2_index = meta1_vb2_index;
> > > > > > +           }
> > > > > > +           irq_handle_notify_event(isp_dev, irq_status, dma_status, 1);
> > > > > > +   }
> > > > >
> > > > > The if and else blocks do almost the same things just in different order. Is
> > > > > it really expected?
> > > > >
> > > >
> > > > If we receive HW_PASS1_DON_ST & SOF_INT_ST IRQ events at the same time,
> > > > the correct sequence should be handle HW_PASS1_DON_ST firstly to check
> > > > any de-queued frame and update the next frame setting later.
> > > > Normally, this is a corner case or system performance issue.
> > >
> > > So it sounds like HW_PASS1_DON_ST means that all data from current
> > > frame has been written, right? If I understand your explanation above
> > > correctly, that would mean following handling of each interrupt:
> > >
> > > HW_PASS1_DON_ST:
> > >  - CQ executes with next CQ buffer to prepare for next frame. <- how
> > > is this handled? does the CQ hardware automatically receive this event
> > > from the ISP hadware?
> > >  - return VB2 buffers,
> > >  - complete requests.
> > >
> > > SOF_INT_ST:
> > >  - send VSYNC event to userspace,
> > >  - program next CQ buffer to CQ,
> > >
> > > SW_PASS1_DON_ST:
> > >  - reclaim CQ buffer and enqueue next frame to composing if available
> > >
> >
> > Sorry for our implementation of HW_PASS1_DON_ST.
> > It is confusing.
> > Below is the revised version based on your conclusion.
> > So in our new implemmenation, we just handle SOF_INT_ST &
> > SW_PASS1_DON_ST events. We just add one warning message for
> > HW_PASS1_DON_ST
> >
> > HW_PASS1_DON_ST:
> > - CQ executes with next CQ buffer to prepare for next frame.
> >
> > SOF_INT_ST:
> > - send VSYNC event to userspace,
> > - program next CQ buffer to CQ,
> >
> > SW_PASS1_DON_ST:
> > - reclaim CQ buffer and enqueue next frame to composing if available
> > - return VB2 buffers,
> > - complete requests.
> >
> > For CQ HW operations, it is listed below:
> >
> > a. The CQ buffer has two kinds of information
> >  - Which ISP registers needs to be updated.
> >  - Where the corresponding ISP register data to be read.
> > b. The CQ buffer loading procedure is triggered by HW_PASS1_DONT_ST IRQ
> > event periodically.
> >  - Normally, if the ISP HW receives the completed frame and it will
> > trigger W_PASS1_DONT_ST IRQ and perform CQ buffer loading immediately.
> > -  So the CQ buffer loading is performed by ISP HW automatically.
> > c. The ISP HW will read CQ base address register(REG_CQ_THR0_BASEADDR)
> > to decide which CQ buffer is loaded.
> >    - So we configure the next CQ base address in SOF.
> > d. For CQ buffer loading, CQ will read the ISP registers from CQ buffer
> > and update the ISP register values into HW.
> >    - SCP composer will compose one dummy CQ buffer and assign it to
> > REG_CQ_THR0_BASEADDR of each CQ buffer.
> >    - Dummy CQ buffer has no updated ISP registers comparing with other
> > CQ buffers.
> >    - With this design, if there is no updated new CQ buffer by driver
> > which may be caused no en-queue frames from user space. The CQ HW will
> > load dummy CQ buffer and do nothing.
> 
> Does the set of registers programmed by CQ include destination buffer
> addresses to? If yes, we would end up overwriting previous frames if
> no new buffers are provided.
> 

Yes, the buffer addresses are changed per frame request. We need to
compose CQ to include these DMA destination addresses. For your concern,
we have DMA flow buffer control (FBC) in HW. If there is no FBC counter
increased due to no buffer for each DMA, the ISP HW doesn't output the
data to the corresponding DMA address.

Below is the simple descriptor of CQ buffer.
a. ISP registers in tuning buffer, including 3A registers.
b. All capture buffers informations.
   - DMA buffer destination address
   - FBC counter
c. Some specif ISP registers for meta DMAs, such as LCE or LMVO.
d. frame sequence number register

> > f. The CQ buffer loading is guaranteed by HW to finish before the next
> > SOF.
> >
> 
> Okay, thanks a lot for the explanation. This is much more clear now.
> 
> [snip]
> > > > > > +static const struct dev_pm_ops mtk_isp_pm_ops = {
> > > > > > +   SET_SYSTEM_SLEEP_PM_OPS(mtk_isp_suspend, mtk_isp_resume)
> > > > > > +   SET_RUNTIME_PM_OPS(mtk_isp_suspend, mtk_isp_resume, NULL)
> > > > >
> > > > > For V4L2 drivers system and runtime PM ops would normally be completely
> > > > > different. Runtime PM ops would be called when the hardware is idle already
> > > > > or is about to become active. System PM ops would be called at system power
> > > > > state change and the hardware might be both idle or active. Please also see
> > > > > my comments to mtk_isp_suspend() and mtk_isp_resume() above.
> > > > >
> > > >
> > > > Here is the new implementation. It should be clear to show the
> > > > difference between system and runtime PM ops.
> > > >
> > > > static const struct dev_pm_ops mtk_isp_pm_ops = {
> > > >         SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > > >                                 pm_runtime_force_resume)
> > > >         SET_RUNTIME_PM_OPS(mtk_isp_runtime_suspend, mtk_isp_runtime_resume,
> > > > NULL)
> > > > };
> > >
> > > That's still not correct. In runtime suspend/resume ops we already are
> > > not streaming anymore, because we call pm_runtime_get/put_*() when
> > > starting and stopping streaming. In system suspend/resume ops we might
> > > be streaming and that's when we need to stop the hardware and wait for
> > > it to finish. Please implement these ops separately.
> > >
> > > Best regards,
> > > Tomasz
> >
> >
> > Ok, got your point.
> > Below is the new implementation for your review.
> >
> > static int mtk_isp_pm_suspend(struct device *dev)
> > {
> >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> >         u32 val;
> >         int ret;
> >
> >         dev_dbg(dev, "- %s\n", __func__);
> >
> >         /* Check ISP is streaming or not */
> >         if (!p1_dev->cam_dev.streaming)
> >                 goto done;
> 
> We would normally check here for pm_runtime_suspended(). Although they
> both should be equivalent. Still, there is no need to call
> pm_runtime_force_suspend() if the latter is true, so we could just
> return 0 instantly.
> 

Ok, here is the fixed version.

static int mtk_isp_pm_suspend(struct device *dev)
{
	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
	u32 val;
	int ret;

	dev_dbg(dev, "- %s\n", __func__);

	if (pm_runtime_suspended(dev))
		return 0;

	/* Disable ISP's view finder and wait for TG idle */
	dev_dbg(dev, "cam suspend, disable VF\n");
	val = readl(p1_dev->regs + REG_TG_VF_CON);
	writel(val & (~TG_VF_CON_VFDATA_EN), p1_dev->regs + REG_TG_VF_CON);
	ret = readl_poll_timeout_atomic(p1_dev->regs + REG_TG_INTER_ST, val,
					(val & TG_CS_MASK) == TG_IDLE_ST,
					USEC_PER_MSEC, MTK_ISP_STOP_HW_TIMEOUT);
	if (ret)
		dev_warn(dev, "can't stop HW:%d:0x%x\n", ret, val);

	/* Disable CMOS */
	val = readl(p1_dev->regs + REG_TG_SEN_MODE);
	writel(val & (~TG_SEN_MODE_CMOS_EN), p1_dev->regs + REG_TG_SEN_MODE);

	/* Force ISP HW to idle */
	ret = pm_runtime_force_suspend(dev);
	if (ret)
		return ret;

	return 0;
}
[snip]

> > static int mtk_isp_pm_resume(struct device *dev)
> > {
> >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> >         u32 val;
> >         int ret;
> >
> >         dev_dbg(dev, "- %s\n", __func__);
> >
> >         /* Force ISP HW to resume if needed */
> >         ret = pm_runtime_force_resume(dev);
> >         if (ret)
> >                 return ret;
> 
> We should do this conditionally based on what pm_runtime_suspended()
> returns. If it's non-zero then we can just return 0 instantly.
> 

Ok, here is the fixed version.

static int mtk_isp_pm_resume(struct device *dev)
{
	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
	u32 val;
	int ret;

	dev_dbg(dev, "- %s\n", __func__);

	if (pm_runtime_suspended(dev))
		return 0;

	/* Force ISP HW to resume */
	ret = pm_runtime_force_resume(dev);
	if (ret)
		return ret;

	/* Enable CMOS */
	dev_dbg(dev, "cam resume, enable CMOS/VF\n");
	val = readl(p1_dev->regs + REG_TG_SEN_MODE);
	writel(val | TG_SEN_MODE_CMOS_EN, p1_dev->regs + REG_TG_SEN_MODE);

	/* Enable VF */
	val = readl(p1_dev->regs + REG_TG_VF_CON);
	writel(val | TG_VF_CON_VFDATA_EN, p1_dev->regs + REG_TG_VF_CON);

	return 0;
}

[snip]

> > static int mtk_isp_runtime_suspend(struct device *dev)
> > {
> >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> >
> >         dev_dbg(dev, "- %s\n", __func__);
> >
> >         if (pm_runtime_suspended(dev))
> >                 return 0;
> 
> Sorry, I guess I wasn't clear in my reply. It's not possible to get
> this callback called if the device is already runtime suspended.
> 

Ok, got it. Need to remove pm_runtime_suspended(dev) checking and move
it into mtk_isp_pm_* functions. If I still don't get your point, could
you kindly provide one sample driver for reference? Based on current
implementation, it is similar to below drivers.
https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/mtk-mdp/mtk_mdp_core.c#L255
https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/exynos4-is/fimc-is-i2c.c#L113


static int mtk_isp_runtime_suspend(struct device *dev)
{
	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);

	dev_dbg(dev, "%s:disable clock\n", __func__);
	clk_bulk_disable_unprepare(p1_dev->num_clks, p1_dev->clks);

	return 0;
}

[snip]

> > static int mtk_isp_runtime_resume(struct device *dev)
> > {
> >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> >         int ret;
> >
> >         dev_dbg(dev, "- %s\n", __func__);
> >
> >         if (pm_runtime_suspended(dev))
> >                 return 0;
> 
> In this case the above call would always return non-zero, so the
> behavior wouldn't be very good.
> 

Same as above.

static int mtk_isp_runtime_resume(struct device *dev)
{
	struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
	int ret;

	dev_dbg(dev, "%s:enable clock\n", __func__);
	ret = clk_bulk_prepare_enable(p1_dev->num_clks, p1_dev->clks);
	if (ret) {
		dev_err(dev, "failed to enable clock:%d\n", ret);
		return ret;
	}

	return 0;
}

Thanks for your further comments on these issues.

Best regards,

Jugno

> Best regards,
> Tomasz
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
