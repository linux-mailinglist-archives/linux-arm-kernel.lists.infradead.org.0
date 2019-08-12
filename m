Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C26B8AB8A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 01:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v3v02aiD62OdTVAP6VMCsjR++g+ebDzYLPqKleYL96c=; b=OrLYN5Pyd00Sdp
	n63h17IKgABio9QDLpPatUVS/guKAQDoi4/nwHKcYpcjJuJRpGfbDNDvEhgFpWMEi77fuiDpZXoDP
	aWSdopJNJ4KuSQvFAUEFk72eLoSTqDg+qInkaJK4DXqxX1+xOwz99pqoPWTNdO2GiqbZaf2JMzhDy
	+q2kDd5N3VjSH1Ary3+0fofmycuJFcbnWlewg6KECCMqoKg2MjPWiQOzkNenUJZjt6vm/jNUGN3dj
	zUA1EZf89G5N1XHL672QhmCHqp+ngUsDQBhSOQDsm0+eqiEdLYCdbDtbJU6F89fAlYoE4DqTYGY35
	ZjM2u332GqAF8G6X1eNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxK9I-0005Do-Ha; Mon, 12 Aug 2019 23:54:48 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxK97-0005DI-02
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 23:54:38 +0000
Received: by mail-ot1-x343.google.com with SMTP id b7so115509297otl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 16:54:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=w2kdR+7b7KvFC+HWFUinAh+s80F0DWNtdCahrnarn44=;
 b=MURQZflgt53gZwpL/adUQPWglHlq+Vte6KXRI0z/ItnHLIbuIWVx+AHjTIX3e2/2XJ
 AgQauFkwH8PiW27qaftBzb8SjEZ22PQqEWa+nCPvevt0Be+071pvDuvfrffhPLtBRpdA
 LBIdY9YYHhtIhRwH3KeCIhyxenjmm3/uupxNakiv2kKJarsmfSyGbsbA9DFnwaS0ukVe
 W1bFdGY9LnSQmBVakQlpzuluvXvyRyG+GjF+BMnQ3AsRKnDVSirB6IyXN29SEnjYM10Q
 Kg+r75M1tzmCtWw+PxSZkLBjos7xfe2rDFrJIyNyazO4H6GArHp+JAU+pZqjWawZp4oF
 m2ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=w2kdR+7b7KvFC+HWFUinAh+s80F0DWNtdCahrnarn44=;
 b=fnTAQ8VqcloNSCQuYzckLr+9bW0t+Rzu35jokqhRmmFPD2raUbKsPyQn2X6BsPgLed
 pr0+YPHI3fpScFDE7xh/P7u4cKVTHeCsIQYQVccijQn4yJneKGR66BGz0d9CAdb/+vXw
 b3kcvqo9EExLNMpr7OhYgO5vLk+b1SnLKGQsd0gU1B+o6JOlyQA+G4hs+uBO5q1/0uRX
 Bp5bW7Dsi0Y2W8OauL9DfRUcGcslkFCRL8urCFmJWj+6LCqe0N7xkZCI+hOPs4kHq1Ac
 nbaxMRdXfX/W3AYmYC5nDd1x19t1WwIeyF0FmLO/5btGNtULz7PJrm+u01FFlllr2oD0
 O+5Q==
X-Gm-Message-State: APjAAAXWtGotW+gooJwRGA9QrrQ2Vf95+Sx7bP9icG5TUHI338bZJJeB
 byltt7mwhppwiqlSK2eoZbYT9dDZUjUro5KNljA=
X-Google-Smtp-Source: APXvYqz72zUtIykO8D1IdH6U+dE5fed0U7T2C3hqJGnZx13Lu2B8gFOyDxVqs3R/+r4Eq6F8rMwsnza3cbCy+u/sHjs=
X-Received: by 2002:a05:6830:1f0b:: with SMTP id
 u11mr23846230otg.263.1565654075918; 
 Mon, 12 Aug 2019 16:54:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190810052829.6032-1-tiny.windzz@gmail.com>
 <20190810052829.6032-9-tiny.windzz@gmail.com>
 <CA+E=qVfp-rProxOwX__J6jM-pZ9g_SmeuOCOgvC_5DJVQw4OGw@mail.gmail.com>
 <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
In-Reply-To: <CAEExFWubLqtPZ=ZKJTCb6x2-PeYebXb3sr-t-XvtrLJTRiUU1A@mail.gmail.com>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Mon, 12 Aug 2019 16:54:15 -0700
Message-ID: <CA+E=qVf9V9iTvCfXXyjqKeviCJOvYpKUO8qw6cQsKqoaRmdKYQ@mail.gmail.com>
Subject: Re: [PATCH v5 08/18] thermal: sun8i: support mod clocks
To: Frank Lee <tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_165437_069069_01EDC4FA 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
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

On Mon, Aug 12, 2019 at 4:46 PM Frank Lee <tiny.windzz@gmail.com> wrote:
>
> HI Vasily,
>
> On Sat, Aug 10, 2019 at 2:17 PM Vasily Khoruzhick <anarsoul@gmail.com> wrote:
> >
> > On Fri, Aug 9, 2019 at 10:31 PM Yangtao Li <tiny.windzz@gmail.com> wrote:
> > >
> > > H3 has extra clock, so introduce something in ths_thermal_chip/ths_device
> > > and adds the process of the clock.
> > >
> > > This is pre-work for supprt it.
> > >
> > > Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> > > ---
> > >  drivers/thermal/sun8i_thermal.c | 17 ++++++++++++++++-
> > >  1 file changed, 16 insertions(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
> > > index b934bc81eba7..6f4294c2aba7 100644
> > > --- a/drivers/thermal/sun8i_thermal.c
> > > +++ b/drivers/thermal/sun8i_thermal.c
> > > @@ -54,6 +54,7 @@ struct tsensor {
> > >  };
> > >
> > >  struct ths_thermal_chip {
> > > +       bool            has_mod_clk;
> > >         int             sensor_num;
> > >         int             offset;
> > >         int             scale;
> > > @@ -69,6 +70,7 @@ struct ths_device {
> > >         struct regmap                           *regmap;
> > >         struct reset_control                    *reset;
> > >         struct clk                              *bus_clk;
> > > +       struct clk                              *mod_clk;
> > >         struct tsensor                          sensor[MAX_SENSOR_NUM];
> > >  };
> > >
> > > @@ -274,6 +276,12 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
> > >         if (IS_ERR(tmdev->bus_clk))
> > >                 return PTR_ERR(tmdev->bus_clk);
> > >
> > > +       if (tmdev->chip->has_mod_clk) {
> > > +               tmdev->mod_clk = devm_clk_get(&pdev->dev, "mod");
> > > +               if (IS_ERR(tmdev->mod_clk))
> > > +                       return PTR_ERR(tmdev->mod_clk);
> > > +       }
> > > +
> > >         ret = reset_control_deassert(tmdev->reset);
> > >         if (ret)
> > >                 return ret;
> > > @@ -282,12 +290,18 @@ static int sun8i_ths_resource_init(struct ths_device *tmdev)
> > >         if (ret)
> > >                 goto assert_reset;
> > >
> > > -       ret = sun50i_ths_calibrate(tmdev);
> > > +       ret = clk_prepare_enable(tmdev->mod_clk);
> >
> > You have to set rate of modclk before enabling it since you can't rely
> > on whatever bootloader left for you.
> >
> > Also I found that parameters you're using for PC_TEMP_PERIOD, ACQ0 and
> > ACQ1 are too aggressive and may result in high interrupt rate to the
> > point when it may stall RCU. I changed driver a bit to use params from
> > Philipp Rossak's work (modclk set to 4MHz, PC_TEMP_PERIOD is 7, ACQ0
> > is 255, ACQ1 is 63) and it fixed RCU stalls for me, see [1] for
> > details.
>
> Why is the RCU stall happening, is it caused by a deadlock?
> Can you provide log information and your configuration?
> I am a bit curious.

It's not deadlock, I believe it just can't handle that many interrupts
when running at lowest CPU frequency. Even with Philipp's settings
there's ~20 interrupts a second from ths. I don't remember how many
interrupts were there with your settings.

Unfortunately there's nothing interesting in backtraces, I'm using
Pine64-LTS board.

> Thx,
> Yangtao
>
> >
> > [1] https://github.com/anarsoul/linux-2.6/commit/46b8bb0fe2ccd1cd88fa9181a2ecbf79e8d513b2
> >
> >
> > >         if (ret)
> > >                 goto bus_disable;
> > >
> > > +       ret = sun50i_ths_calibrate(tmdev);
> > > +       if (ret)
> > > +               goto mod_disable;
> > > +
> > >         return 0;
> > >
> > > +mod_disable:
> > > +       clk_disable_unprepare(tmdev->mod_clk);
> > >  bus_disable:
> > >         clk_disable_unprepare(tmdev->bus_clk);
> > >  assert_reset:
> > > @@ -395,6 +409,7 @@ static int sun8i_ths_remove(struct platform_device *pdev)
> > >  {
> > >         struct ths_device *tmdev = platform_get_drvdata(pdev);
> > >
> > > +       clk_disable_unprepare(tmdev->mod_clk);
> > >         clk_disable_unprepare(tmdev->bus_clk);
> > >         reset_control_assert(tmdev->reset);
> > >
> > > --
> > > 2.17.1
> > >
> > >
> > > _______________________________________________
> > > linux-arm-kernel mailing list
> > > linux-arm-kernel@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
