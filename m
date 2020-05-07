Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9261C8D2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 16:00:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Dcp8B28hz5GHWTM132IqLN14kbfir1WXEG2cPHyWyyM=; b=G0Yalg4ZtD3eEm
	6hom7iVp2QcAiJW978T9VtBPi85YHDB3WOdql/RiKYJ+erfvBH/BkO/jQEjDGEIZFXqRtY5k/+fkg
	V8yH27urcEPOWDHmHNxcuQJ0pzk+nCKh/xcxajk7zt3zFT+c6er7FPG7SzlKWCDsDkEFtRbn//IVC
	3cYSAxI+Ck3G+GzVOCRqyK75WTy9qe53wE1+Vyqd8odpd6oLHMF9/80gPpVYFYIjUw0gZ5dTQ5c5f
	7rW+GtIVhYqvOwQKIiWEXUoSupPK+IUaTzN7Dm6Z9sTkyWYheozNsTT+fLF1MyzpLLkckvQa0vBB7
	PZgenVfsVIuuJFZ/ZPfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWh4X-0004Pe-5B; Thu, 07 May 2020 14:00:21 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWh4K-0003di-ID; Thu, 07 May 2020 14:00:10 +0000
IronPort-SDR: 8JKQLFB6bG2j4oF/q6s6wFlXq2eN0pbkxgXA/hdK7VtMTHIF7XPKdY/TakiURWml9DhOMQAAuG
 QcZJtWlhIWWQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:00:06 -0700
IronPort-SDR: nHg03Jtzxqxpk53+oPQicTxzPUA5TyRzpGZkoZRsE6KoOchQu219sne80JrX9id5bvkMNu5N7k
 jD6REUlx7y3Q==
X-IronPort-AV: E=Sophos;i="5.73,363,1583222400"; d="scan'208";a="251520648"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 07:00:02 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 2A3C820752; Thu,  7 May 2020 17:00:00 +0300 (EEST)
Date: Thu, 7 May 2020 17:00:00 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V5, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
Message-ID: <20200507135959.GD9190@paasikivi.fi.intel.com>
References: <20200502161727.30463-1-dongchun.zhu@mediatek.com>
 <20200502161727.30463-3-dongchun.zhu@mediatek.com>
 <20200506151352.GZ9190@paasikivi.fi.intel.com>
 <1588855524.8804.168.camel@mhfsdcap03>
 <20200507131220.GC9190@paasikivi.fi.intel.com>
 <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_070008_681882_11AC8D4D 
X-CRM114-Status: GOOD (  36.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Linus Walleij <linus.walleij@linaro.org>,
 Shengnan Wang =?utf-8?B?KOeOi+Wco+eUtyk=?= <shengnan.wang@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Thu, May 07, 2020 at 03:46:31PM +0200, Tomasz Figa wrote:
> Hi Sakari, Dongchun,
> 
> On Thu, May 7, 2020 at 3:12 PM Sakari Ailus
> <sakari.ailus@linux.intel.com> wrote:
> >
> > HI Dongchun,
> >
> > On Thu, May 07, 2020 at 08:45:24PM +0800, Dongchun Zhu wrote:
> > > Hi Sakari,
> > >
> > > Thanks for the review.
> > >
> > > On Wed, 2020-05-06 at 18:13 +0300, Sakari Ailus wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Sun, May 03, 2020 at 12:17:27AM +0800, Dongchun Zhu wrote:
> > > > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > > > control to set the desired focus via IIC serial interface.
> > > > >
> > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > ---
> > > > >  MAINTAINERS                |   1 +
> > > > >  drivers/media/i2c/Kconfig  |  11 ++
> > > > >  drivers/media/i2c/Makefile |   1 +
> > > > >  drivers/media/i2c/dw9768.c | 440 +++++++++++++++++++++++++++++++++++++++++++++
> > > > >  4 files changed, 453 insertions(+)
> > > > >  create mode 100644 drivers/media/i2c/dw9768.c
> > > > >
> > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > index 8d72c41..c92dc99 100644
> > > > > --- a/MAINTAINERS
> > > > > +++ b/MAINTAINERS
> > > > > @@ -5157,6 +5157,7 @@ L:  linux-media@vger.kernel.org
> > > > >  S:       Maintained
> > > > >  T:       git git://linuxtv.org/media_tree.git
> > > > >  F:       Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > > > +F:       drivers/media/i2c/dw9768.c
> > > > >
> > > > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > > >  M:       Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > > index 125d596..6a3f9da 100644
> > > > > --- a/drivers/media/i2c/Kconfig
> > > > > +++ b/drivers/media/i2c/Kconfig
> > > > > @@ -1040,6 +1040,17 @@ config VIDEO_DW9714
> > > > >     capability. This is designed for linear control of
> > > > >     voice coil motors, controlled via I2C serial interface.
> > > > >
> > > > > +config VIDEO_DW9768
> > > > > + tristate "DW9768 lens voice coil support"
> > > > > + depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > + depends on VIDEO_V4L2_SUBDEV_API
> > > >
> > > > Please check how this works in the media tree master branch now --- it's
> > > > largely select based.
> > > >
> > >
> > > The actuator driver uses some structures that require the
> > > VIDEO_V4L2_SUBDEV_API code, so here we add VIDEO_V4L2_SUBDEV_API
> > > dependency to avoid possible build error when it's not enabled.
> >
> > Please make sure this works with current media tree master. Right now it
> > does not.
> >
> 
> Dongchun, as Sakari said, please make sure to base the patches on the
> master branch of the media tree.
> (https://git.linuxtv.org/media_tree.git/). The approach for Kconfig
> dependency selection there seems to have changed recently.
> 
> > >
> > > > In general the patch seems fine to me, but please see the other comments
> > > > below, too.
> > > >
> > > > > + depends on PM
> > > > > + help
> > > > > +   This is a driver for the DW9768 camera lens voice coil.
> > > > > +   DW9768 is a 10 bit DAC with 100mA output current sink
> > > > > +   capability. This is designed for linear control of
> > > > > +   voice coil motors, controlled via I2C serial interface.
> > > > > +
> > > > >  config VIDEO_DW9807_VCM
> > > > >   tristate "DW9807 lens voice coil support"
> > > > >   depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > diff --git a/drivers/media/i2c/Makefile b/drivers/media/i2c/Makefile
> > > > > index 77bf7d0..4057476 100644
> > > > > --- a/drivers/media/i2c/Makefile
> > > > > +++ b/drivers/media/i2c/Makefile
> > > > > @@ -24,6 +24,7 @@ obj-$(CONFIG_VIDEO_SAA6752HS) += saa6752hs.o
> > > > >  obj-$(CONFIG_VIDEO_AD5820)  += ad5820.o
> > > > >  obj-$(CONFIG_VIDEO_AK7375)  += ak7375.o
> > > > >  obj-$(CONFIG_VIDEO_DW9714)  += dw9714.o
> > > > > +obj-$(CONFIG_VIDEO_DW9768)  += dw9768.o
> > > > >  obj-$(CONFIG_VIDEO_DW9807_VCM)  += dw9807-vcm.o
> > > > >  obj-$(CONFIG_VIDEO_ADV7170) += adv7170.o
> > > > >  obj-$(CONFIG_VIDEO_ADV7175) += adv7175.o
> > > > > diff --git a/drivers/media/i2c/dw9768.c b/drivers/media/i2c/dw9768.c
> > > > > new file mode 100644
> > > > > index 0000000..dd68534
> > > > > --- /dev/null
> > > > > +++ b/drivers/media/i2c/dw9768.c
> > > > > @@ -0,0 +1,440 @@
> > > > > +// SPDX-License-Identifier: GPL-2.0
> > > > > +// Copyright (c) 2020 MediaTek Inc.
> > > > > +
> > > > > +#include <linux/delay.h>
> > > > > +#include <linux/i2c.h>
> > > > > +#include <linux/module.h>
> > > > > +#include <linux/pm_runtime.h>
> > > > > +#include <linux/regulator/consumer.h>
> > > > > +#include <media/v4l2-async.h>
> > > > > +#include <media/v4l2-ctrls.h>
> > > > > +#include <media/v4l2-device.h>
> > > > > +#include <media/v4l2-subdev.h>
> > > > > +
> > > > > +#define DW9768_NAME                              "dw9768"
> > > > > +#define DW9768_MAX_FOCUS_POS                     (1024 - 1)
> > > > > +/*
> > > > > + * This sets the minimum granularity for the focus positions.
> > > > > + * A value of 1 gives maximum accuracy for a desired focus position
> > > > > + */
> > > > > +#define DW9768_FOCUS_STEPS                       1
> > > > > +
> > > > > +/*
> > > > > + * Ring control and Power control register
> > > > > + * Bit[1] RING_EN
> > > > > + * 0: Direct mode
> > > > > + * 1: AAC mode (ringing control mode)
> > > > > + * Bit[0] PD
> > > > > + * 0: Normal operation mode
> > > > > + * 1: Power down mode
> > > > > + * DW9768 requires waiting time of Topr after PD reset takes place.
> > > > > + */
> > > > > +#define DW9768_RING_PD_CONTROL_REG               0x02
> > > > > +#define DW9768_PD_MODE_OFF                       0x00
> > > > > +#define DW9768_PD_MODE_EN                        BIT(0)
> > > > > +#define DW9768_AAC_MODE_EN                       BIT(1)
> > > > > +
> > > > > +/*
> > > > > + * DW9768 separates two registers to control the VCM position.
> > > > > + * One for MSB value, another is LSB value.
> > > > > + * DAC_MSB: D[9:8] (ADD: 0x03)
> > > > > + * DAC_LSB: D[7:0] (ADD: 0x04)
> > > > > + * D[9:0] DAC data input: positive output current = D[9:0] / 1023 * 100[mA]
> > > > > + */
> > > > > +#define DW9768_MSB_ADDR                          0x03
> > > > > +#define DW9768_LSB_ADDR                          0x04
> > > > > +#define DW9768_STATUS_ADDR                       0x05
> > > > > +
> > > > > +/*
> > > > > + * AAC mode control & prescale register
> > > > > + * Bit[7:5] Namely AC[2:0], decide the VCM mode and operation time.
> > > > > + * 000 Direct(default)
> > > > > + * 001 AAC2 0.48xTvib
> > > > > + * 010 AAC3 0.70xTvib
> > > > > + * 011 AAC4 0.75xTvib
> > > > > + * 100 Reserved
> > > > > + * 101 AAC8 1.13xTvib
> > > > > + * 110 Reserved
> > > > > + * 111 Reserved
> > > > > + * Bit[2:0] Namely PRESC[2:0], set the internal clock dividing rate as follow.
> > > > > + * 000 2
> > > > > + * 001 1(default)
> > > > > + * 010 1/2
> > > > > + * 011 1/4
> > > > > + * 100 8
> > > > > + * 101 4
> > > > > + * 110 Reserved
> > > > > + * 111 Reserved
> > > > > + */
> > > > > +#define DW9768_AAC_PRESC_REG                     0x06
> > > > > +#define DW9768_AAC3_SELECT_DIVIDING_RATE_1       0x41
> > > >
> > > > I guess we can start with these values. But I can't think of another option
> > > > than putting them into DT if there are differences between what hardware
> > > > platforms require.
> > > >
> > >
> > > Let's have a discussion about this.
> > > Now these non-default register settings represent one AAC operation
> > > mode, this is one option and works for a given lens or a module.
> > > If sometime in the future hardware platforms require another different
> > > settings, then DT properties may need to be created.
> >
> > If these values indeed are specific to a given lens (and presumably also a
> > spring), then I'd put them to DT right now --- we don't have drivers for
> > these components the drivers of which could hold this information, nor it
> > makes sense to add them just for that.
> >
> 
> I tend to stay on the conservative side and only add DT properties
> once there is really a need to do so. Right now we haven't seen any
> system which would use different values of these parameters.

I think it's also conservative to put things that are system specific to
DT. :-)

In practice we haven't put lens specific parameters to DT before, but
that's because 1) devices that need them are old, and so are the drivers
and the matter was not recognised at the time they were merged and 2) a lot
of devices these days don't have such configuration registers.

That said, I don't have a strong opinion on this one, but I think putting
this to DT would be a safer bet in the long run as this is specific to the
board, not the device itself.

-- 
Regards,

Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
