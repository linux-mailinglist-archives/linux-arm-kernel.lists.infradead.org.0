Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED06F84CDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 15:26:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MvL8EDHXlXWG2lXXiHVNsQ4mg+UaicMVl/W/kz4Ob80=; b=XeikcnokYDODtK
	2jlc1pk/aIfgs31AmXcAVi+Enz/shTMrpcf3TF/gIVuNnxeuol+ool1w02gqnb0GCSWpNVb5b1+xD
	Jvxe1Cf9hXjR4uUd8pITAlERiQvjJa2A1OChEl9qXuqeaRmr/VcePcJu+s7J9J1E98d67WxC5RI0w
	X63E6uj3E5rjWz775Y84YeuQWh+vnnL0Vt7ZKKoKocQwFxf9LLjY6JigEdRfCT6S5SCPh/KxSyNN+
	FqgnMTuSM9x8vRZK/QqfCiZvGRPVP15jFfrlxGLVBfCQGspuR0Y+8j5x9kl9KjcGSp+NtYIKuFUV8
	iA9EfzgOAHrJqwRH098A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLxP-0004ic-D6; Wed, 07 Aug 2019 13:26:23 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLxB-0004hu-Nh
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 13:26:11 +0000
Received: by mail-ed1-x534.google.com with SMTP id e3so86236226edr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 06:26:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0QjvmREjR45+76WZT5ZncbNe7ZAOKj+et9L3PIgmwQw=;
 b=oYuUKvAzdP81mVXUtzj+k6v54pdMGU1p5UK5sB62IYRmd5SSHUkIDZB7WieiTik0ZH
 LF94L0AF/0JyJoq+bfHes/U1HX3sFPQDSTVseCCBP8OyP4nErrFHEQ1cWmNgVyeZJOlj
 cT9iEDoYyRObTElNDzF/9Ig1NC8m34WFPknk4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0QjvmREjR45+76WZT5ZncbNe7ZAOKj+et9L3PIgmwQw=;
 b=UvDABxpj7xzGGN12waBkF9fXr7Q0gr4mzKZ3QWmUf8WrLMWNUq7yfxncX836mcEwJg
 blg5hooQ6Fb/1iyq62+KjChesGQFfRKw8/moq3RHpWSvbskmQFTzW0U9FqMX/9D+GK5C
 PGvswuREpjYiwMuYIpqTB3CFz8VyePoJm03E4s2/I5fhEmikqOkW4X3LW3wtRvxHyHlF
 MUWPRTeDaX/GJeKJCBw4PMVvzdfo7Jp6wV4nsROI0cNCzHc3pxsb859nHzltHhGfP6mG
 dOMrEcUYL3YtIJ0bjOZYhVLINlrs+HDtFLgsQoD2Qk3V7fvcNbGOGE8dj9FAfjZoCURX
 ECmQ==
X-Gm-Message-State: APjAAAXpyLJYar6VQES/TA/yei5loGDsf8gzIC6/uJgjwuyKtiYDVNMK
 fKdxq1+t/455FIu0VH+hC0qpMA0NzIJWJQ==
X-Google-Smtp-Source: APXvYqyyiycNfLAkm9Pk+f1TyNK3hVy95boVmEt4zKR5I001uqIANBoNty07QU6XcXNwVVjLEQ66pw==
X-Received: by 2002:a05:6402:1285:: with SMTP id
 w5mr9883776edv.36.1565184367446; 
 Wed, 07 Aug 2019 06:26:07 -0700 (PDT)
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com.
 [209.85.221.52])
 by smtp.gmail.com with ESMTPSA id e14sm2929410ejj.69.2019.08.07.06.26.06
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 07 Aug 2019 06:26:06 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id p17so91360887wrf.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 06:26:06 -0700 (PDT)
X-Received: by 2002:adf:fe10:: with SMTP id n16mr10531176wrr.92.1565184365643; 
 Wed, 07 Aug 2019 06:26:05 -0700 (PDT)
MIME-Version: 1.0
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-8-jungo.lin@mediatek.com>
 <20190710095646.GB181405@chromium.org>
 <1563616681.1212.386.camel@mtksdccf07>
 <CAAFQd5AmAXm1T0eLPiUTFLv9qiKxe-wZGyXxk0jvge+EanZ3FQ@mail.gmail.com>
 <1564125828.1212.600.camel@mtksdccf07>
 <CAAFQd5D5m=gGViSY++r5uUS1+91y9=Gpcss1dEXrin_T07H+uQ@mail.gmail.com>
 <1565143899.9157.19.camel@mtksdccf07>
In-Reply-To: <1565143899.9157.19.camel@mtksdccf07>
From: Tomasz Figa <tfiga@chromium.org>
Date: Wed, 7 Aug 2019 22:25:52 +0900
X-Gmail-Original-Message-ID: <CAAFQd5CfWOvGTUZLJ3Gu6L6ptjQiL7z7sSGG4ktonzCdqieqbQ@mail.gmail.com>
Message-ID: <CAAFQd5CfWOvGTUZLJ3Gu6L6ptjQiL7z7sSGG4ktonzCdqieqbQ@mail.gmail.com>
Subject: Re: [RFC,v3 7/9] media: platform: Add Mediatek ISP P1 device driver
To: Jungo Lin <jungo.lin@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_062609_800106_8CC54502 
X-CRM114-Status: GOOD (  45.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:534 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 =?UTF-8?B?U2VhbiBDaGVuZyAo6YSt5piH5byYKQ==?= <sean.cheng@mediatek.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 =?UTF-8?B?UnlubiBXdSAo5ZCz6IKy5oGpKQ==?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 =?UTF-8?B?UnlhbiBZdSAo5L2Z5a2f5L+uKQ==?= <ryan.yu@mediatek.com>,
 =?UTF-8?B?RnJhbmtpZSBDaGl1ICjpgrHmloflh7Ep?= <frankie.chiu@mediatek.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Matthias Brugger <matthias.bgg@gmail.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 =?UTF-8?B?RnJlZGVyaWMgQ2hlbiAo6Zmz5L+K5YWDKQ==?= <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 11:11 AM Jungo Lin <jungo.lin@mediatek.com> wrote:
>
> Hi, Tomasz:
>
> On Tue, 2019-08-06 at 18:47 +0900, Tomasz Figa wrote:
> > Hi Jungo,
> >
> > On Fri, Jul 26, 2019 at 4:24 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > >
> > > Hi, Tomasz:
> > >
> > > On Thu, 2019-07-25 at 18:23 +0900, Tomasz Figa wrote:
> > > > .Hi Jungo,
> > > >
> > > > On Sat, Jul 20, 2019 at 6:58 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> > > > >
> > > > > Hi, Tomasz:
> > > > >
> > > > > On Wed, 2019-07-10 at 18:56 +0900, Tomasz Figa wrote:
> > > > > > Hi Jungo,
> > > > > >
> > > > > > On Tue, Jun 11, 2019 at 11:53:42AM +0800, Jungo Lin wrote:
> > [snip]
>
> I just keep some questions to be clarified.
> [snip]
>
> > > > > > > +           isp_dev->meta0_vb2_index = meta0_vb2_index;
> > > > > > > +           isp_dev->meta1_vb2_index = meta1_vb2_index;
> > > > > > > +   } else {
> > > > > > > +           if (irq_status & SOF_INT_ST) {
> > > > > > > +                   isp_dev->current_frame = hw_frame_num;
> > > > > > > +                   isp_dev->meta0_vb2_index = meta0_vb2_index;
> > > > > > > +                   isp_dev->meta1_vb2_index = meta1_vb2_index;
> > > > > > > +           }
> > > > > > > +           irq_handle_notify_event(isp_dev, irq_status, dma_status, 1);
> > > > > > > +   }
> > > > > >
> > > > > > The if and else blocks do almost the same things just in different order. Is
> > > > > > it really expected?
> > > > > >
> > > > >
> > > > > If we receive HW_PASS1_DON_ST & SOF_INT_ST IRQ events at the same time,
> > > > > the correct sequence should be handle HW_PASS1_DON_ST firstly to check
> > > > > any de-queued frame and update the next frame setting later.
> > > > > Normally, this is a corner case or system performance issue.
> > > >
> > > > So it sounds like HW_PASS1_DON_ST means that all data from current
> > > > frame has been written, right? If I understand your explanation above
> > > > correctly, that would mean following handling of each interrupt:
> > > >
> > > > HW_PASS1_DON_ST:
> > > >  - CQ executes with next CQ buffer to prepare for next frame. <- how
> > > > is this handled? does the CQ hardware automatically receive this event
> > > > from the ISP hadware?
> > > >  - return VB2 buffers,
> > > >  - complete requests.
> > > >
> > > > SOF_INT_ST:
> > > >  - send VSYNC event to userspace,
> > > >  - program next CQ buffer to CQ,
> > > >
> > > > SW_PASS1_DON_ST:
> > > >  - reclaim CQ buffer and enqueue next frame to composing if available
> > > >
> > >
> > > Sorry for our implementation of HW_PASS1_DON_ST.
> > > It is confusing.
> > > Below is the revised version based on your conclusion.
> > > So in our new implemmenation, we just handle SOF_INT_ST &
> > > SW_PASS1_DON_ST events. We just add one warning message for
> > > HW_PASS1_DON_ST
> > >
> > > HW_PASS1_DON_ST:
> > > - CQ executes with next CQ buffer to prepare for next frame.
> > >
> > > SOF_INT_ST:
> > > - send VSYNC event to userspace,
> > > - program next CQ buffer to CQ,
> > >
> > > SW_PASS1_DON_ST:
> > > - reclaim CQ buffer and enqueue next frame to composing if available
> > > - return VB2 buffers,
> > > - complete requests.
> > >
> > > For CQ HW operations, it is listed below:
> > >
> > > a. The CQ buffer has two kinds of information
> > >  - Which ISP registers needs to be updated.
> > >  - Where the corresponding ISP register data to be read.
> > > b. The CQ buffer loading procedure is triggered by HW_PASS1_DONT_ST IRQ
> > > event periodically.
> > >  - Normally, if the ISP HW receives the completed frame and it will
> > > trigger W_PASS1_DONT_ST IRQ and perform CQ buffer loading immediately.
> > > -  So the CQ buffer loading is performed by ISP HW automatically.
> > > c. The ISP HW will read CQ base address register(REG_CQ_THR0_BASEADDR)
> > > to decide which CQ buffer is loaded.
> > >    - So we configure the next CQ base address in SOF.
> > > d. For CQ buffer loading, CQ will read the ISP registers from CQ buffer
> > > and update the ISP register values into HW.
> > >    - SCP composer will compose one dummy CQ buffer and assign it to
> > > REG_CQ_THR0_BASEADDR of each CQ buffer.
> > >    - Dummy CQ buffer has no updated ISP registers comparing with other
> > > CQ buffers.
> > >    - With this design, if there is no updated new CQ buffer by driver
> > > which may be caused no en-queue frames from user space. The CQ HW will
> > > load dummy CQ buffer and do nothing.
> >
> > Does the set of registers programmed by CQ include destination buffer
> > addresses to? If yes, we would end up overwriting previous frames if
> > no new buffers are provided.
> >
>
> Yes, the buffer addresses are changed per frame request. We need to
> compose CQ to include these DMA destination addresses. For your concern,
> we have DMA flow buffer control (FBC) in HW. If there is no FBC counter
> increased due to no buffer for each DMA, the ISP HW doesn't output the
> data to the corresponding DMA address.
>
> Below is the simple descriptor of CQ buffer.
> a. ISP registers in tuning buffer, including 3A registers.
> b. All capture buffers informations.
>    - DMA buffer destination address
>    - FBC counter
> c. Some specif ISP registers for meta DMAs, such as LCE or LMVO.
> d. frame sequence number register
>

Okay, with the FBC counter it sounds fine. Thanks for clarifying.

> > > f. The CQ buffer loading is guaranteed by HW to finish before the next
> > > SOF.
> > >
> >
> > Okay, thanks a lot for the explanation. This is much more clear now.
> >
> > [snip]
> > > > > > > +static const struct dev_pm_ops mtk_isp_pm_ops = {
> > > > > > > +   SET_SYSTEM_SLEEP_PM_OPS(mtk_isp_suspend, mtk_isp_resume)
> > > > > > > +   SET_RUNTIME_PM_OPS(mtk_isp_suspend, mtk_isp_resume, NULL)
> > > > > >
> > > > > > For V4L2 drivers system and runtime PM ops would normally be completely
> > > > > > different. Runtime PM ops would be called when the hardware is idle already
> > > > > > or is about to become active. System PM ops would be called at system power
> > > > > > state change and the hardware might be both idle or active. Please also see
> > > > > > my comments to mtk_isp_suspend() and mtk_isp_resume() above.
> > > > > >
> > > > >
> > > > > Here is the new implementation. It should be clear to show the
> > > > > difference between system and runtime PM ops.
> > > > >
> > > > > static const struct dev_pm_ops mtk_isp_pm_ops = {
> > > > >         SET_SYSTEM_SLEEP_PM_OPS(pm_runtime_force_suspend,
> > > > >                                 pm_runtime_force_resume)
> > > > >         SET_RUNTIME_PM_OPS(mtk_isp_runtime_suspend, mtk_isp_runtime_resume,
> > > > > NULL)
> > > > > };
> > > >
> > > > That's still not correct. In runtime suspend/resume ops we already are
> > > > not streaming anymore, because we call pm_runtime_get/put_*() when
> > > > starting and stopping streaming. In system suspend/resume ops we might
> > > > be streaming and that's when we need to stop the hardware and wait for
> > > > it to finish. Please implement these ops separately.
> > > >
> > > > Best regards,
> > > > Tomasz
> > >
> > >
> > > Ok, got your point.
> > > Below is the new implementation for your review.
> > >
> > > static int mtk_isp_pm_suspend(struct device *dev)
> > > {
> > >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> > >         u32 val;
> > >         int ret;
> > >
> > >         dev_dbg(dev, "- %s\n", __func__);
> > >
> > >         /* Check ISP is streaming or not */
> > >         if (!p1_dev->cam_dev.streaming)
> > >                 goto done;
> >
> > We would normally check here for pm_runtime_suspended(). Although they
> > both should be equivalent. Still, there is no need to call
> > pm_runtime_force_suspend() if the latter is true, so we could just
> > return 0 instantly.
> >
>
> Ok, here is the fixed version.
>
> static int mtk_isp_pm_suspend(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>         u32 val;
>         int ret;
>
>         dev_dbg(dev, "- %s\n", __func__);
>
>         if (pm_runtime_suspended(dev))
>                 return 0;
>
>         /* Disable ISP's view finder and wait for TG idle */
>         dev_dbg(dev, "cam suspend, disable VF\n");
>         val = readl(p1_dev->regs + REG_TG_VF_CON);
>         writel(val & (~TG_VF_CON_VFDATA_EN), p1_dev->regs + REG_TG_VF_CON);
>         ret = readl_poll_timeout_atomic(p1_dev->regs + REG_TG_INTER_ST, val,
>                                         (val & TG_CS_MASK) == TG_IDLE_ST,
>                                         USEC_PER_MSEC, MTK_ISP_STOP_HW_TIMEOUT);
>         if (ret)
>                 dev_warn(dev, "can't stop HW:%d:0x%x\n", ret, val);

What happens in this case? Is it safe to continue?

>
>         /* Disable CMOS */
>         val = readl(p1_dev->regs + REG_TG_SEN_MODE);
>         writel(val & (~TG_SEN_MODE_CMOS_EN), p1_dev->regs + REG_TG_SEN_MODE);
>
>         /* Force ISP HW to idle */
>         ret = pm_runtime_force_suspend(dev);
>         if (ret)
>                 return ret;

We should probably reenable the hardware if the above failed, so that
we hopefully end up in the same state as before the suspend.

>
>         return 0;
> }
> [snip]
>
> > > static int mtk_isp_pm_resume(struct device *dev)
> > > {
> > >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> > >         u32 val;
> > >         int ret;
> > >
> > >         dev_dbg(dev, "- %s\n", __func__);
> > >
> > >         /* Force ISP HW to resume if needed */
> > >         ret = pm_runtime_force_resume(dev);
> > >         if (ret)
> > >                 return ret;
> >
> > We should do this conditionally based on what pm_runtime_suspended()
> > returns. If it's non-zero then we can just return 0 instantly.
> >
>
> Ok, here is the fixed version.
>
> static int mtk_isp_pm_resume(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>         u32 val;
>         int ret;
>
>         dev_dbg(dev, "- %s\n", __func__);
>
>         if (pm_runtime_suspended(dev))
>                 return 0;
>
>         /* Force ISP HW to resume */
>         ret = pm_runtime_force_resume(dev);
>         if (ret)
>                 return ret;
>
>         /* Enable CMOS */
>         dev_dbg(dev, "cam resume, enable CMOS/VF\n");
>         val = readl(p1_dev->regs + REG_TG_SEN_MODE);
>         writel(val | TG_SEN_MODE_CMOS_EN, p1_dev->regs + REG_TG_SEN_MODE);
>
>         /* Enable VF */
>         val = readl(p1_dev->regs + REG_TG_VF_CON);
>         writel(val | TG_VF_CON_VFDATA_EN, p1_dev->regs + REG_TG_VF_CON);
>
>         return 0;
> }
>
> [snip]
>
> > > static int mtk_isp_runtime_suspend(struct device *dev)
> > > {
> > >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> > >
> > >         dev_dbg(dev, "- %s\n", __func__);
> > >
> > >         if (pm_runtime_suspended(dev))
> > >                 return 0;
> >
> > Sorry, I guess I wasn't clear in my reply. It's not possible to get
> > this callback called if the device is already runtime suspended.
> >
>
> Ok, got it. Need to remove pm_runtime_suspended(dev) checking and move
> it into mtk_isp_pm_* functions. If I still don't get your point, could
> you kindly provide one sample driver for reference?

The above implementation is okay, thanks. :)

> Based on current
> implementation, it is similar to below drivers.
> https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/mtk-mdp/mtk_mdp_core.c#L255
> https://elixir.bootlin.com/linux/latest/source/drivers/media/platform/exynos4-is/fimc-is-i2c.c#L113
>

The first one is an m2m device so it has slightly different rules -
the runtime PM is allowed to suspend between frames if the idle time
is long enough. The second one is a dummy driver for some fake i2c
bus, so it doesn't really have any meaningful implementation.

I think you could take a look at
https://elixir.bootlin.com/linux/v5.3-rc3/source/drivers/media/platform/exynos4-is/fimc-lite.c#L1550
, which is an online capture device too.

>
> static int mtk_isp_runtime_suspend(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>
>         dev_dbg(dev, "%s:disable clock\n", __func__);
>         clk_bulk_disable_unprepare(p1_dev->num_clks, p1_dev->clks);
>
>         return 0;
> }
>
> [snip]
>
> > > static int mtk_isp_runtime_resume(struct device *dev)
> > > {
> > >         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
> > >         int ret;
> > >
> > >         dev_dbg(dev, "- %s\n", __func__);
> > >
> > >         if (pm_runtime_suspended(dev))
> > >                 return 0;
> >
> > In this case the above call would always return non-zero, so the
> > behavior wouldn't be very good.
> >
>
> Same as above.
>
> static int mtk_isp_runtime_resume(struct device *dev)
> {
>         struct mtk_isp_p1_device *p1_dev = dev_get_drvdata(dev);
>         int ret;
>
>         dev_dbg(dev, "%s:enable clock\n", __func__);
>         ret = clk_bulk_prepare_enable(p1_dev->num_clks, p1_dev->clks);
>         if (ret) {
>                 dev_err(dev, "failed to enable clock:%d\n", ret);
>                 return ret;
>         }
>
>         return 0;
> }

Makes sense, thanks!

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
