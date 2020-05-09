Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F451CBC73
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 04:25:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3zfsnYcXd6AgXO+oiojlKjcEBC7IHI/pjzMTqzXyMFk=; b=t/ZaKDhwTfaDq3
	jUJkR7Tp0W82LphBAtYeF2ds7e+WDniIRvGwWPkpfL6kqEl6RvJYMrsD2BkPCI/eeKSIbEvXLWYfO
	vhNGOE5OCeQ3yFMODceej3QQTUShFJlHXNrh/6PfhegOPcI+SWQzHwpTczfvT8Wf+51kKLQwGZTo6
	AkPlUnHPUNqEAf2louF3+/UzMv5C4/MXOyhmBE1UxLfwil52ltzwUiB8EkVocnpXQPqONRaN6PfxY
	+PYGMDQPDRIDgJCetmXR4qKy0ntWhuBx7eQsaT1ZaVXC8CsBR8GapDunXOiMqj/OvxGBwof1bQ68i
	bZs47oJ6bLHQQJMwz04Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXFB7-0005N9-6j; Sat, 09 May 2020 02:25:25 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXFAt-0004Qn-1b; Sat, 09 May 2020 02:25:12 +0000
X-UUID: 61cddcb16d8e41fa804a7288033bdb47-20200508
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=e29juNg1HoLgK0xyBynVp9fscLLhjBSGEnzupie2VT4=; 
 b=NkcZRKPVYkJ6bdNeSqpOoZEUs000+iow4MNA41ijaDVmFM7jMcHlZzqptQRUd2/0ZJj5QpSrwnXEsSDsmYuYevGpmL9caaucVE1JzTdINTfT3eFkbcMHtVkp6V20cUt8V9Mr54pHYgY+2df6bRQp34Stp5v5C/3THSJZgpSQ+T4=;
X-UUID: 61cddcb16d8e41fa804a7288033bdb47-20200508
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1493148401; Fri, 08 May 2020 18:25:02 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 8 May 2020 19:25:03 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 9 May 2020 10:24:55 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 10:24:54 +0800
Message-ID: <1588991026.8804.235.camel@mhfsdcap03>
Subject: Re: [V5, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Sat, 9 May 2020 10:23:46 +0800
In-Reply-To: <20200508211319.GJ9190@paasikivi.fi.intel.com>
References: <20200502161727.30463-1-dongchun.zhu@mediatek.com>
 <20200502161727.30463-3-dongchun.zhu@mediatek.com>
 <20200506151352.GZ9190@paasikivi.fi.intel.com>
 <1588855524.8804.168.camel@mhfsdcap03>
 <20200507131220.GC9190@paasikivi.fi.intel.com>
 <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
 <1588907288.8804.188.camel@mhfsdcap03>
 <20200508211319.GJ9190@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3BBB81766EA864AEE615CDE2A4B27D9C91784377AC6494691DAE4A17F0C047FD2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_192511_107857_7634E07D 
X-CRM114-Status: GOOD (  26.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Tomasz Figa <tfiga@chromium.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Louis Kuo <louis.kuo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Cao Bing Bu <bingbu.cao@intel.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Sat, 2020-05-09 at 00:13 +0300, Sakari Ailus wrote:
> Hi Dongchun,
> 
> On Fri, May 08, 2020 at 11:08:08AM +0800, Dongchun Zhu wrote:
> > Hi Sakari, Tomasz,
> > 
> > Thanks for the review.
> > 
> > On Thu, 2020-05-07 at 15:46 +0200, Tomasz Figa wrote:
> > > Hi Sakari, Dongchun,
> > > 
> > > On Thu, May 7, 2020 at 3:12 PM Sakari Ailus
> > > <sakari.ailus@linux.intel.com> wrote:
> > > >
> > > > HI Dongchun,
> > > >
> > > > On Thu, May 07, 2020 at 08:45:24PM +0800, Dongchun Zhu wrote:
> > > > > Hi Sakari,
> > > > >
> > > > > Thanks for the review.
> > > > >
> > > > > On Wed, 2020-05-06 at 18:13 +0300, Sakari Ailus wrote:
> > > > > > Hi Dongchun,
> > > > > >
> > > > > > On Sun, May 03, 2020 at 12:17:27AM +0800, Dongchun Zhu wrote:
> > > > > > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > > > > > control to set the desired focus via IIC serial interface.
> > > > > > >
> > > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > ---
> > > > > > >  MAINTAINERS                |   1 +
> > > > > > >  drivers/media/i2c/Kconfig  |  11 ++
> > > > > > >  drivers/media/i2c/Makefile |   1 +
> > > > > > >  drivers/media/i2c/dw9768.c | 440 +++++++++++++++++++++++++++++++++++++++++++++
> > > > > > >  4 files changed, 453 insertions(+)
> > > > > > >  create mode 100644 drivers/media/i2c/dw9768.c
> > > > > > >
> > > > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > > > index 8d72c41..c92dc99 100644
> > > > > > > --- a/MAINTAINERS
> > > > > > > +++ b/MAINTAINERS
> > > > > > > @@ -5157,6 +5157,7 @@ L:  linux-media@vger.kernel.org
> > > > > > >  S:       Maintained
> > > > > > >  T:       git git://linuxtv.org/media_tree.git
> > > > > > >  F:       Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > > > > > +F:       drivers/media/i2c/dw9768.c
> > > > > > >
> > > > > > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > > > > >  M:       Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > > > > index 125d596..6a3f9da 100644
> > > > > > > --- a/drivers/media/i2c/Kconfig
> > > > > > > +++ b/drivers/media/i2c/Kconfig
> > > > > > > @@ -1040,6 +1040,17 @@ config VIDEO_DW9714
> > > > > > >     capability. This is designed for linear control of
> > > > > > >     voice coil motors, controlled via I2C serial interface.
> > > > > > >
> > > > > > > +config VIDEO_DW9768
> > > > > > > + tristate "DW9768 lens voice coil support"
> > > > > > > + depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > > > + depends on VIDEO_V4L2_SUBDEV_API
> > > > > >
> > > > > > Please check how this works in the media tree master branch now --- it's
> > > > > > largely select based.
> > > > > >
> > > > >
> > > > > The actuator driver uses some structures that require the
> > > > > VIDEO_V4L2_SUBDEV_API code, so here we add VIDEO_V4L2_SUBDEV_API
> > > > > dependency to avoid possible build error when it's not enabled.
> > > >
> > > > Please make sure this works with current media tree master. Right now it
> > > > does not.
> > > >
> > > 
> > > Dongchun, as Sakari said, please make sure to base the patches on the
> > > master branch of the media tree.
> > > (https://git.linuxtv.org/media_tree.git/). The approach for Kconfig
> > > dependency selection there seems to have changed recently.
> > > 
> > 
> > I searched the patches on the media tree master branch.
> > It seems that we need to remove the VIDEO_V4L2_SUBDEV_API dependency in
> > Kconfig, and add #ifdef CONFIG_VIDEO_V4L2_SUBDEV_API to include
> > v4l2-subdev code.
> > The change mainly is to make build pass, and don't return ENOTTY if
> > SUBDEV_API is not set.
> > Am I right?
> 
> Please see Kconfig entries for other similar drivers from Dongwoon.
> 

Sorry for the mistake :-)
Just found the current media tree master branch code...
I would update Kconfig entries in next release by referring to:
https://git.linuxtv.org/media_tree.git/tree/drivers/media/i2c/Kconfig

...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
