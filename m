Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B718C52001
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 02:34:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3rfr/se8SHfELHKBwzuuPZPxWGbFA6fJAZZH0zhF9XU=; b=RByCA5Jb4nZRtN
	XUF+gcnQS8F2eOCUlTSh3d5XQjFiCGt3uF2AZHlxT60uyvuDu0MnRgqQGgVAa7aU/dO+J6NyWNYP9
	xlEvfc1g1kaKQYI7DEyNLEON3+VI3nO+K6MTGXQFePimnVJcJOnAkc8yHMkocSr0WPKYvd26cGyq3
	grtgJBokhdJ129uqbdhmziX1mL36nF51fhYssMddd6a4PVN2z4j+DVA4ohjq0Mpem5OumuBqrRdvi
	5rNQ9rumYiLVq8OsAgm+crGnC5l9I9cRafI199zTKKtYTdEtucIzqRRMnmiaXgg+hSJcjgs/nCn82
	mpTfq/OO0qFFDBxlLfbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfZPs-0005b9-8f; Tue, 25 Jun 2019 00:34:32 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfZPg-0005Zy-Em
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 00:34:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1561422856; bh=SAEMPbmxeu7m0Y//z90oADzcHzVh2j7BB+u/AqgsHo8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=M3Mx03zHZoWjWMLDUIXj+6JlO5AkAaCYhq9l+eHtkvD/bPeEvkhH+2Pdzk5eNkelh
 Q69lpW/tPX5bJEyBits0Ogi5Lrxqdq7RypDZU95WByYtLSGWnsIqO8t7qeU5/X24Ej
 Tz/LSsJ8eCvyrTUfK65aqQbuSiZPIjfLLdyhthPw=
Date: Tue, 25 Jun 2019 02:34:16 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v4 08/11] thermal: sun8i: support ahb clocks
Message-ID: <20190625003416.pxve36mrxmotg2bq@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Yangtao Li <tiny.windzz@gmail.com>, mark.rutland@arm.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 gregkh@linuxfoundation.org, linus.walleij@linaro.org,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 edubezval@gmail.com, wens@csie.org, robh+dt@kernel.org,
 mchehab+samsung@kernel.org, rui.zhang@intel.com,
 paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
References: <20190623164206.7467-1-tiny.windzz@gmail.com>
 <20190623164206.7467-9-tiny.windzz@gmail.com>
 <20190624182333.di7avywtdvzwukms@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624182333.di7avywtdvzwukms@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_173420_833685_D2E07845 
X-CRM114-Status: GOOD (  17.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, gregkh@linuxfoundation.org,
 linus.walleij@linaro.org, daniel.lezcano@linaro.org,
 linux-kernel@vger.kernel.org, edubezval@gmail.com, wens@csie.org,
 robh+dt@kernel.org, mchehab+samsung@kernel.org, rui.zhang@intel.com,
 paulmck@linux.ibm.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 08:23:33PM +0200, Maxime Ripard wrote:
> On Sun, Jun 23, 2019 at 12:42:03PM -0400, Yangtao Li wrote:
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
> > index ed1c19bb27cf..04f53ffb6a14 100644
> > --- a/drivers/thermal/sun8i_thermal.c
> > +++ b/drivers/thermal/sun8i_thermal.c
> > @@ -54,6 +54,7 @@ struct tsensor {
> >  };
> >
> >  struct ths_thermal_chip {
> > +	bool            has_ahb_clk;
> >  	int		sensor_num;
> >  	int		offset;
> >  	int		scale;
> > @@ -69,6 +70,7 @@ struct ths_device {
> >  	struct regmap				*regmap;
> >  	struct reset_control			*reset;
> >  	struct clk				*bus_clk;
> > +	struct clk                              *ahb_clk;
> 
> Hmm, thinking a bit about this, the name of those two clocks doesn't
> make sense. AHB is the bus being used to access that device, so the
> bus clock is the AHB clock.
> 
> What is that clock being used for?

To control the A/D and sample averaging logic, I suppose. It's controlled by the
THS_CLK_REG (THS Clock Register) in H3 user manual.

bus_clk controls THS_GATING in BUS_CLK_GATING_REG2 (THS module is connected to
APB bus).

I'd call it ths_clk and bus_clk.

regards,
	o.

> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
