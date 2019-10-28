Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3014E7416
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 15:55:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Subject:From:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w+5pLQJy7+JkjpXsIxyVodr4noxwBVjnvDfP5G23I4c=; b=OvryRH4BCxxU2I
	BrkBZ6hapoRe7bIZRJ/nXgCGpdbykByrT26KLSFJkzL575DbQI2qfGthTGRUZciaa5C2kPBFixNOO
	cyMQ5h5+LhskB0O9/EqkAlO6vGr0Xl1Ykh12py8rf3DzRGB7fmcz8j5o4cjaYv4j8EAUeJ9HCFvmI
	TU+ZSMRpkS8IJvMmSnpi0NtBf7ygnbKDZiFuyqTf/9/QmCThXW3CrQyG1YVtxVZCF6+Fl+FAw6DIE
	Zrb7oH+gyDNk6YHzodefRCyHsvFJyIC3+pasqLM237ncGSIZe5YsyWNf/6/fclRtVQmga4VC0Fdh7
	buIYRRx/s1VDkfm4mX2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP6QP-0007z1-S5; Mon, 28 Oct 2019 14:55:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP6Q4-0007wy-BZ
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 14:54:57 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ECD1C208C0;
 Mon, 28 Oct 2019 14:54:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572274496;
 bh=bDAkpnmPbY0ZEBQT9bdhKA6sZJqE13qWHCAXPLM5+Zc=;
 h=In-Reply-To:References:Cc:From:Subject:To:Date:From;
 b=G8qf+aG5E6ldgTjwdWHE20INP+M/SELSiDe4GvmI/hK2p3D/89WvwEef/IijeN5oi
 QaAYABonL9IlTYVfWZVrAadRdr5eCdUOrhy7wUz8/ewOxgBxrSZDa73NnLaA7zvoH9
 jKCjw+Rq1/nQDzxl8EpspAyAIZICYMWdE1LURhAk=
MIME-Version: 1.0
In-Reply-To: <20191005200521.GB4254@piout.net>
References: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
 <20190924122147.fojcu5u44letrele@pengutronix.de>
 <20190924202015.EFEBF20640@mail.kernel.org> <20191005200521.GB4254@piout.net>
From: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: avoid sleeping early
To: Alexandre Belloni <alexandre.belloni@bootlin.com>
User-Agent: alot/0.8.1
Date: Mon, 28 Oct 2019 07:54:55 -0700
Message-Id: <20191028145455.ECD1C208C0@mail.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_075456_435232_46C1D908 
X-CRM114-Status: GOOD (  21.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Claudiu Beznea <claudiu.beznea@microchip.com>, u.kleine-koenig@pengutronix.de,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Alexandre Belloni (2019-10-05 13:05:21)
> On 24/09/2019 13:20:15-0700, Stephen Boyd wrote:
> > Quoting Uwe  (2019-09-24 05:21:47)
> > > On Fri, Sep 20, 2019 at 05:39:06PM +0200, Alexandre Belloni wrote:
> > > > Note that this was already discussed a while ago and Arnd said this approach was
> > > > reasonable:
> > > >   https://lore.kernel.org/lkml/6120818.MyeJZ74hYa@wuerfel/
> > > > 
> > > >  drivers/clk/at91/clk-main.c |  5 ++++-
> > > >  drivers/clk/at91/sckc.c     | 20 ++++++++++++++++----
> > > >  2 files changed, 20 insertions(+), 5 deletions(-)
> > > > 
> > > > diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> > > > index f607ee702c83..ccd48e7a3d74 100644
> > > > --- a/drivers/clk/at91/clk-main.c
> > > > +++ b/drivers/clk/at91/clk-main.c
> > > > @@ -293,7 +293,10 @@ static int clk_main_probe_frequency(struct regmap *regmap)
> > > >               regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
> > > >               if (mcfr & AT91_PMC_MAINRDY)
> > > >                       return 0;
> > > > -             usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> > > > +             if (system_state < SYSTEM_RUNNING)
> > > > +                     udelay(MAINF_LOOP_MIN_WAIT);
> > > > +             else
> > > > +                     usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> > > 
> > > Given that this construct is introduced several times, I wonder if we
> > > want something like:
> > > 
> > >         static inline void early_usleep_range(unsigned long min, unsigned long max)
> > >         {
> > >                 if (system_state < SYSTEM_RUNNING)
> > >                         udelay(min);
> > >                 else
> > >                         usleep_range(min, max);
> > >         }
> > > 
> > 
> > Maybe, but I think the intent is to not encourage this behavior? So
> > providing a wrapper will make it "easy" and then we'll have to tell
> > users to stop calling it. Another idea would be to make usleep_range()
> > "do the right thing" and call udelay if the system isn't running. And
> > another idea from tlgx[1] is to pull the delay logic into another clk op
> > that we can call to see when the enable or prepare is done. That may be
> > possible by introducing another clk_ops callback that when present
> > indicates we should sleep or delay for so much time while waiting for
> > the prepare or enable to complete.
> > 
> > [1] https://lkml.kernel.org/r/alpine.DEB.2.11.1606061448010.28031@nanos
> > 
> 
> Do you want me to implement that now or are you planning to apply the
> patch in the meantime ?
> 
> 
 
I'll just apply this for now to clk-fixes and merge it up next week. It
would be great to do the other idea though, as a long term effort to
reduce all the busy loop code we have in clk drivers. No worries, I'll
put it on the todo list.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
