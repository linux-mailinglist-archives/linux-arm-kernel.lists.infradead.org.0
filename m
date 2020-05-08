Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A791CA17F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 05:29:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nU2XG31m46rwW7uUY0GModmhanQR2djXmF2SnyBHiuQ=; b=D07hH70WGA5eIN
	on/7ORRh95t0Jz8FTrNDKLMb91adZTwE19txmImHZkOJCwnHWnvntCmh2n2123k3eDfYhaySJRpyA
	kdnBlXPa96YcM7WSsU988581uGWwralGnAUMy7OygJvBFgS2v3db8tDd+W6oJfTZmZrmWcog+EH6m
	fpbhSQEB60acwPcPE6cyi7CvmNSRS5wpUCjDbCJ82OUPCd7ricMOw0coLYBZQEPGzw0xeO2ryGMzg
	FNCy8L+h10a/M3HYADuChP36x1W4YrkuoFAbRlLI5Shklqd8Nzhy85X1ETC9+P1XsrI2s4/usewXJ
	s7FFydMByLu/TFXuMsew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWtha-0006AZ-BQ; Fri, 08 May 2020 03:29:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWthL-00069O-UH; Fri, 08 May 2020 03:29:17 +0000
X-UUID: a9c32ce2699e42d2801649969ea19698-20200507
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=icQs5PDsZ+HS7pah9d3Y69qQhITqVAyFXAMdCV9xDH0=; 
 b=Fy3GJHb69C4fIfgtV1teujNTRbSQ6qDkS6dj2f6310683k2lNzOCvKKpTeKG1SLje2X3a+N8Kme8dk72x0RocNh7n8W8brdlOYqIgo9X8ylSechJC6huEH1NjEYSIdLUMCIijKlh48Ym5dnyD6ePA3XY/LSDJdNpnm7yd9b/Xko=;
X-UUID: a9c32ce2699e42d2801649969ea19698-20200507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1222480207; Thu, 07 May 2020 19:29:08 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 7 May 2020 20:29:08 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 8 May 2020 11:29:07 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 8 May 2020 11:29:04 +0800
Message-ID: <1588908477.8804.201.camel@mhfsdcap03>
Subject: Re: [V5, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Fri, 8 May 2020 11:27:57 +0800
In-Reply-To: <20200507135959.GD9190@paasikivi.fi.intel.com>
References: <20200502161727.30463-1-dongchun.zhu@mediatek.com>
 <20200502161727.30463-3-dongchun.zhu@mediatek.com>
 <20200506151352.GZ9190@paasikivi.fi.intel.com>
 <1588855524.8804.168.camel@mhfsdcap03>
 <20200507131220.GC9190@paasikivi.fi.intel.com>
 <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
 <20200507135959.GD9190@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B9B8DF3FDB241D7AE7B00BB849706813FFC5DFCAF7C46C704BD9235CB8F51AE52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_202915_992964_278AB406 
X-CRM114-Status: GOOD (  34.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing
 Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

Thanks for the review.

On Thu, 2020-05-07 at 17:00 +0300, Sakari Ailus wrote:
> Hi Tomasz,
> 
> On Thu, May 07, 2020 at 03:46:31PM +0200, Tomasz Figa wrote:
> > Hi Sakari, Dongchun,
> > 
> > On Thu, May 7, 2020 at 3:12 PM Sakari Ailus
> > <sakari.ailus@linux.intel.com> wrote:
> > >
> > > HI Dongchun,
> > >
> > > On Thu, May 07, 2020 at 08:45:24PM +0800, Dongchun Zhu wrote:
> > > > Hi Sakari,
> > > >
> > > > Thanks for the review.
> > > >
> > > > On Wed, 2020-05-06 at 18:13 +0300, Sakari Ailus wrote:
> > > > > Hi Dongchun,
> > > > >
> > > > > On Sun, May 03, 2020 at 12:17:27AM +0800, Dongchun Zhu wrote:
> > > > > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > > > > control to set the desired focus via IIC serial interface.
> > > > > >
> > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > ---
> > > > > >  MAINTAINERS                |   1 +
> > > > > >  drivers/media/i2c/Kconfig  |  11 ++
> > > > > >  drivers/media/i2c/Makefile |   1 +
> > > > > >  drivers/media/i2c/dw9768.c | 440 +++++++++++++++++++++++++++++++++++++++++++++
> > > > > >  4 files changed, 453 insertions(+)
> > > > > >  create mode 100644 drivers/media/i2c/dw9768.c
> > > > > >
> > > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > > index 8d72c41..c92dc99 100644
> > > > > > --- a/MAINTAINERS
> > > > > > +++ b/MAINTAINERS
> > > > > > @@ -5157,6 +5157,7 @@ L:  linux-media@vger.kernel.org
> > > > > >  S:       Maintained
> > > > > >  T:       git git://linuxtv.org/media_tree.git
> > > > > >  F:       Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > > > > +F:       drivers/media/i2c/dw9768.c
> > > > > >
> > > > > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > > > >  M:       Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > > > index 125d596..6a3f9da 100644
> > > > > > --- a/drivers/media/i2c/Kconfig
> > > > > > +++ b/drivers/media/i2c/Kconfig
> > > > > > @@ -1040,6 +1040,17 @@ config VIDEO_DW9714
> > > > > >     capability. This is designed for linear control of
> > > > > >     voice coil motors, controlled via I2C serial interface.
> > > > > >
> > > > > > +config VIDEO_DW9768
> > > > > > + tristate "DW9768 lens voice coil support"
> > > > > > + depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > > + depends on VIDEO_V4L2_SUBDEV_API
> > > > >
> > > > > Please check how this works in the media tree master branch now --- it's
> > > > > largely select based.
> > > > >
> > > >
> > > > The actuator driver uses some structures that require the
> > > > VIDEO_V4L2_SUBDEV_API code, so here we add VIDEO_V4L2_SUBDEV_API
> > > > dependency to avoid possible build error when it's not enabled.
> > >
> > > Please make sure this works with current media tree master. Right now it
> > > does not.
> > >
> > 
> > Dongchun, as Sakari said, please make sure to base the patches on the
> > master branch of the media tree.
> > (https://git.linuxtv.org/media_tree.git/). The approach for Kconfig
> > dependency selection there seems to have changed recently.
> > 
> > > >
> > > > > In general the patch seems fine to me, but please see the other comments
> > > > > below, too.
> > > > >
> > > > > > + depends on PM
> > > > > > + help
> > > > > > +   This is a driver for the DW9768 camera lens voice coil.
> > > > > > +   DW9768 is a 10 bit DAC with 100mA output current sink
> > > > > > +   capability. This is designed for linear control of
> > > > > > +   voice coil motors, controlled via I2C serial interface.
> > > > > > +
> > > > > >  config VIDEO_DW9807_VCM
> > > > > >   tristate "DW9807 lens voice coil support"
> > > > > >   depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > > > > > index 77bf7d0..4057476 100644
> > > > > > --- a/drivers/media/i2c/Makefile
> > > > > > +++ b/drivers/media/i2c/Makefile
> > > > > > @@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
> > > > > >  obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
> > > > > >  obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
> > > > > >  obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
> > > > > > +obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
> > > > > >  obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
> > > > > >  obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
> > > > > >  obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
> > > > > > diff --git a/drivers/media/i2c/dw9768.c b/drivers/media/i2c/dw9768.c
> > > > > > new file mode 100644
> > > > > > index 0000000..dd68534
> > > > > > --- /dev/null
> > > > > > +++ b/drivers/media/i2c/dw9768.c
> > > > > > @@ -0,0 +1,440 @@
> > > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > > +// Copyright (c) 2020 MediaTek Inc.
> > > > > > +
> > > > > > +#include <linux/delay.h>
> > > > > > +#include <linux/i2c.h>
> > > > > > +#include <linux/module.h>
> > > > > > +#include <linux/pm_runtime.h>
> > > > > > +#include <linux/regulator/consumer.h>
> > > > > > +#include <media/v4l2-async.h>
> > > > > > +#include <media/v4l2-ctrls.h>
> > > > > > +#include <media/v4l2-device.h>
> > > > > > +#include <media/v4l2-subdev.h>
> > > > > > +
> > > > > > +#define DW9768_NAME                              "dw9768"
> > > > > > +#define DW9768_MAX_FOCUS_POS                     (1024 - 1)
> > > > > > +/*
> > > > > > + * This sets the minimum granularity for the focus positions.
> > > > > > + * A value of 1 gives maximum accuracy for a desired focus position
> > > > > > + */
> > > > > > +#define DW9768_FOCUS_STEPS                       1
> > > > > > +
> > > > > > +/*
> > > > > > + * Ring control and Power control register
> > > > > > + * Bit[1] RING_EN
> > > > > > + * 0: Direct mode
> > > > > > + * 1: AAC mode (ringing control mode)
> > > > > > + * Bit[0] PD
> > > > > > + * 0: Normal operation mode
> > > > > > + * 1: Power down mode
> > > > > > + * DW9768 requires waiting time of Topr after PD reset takes place.
> > > > > > + */
> > > > > > +#define DW9768_RING_PD_CONTROL_REG               0x02
> > > > > > +#define DW9768_PD_MODE_OFF                       0x00
> > > > > > +#define DW9768_PD_MODE_EN                        BIT(0)
> > > > > > +#define DW9768_AAC_MODE_EN                       BIT(1)
> > > > > > +
> > > > > > +/*
> > > > > > + * DW9768 separates two registers to control the VCM position.
> > > > > > + * One for MSB value, another is LSB value.
> > > > > > + * DAC_MSB: D[9:8] (ADD: 0x03)
> > > > > > + * DAC_LSB: D[7:0] (ADD: 0x04)
> > > > > > + * D[9:0] DAC data input: positive output current = D[9:0] / 1023 * 100[mA]
> > > > > > + */
> > > > > > +#define DW9768_MSB_ADDR                          0x03
> > > > > > +#define DW9768_LSB_ADDR                          0x04
> > > > > > +#define DW9768_STATUS_ADDR                       0x05
> > > > > > +
> > > > > > +/*
> > > > > > + * AAC mode control & prescale register
> > > > > > + * Bit[7:5] Namely AC[2:0], decide the VCM mode and operation time.
> > > > > > + * 000 Direct(default)
> > > > > > + * 001 AAC2 0.48xTvib
> > > > > > + * 010 AAC3 0.70xTvib
> > > > > > + * 011 AAC4 0.75xTvib
> > > > > > + * 100 Reserved
> > > > > > + * 101 AAC8 1.13xTvib
> > > > > > + * 110 Reserved
> > > > > > + * 111 Reserved
> > > > > > + * Bit[2:0] Namely PRESC[2:0], set the internal clock dividing rate as follow.
> > > > > > + * 000 2
> > > > > > + * 001 1(default)
> > > > > > + * 010 1/2
> > > > > > + * 011 1/4
> > > > > > + * 100 8
> > > > > > + * 101 4
> > > > > > + * 110 Reserved
> > > > > > + * 111 Reserved
> > > > > > + */
> > > > > > +#define DW9768_AAC_PRESC_REG                     0x06
> > > > > > +#define DW9768_AAC3_SELECT_DIVIDING_RATE_1       0x41
> > > > >
> > > > > I guess we can start with these values. But I can't think of another option
> > > > > than putting them into DT if there are differences between what hardware
> > > > > platforms require.
> > > > >
> > > >
> > > > Let's have a discussion about this.
> > > > Now these non-default register settings represent one AAC operation
> > > > mode, this is one option and works for a given lens or a module.
> > > > If sometime in the future hardware platforms require another different
> > > > settings, then DT properties may need to be created.
> > >
> > > If these values indeed are specific to a given lens (and presumably also a
> > > spring), then I'd put them to DT right now --- we don't have drivers for
> > > these components the drivers of which could hold this information, nor it
> > > makes sense to add them just for that.
> > >
> > 
> > I tend to stay on the conservative side and only add DT properties
> > once there is really a need to do so. Right now we haven't seen any
> > system which would use different values of these parameters.
> 
> I think it's also conservative to put things that are system specific to
> DT. :-)
> 
> In practice we haven't put lens specific parameters to DT before, but
> that's because 1) devices that need them are old, and so are the drivers
> and the matter was not recognised at the time they were merged and 2) a lot
> of devices these days don't have such configuration registers.
> 
> That said, I don't have a strong opinion on this one, but I think putting
> this to DT would be a safer bet in the long run as this is specific to the
> board, not the device itself.
> 

In theory, lens parameter settings tend to be similar as sensor mode.
Current settings should be common and it is not board specific,
at least for our 2 projects/boards in hand.

In practice, for one set of lens parameters, it would be some
complicated to create DT properties as the driver indeed doesn't use
various values of these parameters.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
