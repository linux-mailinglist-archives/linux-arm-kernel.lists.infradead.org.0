Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46888C1CE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 22:06:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=463uhitNiti09lTm6Aa+KM2HP0KKv+v/SAnObtk2UTw=; b=tWNk2uLCNhrE80
	tQMPI2kFRij8OtAWDqTJJCfXJY7yX/Oy0/btvWp4u4LgsxI1DpI97mcSEVj2JThFLhmQ1MIlfZguI
	oEuY1RW3AbSaFU3lFDEVhOs+DAmC40x6z5MzPgN9Phpn0ybzOkfsiOfP2wRJnKcV80RmcCdI1TFTL
	7voMdSnbwpKXp+hDYPriwlwXhCzPHMFSxhj8VzrOUakHNZrjoiieZqjNLpFHRSQaiVdKEnb3BfJdh
	CwIg4dU+WtQQL5OOMlCfp6hGiZrScnnXYJkN+5CnzlEKqiRKkUxoFGzmUZRcL/Gd5B0HRONy19+y7
	mgFyhSWbAHiUXoutxYwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxd4C-0006gJ-TG; Tue, 13 Aug 2019 20:06:48 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxd43-0006fo-D7
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 20:06:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1565726784; bh=BJj4IKkIVoRjnCmUwYtLOi3KBn/hCwT44LH7rC3kdoM=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=E3Pt3KdLd9W8HHq139AvIwYXOeG0lTAHVvI2JcIzZ1HZ915O+TzrXrcXhszIYQiUf
 uL64qv/She2OnBWhhScfJWgnm/L6Rbj4BNLcLnR4AaHzhUkA3fdth+dcQo2e0fJFGh
 BH/DXYmITMyqoSUb2Ghke0tTeWnHpqBU6p6VzpZk=
Date: Tue, 13 Aug 2019 22:06:23 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Vasily Khoruzhick <anarsoul@gmail.com>
Subject: Re: [PATCH v5 08/18] thermal: sun8i: support mod clocks
Message-ID: <20190813200623.2dmxcwibuyolnuhh@core.my.home>
Mail-Followup-To: Vasily Khoruzhick <anarsoul@gmail.com>,
 Frank Lee <tiny.windzz@gmail.com>,
 Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux PM <linux-pm@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Jonathan.Cameron@huawei.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 rui.zhang@intel.com, "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-9-tiny.windzz@gmail.com>
 <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
 <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
 <CA+E=qVf9V9iTvCfXXyjqKeviCJOvYpKUO8qw6cQsKqoaRmdKYQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CA+E=qVf9V9iTvCfXXyjqKeviCJOvYpKUO8qw6cQsKqoaRmdKYQ@mail.gmail.com>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_130639_784904_708FD881 
X-CRM114-Status: GOOD (  28.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 devicetree <devicetree@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Frank Lee <tiny.windzz@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan.Cameron@huawei.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 04:54:15PM -0700, Vasily Khoruzhick wrote:
> On Mon, Aug 12, 2019 at 4:46 PM Frank Lee <tiny.windzz@gmail.com> wrote:
> >
> > HI Vasily,
> >
> > On Sat, Aug 10, 2019 at 2:17 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> > >
> > > On Fri, Aug 9, 2019 at 10:31 PM Yangtao Li <tiny.windzz@gmail.com> wrote:
> > > >
> > > > H3 has extra clock, so introduce something in ths_thermal_chip/ths_device
> > > > and adds the process of the clock.
> > > >
> > > > This is pre-work for supprt it.
> > > >
> > > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > > ---
> > > >  drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
> > > >  1 file changed, 16 insertions(+), 1 deletion(-)
> > > >
> > > > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > > > index b934bc81eba7..6f4294c2aba7 100644
> > > > --- a/drivers/thermal/sun8i_thermal.c
> > > > +++ b/drivers/thermal/sun8i_thermal.c
> > > > @@ -54,6 +54,7 @@ struct tsensor {
> > > >  };
> > > >
> > > >  struct ths_thermal_chip {
> > > > +       bool            has_mod_clk;
> > > >         int             sensor_num;
> > > >         int             offset;
> > > >         int             scale;
> > > > @@ -69,6 +70,7 @@ struct ths_device {
> > > >         struct regmap                           *regmap;
> > > >         struct reset_control                    *reset;
> > > >         struct clk                              *bus_clk;
> > > > +       struct clk                              *mod_clk;
> > > >         struct tsensor                          sensor[MAX_SENSOR_NUM];
> > > >  };
> > > >
> > > > @@ -274,6 +276,12 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
> > > >         if (IS_ERR(tmdev->bus_clk))
> > > >                 return PTR_ERR(tmdev->bus_clk);
> > > >
> > > > +       if (tmdev->chip->has_mod_clk) {
> > > > +               tmdev->mod_clk = devm_clk_get(&pdev->dev, "mod");
> > > > +               if (IS_ERR(tmdev->mod_clk))
> > > > +                       return PTR_ERR(tmdev->mod_clk);
> > > > +       }
> > > > +
> > > >         ret = reset_control_deassert(tmdev->reset);
> > > >         if (ret)
> > > >                 return ret;
> > > > @@ -282,12 +290,18 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
> > > >         if (ret)
> > > >                 goto assert_reset;
> > > >
> > > > -       ret = sun50i_ths_calibrate(tmdev);
> > > > +       ret = clk_prepare_enable(tmdev->mod_clk);
> > >
> > > You have to set rate of modclk before enabling it since you can't rely
> > > on whatever bootloader left for you.
> > >
> > > Also I found that parameters you're using for PC_TEMP_PERIOD, ACQ0 and
> > > ACQ1 are too aggressive and may result in high interrupt rate to the
> > > point when it may stall RCU. I changed driver a bit to use params from
> > > Philipp Rossak's work (modclk set to 4MHz, PC_TEMP_PERIOD is 7, ACQ0
> > > is 255, ACQ1 is 63) and it fixed RCU stalls for me, see [1] for
> > > details.
> >
> > Why is the RCU stall happening, is it caused by a deadlock?
> > Can you provide log information and your configuration?
> > I am a bit curious.
> 
> It's not deadlock, I believe it just can't handle that many interrupts
> when running at lowest CPU frequency. Even with Philipp's settings
> there's ~20 interrupts a second from ths. I don't remember how many
> interrupts were there with your settings.
> 
> Unfortunately there's nothing interesting in backtraces, I'm using
> Pine64-LTS board.

Recently there was a similar issue, with buggy CCU driver that caused
CIR interrupts being fired constantly, and it also resulted in RCU
stalls. Looks like a comon cause of RCU stalls.

THS timing settings probably need to be made specific to the SoC, because
I noticed that the same settings lead to wildly different timings on
different SoCs.

It would be good to measure how often ths interrupt fires with this driver
on various SoCs.

20 times a second and more sounds like overkill. I'd expect a useful
range to be at most 5-10 times a second. That should be enough to stop
overheating the SoC due to suddenly increased load, even without a
heatsink.

regards,
	o.

> > Thx,
> > Yangtao
> >
> > >
> > > [1] https://github.com/anarsoul/linux-2.6/commit/46b8bb0fe2ccd1cd88fa9181a2ecbf79e8d513b2
> > >
> > >
> > > >         if (ret)
> > > >                 goto bus_disable;
> > > >
> > > > +       ret = sun50i_ths_calibrate(tmdev);
> > > > +       if (ret)
> > > > +               goto mod_disable;
> > > > +
> > > >         return 0;
> > > >
> > > > +mod_disable:
> > > > +       clk_disable_unprepare(tmdev->mod_clk);
> > > >  bus_disable:
> > > >         clk_disable_unprepare(tmdev->bus_clk);
> > > >  assert_reset:
> > > > @@ -395,6 +409,7 @@ static int sun8i_ths_remove(struct platform_device *pdev)
> > > >  {
> > > >         struct ths_device *tmdev = platform_get_drvdata(pdev);
> > > >
> > > > +       clk_disable_unprepare(tmdev->mod_clk);
> > > >         clk_disable_unprepare(tmdev->bus_clk);
> > > >         reset_control_assert(tmdev->reset);
> > > >
> > > > --
> > > > 2.17.1
> > > >
> > > >
> > > > _______________________________________________
> > > > linux-arm-kernel mailing list
> > > > linux-arm-kernel@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
