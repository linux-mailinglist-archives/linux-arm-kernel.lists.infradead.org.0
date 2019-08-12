Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3918AB68
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MLwM3vIOh8RSt2Z4vqWVUOHzt5W4KX7KKUJY/cYtKno=; b=HpqqweCJWSN9Dj
	1TwxFbTGWQaB6dUbFgjL93nByNCwtWgqFdbaWYgDs1oX0DGb+XjL57WJBa6l9W4gK3GpoQodP/dXF
	stj/Y2ivlUZvjwNkojJC0o2fFsxymHcKAr77oQ9cPrmUa1GjqKyexwZO8kiuJYZuMWMO5r/OcFiRS
	cd7BegfGCiLNJe7PkpDAJLOhaBB+M2yFyy9puQRdXEENkUojKAgt2uiWB6t4rjWoeYOQucS5YquCB
	5Dcc41amjSllzgWQHcBUsRqON81IthVJH9ho+4NVGd2lT/g+eTcSIK77Ytdqk495ShPb5eWWxCppf
	T2/iZq15zqTJEeiyyjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxK1o-0002fP-1b; Mon, 12 Aug 2019 23:47:04 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxK1c-0002dx-Fs
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:46:54 +0000
Received: by mail-ot1-x343.google.com with SMTP id b7so115459080otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:46:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=vEM0WhT9KiGV+XzQ8g0ACsk29KSJO4/VurYJJqZPp1s=;
 b=fvfn+YRWH317swlTo7hCPy+eX8eEw/abKK+fMBhLIYnM8OjH86td55IXA8ix7SQbF5
 hvvGOEUBAhdjtfcpEf5pmVFoa1NtP4COg618jqD+zN1L0pDB8VjjcEuJwCc0iSLIe2Cb
 n+FuhOTWDugB5dRMhur5Ns2NX+syHET6SxeYowRsUaNElv6kVkop6c4o1W7Du4D6mB5q
 uTUoLELtMZ3fekQJuPNtEqr8mnsCtuRokYSI2NqZMAPtFUYYEeSJoOk5d6uw+JbnxC2x
 ZmvjPf7ES3PzdZNwPVG8iEIcjbDilYpXVVn3lnf9g2Q9tYKgi0KmhSA9ghx99su/HHsj
 Meuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=vEM0WhT9KiGV+XzQ8g0ACsk29KSJO4/VurYJJqZPp1s=;
 b=Ja63M6LQA5mtLDEXj1KngJ+s6gV/8e7yhdYN0waGwsXIuHpYSFMuQc6GME6IBJOBE8
 4Hlp/vmCk2LtMPhc448VAsE0uryptNa/gKdFA5PAotZGx1SisdkNKvHY/PXkF9qf9WkA
 QG1DD1iQ5HCEDCANK2gq2x3CME96X2EVjbM9Vc5ki76xELCTPOG37JI7RqG5QB9FJyJx
 /79KwjAxaGoaLaNtMy4X9YfZO6wbO0cMBgsRpBRmqiGRhq3UlarNv7F4vvCjjW0mYCCm
 vsngZnkMOVF9ZX++JpLiNekywT9js2qWDuW166LNhdjWrCyCeTZ5EN/0ihk9QNn55Lp8
 hOvw==
X-Gm-Message-State: APjAAAUzCufpBnDyqutapjbgEa6P5swgy8hpEA0WAnJsmnXHbnJCuix9
 ubouWrMof4BWe8sh5MjW3P5HMKBVXteqxgYksv8=
X-Google-Smtp-Source: APXvYqxgnXw3/hTVBwv8iDNhwE1yPX+hGlamB9R+ygkZWpAtXLSQV6s2CpUv+ICng0kTSrIM+MBId9mZ5Wuia3348wE=
X-Received: by 2002:a6b:f002:: with SMTP id w2mr257922ioc.104.1565653610461;
 Mon, 12 Aug 2019 16:46:50 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-9-tiny.windzz@gmail.com>
 <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
In-Reply-To: <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
From: Frank Lee <tiny.windzz@gmail.com>
Date: Tue, 13 Aug 2019 07:46:39 +0800
Message-ID: <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] thermal: sun8i: support mod clocks
To: Vasily Khoruzhick <anarsoul@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_164652_551906_C6E3708F 
X-CRM114-Status: GOOD (  22.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jonathan.Cameron@huawei.com,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, rui.zhang@intel.com,
 "David S. Miller" <davem@davemloft.net>,
 arm-linux <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Vasily,

On Sat, Aug 10, 2019 at 2:17 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
>
> On Fri, Aug 9, 2019 at 10:31 PM Yangtao Li <tiny.windzz@gmail.com> wrote:
> >
> > H3 has extra clock, so introduce something in ths_thermal_chip/ths_device
> > and adds the process of the clock.
> >
> > This is pre-work for supprt it.
> >
> > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > ---
> >  drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
> >  1 file changed, 16 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > index b934bc81eba7..6f4294c2aba7 100644
> > --- a/drivers/thermal/sun8i_thermal.c
> > +++ b/drivers/thermal/sun8i_thermal.c
> > @@ -54,6 +54,7 @@ struct tsensor {
> >  };
> >
> >  struct ths_thermal_chip {
> > +       bool            has_mod_clk;
> >         int             sensor_num;
> >         int             offset;
> >         int             scale;
> > @@ -69,6 +70,7 @@ struct ths_device {
> >         struct regmap                           *regmap;
> >         struct reset_control                    *reset;
> >         struct clk                              *bus_clk;
> > +       struct clk                              *mod_clk;
> >         struct tsensor                          sensor[MAX_SENSOR_NUM];
> >  };
> >
> > @@ -274,6 +276,12 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
> >         if (IS_ERR(tmdev->bus_clk))
> >                 return PTR_ERR(tmdev->bus_clk);
> >
> > +       if (tmdev->chip->has_mod_clk) {
> > +               tmdev->mod_clk = devm_clk_get(&pdev->dev, "mod");
> > +               if (IS_ERR(tmdev->mod_clk))
> > +                       return PTR_ERR(tmdev->mod_clk);
> > +       }
> > +
> >         ret = reset_control_deassert(tmdev->reset);
> >         if (ret)
> >                 return ret;
> > @@ -282,12 +290,18 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
> >         if (ret)
> >                 goto assert_reset;
> >
> > -       ret = sun50i_ths_calibrate(tmdev);
> > +       ret = clk_prepare_enable(tmdev->mod_clk);
>
> You have to set rate of modclk before enabling it since you can't rely
> on whatever bootloader left for you.
>
> Also I found that parameters you're using for PC_TEMP_PERIOD, ACQ0 and
> ACQ1 are too aggressive and may result in high interrupt rate to the
> point when it may stall RCU. I changed driver a bit to use params from
> Philipp Rossak's work (modclk set to 4MHz, PC_TEMP_PERIOD is 7, ACQ0
> is 255, ACQ1 is 63) and it fixed RCU stalls for me, see [1] for
> details.

Why is the RCU stall happening, is it caused by a deadlock?
Can you provide log information and your configuration?
I am a bit curious.

Thx,
Yangtao

>
> [1] https://github.com/anarsoul/linux-2.6/commit/46b8bb0fe2ccd1cd88fa9181a2ecbf79e8d513b2
>
>
> >         if (ret)
> >                 goto bus_disable;
> >
> > +       ret = sun50i_ths_calibrate(tmdev);
> > +       if (ret)
> > +               goto mod_disable;
> > +
> >         return 0;
> >
> > +mod_disable:
> > +       clk_disable_unprepare(tmdev->mod_clk);
> >  bus_disable:
> >         clk_disable_unprepare(tmdev->bus_clk);
> >  assert_reset:
> > @@ -395,6 +409,7 @@ static int sun8i_ths_remove(struct platform_device *pdev)
> >  {
> >         struct ths_device *tmdev = platform_get_drvdata(pdev);
> >
> > +       clk_disable_unprepare(tmdev->mod_clk);
> >         clk_disable_unprepare(tmdev->bus_clk);
> >         reset_control_assert(tmdev->reset);
> >
> > --
> > 2.17.1
> >
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
