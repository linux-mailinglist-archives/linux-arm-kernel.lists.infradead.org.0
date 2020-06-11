Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 629E21F654F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:03:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Io7M37SYbGHvhGCDs8TkbeaaGAWL1BJwlgqmCaDd5xI=; b=HgBCxkXXsKLhfJ
	+eSPuEa3sNFe+9WGa9jMFuaIhvINbIjsMi6XBub1+Vw5puie1uXz3XdMJOUCj1Mfu18zeKk73v1C3
	yv1gAGcPSPaDD4pLQwE5jzYcFG7himUy2TKls/0S/560FnrGWn5A/KTKdFpFiy26o5qN9PSVBGHLL
	SHigX4nQRFWr/H2//X8hCmCZFI2ciZh6Ba5dFpaiGGPN/4//GvJys0SI0XOMjvPK6CxHmaz02aNRR
	simPulpOjR0JLjyMNJLrBi56bWCpesoohHQojAJ0Y+U4qEgtj/vDcIkT5Kg3Q9p24NN1MIB7G3Atb
	GKPtv5n0nrFd34bav5yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjK3m-000636-Rx; Thu, 11 Jun 2020 10:03:46 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjK3W-0005z1-MF; Thu, 11 Jun 2020 10:03:32 +0000
IronPort-SDR: 3fKCufSo77Nx+gIBTAjFWRkf74PwFdKHG7tTFf8SL72rFlbFbjrY+z8VJQr1ZbHXMSja8J5ovy
 jx2lbpXXFbOQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 03:03:30 -0700
IronPort-SDR: Pn15RnbO6jIDhtSwfC1dpWA2jynSfJXqvEvOYQg42lVNOehGHk53YpEDtcsPI9Se0S/k2dok6n
 ZpkT0LhhwrMw==
X-IronPort-AV: E=Sophos;i="5.73,499,1583222400"; d="scan'208";a="260660099"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2020 03:03:25 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id A935D20680; Thu, 11 Jun 2020 13:03:22 +0300 (EEST)
Date: Thu, 11 Jun 2020 13:03:22 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
Message-ID: <20200611100322.GL16711@paasikivi.fi.intel.com>
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <20200611095333.GK16711@paasikivi.fi.intel.com>
 <CAAFQd5BBxBEs=gCohOzOGzkTDNkL1yyu7dtEY26K52=CmFAWnA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5BBxBEs=gCohOzOGzkTDNkL1yyu7dtEY26K52=CmFAWnA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_030330_738373_946068A7 
X-CRM114-Status: GOOD (  29.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [192.55.52.88 listed in wl.mailspike.net]
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

On Thu, Jun 11, 2020 at 11:57:43AM +0200, Tomasz Figa wrote:
> On Thu, Jun 11, 2020 at 11:53 AM Sakari Ailus
> <sakari.ailus@linux.intel.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Wed, Jun 10, 2020 at 07:44:55PM +0000, Tomasz Figa wrote:
> > > Hi Dongchun,
> > >
> > > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > > >
> > > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > > ---
> > > >  MAINTAINERS                 |    1 +
> > > >  drivers/media/i2c/Kconfig   |   13 +
> > > >  drivers/media/i2c/Makefile  |    1 +
> > > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > > >  4 files changed, 1040 insertions(+)
> > > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > > >
> > >
> > > Thank you for the patch. Please see my comments inline.
> > >
> > > [snip]
> > > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > > new file mode 100644
> > > > index 0000000..160a0b5
> > > > --- /dev/null
> > > > +++ b/drivers/media/i2c/ov02a10.c
> > > [snip]
> > > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > > +   "Disabled",
> > > > +   "Color Bar",
> > >
> > > nit: We should normalize this to one of the standard names. What is the
> > > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> > >
> > > > +};
> > > [snip]
> > > > +static int ov02a10_set_fmt(struct v4l2_subdev *sd,
> > > > +                      struct v4l2_subdev_pad_config *cfg,
> > > > +                      struct v4l2_subdev_format *fmt)
> > > > +{
> > > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > +   struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > > > +
> > > > +   mutex_lock(&ov02a10->mutex);
> > > > +
> > >
> > >
> > > Don't we need to handle the case when fmt->which is V4L2_SUBDEV_FORMAT_TRY,
> > > which is used for trying the format, but not applying it to the hardware?
> >
> > Yes.
> >
> > >
> > > > +   if (ov02a10->streaming) {
> > > > +           mutex_unlock(&ov02a10->mutex);
> > > > +           return -EBUSY;
> > > > +   }
> > > > +
> > > > +   /* Only one sensor mode supported */
> > > > +   mbus_fmt->code = ov02a10->fmt.code;
> > > > +   ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > > > +   ov02a10->fmt = fmt->format;
> > > > +
> > > > +   mutex_unlock(&ov02a10->mutex);
> > > > +
> > > > +   return 0;
> > > > +}
> > > > +
> > > > +static int ov02a10_get_fmt(struct v4l2_subdev *sd,
> > > > +                      struct v4l2_subdev_pad_config *cfg,
> > > > +                      struct v4l2_subdev_format *fmt)
> > > > +{
> > > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > +   struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > > > +
> > > > +   mutex_lock(&ov02a10->mutex);
> > > > +
> > > > +   fmt->format = ov02a10->fmt;
> > >
> > > Ditto.
> > >
> > > > +   mbus_fmt->code = ov02a10->fmt.code;
> > > > +   ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > > > +
> > > > +   mutex_unlock(&ov02a10->mutex);
> > > > +
> > > > +   return 0;
> > > > +}
> > > > +
> > > > +static int ov02a10_enum_mbus_code(struct v4l2_subdev *sd,
> > > > +                             struct v4l2_subdev_pad_config *cfg,
> > > > +                             struct v4l2_subdev_mbus_code_enum *code)
> > > > +{
> > > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > +
> > > > +   if (code->index >= ARRAY_SIZE(supported_modes))
> > > > +           return -EINVAL;
> > >
> > > Hmm, supported_modes[] doesn't seem to hold the information about mbus
> > > codes. Should this just perhaps be "!= 0"?
> > >
> > > > +
> > > > +   code->code = ov02a10->fmt.code;
> > > > +
> > > > +   return 0;
> > > > +}
> > > [snip]
> > > > +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> > > > +                              struct v4l2_subdev_pad_config *cfg)
> > > > +{
> > > > +   struct v4l2_subdev_format fmt = {
> > > > +           .which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE,
> > > > +           .format = {
> > > > +                   .width = 1600,
> > > > +                   .height = 1200,
> > > > +           }
> > > > +   };
> > > > +
> > > > +   ov02a10_set_fmt(sd, cfg, &fmt);
> > > > +
> > > > +   return 0;
> > > > +}
> > > > +
> > >
> > > I'm not familiar with this init_cfg operation and the documentation is very
> > > sparse about it. Sakari, is this a correct implementation?
> >
> > The purpose is to initialise a pad configuration (format and selection
> > rectangles) to the device defaults. As there seem to be no selection
> > rectangles, this seems fine to me.
> 
> Thanks. I traced the code and could only see one place where the
> callback is being called and that was with cfg != NULL. Still, the
> code above uses "cfg ?" as a check to determine whether TRY or ACTIVE
> should be passed to which. Is that also correct?

It could be used in setting the active format in probe. That would probably
be cleaner than what it currently does.

But apart from that, the framework always calls init_cfg with cfg non-NULL.

-- 
Sakari Ailus

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
