Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3D97CCCA0
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  5 Oct 2019 22:06:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i6Rna1B4jyv0QH1+nmyXl+KtRhSUeImYdZLLzp5liEU=; b=hvnQznWP2d57QU
	JZuhZG9sygs+WhNkpDUgztFotV3GtI1+3SvS7k+N8+mwgmm0l8eHMG1qz+7LcS5aDGm3OmsgGu4PR
	R7Srh0DX1M8L00K0Hw3PoImyARcgWIpos8ThO5l1YF1y4HIPMN6Y1gVLCSmuZfHKDKRStC5rPYybW
	xBxtXUimQfbfa7v774BUXXnD04Y8H8FkL1EPc8kphtLSfCO2ptYaHEytnWs+TwBUGUh6UME3RuxUn
	kTafMwsk4BfyJibXANTSjnUKXL5Qiy8H+VD+OpcgW1kyI5mhsayNFuG4x652xNUkjVh8eRrNflEyx
	C3Q1OsNBDWEnunKgGKiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGqJj-0007Xb-Ox; Sat, 05 Oct 2019 20:06:15 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGqJd-0007Vq-47
 for linux-arm-kernel@bombadil.infradead.org; Sat, 05 Oct 2019 20:06:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=U28BGo57vHyLhx+HC/oKKAMSIFVKk58Soxew2adzCxs=; b=ueC4DJv0+iE+NB0iPOaTBIP8w
 pcymG+XtyeQPIVOnPhmEzboFHiZXzaY1tOEoJND4VhzGRXSvVai0Rewz2b+f7as5SjaLQuSBWnBBN
 qSTyEDXbiRxmHeCAFX3I6BVe18r7N7Z1Ihkl1kE3puvZta8OXmiqKqKBVF0qeGieyam53CVnJUEyI
 VAu4leeI9/v2xo6TLgBm8PJEFplBBusTGElSmK+CnUB7Z386a+R0PlGUmKoWVBupsi76tu2zJPAUQ
 hrHuROq+kwirB7SOqLv0KTKW8YeB7AYBw6E5Ms+NGVmqtU1ZXE0e5VCZN5TBeDNf3av3RK43FaIJZ
 viqrs+g0A==;
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by casper.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGqJx-0004Av-QO
 for linux-arm-kernel@lists.infradead.org; Sat, 05 Oct 2019 20:06:32 +0000
X-Originating-IP: 86.202.229.42
Received: from localhost (lfbn-lyo-1-146-42.w86-202.abo.wanadoo.fr
 [86.202.229.42])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 0621D60004;
 Sat,  5 Oct 2019 20:05:21 +0000 (UTC)
Date: Sat, 5 Oct 2019 22:05:21 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: at91: avoid sleeping early
Message-ID: <20191005200521.GB4254@piout.net>
References: <20190920153906.20887-1-alexandre.belloni@bootlin.com>
 <20190924122147.fojcu5u44letrele@pengutronix.de>
 <20190924202015.EFEBF20640@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924202015.EFEBF20640@mail.kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191005_210630_271931_CF4A5BC9 
X-CRM114-Status: GOOD (  24.09  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On 24/09/2019 13:20:15-0700, Stephen Boyd wrote:
> Quoting Uwe  (2019-09-24 05:21:47)
> > On Fri, Sep 20, 2019 at 05:39:06PM +0200, Alexandre Belloni wrote:
> > > Note that this was already discussed a while ago and Arnd said this approach was
> > > reasonable:
> > >   https://lore.kernel.org/lkml/6120818.MyeJZ74hYa@wuerfel/
> > > 
> > >  drivers/clk/at91/clk-main.c |  5 ++++-
> > >  drivers/clk/at91/sckc.c     | 20 ++++++++++++++++----
> > >  2 files changed, 20 insertions(+), 5 deletions(-)
> > > 
> > > diff --git a/drivers/clk/at91/clk-main.c b/drivers/clk/at91/clk-main.c
> > > index f607ee702c83..ccd48e7a3d74 100644
> > > --- a/drivers/clk/at91/clk-main.c
> > > +++ b/drivers/clk/at91/clk-main.c
> > > @@ -293,7 +293,10 @@ static int clk_main_probe_frequency(struct regmap *regmap)
> > >               regmap_read(regmap, AT91_CKGR_MCFR, &mcfr);
> > >               if (mcfr & AT91_PMC_MAINRDY)
> > >                       return 0;
> > > -             usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> > > +             if (system_state < SYSTEM_RUNNING)
> > > +                     udelay(MAINF_LOOP_MIN_WAIT);
> > > +             else
> > > +                     usleep_range(MAINF_LOOP_MIN_WAIT, MAINF_LOOP_MAX_WAIT);
> > 
> > Given that this construct is introduced several times, I wonder if we
> > want something like:
> > 
> >         static inline void early_usleep_range(unsigned long min, unsigned long max)
> >         {
> >                 if (system_state < SYSTEM_RUNNING)
> >                         udelay(min);
> >                 else
> >                         usleep_range(min, max);
> >         }
> > 
> 
> Maybe, but I think the intent is to not encourage this behavior? So
> providing a wrapper will make it "easy" and then we'll have to tell
> users to stop calling it. Another idea would be to make usleep_range()
> "do the right thing" and call udelay if the system isn't running. And
> another idea from tlgx[1] is to pull the delay logic into another clk op
> that we can call to see when the enable or prepare is done. That may be
> possible by introducing another clk_ops callback that when present
> indicates we should sleep or delay for so much time while waiting for
> the prepare or enable to complete.
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.11.1606061448010.28031@nanos
> 

Do you want me to implement that now or are you planning to apply the
patch in the meantime ?


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
