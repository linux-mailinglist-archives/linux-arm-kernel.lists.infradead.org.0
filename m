Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7A51F7D24
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 20:49:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqlIzTGqrHKY9OUSAYiIe0L5mi5g0ARfi7gmZZ5d5MU=; b=SteaiSpNUne5+p
	dMd3mT3mqmX+ge+tUoJI5M2jRVCWIFKOWxBpcNVLPCVxx2T0OJz88kCJQTRMZQriCeblqv7WlML2m
	nNK0EEAVAVx7tiHdOaG0wkafZwXHnXOV5J8lFUpnIPdCU/IvyBMDYJYGg8nVwE9iKLhMjdHe0nVHX
	AgXBhkYCDIqQ1+X9WBci6Ch2SyBu5ZlCApCO9l3vpkV+OTVYRq74rEInCKIuvrzjh6gR9U/AdomSR
	iuU1D/FMO1uGICM+haI/XuDvvV6oqIGDsGKrsz1bDjzEj+1fbeBBpSBb2HnXNEQx8gp4s71ZHeSHE
	56mXbedoWo1i8mK82YXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjok2-0003YZ-Aa; Fri, 12 Jun 2020 18:49:26 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjojt-0003Xe-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jun 2020 18:49:18 +0000
Received: by mail-ed1-x52d.google.com with SMTP id e12so7156626eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 11:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nRDVrwu4nmGYq+4H/l+Rfcgr3AzgWNw91u+JyocBvfM=;
 b=m2KD82ivlXUUePVUWot71c6WcaxeJlCXcnih6WkWsEDIJ2gD3qUd/7EVIU4njM4fLA
 MTs+s5Qv/pTww8Rd4mWtfwyDe9R3f17Zg1HzZGaeKrK/Nmx6HPYjlQAKmNhms7lmkWiJ
 raCqRd6ECYIDOUN6A2CwJIAex+onNYl/jvZXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nRDVrwu4nmGYq+4H/l+Rfcgr3AzgWNw91u+JyocBvfM=;
 b=taaoO84b5j0Y9/tv6FI4uaKVVgn6YzkLtqAGQ8lGzb8TNf0u3aRAoOpFBvfSBEJUHe
 S0c71XzUXtTQP6W5SBR14wF/pnKzY449GS9OCRXbM4ADjqo56W8sOGT4CjyBF5+7EcMc
 ZDgoYZnhttla3YiNCiQFkWw9G4XYapIrLuskqJpesjqI4b1X5Jmq7UzL/O0Sj+B56PJM
 VJMfYq1Sr9pIOZv4LzKDwwfOa3HZ9mY/QfcTsMrYTWyXAVxtH6EpTXbUvG8ijDUnDEVk
 X9pZgrnVwbcmqx2N8MlGPMJ3OiZbP5fvZko8/q3ylzjc9M9HIVUIG8ZD/4T0D93ui5xe
 1NCQ==
X-Gm-Message-State: AOAM532dfswfsCKNqAM3YPIeivrezkeLG01OlFSWr4MUoQpudryCgyyH
 jYptJq1V4L/7LDnRo9YUAPGUF9ddNlFjMw==
X-Google-Smtp-Source: ABdhPJwC5X40CZ5mvpx7M+V7cOXSQt1FqIwSvyThduNw+B27vAqnZpsq1uqHfLm6duszURAedS4qeQ==
X-Received: by 2002:aa7:d7cc:: with SMTP id e12mr12619484eds.70.1591987755222; 
 Fri, 12 Jun 2020 11:49:15 -0700 (PDT)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com.
 [209.85.221.53])
 by smtp.gmail.com with ESMTPSA id q25sm3927468ejz.93.2020.06.12.11.49.14
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 12 Jun 2020 11:49:14 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id e1so10755831wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 12 Jun 2020 11:49:14 -0700 (PDT)
X-Received: by 2002:adf:9c12:: with SMTP id f18mr17605374wrc.105.1591987753743; 
 Fri, 12 Jun 2020 11:49:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200509080627.23222-1-dongchun.zhu@mediatek.com>
 <20200509080627.23222-3-dongchun.zhu@mediatek.com>
 <20200521193204.GA14214@chromium.org>
 <1590209415.8804.431.camel@mhfsdcap03> <20200610183600.GI201868@chromium.org>
 <1591954266.8804.646.camel@mhfsdcap03>
In-Reply-To: <1591954266.8804.646.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 12 Jun 2020 20:49:01 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CboZ9aFhUyKPES_2oO_AKAOh3Pg8D+9YpfmzJ8v-yFHw@mail.gmail.com>
Message-ID: <CAAFQd5CboZ9aFhUyKPES_2oO_AKAOh3Pg8D+9YpfmzJ8v-yFHw@mail.gmail.com>
Subject: Re: [V8, 2/2] media: i2c: ov02a10: Add OV02A10 image sensor driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_114917_249375_CFAE5BD3 
X-CRM114-Status: GOOD (  24.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jun 12, 2020 at 11:33 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Wed, 2020-06-10 at 18:36 +0000, Tomasz Figa wrote:
> > On Sat, May 23, 2020 at 12:50:15PM +0800, Dongchun Zhu wrote:
> > > Hi Tomasz,
> > >
> > > Thanks for the review. My replies are as below.
> > >
> > > On Thu, 2020-05-21 at 19:32 +0000, Tomasz Figa wrote:
> > > > Hi Dongchun,
> > > >
> > > > On Sat, May 09, 2020 at 04:06:27PM +0800, Dongchun Zhu wrote:
> > [snip]
> > > > > +{
> > > > > +       struct i2c_client *client = to_i2c_client(dev);
> > > > > +       struct v4l2_subdev *sd = i2c_get_clientdata(client);
> > > > > +       struct ov02a10 *ov02a10 = to_ov02a10(sd);
> > > > > +       int ret;
> > > > > +
> > > > > +       gpiod_set_value_cansleep(ov02a10->n_rst_gpio, 0);
> > > > > +       gpiod_set_value_cansleep(ov02a10->pd_gpio, 0);
> > > > > +
> > > > > +       ret = clk_prepare_enable(ov02a10->eclk);
> > > > > +       if (ret < 0) {
> > > > > +               dev_err(dev, "failed to enable eclk\n");
> > > > > +               return ret;
> > > > > +       }
> > > > > +
> > > > > +       ret = regulator_bulk_enable(OV02A10_NUM_SUPPLIES, ov02a10->supplies);
> > > > > +       if (ret < 0) {
> > > > > +               dev_err(dev, "failed to enable regulators\n");
> > > > > +               goto disable_clk;
> > > > > +       }
> > > > > +       usleep_range(5000, 6000);
> > > > > +
> > > > > +       gpiod_set_value_cansleep(ov02a10->pd_gpio, 1);
> > > >
> > > > This is a "powerdown" GPIO. It must be set to 0 if the sensor is to be
> > > > powered on.
> > > >
> > >
> > > The value set by gpiod_set_value_cansleep() API actually depends upon
> > > GPIO polarity defined in DT.
> > > Since I set GPIO_ACTIVE_LOW to powerdown,
> > > gpiod_set_value_cansleep(gpio_desc, value) would set !value to
> > > gpio_desc.
> > > Thus here powerdown would be low-state when sensor is powered on.
> > > For GPIO polarity, I also post a comment to the binding patch.
> > >
> >
> > That's true. However, this makes the driver really confusing. If someone
> > reads this code and compares with the datasheet, it looks incorrect,
> > because in the datasheet the powerdown GPIO needs to be configured low
> > for the sensor to operate.
> >
> > I'd recommend defining the binding in a way that makes it clear in the driver code
> > that it implementes the power sequencing as per the datasheet.
> >
>
> Uh-huh...
> But it all depends on how we look at the powerdown GPIO.
> Or where should we define the active low or active high, the driver or
> DT?
>
> My initial idea is using DT GPIO polarity to describe sensor active
> polarity according to the datasheet.
> As an active low shutdown signal is equivalent to an active high enable
> signal.
>

Okay, I discussed this offline with Laurent and Sakari and we also
found the guidelines of the Linux GPIO subsystem on this [1].

The conclusion is that the pin names in the driver or DT must not
contain any negation prefixes and the driver needs to care only about
the logical function of the pin, such as "powerdown" or "reset". In
case of this driver, we should call the pins "rst" and "pd" and
setting them to 1 would trigger the reset and power down respectively.
The physical signal polarity must be configured in DT using the
polarity flags.

[1] https://www.kernel.org/doc/html/latest/driver-api/gpio/consumer.html#the-active-low-and-open-drain-semantics

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
