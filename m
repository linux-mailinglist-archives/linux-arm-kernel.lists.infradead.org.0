Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AE271F8FF9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 09:34:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8LH1NHU69NYwid4r6SKjWag096btxeOQLvymwGofyc4=; b=C51Gn8mp3Lmdj0
	zLSSvJhhSX8mgJCZtEgjg83gFQb6i+X67g3V0uLswPZN3FHdVf9jB6YiO86ZShu/rSDsYPyIbjffb
	IHFxXTnC/zjmJEa+/QiKM4D9TaJ27rjIPxEX1UlP0DFSJTTi4K1MTUQTGvuc21RvC0vmmLS/UUP5R
	Q2hKza/+kdPlkb+SuCZqUBqaaNdXFaG44INAikAdmoBMI9PVRqvlvvCypQMoKz+y75KmDviZzDtB3
	onAYuuBosG67Jk1pa6u8yAoPJkrph38XF3bKNQog0kbnynCjcqdUwAmzBv8c5qwVQcQtpnyTmQ1Wp
	4xm7Eijs2aN2GBBYJHbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjdH-00049v-11; Mon, 15 Jun 2020 07:34:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjci-0003ur-AU; Mon, 15 Jun 2020 07:33:43 +0000
X-UUID: baae1b70d2864cdc926d620cce5e4866-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=m/v3E4p1m/OZyPE8uUXIhT+TD6yH0vQGAescG6WMe18=; 
 b=VDzHNQANysP2lm1uqeHrNCXAMrNx1iRwrz1r3Nifz8sJF0aDiq3Vo95JosXHEj+QhIUDCH0BA08KtfqjSYRdN8/P7XKjSnNqIUCPhwZqXDKFwXQGWOiKgl+cqmWbiv14cWWFnSaSNrF44U7gN1H64t1S7ypneqVcsjHOCUAt4M8=;
X-UUID: baae1b70d2864cdc926d620cce5e4866-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 843906623; Sun, 14 Jun 2020 23:33:36 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 00:26:59 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 15 Jun 2020 15:26:50 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 15:26:49 +0800
Message-ID: <1592205866.8804.686.camel@mhfsdcap03>
Subject: Re: [V8, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 15 Jun 2020 15:24:26 +0800
In-Reply-To: <CAAFQd5CboZ9aFhUyKPES_2oO_AKAOh3Pg8D+9YpfmzJ8v-yFHw@mail.gmail.com>
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-3-dongchun.zhu@mediatek.com>
 <20200521193204.GA14214@chromium.org>
 <1590209415.8804.431.camel@mhfsdcap03>
 <20200610183600.GI201868@chromium.org>
 <1591954266.8804.646.camel@mhfsdcap03>
 <CAAFQd5CboZ9aFhUyKPES_2oO_AKAOh3Pg8D+9YpfmzJ8v-yFHw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: F48042F2A1F78F21A0AF70589031EBB7AAF552C4E8B9EC0D9A43D09539458DD92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_003341_655778_3B327014 
X-CRM114-Status: GOOD (  26.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 <shengnan.wang@mediatek.com>, Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 dongchun.zhu@mediatek.com, Sakari Ailus <sakari.ailus@linux.intel.com>,
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

On Fri, 2020-06-12 at 20:49 +0200, Tomasz Figa wrote:
> On Fri, Jun 12, 2020 at 11:33 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > Hi Tomasz,
> >
> > On Wed, 2020-06-10 at 18:36 +0000, Tomasz Figa wrote:
> > > On Sat, May 23, 2020 at 12:50:15PM +0800, Dongchun Zhu wrote:
> > > > Hi Tomasz,
> > > >
> > > > Thanks for the review. My replies are as below.
> > > >
> > > > On Thu, 2020-05-21 at 19:32 +0000, Tomasz Figa wrote:
> > > > > Hi Dongchun,
> > > > >
> > > > > On Sat, May 09, 2020 at 04:06:27PM +0800, Dongchun Zhu wrote:
> > > [snip]
> > > > > > +{
> > > > > > +       struct i2c_client *client = to_i2c_client(dev);
> > > > > > +       struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > > > > > +       struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > > > +       int ret;
> > > > > > +
> > > > > > +       gpiod_set_value_cansleep(ov02a10->n_rst_gpio, 0);
> > > > > > +       gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> > > > > > +
> > > > > > +       ret = clk_prepare_enable(ov02a10->eclk);
> > > > > > +       if (ret < 0) {
> > > > > > +               dev_err(dev, "failed to enable eclk\n");
> > > > > > +               return ret;
> > > > > > +       }
> > > > > > +
> > > > > > +       ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > > > +       if (ret < 0) {
> > > > > > +               dev_err(dev, "failed to enable regulators\n");
> > > > > > +               goto disable_clk;
> > > > > > +       }
> > > > > > +       usleep_range(5000, 6000);
> > > > > > +
> > > > > > +       gpiod_set_value_cansleep(ov02a10->pd_gpio, 1);
> > > > >
> > > > > This is a "powerdown" GPIO. It must be set to 0 if the sensor is to be
> > > > > powered on.
> > > > >
> > > >
> > > > The value set by gpiod_set_value_cansleep() API actually depends upon
> > > > GPIO polarity defined in DT.
> > > > Since I set GPIO_ACTIVE_LOW to powerdown,
> > > > gpiod_set_value_cansleep(gpio_desc, value) would set !value to
> > > > gpio_desc.
> > > > Thus here powerdown would be low-state when sensor is powered on.
> > > > For GPIO polarity, I also post a comment to the binding patch.
> > > >
> > >
> > > That's true. However, this makes the driver really confusing. If someone
> > > reads this code and compares with the datasheet, it looks incorrect,
> > > because in the datasheet the powerdown GPIO needs to be configured low
> > > for the sensor to operate.
> > >
> > > I'd recommend defining the binding in a way that makes it clear in the driver code
> > > that it implementes the power sequencing as per the datasheet.
> > >
> >
> > Uh-huh...
> > But it all depends on how we look at the powerdown GPIO.
> > Or where should we define the active low or active high, the driver or
> > DT?
> >
> > My initial idea is using DT GPIO polarity to describe sensor active
> > polarity according to the datasheet.
> > As an active low shutdown signal is equivalent to an active high enable
> > signal.
> >
> 
> Okay, I discussed this offline with Laurent and Sakari and we also
> found the guidelines of the Linux GPIO subsystem on this [1].
> 
> The conclusion is that the pin names in the driver or DT must not
> contain any negation prefixes and the driver needs to care only about
> the logical function of the pin, such as "powerdown" or "reset". In
> case of this driver, we should call the pins "rst" and "pd" and
> setting them to 1 would trigger the reset and power down respectively.
> The physical signal polarity must be configured in DT using the
> polarity flags.
> 
> [1] https://www.kernel.org/doc/html/latest/driver-api/gpio/consumer.html#the-active-low-and-open-drain-semantics
> 

Thank you for the sharing.
If driver only focus on the logical function of GPIO pins,
'n_rst_gpio' may need to be renamed back to the 1st version 'rst_gpio'.

> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
