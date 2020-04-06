Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4B4719F716
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 15:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4RlBNqbhsEZIba+pE/BxqXn2jTXZ5STeSwl9jHREAnY=; b=EeoN+PyL5jwRpw
	6hdYFKhBEBnTuJrnB26k53jexsndHTOnk7fLLvpLJt31qftKfyshc0hvGOYJY6JIa5wSmxYz3/dK6
	bQGf/0dVMDADFiQhvuSemhWRhf0CxXFJo5owCodfuziOxXi1noqG/uGgEMPg2J+ckT2SIH4sMgIxj
	Q/fMlP0qHJGA8bwwNcf+M6B+nc4Jm458A42XgS/KAbNjM8s3Nn7L8gYHVNvRqOLU8nYUkh9TPQzUj
	qrUsXJlW1xccLF8/0y6R970VPoOaoccPCJs8IplYrgqVr2r2al9b8Vacr3L6ctowAjmYrAxPw+PWs
	sWswG1tfdgMZpjzOkYDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLRwf-0006M6-3j; Mon, 06 Apr 2020 13:37:45 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLRwW-0006LJ-MT
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 13:37:39 +0000
Received: by mail-oi1-x244.google.com with SMTP id k18so13087312oib.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Apr 2020 06:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6L3aORYHMbwwCq3SCrpWJ+tXaNPgCZaZOcLf7iItFoM=;
 b=GckHuiQLusEfuz7m7kL2bfmJegj7H8mS9QM9fAP1xyMvKgqdKEty3fg6OwV6T9jPxN
 bnSCYkeHIMVM01Rvpbr1MuFU1p0UJtWWSVscCydH/L5qbZhASReOaOo7gET1/zbaj+QI
 c8FrHwThgqlaZMx5YZ70coYm1NXAZsfG0LiFzFrp7pg/iBBWNnhQ4Gdr8484Bz972VYC
 4eWwQ3NZXWZI47TzKQShY+n5EuG4xi/gjs5tMzzocKEuJ0zxJTCbKSIXsQjdz5uITfqO
 QkeBGOgQyANa82d9UCdl+C2qQHvztpu0qmTYLDWqH4o5vQik3FHeO8BdvkSDaaNpSlTG
 DZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6L3aORYHMbwwCq3SCrpWJ+tXaNPgCZaZOcLf7iItFoM=;
 b=DXTeZkDTUM53xjGUf1YKl2vGKzl9FgaITbQoyWSSZc+yvTYJRoWkHY9oLO3avjwl7R
 DRHyXBTYhdWoUlp44ASjS+7AhkYg452pB1GBs7tRjNwEEZ5HKA+1Xlkz9oEMX+ieywtU
 aEGhOuKAP/tVxarKGt6uqkH0wns1UeVfF7huEjcMpqvKEpDt7tI1sm16v6Gg/MzVLDB6
 JWdVFd0lkqgr+fmKLXZsZtahJ+109wOh5TqVmaS/t23cSmnypElyRdfRYvJJAJQTVLyQ
 b+WO8n7L3MEH/cC0LM/Obm5rXAgz7GqGMmWLzSHOe03xpTNMOPsCcorNonF0lJ5dJEAQ
 DWIA==
X-Gm-Message-State: AGi0PuY6V0KKUrZ3wpbURLhEa5dhmFcx2XEwVsBTxiYVbZUCorTDVoYj
 ABPdZB8TJIMxhNKsB1PlzWL7GSU6G9YzoZn+Ols9QmVheyU6vg==
X-Google-Smtp-Source: APiQypKD7wVcZWhoSfKhnnMOWHbZfY+YnnpAAJPlZzKefOLNi4hmZpG97WRWAolZBV2nqJ5aYs8hHESeS5eTQm5YhZ4=
X-Received: by 2002:aca:fcd8:: with SMTP id a207mr13378081oii.56.1586180255395; 
 Mon, 06 Apr 2020 06:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <20200331133346.372517-1-robert.foss@linaro.org>
 <20200331133346.372517-3-robert.foss@linaro.org>
 <CAHp75VfFKY6nzb8aEWmop73v2haZ0P5+aTsKDEU8M=uUPn0u3g@mail.gmail.com>
In-Reply-To: <CAHp75VfFKY6nzb8aEWmop73v2haZ0P5+aTsKDEU8M=uUPn0u3g@mail.gmail.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Mon, 6 Apr 2020 15:37:24 +0200
Message-ID: <CAG3jFyuH5Kad16R7Oit-c_7RasiEfPycOpA68JYLVopbyQ749w@mail.gmail.com>
Subject: Re: [PATCH v3 2/3] media: ov8856: Add devicetree support
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_063737_157029_D8F3771E 
X-CRM114-Status: GOOD (  21.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tomasz Figa <tfiga@chromium.org>, Sakari Ailus <sakari.ailus@iki.fi>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Fabio Estevam <festevam@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Andy,

Thanks for the review, it is much appreciated!

On Tue, 31 Mar 2020 at 16:01, Andy Shevchenko <andy.shevchenko@gmail.com> wrote:
>
> On Tue, Mar 31, 2020 at 4:36 PM Robert Foss <robert.foss@linaro.org> wrote:
> >
> > Add devicetree match table, and enable ov8856_probe()
> > to initialize power, clocks and reset pins.
>
> ...
>
> > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > +{
> > +       struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > +       int ret;
> > +
> > +       ret = clk_prepare_enable(ov8856->xvclk);
> > +       if (ret < 0) {
> > +               dev_err(&client->dev, "failed to enable xvclk\n");
> > +               return ret;
> > +       }
> > +
>
> > +       if (is_acpi_node(ov8856->dev->fwnode))
>
> Use dev_fwnode().

Ack.

>
> > +               return 0;
> > +
> > +       if (ov8856->reset_gpio) {
>
> > +               gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
>
> This is wrong. You have to fix it to use either 0 or 1.

I've changed all gpiod_set_value_cansleep() calls to use 0/1.

>
> > +               usleep_range(1000, 2000);
> > +       }
> > +
> > +       ret = regulator_bulk_enable(ARRAY_SIZE(ov8856_supply_names),
> > +                                   ov8856->supplies);
>
> > +       if (ret < 0) {
>
> Do you need all ' < 0' parts all over the series?

Some checks are needed due to ACPI and DT support co-existing.
Maybe it would be better to just split the probing into an ACPI path
and a DT path.

I'll have a look through the series for redundant retval checks.

>
> > +               dev_err(&client->dev, "failed to enable regulators\n");
> > +               goto disable_clk;
> > +       }
>
> ...
>
> > +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_LOW);
>
> Ditto.

Ack.

>
> ...
>
> > +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
>
> Ditto.

Ack.

>
> ...
>
> > +       gpiod_set_value_cansleep(ov8856->reset_gpio, GPIOD_OUT_HIGH);
>
> Ditto.

Ack.

>
> ...
>
> > -       ret = fwnode_property_read_u32(fwnode, "clock-frequency", &mclk);
> > -       if (ret)
> > -               return ret;
>
> Where is it gone? Why?

It was replaced by a clk_get_rate call, which as Sakari pointed out,
isn't correct.
I'll rework the clock handling for v4.

>
> > +       ov8856->xvclk = devm_clk_get_optional(dev, "xvclk");
> > +       if (IS_ERR(ov8856->xvclk)) {
>
> > +               dev_err(dev, "could not get xvclk clock (%ld)\n",
> > +                       PTR_ERR(ov8856->xvclk));
>
> Also you may use %pe here and in similar cases.

Weirdly checkpatch complains about this.
But it builds and runs cleanly, so I'll add it in v4.

>
> > +               return PTR_ERR(ov8856->xvclk);
> > +       }
>
> > +       ov8856->reset_gpio = devm_gpiod_get_optional(dev, "reset",
> > +               GPIOD_OUT_HIGH);
>
> Here parameter is correct. The question is, what the value should be
> HIGH or LOW?
> Basically HIGH means to assert the signal.

Ack, I'll invert the logic.

>
> > +       if (IS_ERR(ov8856->reset_gpio)) {
>
> > +               dev_dbg(dev, "failed to get reset-gpio\n");
>
> Noise.
> Enable GPIO debug to see this kind of messages.

Ack.

>
> > +               return PTR_ERR(ov8856->reset_gpio);
> > +       }
>
> ...
>
> > +       ret = devm_regulator_bulk_get(dev, ARRAY_SIZE(ov8856_supply_names),
> > +                                     ov8856->supplies);
> > +       if (ret) {
>
> > +               dev_warn(dev, "failed to get regulators\n");
>
> If it's a warning, why we return from here?
> Same question to all other places with same issue.

The issue I was seeing was the driver having to return a EDEFER here,
so this warning sheds some light on which exact component is returning
an EDEFER.

[   15.962623] ov8856 16-0010: Dropping the link to regulator.29
[   15.968464] ov8856 16-0010: failed to get regulators
[   15.973493] ov8856 16-0010: failed to get HW configuration: -517
[   15.979591] ov8856 16-0010: removing from PM domain titan_top_gdsc
[   15.985855] ov8856 16-0010: genpd_remove_device()
[   15.990672] i2c 16-0010: Driver ov8856 requests probe deferral

Personally I found it helpful to speed up debugging, but I'll happily
remove it if you prefer no warning.

>
> > +               return ret;
> >         }
>
> --
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
