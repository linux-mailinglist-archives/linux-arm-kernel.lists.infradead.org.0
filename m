Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57BDB6D332
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 19:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TQYj94P4XWicGuMIVpblPJtzDJQiwKDwV1NC6g5wmy4=; b=n/MGR+dRrnAV+N
	Sso9NH2bYYMW8HwxudNQJMMoWNzo8qRiddXPjlmZf8J2yXyefpdPgQSsFYltm1zEilnIRUQdMmxSM
	HJ8PsDZeqO85+NTEHW3djJtNItQf8bSkpZ6nH9FfSTYXuljPqneK/eWVJNML4LdH8dJ76gmcO9YVp
	srZ79Xswolbgcn45h/E3hBZ0DGseSPN+E9Rvl325Y0MJUkxmL70hqZkJRiT+EEz9s/eXF9u/cxMF4
	F1+F/D0Xugo1RRZ8gW81tg6OgSnMKROyNAPWRBSUzoBA5sUCUSjw6hEQwRdFLWvV4b6ZtkmPycXbZ
	FgSw3fDbujQacpGQRIhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoAZV-0007Ke-F6; Thu, 18 Jul 2019 17:52:01 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoAYm-0005Ba-Qr
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 17:51:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=92pp11O0w/KygeJfU6KKGXI60apu6fEQZEzEHiKx8AI=; b=06E/D9xSxeTyEkX282S8AJCHr
 jlsqmlbJjKEnRJO2K+WRb4bLh3dDu3Ysr85Nuu6aCgpOWauBUGRi/eeI1+SsoldJN3BnoGVeCFkLT
 jglWEMcIJmSVzXjiDc5OyPGuU7w7HlSwwo3CcXNdq3f45tU5t6B1KvOt//kDuEs/vPkAKhqan8KZg
 3JxUQKvhBvhw0iJmoM7Ls63K5LpHODzQ41UjKlnr4isPiD4I/xXLDckYUheivrj6jUC77FrdP+BHG
 2AR2wK696zW+t+K2e0bxiNYaq5yGHQef3xXcqtQBw/AAeQ2ombwAHa3V6mxpbTQVd5sB9xnxTx/ai
 R55qKMzwQ==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60468)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hoAWd-0008Hp-Ri; Thu, 18 Jul 2019 18:49:04 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hoAWb-0002kb-Qn; Thu, 18 Jul 2019 18:49:01 +0100
Date: Thu, 18 Jul 2019 18:49:01 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] ARM: sa1100: convert to common clock framework
Message-ID: <20190718174901.t6hlrdq6h3xhzlbj@shell.armlinux.org.uk>
References: <E1hhAN0-0007Jn-NP@rmk-PC.armlinux.org.uk>
 <20190718163809.9D25D217F4@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718163809.9D25D217F4@mail.kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_105117_120135_9C43D92C 
X-CRM114-Status: GOOD (  22.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Michael Turquette <mturquette@baylibre.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 09:38:08AM -0700, Stephen Boyd wrote:
> Quoting Russell King (2019-06-29 03:14:10)
> > Convert sa1100 to use the common clock framework.
> > 
> > Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> > ---
> > Please ack; this is part of a larger series.  Thanks.
> 
> Just a few minor comments but otherwise looks good to me.
> 
> > diff --git a/arch/arm/mach-sa1100/clock.c b/arch/arm/mach-sa1100/clock.c
> > index 6199e87447ca..523ef25618f7 100644
> > --- a/arch/arm/mach-sa1100/clock.c
> > +++ b/arch/arm/mach-sa1100/clock.c
> > +static const char * const clk_tucr_parents[] = {
> > +       "clk32768", "clk3686400",
> >  };
> 
> It would be great if you used the new way of specifying clk parents with
> direct pointers instead of strings. See commit fc0c209c147f ("clk: Allow
> parents to be specified without string names") for some details.

I don't see at the moment how this is used with clk-mux.c - can you
provide some hints?

> 
> >  
> > -struct clk {
> > -       const struct clkops     *ops;
> > -       unsigned int            enabled;
> > -};
> > -
> > -#define DEFINE_CLK(_name, _ops)                                \
> > -struct clk clk_##_name = {                             \
> > -               .ops    = _ops,                         \
> > -       }
> > -
> > -static DEFINE_SPINLOCK(clocks_lock);
> > -
> > -/* Dummy clk routine to build generic kernel parts that may be using them */
> > -long clk_round_rate(struct clk *clk, unsigned long rate)
> > -{
> > -       return clk_get_rate(clk);
> > -}
> > -EXPORT_SYMBOL(clk_round_rate);
> > -
> > -int clk_set_rate(struct clk *clk, unsigned long rate)
> > -{
> > -       return 0;
> > -}
> > -EXPORT_SYMBOL(clk_set_rate);
> > -
> > -int clk_set_parent(struct clk *clk, struct clk *parent)
> > -{
> > -       return 0;
> > -}
> > -EXPORT_SYMBOL(clk_set_parent);
> > +static DEFINE_SPINLOCK(tucr_lock);
> >  
> > -struct clk *clk_get_parent(struct clk *clk)
> > +static int clk_gpio27_enable(struct clk_hw *hw)
> >  {
> > -       return NULL;
> > -}
> > -EXPORT_SYMBOL(clk_get_parent);
> > +       unsigned long flags;
> >  
> > -static void clk_gpio27_enable(struct clk *clk)
> > -{
> >         /*
> >          * First, set up the 3.6864MHz clock on GPIO 27 for the SA-1111:
> >          * (SA-1110 Developer's Manual, section 9.1.2.1)
> >          */
> > +       local_irq_save(flags);
> >         GAFR |= GPIO_32_768kHz;
> >         GPDR |= GPIO_32_768kHz;
> > -       TUCR = TUCR_3_6864MHz;
> > +       local_irq_restore(flags);
> > +
> > +       return 0;
> >  }
> >  
> > -static void clk_gpio27_disable(struct clk *clk)
> > +static void clk_gpio27_disable(struct clk_hw *hw)
> >  {
> > -       TUCR = 0;
> > +       unsigned long flags;
> > +
> > +       local_irq_save(flags);
> 
> Why just disable irqs here?

What do you mean?  Do you mean "why are you only disabling IRQs and not
taking a spinlock" or do you mean "why are you disabling IRQs here" ?

> 
> >         GPDR &= ~GPIO_32_768kHz;
> >         GAFR &= ~GPIO_32_768kHz;
> > +       local_irq_restore(flags);
> >  }
> >  
> > -static void clk_cpu_enable(struct clk *clk)
> > -{
> > -}
> > +static const struct clk_ops clk_gpio27_ops = {
> > +       .enable = clk_gpio27_enable,
> > +       .disable = clk_gpio27_disable,
> > +};
> >  
> > -static void clk_cpu_disable(struct clk *clk)
> > -{
> > -}
> > +static const char * const clk_gpio27_parents[] = {
> > +       "tucr-mux",
> > +};
> >  
> > -static unsigned long clk_cpu_get_rate(struct clk *clk)
> > +static const struct clk_init_data clk_gpio27_init_data __initconst = {
> > +       .name = "gpio27",
> > +       .ops = &clk_gpio27_ops,
> > +       .parent_names = clk_gpio27_parents,
> > +       .num_parents = ARRAY_SIZE(clk_gpio27_parents),
> > +       .flags = CLK_IS_BASIC,
> 
> CLK_IS_BASIC is gone. Please don't use it.

The patch is against 5.1, and you're right, so that was removed for the
version that ended up going upstream.

> 
> > +};
> > +
> > +/*
> > + * Derived from the table 8-1 in the SA1110 manual, the MPLL appears to
> > + * multiply its input rate by 4 x (4 + PPCR).  This calculation gives
> > + * the exact rate.  The figures given in the table are the rates rounded
> > + * to 100kHz.  Stick with sa11x0_getspeed() for the time being.
> [...]
> > +static const struct clk_init_data clk_mpll_init_data __initconst = {
> > +       .name = "mpll",
> > +       .ops = &clk_mpll_ops,
> > +       .parent_names = clk_mpll_parents,
> > +       .num_parents = ARRAY_SIZE(clk_mpll_parents),
> > +       .flags = CLK_IS_BASIC | CLK_GET_RATE_NOCACHE | CLK_IS_CRITICAL,
> 
> Please add a comment about these last two flags so we know why the rate
> can't be cached and the clk is critical.

Ok, I'll do that with a follow-up patch once the merge window is over.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
