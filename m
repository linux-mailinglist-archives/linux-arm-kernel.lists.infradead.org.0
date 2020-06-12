Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 637F61F770D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 13:04:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQhAoyFc1rQKF7EHEBMHKxyvUBtClJ/12rUYUrHoiRQ=; b=ZjR3RYmjixqwgm
	CiayLI7ZdySDr2x+KKu+IGwXyY17bFhacnmkJkT8UIbbmDJnh3tnl3iilIgihFtG5dm8N5P95HUwp
	MHUrVXnRUDZNuVM3SrTkAusmlZu+WRFCriuTgsjNlKaGvOknlOIay6RHnJs32PXLq/2HbaJN9Y5gK
	Zud81ZBrIXcHxqijgt4LBotVH+E0aZ9I9FkYR1aI9NmjTxvRBHXubZNz14bBtujGmAFWm4KXINGuF
	WItHhIq8+Z7/0hCfK+pZyMzQsw5E5d0h/vkGmA1xfR+KCIfPhDWtaoRcGVvunaIRM6/y8B/+Gth3L
	d5gDx5ZGia6H4fKIdGFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjhTc-0006KR-A8; Fri, 12 Jun 2020 11:04:00 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjhTQ-0006JB-MN; Fri, 12 Jun 2020 11:03:50 +0000
X-UUID: e006689d72d84fef8f5534474b8d6ba5-20200612
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=qaglRPWqGP4IdwsQlkYgHrfbKPtnhQyQo7nkYFx8tsM=; 
 b=igTHKJzImv7DlxphxtOwvGwI+rkJhaHBD08sBPAe8E5+8xuU8waWuBHyekqNUp/vmoYB94egC6wYq3Cm6+kAL1RRztewkOeLwr0ZgyzqqLuv4Xn14gDtxXtK6O6ZJUHQ8K+JQqftMcg3HW8FxxPDJOKZBCYGH1u04a4lJsLakjI=;
X-UUID: e006689d72d84fef8f5534474b8d6ba5-20200612
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1866389502; Fri, 12 Jun 2020 03:03:35 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 12 Jun 2020 04:03:42 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 12 Jun 2020 19:03:39 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Fri, 12 Jun 2020 19:03:38 +0800
Message-ID: <1591959682.8804.665.camel@mhfsdcap03>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Date: Fri, 12 Jun 2020 19:01:22 +0800
In-Reply-To: <20200611100322.GL16711@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <20200611095333.GK16711@paasikivi.fi.intel.com>
 <CAAFQd5BBxBEs=gCohOzOGzkTDNkL1yyu7dtEY26K52=CmFAWnA@mail.gmail.com>
 <20200611100322.GL16711@paasikivi.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 9664EE831528CD8C24C98DDB589FA69B119B312FFEA3696E45D9240344133E872000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_040348_740968_BCD310EA 
X-CRM114-Status: GOOD (  30.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 dongchun.zhu@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, "list@263.net:IOMMU DRIVERS
 <iommu@lists.linux-foundation.org>, Joerg  Roedel <joro@8bytes.org>,
 " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sakari,

On Thu, 2020-06-11 at 13:03 +0300, Sakari Ailus wrote:
> On Thu, Jun 11, 2020 at 11:57:43AM +0200, Tomasz Figa wrote:
> > On Thu, Jun 11, 2020 at 11:53 AM Sakari Ailus
> > <sakari.ailus@linux.intel.com> wrote:
> > >
> > > Hi Tomasz,
> > >
> > > On Wed, Jun 10, 2020 at 07:44:55PM +0000, Tomasz Figa wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > > > >
> > > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > > ---
> > > > >  MAINTAINERS                 |    1 +
> > > > >  drivers/media/i2c/Kconfig   |   13 +
> > > > >  drivers/media/i2c/Makefile  |    1 +
> > > > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > > > >  4 files changed, 1040 insertions(+)
> > > > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > > > >
> > > >
> > > > Thank you for the patch. Please see my comments inline.
> > > >
> > > > [snip]
> > > > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > > > new file mode 100644
> > > > > index 0000000..160a0b5
> > > > > --- /dev/null
> > > > > +++ b/drivers/media/i2c/ov02a10.c
> > > > [snip]
> > > > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > > > +   "Disabled",
> > > > > +   "Color Bar",
> > > >
> > > > nit: We should normalize this to one of the standard names. What is the
> > > > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> > > >
> > > > > +};
> > > > [snip]
> > > > > +static int ov02a10_set_fmt(struct v4l2_subdev *sd,
> > > > > +                      struct v4l2_subdev_pad_config *cfg,
> > > > > +                      struct v4l2_subdev_format *fmt)
> > > > > +{
> > > > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > > +   struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > > > > +
> > > > > +   mutex_lock(&ov02a10->mutex);
> > > > > +
> > > >
> > > >
> > > > Don't we need to handle the case when fmt->which is V4L2_SUBDEV_FORMAT_TRY,
> > > > which is used for trying the format, but not applying it to the hardware?
> > >
> > > Yes.
> > >
> > > >
> > > > > +   if (ov02a10->streaming) {
> > > > > +           mutex_unlock(&ov02a10->mutex);
> > > > > +           return -EBUSY;
> > > > > +   }
> > > > > +
> > > > > +   /* Only one sensor mode supported */
> > > > > +   mbus_fmt->code = ov02a10->fmt.code;
> > > > > +   ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > > > > +   ov02a10->fmt = fmt->format;
> > > > > +
> > > > > +   mutex_unlock(&ov02a10->mutex);
> > > > > +
> > > > > +   return 0;
> > > > > +}
> > > > > +
> > > > > +static int ov02a10_get_fmt(struct v4l2_subdev *sd,
> > > > > +                      struct v4l2_subdev_pad_config *cfg,
> > > > > +                      struct v4l2_subdev_format *fmt)
> > > > > +{
> > > > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > > +   struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > > > > +
> > > > > +   mutex_lock(&ov02a10->mutex);
> > > > > +
> > > > > +   fmt->format = ov02a10->fmt;
> > > >
> > > > Ditto.
> > > >
> > > > > +   mbus_fmt->code = ov02a10->fmt.code;
> > > > > +   ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > > > > +
> > > > > +   mutex_unlock(&ov02a10->mutex);
> > > > > +
> > > > > +   return 0;
> > > > > +}
> > > > > +
> > > > > +static int ov02a10_enum_mbus_code(struct v4l2_subdev *sd,
> > > > > +                             struct v4l2_subdev_pad_config *cfg,
> > > > > +                             struct v4l2_subdev_mbus_code_enum *code)
> > > > > +{
> > > > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > > +
> > > > > +   if (code->index >= ARRAY_SIZE(supported_modes))
> > > > > +           return -EINVAL;
> > > >
> > > > Hmm, supported_modes[] doesn't seem to hold the information about mbus
> > > > codes. Should this just perhaps be "!= 0"?
> > > >
> > > > > +
> > > > > +   code->code = ov02a10->fmt.code;
> > > > > +
> > > > > +   return 0;
> > > > > +}
> > > > [snip]
> > > > > +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> > > > > +                              struct v4l2_subdev_pad_config *cfg)
> > > > > +{
> > > > > +   struct v4l2_subdev_format fmt = {
> > > > > +           .which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE,
> > > > > +           .format = {
> > > > > +                   .width = 1600,
> > > > > +                   .height = 1200,
> > > > > +           }
> > > > > +   };
> > > > > +
> > > > > +   ov02a10_set_fmt(sd, cfg, &fmt);
> > > > > +
> > > > > +   return 0;
> > > > > +}
> > > > > +
> > > >
> > > > I'm not familiar with this init_cfg operation and the documentation is very
> > > > sparse about it. Sakari, is this a correct implementation?
> > >
> > > The purpose is to initialise a pad configuration (format and selection
> > > rectangles) to the device defaults. As there seem to be no selection
> > > rectangles, this seems fine to me.
> > 
> > Thanks. I traced the code and could only see one place where the
> > callback is being called and that was with cfg != NULL. Still, the
> > code above uses "cfg ?" as a check to determine whether TRY or ACTIVE
> > should be passed to which. Is that also correct?
> 
> It could be used in setting the active format in probe. That would probably
> be cleaner than what it currently does.
> 

Sakari, did you mean that we need to update _probe API?
Like this:
struct v4l2_subdev_format fmt = {
	.which = V4L2_SUBDEV_FORMAT_ACTIVE,
};

> But apart from that, the framework always calls init_cfg with cfg non-NULL.
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
