Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DCD21F6559
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 12:06:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nO4fj80ihYDytU6FxbV5CycFlP0Q3xr9Tn5SUtzszEg=; b=FqV/FoyFhkU179
	6IKugP9e5fGZzTxVmo3PnJ3IstuiCAlZX13x53l9SfeOTlnawG9e3QOORdO8n609C/IY3WPTfPc+1
	4sukgV4LQF0a1+l6st41uwLUM+46uxTMHe9Wh1cori7lv8afpD02NcKCvDpxj6H6oR0JofcQ4rqvZ
	iEHpnBRnRO3eAmNNDA4oX/mMsRVq0dD91nQKaNXBqANbJGy7a47WJegNM1IzgMyY6Q/wJ3GqIdQ64
	5Sks6ta9QcpXH1BfYquZsACdnjRonFO46vvnQnsWewfhm9mCyESBQR0NsS8vdnrr2F23H5F7+wuTk
	WVXRFFh6QqGvzFkQeedQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjK6D-0000pq-8B; Thu, 11 Jun 2020 10:06:17 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjK62-0000pL-En
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 10:06:07 +0000
Received: by mail-ed1-x544.google.com with SMTP id w7so3521363edt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 03:06:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sEeSSXzDo0aNfT8RCtgk710cFUXelBPKlbjMwXGCKwA=;
 b=ljWu6Ln7hmjbcBaRzZlHWsT0AjYarwzwjH9o3tH1WN6ZGm20b3T8IO8qH00SIhGaSU
 2FAGvqeoH1s9Mkt3AjDMPdJEdCN+ef7x2NyJi4pptkj2GqINEjaofwFp3hdrggRXxemL
 kK+WFn4bsOTCeP3MWFAGQgep+fdXOtmjey0EY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sEeSSXzDo0aNfT8RCtgk710cFUXelBPKlbjMwXGCKwA=;
 b=GICPNbOexwSkPvgkYB/T2bPuQIVjPMabrVOdmR8AK35le7WMTWiHKOUQHNYCIklp0S
 GAT+o0QJy4Rtcv1fdueGe6y4TIDNK8qyzWYi0awuVnOg6VypaiZTJCA40ZYXV+S7fYFl
 HuLdtMRg2lHlmrCi0dCvtu9g9wxL14mHz2LDYQ+svledOliZKHO7oTjN4V8az3Yiy0z9
 9PvkaNoUhPmSGKi6IKuDFWCez/v4O1CzJ8Bn2G6lZZYTC6H2TA5L37n4PniwUO2eOOYL
 VQPaJ//KdvRx39EjhqiQtvDd/gE7/l5RUaupOKL/MDrIHOq/fF1ZbzP6jyUavltXh6IT
 N9yg==
X-Gm-Message-State: AOAM532PgRI9fxEH1HI1dkgx4uHzxGnomVGd1UKvR0kiCONripla2+3S
 +1lhZ76EhF2ZWOAnqsDQ8Y954emEErjWgQ==
X-Google-Smtp-Source: ABdhPJxFif6Hq6CfYXqjO7NX+ElU3BKhEM+f5TcRJxyO06nSGOLOT3NoeNYLNC8hNS26Eq8pnZKueA==
X-Received: by 2002:a50:f05d:: with SMTP id u29mr6426658edl.229.1591869963790; 
 Thu, 11 Jun 2020 03:06:03 -0700 (PDT)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com.
 [209.85.221.50])
 by smtp.gmail.com with ESMTPSA id q25sm1557420ejz.93.2020.06.11.03.06.03
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 11 Jun 2020 03:06:03 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id q11so5523092wrp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 11 Jun 2020 03:06:03 -0700 (PDT)
X-Received: by 2002:adf:e2ce:: with SMTP id d14mr8780636wrj.415.1591869474948; 
 Thu, 11 Jun 2020 02:57:54 -0700 (PDT)
MIME-Version: 1.0
References: <20200523084103.31276-1-dongchun.zhu@mediatek.com>
 <20200523084103.31276-3-dongchun.zhu@mediatek.com>
 <20200610194455.GK201868@chromium.org>
 <20200611095333.GK16711@paasikivi.fi.intel.com>
In-Reply-To: <20200611095333.GK16711@paasikivi.fi.intel.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 11 Jun 2020 11:57:43 +0200
X-Gmail-Original-Message-ID: <CAAFQd5BBxBEs=gCohOzOGzkTDNkL1yyu7dtEY26K52=CmFAWnA@mail.gmail.com>
Message-ID: <CAAFQd5BBxBEs=gCohOzOGzkTDNkL1yyu7dtEY26K52=CmFAWnA@mail.gmail.com>
Subject: Re: [V9, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
To: Sakari Ailus <sakari.ailus@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_030606_510291_153C6DAA 
X-CRM114-Status: GOOD (  28.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
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

On Thu, Jun 11, 2020 at 11:53 AM Sakari Ailus
<sakari.ailus@linux.intel.com> wrote:
>
> Hi Tomasz,
>
> On Wed, Jun 10, 2020 at 07:44:55PM +0000, Tomasz Figa wrote:
> > Hi Dongchun,
> >
> > On Sat, May 23, 2020 at 04:41:03PM +0800, Dongchun Zhu wrote:
> > > Add a V4L2 sub-device driver for OV02A10 image sensor.
> > >
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  MAINTAINERS                 |    1 +
> > >  drivers/media/i2c/Kconfig   |   13 +
> > >  drivers/media/i2c/Makefile  |    1 +
> > >  drivers/media/i2c/ov02a10.c | 1025 +++++++++++++++++++++++++++++++++++++++++++
> > >  4 files changed, 1040 insertions(+)
> > >  create mode 100644 drivers/media/i2c/ov02a10.c
> > >
> >
> > Thank you for the patch. Please see my comments inline.
> >
> > [snip]
> > > diff --git a/drivers/media/i2c/ov02a10.c b/drivers/media/i2c/ov02a10.c
> > > new file mode 100644
> > > index 0000000..160a0b5
> > > --- /dev/null
> > > +++ b/drivers/media/i2c/ov02a10.c
> > [snip]
> > > +static const char * const ov02a10_test_pattern_menu[] = {
> > > +   "Disabled",
> > > +   "Color Bar",
> >
> > nit: We should normalize this to one of the standard names. What is the
> > pattern on this sensor? Is it perhaps "Eight Vertical Colour Bars"?
> >
> > > +};
> > [snip]
> > > +static int ov02a10_set_fmt(struct v4l2_subdev *sd,
> > > +                      struct v4l2_subdev_pad_config *cfg,
> > > +                      struct v4l2_subdev_format *fmt)
> > > +{
> > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > +   struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > > +
> > > +   mutex_lock(&ov02a10->mutex);
> > > +
> >
> >
> > Don't we need to handle the case when fmt->which is V4L2_SUBDEV_FORMAT_TRY,
> > which is used for trying the format, but not applying it to the hardware?
>
> Yes.
>
> >
> > > +   if (ov02a10->streaming) {
> > > +           mutex_unlock(&ov02a10->mutex);
> > > +           return -EBUSY;
> > > +   }
> > > +
> > > +   /* Only one sensor mode supported */
> > > +   mbus_fmt->code = ov02a10->fmt.code;
> > > +   ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > > +   ov02a10->fmt = fmt->format;
> > > +
> > > +   mutex_unlock(&ov02a10->mutex);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ov02a10_get_fmt(struct v4l2_subdev *sd,
> > > +                      struct v4l2_subdev_pad_config *cfg,
> > > +                      struct v4l2_subdev_format *fmt)
> > > +{
> > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > +   struct v4l2_mbus_framefmt *mbus_fmt = &fmt->format;
> > > +
> > > +   mutex_lock(&ov02a10->mutex);
> > > +
> > > +   fmt->format = ov02a10->fmt;
> >
> > Ditto.
> >
> > > +   mbus_fmt->code = ov02a10->fmt.code;
> > > +   ov02a10_fill_fmt(ov02a10->cur_mode, mbus_fmt);
> > > +
> > > +   mutex_unlock(&ov02a10->mutex);
> > > +
> > > +   return 0;
> > > +}
> > > +
> > > +static int ov02a10_enum_mbus_code(struct v4l2_subdev *sd,
> > > +                             struct v4l2_subdev_pad_config *cfg,
> > > +                             struct v4l2_subdev_mbus_code_enum *code)
> > > +{
> > > +   struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > +
> > > +   if (code->index >= ARRAY_SIZE(supported_modes))
> > > +           return -EINVAL;
> >
> > Hmm, supported_modes[] doesn't seem to hold the information about mbus
> > codes. Should this just perhaps be "!= 0"?
> >
> > > +
> > > +   code->code = ov02a10->fmt.code;
> > > +
> > > +   return 0;
> > > +}
> > [snip]
> > > +static int ov02a10_entity_init_cfg(struct v4l2_subdev *sd,
> > > +                              struct v4l2_subdev_pad_config *cfg)
> > > +{
> > > +   struct v4l2_subdev_format fmt = {
> > > +           .which = cfg ? V4L2_SUBDEV_FORMAT_TRY : V4L2_SUBDEV_FORMAT_ACTIVE,
> > > +           .format = {
> > > +                   .width = 1600,
> > > +                   .height = 1200,
> > > +           }
> > > +   };
> > > +
> > > +   ov02a10_set_fmt(sd, cfg, &fmt);
> > > +
> > > +   return 0;
> > > +}
> > > +
> >
> > I'm not familiar with this init_cfg operation and the documentation is very
> > sparse about it. Sakari, is this a correct implementation?
>
> The purpose is to initialise a pad configuration (format and selection
> rectangles) to the device defaults. As there seem to be no selection
> rectangles, this seems fine to me.

Thanks. I traced the code and could only see one place where the
callback is being called and that was with cfg != NULL. Still, the
code above uses "cfg ?" as a check to determine whether TRY or ACTIVE
should be passed to which. Is that also correct?

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
