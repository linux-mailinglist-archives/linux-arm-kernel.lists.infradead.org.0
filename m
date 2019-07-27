Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2135977929
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 16:17:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oLwQHCEzTu7gxYJ7NUw01tbX5+SkZL9SwkYQGdjxuEw=; b=WLvg9TgRz3490l
	bd47+61Ba0TTRJmnh0M1QLfbryQ7/2Tuodo/19Fy0bfW7jdevZUhLJCxQsVdMj5dSqlr7vUDKYrWg
	iXOB+o5JjoquPs7Fzj9X+i6eM4uWbOf3hQxPeSxdUPHEblp9oeoNBOI4m2Sfqprwc3tFdnddc+7Cw
	GvJz0+/gCLCxXzt/RzxsQZGkUDeurpQVrO3aabQ9FS6wUa/wHVTzmVFejD7bg7sS1I43Xv+ZDp3UP
	dJSdvJn/7QjvqFuXy4JX5AJW43ZGMifZv1tPJCrFbUp0Y2xLmqZiURUP0CQv+pIh40flcL71cxk3e
	m1Y/haG3Ws5u1dfQC/Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrNVl-0004mA-JC; Sat, 27 Jul 2019 14:17:25 +0000
Received: from mailoutvs40.siol.net ([185.57.226.231] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrNUN-0004lK-0H
 for linux-arm-kernel@lists.infradead.org; Sat, 27 Jul 2019 14:16:11 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTP id CA74F521268;
 Sat, 27 Jul 2019 16:15:50 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta12.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta12.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id hbLuWxG2e3C6; Sat, 27 Jul 2019 16:15:50 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Zimbra) with ESMTPS id 647CA5212C6;
 Sat, 27 Jul 2019 16:15:50 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Zimbra) with ESMTPA id 9D7F3521268;
 Sat, 27 Jul 2019 16:15:49 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 3/6] pwm: sun4i: Add a quirk for bus clock
Date: Sat, 27 Jul 2019 16:15:49 +0200
Message-ID: <2870898.N5hf0jI4cO@jernej-laptop>
In-Reply-To: <20190727104628.jsdvpxvcpzru75v5@flea.home>
References: <20190726184045.14669-1-jernej.skrabec@siol.net>
 <20190726184045.14669-4-jernej.skrabec@siol.net>
 <20190727104628.jsdvpxvcpzru75v5@flea.home>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_071600_136581_7A1DD5C5 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.231 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 wens@csie.org, thierry.reding@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne sobota, 27. julij 2019 ob 12:46:28 CEST je Maxime Ripard napisal(a):
> Hi,
> 
> On Fri, Jul 26, 2019 at 08:40:42PM +0200, Jernej Skrabec wrote:
> > H6 PWM core needs bus clock to be enabled in order to work.
> > 
> > Add a quirk for it.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/pwm/pwm-sun4i.c | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> > 
> > diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> > index 1b7be8fbde86..7d3ac3f2dc3f 100644
> > --- a/drivers/pwm/pwm-sun4i.c
> > +++ b/drivers/pwm/pwm-sun4i.c
> > @@ -72,6 +72,7 @@ static const u32 prescaler_table[] = {
> > 
> >  };
> >  
> >  struct sun4i_pwm_data {
> > 
> > +	bool has_bus_clock;
> > 
> >  	bool has_prescaler_bypass;
> >  	bool has_reset;
> >  	unsigned int npwm;
> > 
> > @@ -79,6 +80,7 @@ struct sun4i_pwm_data {
> > 
> >  struct sun4i_pwm_chip {
> >  
> >  	struct pwm_chip chip;
> > 
> > +	struct clk *bus_clk;
> > 
> >  	struct clk *clk;
> >  	struct reset_control *rst;
> >  	void __iomem *base;
> > 
> > @@ -382,6 +384,16 @@ static int sun4i_pwm_probe(struct platform_device
> > *pdev)> 
> >  		reset_control_deassert(pwm->rst);
> >  	
> >  	}
> > 
> > +	if (pwm->data->has_bus_clock) {
> > +		pwm->bus_clk = devm_clk_get(&pdev->dev, "bus");
> > +		if (IS_ERR(pwm->bus_clk)) {
> > +			ret = PTR_ERR(pwm->bus_clk);
> > +			goto err_bus;
> > +		}
> > +
> > +		clk_prepare_enable(pwm->bus_clk);
> > +	}
> > +
> 
> The patch itself looks fine, but you should clarify which clock is
> being used by the old driver.
> 
> My guess is that the "new" clock is actually the mod one, while the
> old one was both the clock of the register interface (bus) and the
> clock of the PWM generation logic (mod).

Well, I checked few datasheets and nowhere is explicitly stated what is the 
bus clock, but I would make same guess as you.

Anyway, since you requested that order of the clocks has to be changed, I have 
to separately obtain clocks if there is bus clock present too or not. If it 
is, both clocks have to be obtained by name, and if not, old code without name 
can be used.

Best regards,
Jernej

> 
> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
