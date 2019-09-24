Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48185BD374
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 22:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:From:To:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MDzBeHXWCawK+mfdxCnx+bOC5n6DOaPJQoXcWPM3sDE=; b=dg9VJ5Icz5d8m8
	lvc/LB2yYFlGxQG3qh30SlWWO5Opdi2dLUsm9Ezvws6Gx8Prf3qUF3uvtl9BYdRIdZjjC4PLM0QLk
	FB2Mu5/KKFjrKL1ykF6FLvUj6hF4yjyrGmkfexVv6U1b4fTYtOx22KGLzGNepStDRLG29eBDhU+M+
	x3f/fAeYgg8yyHdZ9Gw9YvA27VAfVRhFZAQF4pH3+mvr+cDx7WJp79QgWb+ABk1KtL+vKi+c/K5es
	QoJQH/i0dWa+juaKqlLXQ+7/7RsNKh3D4oFFY+DkIhIu18Xz8CnPvxaGcb2vk1sjhdDk7y6JkqnTS
	Ylah06mJVOiehCq5P9xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCrIT-0003E6-Bf; Tue, 24 Sep 2019 20:20:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCrIG-0003Dg-Pu
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 20:20:18 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFEBF20640;
 Tue, 24 Sep 2019 20:20:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569356416;
 bh=1CorAmS8XtFV4yXtNftl8NnpMjYiQ/U6EHGYysnVmmQ=;
 h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
 b=T3Vd7fmkABMggKs4QJTa2QS19/Mp7JeXBuGWJlrfj3AFrKdWzVDNxkS27ltN080+7
 PForK+42VCuwL8nN5QWwd2rPhWVhehGEznqoSpWz83fT9hZnFIx4GKMAy5tJp/gpMe
 MuKGeKUfk4UUuysJNCgXkDzyWtCaFhrUZebjkbOI=
MIME-Version: 1.0
In-Reply-To: <20190924122147.fojcu5u44letrele@pengutronix.de>
References: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
 <20190924122147.fojcu5u44letrele@pengutronix.de>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 <u.kleine-koenig@pengutronix.de>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: avoid sleeping early
User-Agent: alot/0.8.1
Date: Tue, 24 Sep 2019 13:20:15 -0700
Message-Id: <20190924202015.EFEBF20640@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_132016_866640_500FA96B 
X-CRM114-Status: GOOD (  15.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Uwe  (2019-09-24 05:21:47)
> On Fri, Sep 20, 2019 at 05:39:06PM +0200, Alexandre Belloni wrote:
> > Note that this was already discussed a while ago and Arnd said this approach was
> > reasonable:
> >   https://lore.kernel.org/lkml/6120818.MyeJZ74hYa@wuerfel/
> > 
> >  drivers/clk/at91/clk-main.c |  5 ++++-
> >  drivers/clk/at91/sckc.c     | 20 ++++++++++++++++----
> >  2 files changed, 20 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> > index f607ee702c83..ccd48e7a3d74 100644
> > --- a/drivers/clk/at91/clk-main.c
> > +++ b/drivers/clk/at91/clk-main.c
> > @@ -293,7 +293,10 @@ static int clk_main_probe_frequency(struct regmap *regmap)
> >               regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
> >               if (mcfr & AT91_PMC_MAINRDY)
> >                       return 0;
> > -             usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> > +             if (system_state < SYSTEM_RUNNING)
> > +                     udelay(MAINF_LOOP_MIN_WAIT);
> > +             else
> > +                     usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> 
> Given that this construct is introduced several times, I wonder if we
> want something like:
> 
>         static inline void early_usleep_range(unsigned long min, unsigned long max)
>         {
>                 if (system_state < SYSTEM_RUNNING)
>                         udelay(min);
>                 else
>                         usleep_range(min, max);
>         }
> 

Maybe, but I think the intent is to not encourage this behavior? So
providing a wrapper will make it "easy" and then we'll have to tell
users to stop calling it. Another idea would be to make usleep_range()
"do the right thing" and call udelay if the system isn't running. And
another idea from tlgx[1] is to pull the delay logic into another clk op
that we can call to see when the enable or prepare is done. That may be
possible by introducing another clk_ops callback that when present
indicates we should sleep or delay for so much time while waiting for
the prepare or enable to complete.

[1] https://lkml.kernel.org/r/alpine.DEB.2.11.1606061448010.28031@nanos


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
