Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F8978FC4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 17:49:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5vlMq3ifiIeBoN9ca/n/wUuEpZBbVTo27ASmaEi2+bo=; b=Exuz+KHxzmT6PN
	H9B8D03emZQLdqFGtff23H4K4GNXvuEc741HTk1ItawHYbFDlHtKNZg83CdrflvJC+vKMrmAB+3zU
	IhTse296MQxZ79P83G9gksq+GfJyD+bvbe6lXoEZIDjRRqt+wfWaQGO7BMbUUJdh1DjFnu1NaowFM
	//OjLKCmp0fXnQwbn38lPVq2D5MvQmtxBc6cHaLBkJMGIiCvuIMt3unDWbIh8VJfXapOh3McE2e9D
	/G/eYoOONip3B80SPmBdZW86t70WIHge2AtJ+dFlFiIwMkfnwxWGFUfnzMEX6wLdKEBom2NDbVEBf
	SGOhRehZtehh2fOch8kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs7tT-0005rd-GQ; Mon, 29 Jul 2019 15:48:59 +0000
Received: from mailoutvs12.siol.net ([185.57.226.203] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs7tF-0005qO-Fc
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 15:48:47 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 4F143520794;
 Mon, 29 Jul 2019 17:48:39 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id UWI1rWW0TD-m; Mon, 29 Jul 2019 17:48:39 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E201C5205D8;
 Mon, 29 Jul 2019 17:48:38 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-194-152-11-237.cable.triera.net
 [194.152.11.237]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id AA376522650;
 Mon, 29 Jul 2019 17:48:36 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Uwe =?ISO-8859-1?Q?Kleine=2DK=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Date: Mon, 29 Jul 2019 17:48:36 +0200
Message-ID: <4022372.WfP88Fa4Lu@jernej-laptop>
In-Reply-To: <20190729063825.wxfky6nswcru26g7@pengutronix.de>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
 <20190729063825.wxfky6nswcru26g7@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_084845_684916_1B0E6D57 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.203 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: mark.rutland@arm.com, linux-pwm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, robh+dt@kernel.org, thierry.reding@gmail.com,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Uwe,

Dne ponedeljek, 29. julij 2019 ob 08:38:25 CEST je Uwe Kleine-K=F6nig =

napisal(a):
> Hello,
> =

> On Fri, Jul 26, 2019 at 08:40:42PM +0200, Jernej Skrabec wrote:
> > H6 PWM core needs bus clock to be enabled in order to work.
> > =

> > Add a quirk for it.
> > =

> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > =

> >  drivers/pwm/pwm-sun4i.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > =

> > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > index 1b7be8fbde86..7d3ac3f2dc3f 100644
> > --- a/drivers/pwm/pwm-sun4i.c
> > +++ b/drivers/pwm/pwm-sun4i.c
> > @@ -72,6 +72,7 @@ static const u32 prescaler_table[] =3D {
> > =

> >  };
> >  =

> >  struct sun4i_pwm_data {
> > =

> > +	bool has_bus_clock;
> > =

> >  	bool has_prescaler_bypass;
> >  	bool has_reset;
> >  	unsigned int npwm;
> > =

> > @@ -79,6 +80,7 @@ struct sun4i_pwm_data {
> > =

> >  struct sun4i_pwm_chip {
> >  =

> >  	struct pwm_chip chip;
> > =

> > +	struct clk *bus_clk;
> > =

> >  	struct clk *clk;
> >  	struct reset_control *rst;
> >  	void __iomem *base;
> > =

> > @@ -382,6 +384,16 @@ static int sun4i_pwm_probe(struct platform_device
> > *pdev)> =

> >  		reset_control_deassert(pwm->rst);
> >  	=

> >  	}
> > =

> > +	if (pwm->data->has_bus_clock) {
> > +		pwm->bus_clk =3D devm_clk_get(&pdev->dev, "bus");
> =

> Similar to my suggestion in patch 2: I'd use devm_clk_get_optional() and
> drop struct sun4i_pwm_data::has_bus_clock.

This one is not so simple. This patch has incorrect logic. Correct logic wo=
uld =

be to use "devm_clk_get(&pdev->dev, NULL)" for variants without bus clock a=
s =

it is done already and "devm_clk_get(&pdev->dev, "bus")" and =

"devm_clk_get(&pdev->dev, "mod")" for variants with bus clock.

You see, DT nodes for other variants don't have clock-names property at all=
. =

If it would be specified, it would be "mod". So, DT nodes for other variant=
s =

have "mod" clock specified on first place (the only one), while H6 DT node =
will =

have "mod" clock specified on second place (see one of e-mails from Maxime)=
, so =

"NULL" can't be used instead of "mod" in both cases.

So I would say quirk is beneficial to know if you have to look up clocks by =

name or you just take first clock specified.

Best regards,
Jernej

> =

> Best regards
> Uwe





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
