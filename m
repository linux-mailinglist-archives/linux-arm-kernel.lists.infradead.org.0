Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CCEAEB67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 15:24:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hTZ23Hi4oycnDds7gjPEhDiawn3Xg3Gq2kJ1baJ4M+Y=; b=WNlMKpuZzcJGmV
	ZWq93QZniolUDPy8N7PqT+I6h62XOZnwpU/pcU1nstKq8uefNABwRnK8kgEBZQq6ruPLfXwn34wi4
	dwzlXvqdtQnnQgjDZxTJtHDRpgZxGF7AjEluA9GNjzgs8eu3gCmBbv2EDOpICICI0TT89N2Hpiy1T
	FrGuglDkV/EsOPwhZ+e2LXuajhHhCgZd/Mw5ilsgFy8PjeltPRjyP8jYGDZaDneV3GJi2DdSB5XCA
	GXZHhhScLfhxKw7F1d78Gu72pbPjGlT+782QRhLaPZD6H3aJKB1qfK6iCq9gR+Db5iJGRQ6Luy1S3
	eILVe25hhl4ea/7rZrsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7g7u-0006Z9-NQ; Tue, 10 Sep 2019 13:24:10 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7g7i-0006YW-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 13:24:00 +0000
Received: by mail-ed1-x544.google.com with SMTP id z9so17069256edq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 06:23:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+PDMnoMOZ+kvJoFaPE97rZHpufI4c8A38UCrkXHFlJU=;
 b=AXUKjG+l//8seadMNLusLEBTu3rzNUbjG0SN5RIAmwZNBS2rvm7Y8KZmmNmfobq5Yg
 tWX/2NWRUbLAXG8k/1lfoNdUCk88UFpz6/hEZNALkYb+oSBOWIH5NrtNn/sAQ8mOnFJd
 dZAPS6RZBHXV+gjfPHQ5yX5PZBAgIq5/IV6Ng=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+PDMnoMOZ+kvJoFaPE97rZHpufI4c8A38UCrkXHFlJU=;
 b=T4aFFzBjit2wZ2DQSEjuSGCm7bRoiHLKUUpvMGZWJ9U2e32A8ZYBUCpkLqyggVX2iM
 /PAr5+UlvqldwstU4hZOSXnJlcBkr0as0cbzDgbWvjZrG5GMKmblJdi+GFLQLAqJe9gw
 Hlz0FVDw8vktmQ9xD18fUAP7qyp5bQalf5AOmLjmNFPganKBzh1Hld3kGCt5Z6bA48je
 JgnV2WwDLXbgkwEMfPiA6Ii4CPR0100T/UfC1NUUycdLdWEi9c72Q97b8nAzFE08rQba
 DBLj2HhPzGAhTO3ZF6cZZ0PBNYw6vzFzTLlY/fELQ5QhS6JryT6xUE1dorFZ/R4d+fKE
 lVmg==
X-Gm-Message-State: APjAAAXbXh7LmMzlDUdD3AszHkV/WuJaQjQA6bQwLIw3NPJVl6NVD+HW
 mjfr4NZJ5ZDaZtU9aCFRLvRY3P/h7gS2Uw==
X-Google-Smtp-Source: APXvYqx4XMg7Y8k35/pp3HQSD3GaAbkIQerZ9KMmDzjRsHDJh6zTlybXzLIIpMa/tVMNJB667F+GHg==
X-Received: by 2002:a05:6402:1598:: with SMTP id
 c24mr30614383edv.174.1568121834263; 
 Tue, 10 Sep 2019 06:23:54 -0700 (PDT)
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com.
 [209.85.221.51])
 by smtp.gmail.com with ESMTPSA id r23sm3557879edx.1.2019.09.10.06.23.51
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Sep 2019 06:23:52 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id h7so19210187wrw.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 06:23:51 -0700 (PDT)
X-Received: by 2002:a5d:6585:: with SMTP id q5mr24858527wru.162.1568121830850; 
 Tue, 10 Sep 2019 06:23:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190808092215.5608-1-dongchun.zhu@mediatek.com>
 <20190808092215.5608-3-dongchun.zhu@mediatek.com>
 <20190823100126.GB33937@chromium.org>
 <1568021243.21623.250.camel@mhfsdcap03>
In-Reply-To: <1568021243.21623.250.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 10 Sep 2019 22:23:39 +0900
X-Gmail-Original-Message-ID: <CAAFQd5BUmTpVoZdZ1pLvD5fi4V0nLNokv+0GmbjZvjFQiVUSag@mail.gmail.com>
Message-ID: <CAAFQd5BUmTpVoZdZ1pLvD5fi4V0nLNokv+0GmbjZvjFQiVUSag@mail.gmail.com>
Subject: Re: [V1,
 2/2] media: i2c: Add more sensor mode for ov8856 camera sensor
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_062358_480020_16C3C168 
X-CRM114-Status: GOOD (  36.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
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

Hi Dongchun,

On Mon, Sep 9, 2019 at 6:27 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> On Fri, 2019-08-23 at 19:01 +0900, Tomasz Figa wrote:
> > Hi Dongchun,
> >
> > On Thu, Aug 08, 2019 at 05:22:15PM +0800, dongchun.zhu@mediatek.com wrote:
[snip]
> > > +
> > >  /* vertical-timings from sensor */
> > >  #define OV8856_REG_VTS                     0x380e
> > >  #define OV8856_VTS_MAX                     0x7fff
> > > @@ -64,6 +80,14 @@
> > >
> > >  #define to_ov8856(_sd)                     container_of(_sd, struct ov8856, sd)
> > >
> > > +static const char * const ov8856_supply_names[] = {
> > > +   "dovdd",        /* Digital I/O power */
> > > +   "avdd",         /* Analog power */
> > > +   "dvdd",         /* Digital core power */
> > > +};
> > > +
> > > +#define OV8856_NUM_SUPPLIES ARRAY_SIZE(ov8856_supply_names)
> > > +
> > >  enum {
> > >     OV8856_LINK_FREQ_720MBPS,
> > >     OV8856_LINK_FREQ_360MBPS,
> > > @@ -316,6 +340,208 @@ static const struct ov8856_reg mode_3280x2464_regs[] = {
> > >     {0x5e00, 0x00}
> > >  };
> > >
> > > +static const struct ov8856_reg mode_3264x2448_regs[] = {
[snip]
> > > +};
> > > +
> >
> > It would be better if we could find the differences between the two arrays
> > and handle them incrementally.
> >
>
> This approach is not recommended.
>

Not recommended by whom? :) I myself recommend that approach.

I'm sorry, but I'm going to NACK this patch (including the
chromeos-4.19 tree), unless there is a very good technical reason not
to do it the way I'm suggesting. The other drivers do it that way and
I see no reason why this one should be an exception.

> For these two arrays, sensor input clock frequencies (19.2MHz, 24MHz)
> are different, corresponding to different PLL register setting.
>
> Besides, there are also some differences in image resolution and
> hts/vts, including 0x3614 register that reflecting sensor revision.
>

What would be the reason preventing us from handling that in driver code?

Note that I do _not_ mean just taking addresses and values that are
different and putting them to a separate array. What I'm asking for is
to handle the differences in a programmatic way - with dedicated code
in the driver setting appropriate registers.

[snip]

> > > +           fmt->code = MEDIA_BUS_FMT_SBGGR10_1X10;
> > > +   else
> > > +           fmt->code = MEDIA_BUS_FMT_SGRBG10_1X10;
> > > +
> > >     fmt->field = V4L2_FIELD_NONE;
> > >  }
> > >
> > > @@ -850,6 +1333,17 @@ static int ov8856_start_streaming(struct ov8856 *ov8856)
> > >             return ret;
> > >     }
> > >
> > > +   /* update R3614 for 1B module */
> >
> > What's R3614?
> >
>
> R3614 is the register 0x3614, which reflects the sensor revision.
> For instance, it would be 0x20 for 1B module, while 0x60 for 2A module.
>

My point is - this comment doesn't mean anything for a person reading
it. The code below is actually more meaningful - you can see that the
clock settings register is written with a value for 1B.

> > > +   if (ov8856->is_1B_module) {
> > > +           ret = ov8856_write_reg(ov8856, OV8856_CLK_REG,
> > > +                                  OV8856_REG_VALUE_08BIT,
> > > +                                  OV8856_CLK_REG_1B_VAL);

Please define this value according to what it means, not a fixed
constant for 1B sensor revision.

> > > +           if (ret) {
> > > +                   dev_err(&client->dev, "failed to set R3614");
> > > +                   return ret;
> > > +           }
> > > +   }
> > > +
> > >     ret = __v4l2_ctrl_handler_setup(ov8856->sd.ctrl_handler);
> > >     if (ret)
> > >             return ret;
> > > @@ -882,6 +1376,8 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >     if (ov8856->streaming == enable)
> > >             return 0;
> > >
> > > +   dev_dbg(&client->dev, "hardware version: (%d)\n", ov8856->is_1B_module);
> > > +
> > >     mutex_lock(&ov8856->mutex);
> > >     if (enable) {
> > >             ret = pm_runtime_get_sync(&client->dev);
> > > @@ -908,6 +1404,54 @@ static int ov8856_set_stream(struct v4l2_subdev *sd, int enable)
> > >     return ret;
> > >  }
> > >
> > > +/* Calculate the delay in us by clock rate and clock cycles */
> > > +static inline u32 ov8856_cal_delay(u32 cycles)
> > > +{
> > > +   return DIV_ROUND_UP(cycles, OV8856_XVCLK_FREQ / 1000 / 1000);
> > > +}
> > > +
> > > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > > +{
> > > +   int ret;
> > > +   u32 delay_us;
> > > +   struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > > +
> > > +   ret = clk_prepare_enable(ov8856->xvclk);
> > > +   if (ret < 0) {
> > > +           dev_err(&client->dev, "Failed to enable xvclk\n");
> > > +           return ret;
> > > +   }
> > > +
> > > +   gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> >
> > According to my datasheet, this sensor doesn't have a reset pin. The one I
> > can see there is XSHUTDN, which I would call "n_shutdn" here.
> >
>
> I would rename this pin in next release.
> BTW, how do you define "n_shutdn" or "shuutdn"?
> If GPIO is actively high, then "n_shutdn"?
>

If the GPIO is active-high (means shutdown on high) then it's just
"shutdn_gpio". However, the datasheet says it's active-low (means
shutdown on low), so that should be "n_shutdn_gpio".

> > > +
> > > +   ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > > +   if (ret < 0) {
> > > +           dev_err(&client->dev, "Failed to enable regulators\n");
> > > +           goto disable_clk;
> > > +   }
> > > +
> > > +   gpiod_set_value_cansleep(ov8856->reset_gpio, 0);
> >
> > According to the datasheet, XSHUTDN should be 0 for shutdown and 1 for
> > running. Why is it the other way around here?
> >
>
> For GPIO, the definition of bit field of flags defined in DT seems
> reversed.
> This would be fixed in next release.
>
> > > +
> > > +   /* 8192 cycles prior to first SCCB transaction */
> > > +   delay_us = ov8856_cal_delay(8192);
> >
> > If we pass a constant to the function and the function itself only uses
> > constants inside, could we just define a constant delay instead?
> >
>
> This calculation refers to powering up sequence in datasheet.
> Did you mean using usleep_range() directly?

My point is, we can just

#define OV8856_SCCB_INIT_DELAY_US    (8192 * [...])

[...]

usleep_range(OV8856_SCCB_INIT_DELAY_US, OV8856_SCCB_INIT_DELAY_US + 200);

>
> > > +   usleep_range(delay_us  * 2, delay_us * 4);
> >
> > Normally one one just give some small delta here, like +/- 100 us.
> >
>
> Fixed in next release.
>
> > > +
> > > +   return 0;
> > > +
> > > +disable_clk:
> > > +   clk_disable_unprepare(ov8856->xvclk);
> > > +
> > > +   return ret;
> > > +}
> > > +
> > > +static void __ov8856_power_off(struct ov8856 *ov8856)
> > > +{
> > > +   clk_disable_unprepare(ov8856->xvclk);
> > > +   gpiod_set_value_cansleep(ov8856->reset_gpio, 1);
> > > +
> > > +   regulator_bulk_disable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > > +}
> > > +
> > >  static int __maybe_unused ov8856_suspend(struct device *dev)
> > >  {
> > >     struct i2c_client *client = to_i2c_client(dev);
> > > @@ -915,8 +1459,8 @@ static int __maybe_unused ov8856_suspend(struct device *dev)
> > >     struct ov8856 *ov8856 = to_ov8856(sd);
> > >
> > >     mutex_lock(&ov8856->mutex);
> > > -   if (ov8856->streaming)
> > > -           ov8856_stop_streaming(ov8856);
> > > +
> > > +   __ov8856_power_off(ov8856);
> >
> > This change is incorrect because it will power off even if the device was
> > already powered off, causing reference count mismatch. The original code
> > was okay.
> >
>
> Then do we need to power off sensor per power off sequence?
> I thought this function would be called by pm_runtime_put when power
> count is 0.
>

This is the system suspend callback, not runtime suspend callback.
It's only called when the system goes to sleep.

> > >
> > >     mutex_unlock(&ov8856->mutex);
> > >
> > > @@ -1089,6 +1633,20 @@ static int ov8856_identify_module(struct ov8856 *ov8856)
> > >             return -ENXIO;
> > >     }
> > >
> > > +   /* set R3614 to distinguish harward versions */
> >
> > hardware
> >
>
> Sorry for the typo.
> Fixed in next release.
>

Also a similar comment for R3614, as above. It doesn't have any
meaning to someone without the datasheet in front of them. Please just
remove it.

Best regards,
Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
