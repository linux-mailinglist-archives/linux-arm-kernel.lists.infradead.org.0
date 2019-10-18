Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5261DC2F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 12:39:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ez2AlsC9BNF91iaVQ+ZPeUuIKpUb3MqRbUz9VXXrTGQ=; b=N3let03bYLHLUj
	tVNMs1EgJx3jdDa9tTmXsWa1DSBqLFFADmSoMkMYeOOfJ4S6s5KOkPMtxqPsQEX2ohReXKm2H5icZ
	9d2oCCmQYjVrrNTZ9Vyo5rZaQZpPEWRBRssvGv60Vnf32myWw3HrqAVOJn7xAelrkArleJDW8l6gj
	DmiMb+W/gZFZ7SyZsSNFhmlMv5ySJagHePr5EveYBPfuKxPDIopkxE/Uw7DQQk5GHNI+8sMCAsNQF
	FZZRYJj+sPnfBTVRROVpuPEg/iWiSdD8r3ZuJxGtPRbJvQ9EybnkvH5NEeL6E+r/jqoBR1hOilru4
	EbDQSwNNYknURDUy7Nwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLPfO-0007Cq-LJ; Fri, 18 Oct 2019 10:39:30 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLPfF-0007Bw-3z
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 10:39:22 +0000
Received: by mail-ed1-x543.google.com with SMTP id v8so4201647eds.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 03:39:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TdGZ/O1UBefa0/Aw3vNnx5zYKetp+so1lp2xpas4umw=;
 b=mEHKyOoTqwmR0aTE5OFLDghsTCB1Biaiy9UW26U9qCuaq2iKlynp+5R60NwG2zQoA+
 eQ1yHJYUuhWt6BYmxywdlbb3UKjpI6eNc2EskkhrTvpzSzq8QgmVafMzyay88Cuzewkt
 xWg6HLQqtUDtm1UD+ZxdHdTEJbrL8HuAbvCaT+9u4eiWMq7DDyYHt/CQzpUF6JeHDhru
 oNFOoPhIKHkPPOokpuk8cTKvKlEvCzb7PvbFFKcgK0qZUpBWyB8LIoK2fKEzI5z2ptoN
 8xRZ0AvKeQKyNA86QSGbipvZjS/4BwpaqwF0fZEUYo8/eVoaC5Uk6aomkkaquXT44XS7
 wU/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TdGZ/O1UBefa0/Aw3vNnx5zYKetp+so1lp2xpas4umw=;
 b=lOsSYej6a98HTgQJJWlW2+SgKBfnRIvofWsnlP2RWBqZOI4AM+Eptojt8Wgj2ePDvg
 SkZN9UEiSyiKSPZLg2Ctve3diFNicYMLVaIhjvGWsWV9UxToe4B33wUJUaFe/NxNHdIM
 TowPwGJLKuu9s2NCdnrhHxp+xOouKe0VitFnUpEKlikHZOhJUh8/kKED5KKtA9Hq88vV
 oRQUE7aN4oQ0LTd7UmC52bsQc6+Xiux1YAZiac5/t/QSRlF5+POejfp9GxeBgBOYKj84
 V4tlcbAmsI6RWrG7/ZO3/pwikrcVlnCXOmtCkVuUMeoZg6jCfQylf1nTyZ0HPvWBWY8N
 D/yg==
X-Gm-Message-State: APjAAAWOgTtUGYk+VKplf3dlLOaVyEgLD9wI1v42deMWnFeuYdZfuqOC
 +UTXdl/Hh9M+JAsNQ32pATdpHyWvsj2rPN61fx0=
X-Google-Smtp-Source: APXvYqxnhNJ1p2Qw24cDRg7N1pWEV2tiucdyj8NEuD+nENTq7YS/DvNr7sw2b18boMqr51gNammWqfUI3G6dIFr7HYc=
X-Received: by 2002:a17:906:8313:: with SMTP id
 j19mr8131952ejx.196.1571395159085; 
 Fri, 18 Oct 2019 03:39:19 -0700 (PDT)
MIME-Version: 1.0
References: <20191017025058.31528-1-hslester96@gmail.com>
 <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
In-Reply-To: <CAHp75Vd2SMERjtvNumxAF1HSp8GSThmcyx96zkFzUXKwnD5d2Q@mail.gmail.com>
From: Chuhong Yuan <hslester96@gmail.com>
Date: Fri, 18 Oct 2019 18:39:08 +0800
Message-ID: <CANhBUQ2yxGbjk_DgXbip=TPT=evzA5naoJSY9t1_Ep47e9oupw@mail.gmail.com>
Subject: Re: [PATCH] spi: pxa2xx: Add missed security checks
To: Andy Shevchenko <andy.shevchenko@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_033921_157449_F931609F 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi <linux-spi@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Oct 18, 2019 at 5:35 PM Andy Shevchenko
<andy.shevchenko@gmail.com> wrote:
>
> On Fri, Oct 18, 2019 at 8:59 AM Chuhong Yuan <hslester96@gmail.com> wrote:
> >
> > pxa2xx_spi_init_pdata misses checks for devm_clk_get and
> > platform_get_irq.
> > Add checks for them to fix the bugs.
> >
> > Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
> > ---
> >  drivers/spi/spi-pxa2xx.c | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
> > index bb6a14d1ab0f..2e73d75a6ac5 100644
> > --- a/drivers/spi/spi-pxa2xx.c
> > +++ b/drivers/spi/spi-pxa2xx.c
> > @@ -1565,7 +1565,13 @@ pxa2xx_spi_init_pdata(struct platform_device *pdev)
> >  #endif
> >
> >         ssp->clk = devm_clk_get(&pdev->dev, NULL);
> > +       if (IS_ERR(ssp->clk))
> > +               return NULL;
> > +
> >         ssp->irq = platform_get_irq(pdev, 0);
> > +       if (ssp->irq < 0)
> > +               return NULL;
>
> I'm not sure they are mandatory for all platforms.
> To be on the safe side, you simple need to add _optional() to the both
> call along with above change.
>

As I know, this is the only one in spi which does not have a check for
devm_clk_get.
Even if add _optional(), they still may return errors and need security checks.

> --
> With Best Regards,
> Andy Shevchenko

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
