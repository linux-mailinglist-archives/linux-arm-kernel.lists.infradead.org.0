Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F61CEBA6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 05:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vlmWCBAbkpbKKgKqjw7pzWKKm5P+Lg7WUH37VwLm+6c=; b=Pd5KDyFOAYL2i3
	IX5lCP3WIvvgD1TtSk8xH1GaMiLiFJ/NHf/BIpkJXVcheBkIW0XJFG5NbvlmkPAEsSdOhTLzVJAdJ
	EAnTHp2V0ViCXAAG8Dqiv+3i8ASR6tlItGY6vbL6Lqj1l8f6epWuQ1fiTz30xFpx8ogCDQezPrjR5
	gv6EpXf16jCQGsN3rz/nVtmJ09OGQiPSF1H+v+PUWG5YvferzaCbKuZcE3LAE5EJLG9UhdY2mzQ5G
	U+eS6ZU9B6BCvtrpX6mAf2ulf/9zNlILQZQAiuOdHfgilLhk4eNKVyW2mgGhzye9unwAfGBL3OJ3c
	DEkOcrn0P3hJYoPWgrzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYLp0-0005pB-Rn; Tue, 12 May 2020 03:43:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYLop-0005nh-RG; Tue, 12 May 2020 03:43:02 +0000
X-UUID: 39ec0487233e40f697d9d9a33aa514fb-20200511
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=gzRrirgWI6RFHcvKQwsR25zvfvdlxabazbvPiYB63TY=; 
 b=YoNoqwv/g1QhmEL3TLi2w4GEMQT/sWRjkxCQcxiBY0imVB2Yjv6EFxPs8MzNlKzmrXjLV+MQRBEZM2cv0El5G7wEPtKzOa0fExCLbV8KKcZuWUVF2XmPTT7o7XedcqXsepGsZmHFmwMU3DtmtY/NdlgNNtWt+Sy2hXGshnF0bp4=;
X-UUID: 39ec0487233e40f697d9d9a33aa514fb-20200511
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 781838054; Mon, 11 May 2020 19:42:56 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 11 May 2020 20:34:42 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Tue, 12 May 2020 11:34:38 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Tue, 12 May 2020 11:34:37 +0800
Message-ID: <1589254403.8804.306.camel@mhfsdcap03>
Subject: Re: [V5, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 12 May 2020 11:33:23 +0800
In-Reply-To: <CAAFQd5DZBEUJUq65WT7i_QjAtgxjhxmfdsjQoyG2UZy8zBih+A@mail.gmail.com>
References: <20200502161727.30463-1-dongchun.zhu@mediatek.com>
 <20200502161727.30463-3-dongchun.zhu@mediatek.com>
 <20200506151352.GZ9190@paasikivi.fi.intel.com>
 <1588855524.8804.168.camel@mhfsdcap03>
 <20200507131220.GC9190@paasikivi.fi.intel.com>
 <CAAFQd5DO9FGx9OF2RpcSprg0oLiVuS90w2qLAHCOSc3w6tKUWw@mail.gmail.com>
 <1588907288.8804.188.camel@mhfsdcap03>
 <20200508211319.GJ9190@paasikivi.fi.intel.com>
 <1588991026.8804.235.camel@mhfsdcap03>
 <CAAFQd5DZBEUJUq65WT7i_QjAtgxjhxmfdsjQoyG2UZy8zBih+A@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: DA68AA50845AF29D2688D88BB4FD0C4D483C870F8F7DCE4E80D492F383CA908E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_204259_886862_755CD74F 
X-CRM114-Status: GOOD (  39.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark
 Rutland <mark.rutland@arm.com>, Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, Shengnan
 Wang =?UTF-8?Q?=28=E7=8E=8B=E5=9C=A3=E7=94=B7=29?=
 <shengnan.wang@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz,

On Mon, 2020-05-11 at 20:20 +0200, Tomasz Figa wrote:
> Hi Dongchun,
> 
> On Sat, May 9, 2020 at 4:25 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Sakari,
> >
> > On Sat, 2020-05-09 at 00:13 +0300, Sakari Ailus wrote:
> > > Hi Dongchun,
> > >
> > > On Fri, May 08, 2020 at 11:08:08AM +0800, Dongchun Zhu wrote:
> > > > Hi Sakari, Tomasz,
> > > >
> > > > Thanks for the review.
> > > >
> > > > On Thu, 2020-05-07 at 15:46 +0200, Tomasz Figa wrote:
> > > > > Hi Sakari, Dongchun,
> > > > >
> > > > > On Thu, May 7, 2020 at 3:12 PM Sakari Ailus
> > > > > <sakari.ailus@linux.intel.com> wrote:
> > > > > >
> > > > > > HI Dongchun,
> > > > > >
> > > > > > On Thu, May 07, 2020 at 08:45:24PM +0800, Dongchun Zhu wrote:
> > > > > > > Hi Sakari,
> > > > > > >
> > > > > > > Thanks for the review.
> > > > > > >
> > > > > > > On Wed, 2020-05-06 at 18:13 +0300, Sakari Ailus wrote:
> > > > > > > > Hi Dongchun,
> > > > > > > >
> > > > > > > > On Sun, May 03, 2020 at 12:17:27AM +0800, Dongchun Zhu wrote:
> > > > > > > > > Add a V4L2 sub-device driver for DW9768 voice coil motor, providing
> > > > > > > > > control to set the desired focus via IIC serial interface.
> > > > > > > > >
> > > > > > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > > > > > ---
> > > > > > > > >  MAINTAINERS                |   1 +
> > > > > > > > >  drivers/media/i2c/Kconfig  |  11 ++
> > > > > > > > >  drivers/media/i2c/Makefile |   1 +
> > > > > > > > >  drivers/media/i2c/dw9768.c | 440 +++++++++++++++++++++++++++++++++++++++++++++
> > > > > > > > >  4 files changed, 453 insertions(+)
> > > > > > > > >  create mode 100644 drivers/media/i2c/dw9768.c
> > > > > > > > >
> > > > > > > > > diff --git a/MAINTAINERS b/MAINTAINERS
> > > > > > > > > index 8d72c41..c92dc99 100644
> > > > > > > > > --- a/MAINTAINERS
> > > > > > > > > +++ b/MAINTAINERS
> > > > > > > > > @@ -5157,6 +5157,7 @@ L:  linux-media@vger.kernel.org
> > > > > > > > >  S:       Maintained
> > > > > > > > >  T:       git git://linuxtv.org/media_tree.git
> > > > > > > > >  F:       Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> > > > > > > > > +F:       drivers/media/i2c/dw9768.c
> > > > > > > > >
> > > > > > > > >  DONGWOON DW9807 LENS VOICE COIL DRIVER
> > > > > > > > >  M:       Sakari Ailus <sakari.ailus@linux.intel.com>
> > > > > > > > > diff --git a/drivers/media/i2c/Kconfig b/drivers/media/i2c/Kconfig
> > > > > > > > > index 125d596..6a3f9da 100644
> > > > > > > > > --- a/drivers/media/i2c/Kconfig
> > > > > > > > > +++ b/drivers/media/i2c/Kconfig
> > > > > > > > > @@ -1040,6 +1040,17 @@ config VIDEO_DW9714
> > > > > > > > >     capability. This is designed for linear control of
> > > > > > > > >     voice coil motors, controlled via I2C serial interface.
> > > > > > > > >
> > > > > > > > > +config VIDEO_DW9768
> > > > > > > > > + tristate "DW9768 lens voice coil support"
> > > > > > > > > + depends on I2C && VIDEO_V4L2 && MEDIA_CONTROLLER
> > > > > > > > > + depends on VIDEO_V4L2_SUBDEV_API
> > > > > > > >
> > > > > > > > Please check how this works in the media tree master branch now --- it's
> > > > > > > > largely select based.
> > > > > > > >
> > > > > > >
> > > > > > > The actuator driver uses some structures that require the
> > > > > > > VIDEO_V4L2_SUBDEV_API code, so here we add VIDEO_V4L2_SUBDEV_API
> > > > > > > dependency to avoid possible build error when it's not enabled.
> > > > > >
> > > > > > Please make sure this works with current media tree master. Right now it
> > > > > > does not.
> > > > > >
> > > > >
> > > > > Dongchun, as Sakari said, please make sure to base the patches on the
> > > > > master branch of the media tree.
> > > > > (https://git.linuxtv.org/media_tree.git/). The approach for Kconfig
> > > > > dependency selection there seems to have changed recently.
> > > > >
> > > >
> > > > I searched the patches on the media tree master branch.
> > > > It seems that we need to remove the VIDEO_V4L2_SUBDEV_API dependency in
> > > > Kconfig, and add #ifdef CONFIG_VIDEO_V4L2_SUBDEV_API to include
> > > > v4l2-subdev code.
> > > > The change mainly is to make build pass, and don't return ENOTTY if
> > > > SUBDEV_API is not set.
> > > > Am I right?
> > >
> > > Please see Kconfig entries for other similar drivers from Dongwoon.
> > >
> >
> > Sorry for the mistake :-)
> > Just found the current media tree master branch code...
> > I would update Kconfig entries in next release by referring to:
> > https://git.linuxtv.org/media_tree.git/tree/drivers/media/i2c/Kconfig
> 
> Sorry for last minute comments again. We had a short discussion
> offline with Sakari and we think there are some changes needed to this
> driver, namely:
> 
> 1) The hardware being driven in our case is a gt9769, which could be
> compatible with dw9768, but it's still a different implementation and
> could have slightly different characteristics. Thus we think the
> driver name and compatible strings should be renamed from
> dongwoon,dw9768 to giantec,gt9769. In the future, if there is a device
> with exactly a dw9768 chip, the same driver could be reused by adding
> a dongwoon,dw9768 compatible string.
> 
> 2) The chip has some default configuration, which is lost because the
> driver overrides it with its own values. For use cases where one would
> want to keep the default values, we should make it possible to prevent
> the driver from overriding them. We could achieve this by adding
> optional DT properties for the custom parameters and if they are not
> present, defaults would be used.
> 
> Do you think that is doable? Thanks!
> 
> Best regards,
> Tomasz

For the renaming, I cannot agree with you more.
I would try to adjust it in next release.

For actuator driver, it seems our initial idea is that driver registers
should always use the default or reserved values.
Indeed, nowadays lens drivers on the community don't have such
configuration registers.
Albeit I don't quite sure whether it is reasonable for this summary.

As you discussed, for the current kernel, it would be nice to keep the
same with the traditional style.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
