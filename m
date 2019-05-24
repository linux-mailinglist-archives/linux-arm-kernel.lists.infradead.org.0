Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332642957B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:08:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hMtG5uYvs5xcUwg13VclYNwy+6ax5o1YVquSBn6uXLk=; b=TTU5loUlz06viX
	nZqja/VEo+9CdQGfYHrAZSny2Pod+8BwKMVR0zlgU63VxDmu9wD1ofJ0S9Jt9I7YG70M9rBPzNqxr
	ADFPppILi1w4G4GkL//7dZhsWULl7LxAfCHTki8h/B0s1MBkT+lhtk4LlXDFfurkb96OsGXvFDcgR
	liCE4bRwRwbo64Incm4M8GnXDSZLfZyhnIPZuvn/AFIkzDLtd2GPDbXON5oLnLw/JlKf76XaHZmAo
	BktutaFoq9lUquYH6CYPXk3xosimIMidxm9U6Sx3VINbV8F56MOjfKeX2QMJieJ+Rirjn8WSI15is
	dlvk2Y0eb20T+tyB/N2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU77Y-0002C9-8r; Fri, 24 May 2019 10:08:16 +0000
Received: from mail-io1-xd41.google.com ([2607:f8b0:4864:20::d41])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU77D-0001yW-9A
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:08:01 +0000
Received: by mail-io1-xd41.google.com with SMTP id u2so7330633ioc.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 03:07:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TUgAZ6G4gvf+slUqb9uc+iwVC1m/3d6V2K633s4jrTg=;
 b=TF4cfbuIVUIf/mM/PjvuU2rmu3iPkhWBbwQvKTiRwPaDZyMqpwaKIV/Ucx5tADKIQ2
 HLgZhqUi739/CEIDRH8pBVVku19c3lIdQQttRRB+KAnl+kisiJ3tkBVxtDROIujKuFJY
 D29ppmoHxK/mAIUKubq81TwX1b4yPzj94Jlok=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TUgAZ6G4gvf+slUqb9uc+iwVC1m/3d6V2K633s4jrTg=;
 b=Bjn8QulpmOMZl0WOSq3G1IFMhRmd0UhuiBfFlfmX56/G1VHVBXwWthofiIn+fshIYi
 wAEM3/EbgOia3WlyBFT7ppxM2vAei/uf3CJpfQzAi0uZm9eP4AhLpe5+9xEgkKGbz/qA
 fTUu58f6cNQXwAZ6qmidH5evoF04b+Ov78HJ0vNe4u2GN/eQOpb8jp5Q8OmwiM31gOc1
 jZ+0Sp/F3IkPNvrCI36psii7+89U54RaKtzsps1FK7pIYNActu+oOdF89Ymhuiar2cip
 oyWdc12nAXMENQoZ+GI2hUtPOdI0/8e36TDenDdA4TcnNi22iE9F8SHqur9rCR/PTOnl
 WWkw==
X-Gm-Message-State: APjAAAUs7pXd7hwLM/Pj3q4kX1qLNqdNtOsHyJTYUNceYDBhfZxkds42
 iyk+1oi5fTPt96dPk7HHOpz7H6v6kV43aenxDpSPPA==
X-Google-Smtp-Source: APXvYqwmVWbvA8JWDP7ZREuSZZ6USfKRDsF78w4YD1IvT2iQBryzh6GoPGvJRrLGpAZC28dLBcMDdVE9LG5qi3N05aQ=
X-Received: by 2002:a5d:994d:: with SMTP id v13mr4961505ios.77.1558692473939; 
 Fri, 24 May 2019 03:07:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190124195900.22620-1-jagan@amarulasolutions.com>
 <20190124195900.22620-12-jagan@amarulasolutions.com>
 <20190125212433.ni2jg3wvpyjazlxf@flea>
 <CAMty3ZAsH2iZ+JEqTE3D58aXfGuhMSg9YoO56ZhhOeE4c4yQHQ@mail.gmail.com>
 <20190129151348.mh27btttsqcmeban@flea>
 <CAMty3ZAjAoti8Zu80c=OyCA+u-jtQnkidsKSNz_c2OaRswqc3w@mail.gmail.com>
 <20190201143102.rcvrxstc365mezvx@flea>
In-Reply-To: <20190201143102.rcvrxstc365mezvx@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Fri, 24 May 2019 15:37:42 +0530
Message-ID: <CAMty3ZC3_+z1upH4Y08R1z=Uq1C=OpWETNrBO8nGRoHhuNrHSA@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_030755_564505_C564A315 
X-CRM114-Status: GOOD (  35.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 1, 2019 at 8:01 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Tue, Jan 29, 2019 at 11:01:31PM +0530, Jagan Teki wrote:
> > On Tue, Jan 29, 2019 at 8:43 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Mon, Jan 28, 2019 at 03:06:10PM +0530, Jagan Teki wrote:
> > > > On Sat, Jan 26, 2019 at 2:54 AM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > On Fri, Jan 25, 2019 at 01:28:49AM +0530, Jagan Teki wrote:
> > > > > > Minimum PLL used for MIPI is 500MHz, as per manual, but
> > > > > > lowering the min rate by 300MHz can result proper working
> > > > > > nkms divider with the help of desired dclock rate from
> > > > > > panel driver.
> > > > > >
> > > > > > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > > > > > Acked-by: Stephen Boyd <sboyd@kernel.org>
> > > > >
> > > > > Going 200MHz below the minimum doesn't seem really reasonable. What
> > > > > is the issue that you are trying to fix here?
> > > > >
> > > > > It looks like it's picking bad dividers, but if that's the case, this
> > > > > isn't the proper fix.
> > > >
> > > > As I stated in earlier patches, the whole idea is pick the desired
> > > > dclk divider based dclk rate. So the dotclock, sun4i_dclk_round_rate
> > > > is unable to get the proper dclk divider at the end, so it eventually
> > > > picking up wrong divider value and fired vblank timeout.
> > > >
> > > > So, we come-up with optimal and working min_rate 300MHz in pll-mipi to
> > > > get the desired clock something like below.
> > > > [    2.415773] [drm] No driver support for vblank timestamp query.
> > > > [    2.424116] sun4i_dclk_round_rate: min_div = 4 max_div = 127, rate = 55000000
> > > > [    2.424172] ideal = 220000000, rounded = 0
> > > > [    2.424176] ideal = 275000000, rounded = 0
> > > > [    2.424194] ccu_nkm_round_rate: rate = 330000000
> > > > [    2.424197] ideal = 330000000, rounded = 330000000
> > > > [    2.424201] sun4i_dclk_round_rate: div = 6 rate = 55000000
> > > > [    2.424205] sun4i_dclk_round_rate: min_div = 4 max_div = 127, rate = 55000000
> > > > [    2.424209] ideal = 220000000, rounded = 0
> > > > [    2.424213] ideal = 275000000, rounded = 0
> > > > [    2.424230] ccu_nkm_round_rate: rate = 330000000
> > > > [    2.424233] ideal = 330000000, rounded = 330000000
> > > > [    2.424236] sun4i_dclk_round_rate: div = 6 rate = 55000000
> > > > [    2.424253] ccu_nkm_round_rate: rate = 330000000
> > > > [    2.424270] ccu_nkm_round_rate: rate = 330000000
> > > > [    2.424278] sun4i_dclk_recalc_rate: val = 1, rate = 330000000
> > > > [    2.424281] sun4i_dclk_recalc_rate: val = 1, rate = 330000000
> > > > [    2.424306] ccu_nkm_set_rate: rate = 330000000, parent_rate = 297000000
> > > > [    2.424309] ccu_nkm_set_rate: _nkm.n = 5
> > > > [    2.424311] ccu_nkm_set_rate: _nkm.k = 2
> > > > [    2.424313] ccu_nkm_set_rate: _nkm.m = 9
> > > > [    2.424661] sun4i_dclk_set_rate div 6
> > > > [    2.424668] sun4i_dclk_recalc_rate: val = 6, rate = 55000000
> > > >
> > > > But look like this wouldn't valid for all other dclock rates, say BPI
> > > > panel has 30MHz clock that would failed with this logic.
> > > >
> > > > On the other side Allwinner BSP calculating dclk divider based on the
> > > > SoC's. for A33 [1] it is fixed dclk divider of 4 and for A64 is is
> > > > calculated based on the bpp/lanes.
> > >
> > > It looks like the A64 has the same divider of 4:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L12
> > >
> > > I think you're confusing it with the ratio between the pixel clock and
> > > the dotclock, called dsi_div:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L198
> >
> > Ahh.. I thought this initially but as far as DSI clock computation is
> > concern, the L12 tcon_div is local variable which is used for edge0
> > computation in burst mode and not for the dsi clock computation. Since
> > the BSP is unable to get the tcon_div during edge0 computation, they
> > defined it locally I think.
> >
> > You can see the lcd_clk_config() code [2], where we can see DSI clock
> > computation using dsi_div value.
> >
> > Here is dump after the in Line 792 which is after computation[3]
> > [   10.800737] lcd_clk_config: dsi_div = 6, tcon_div = 4, lcd_div = 1
> > [   10.800743] lcd_clk_config: lcd_dclk_freq = 55, dclk_rate = 55000000
> > [   10.800749] lcd_clk_config: lcd_rate = 330000000, pll_rate = 330000000
> >
> > The above dump the lcd_rate 330MHz is computed with panel clock, 55MHz
> > into dsi_div 6. So this can be our actual divider values dclk_min_div,
> > dclk_max_div in sun4i_dclk_round_rate (from
> > drivers/gpu/drm/sun4i/sun4i_dotclock.c)
>
> I wish it was in your commit log in the first place, instead of having
> to exchange multiple mails over this.
>
> However, I don't think that's quite true, and it might be a bug in
> Allwinner's implementation (or rather something quite confusing).
>
> You're right that the lcd_rate and pll_rate seem to be generated from
> the pixel clock, and it indeed looks like the ratio between the pixel
> clock and the TCON dotclock is defined through the number of bits per
> lanes.
>
> However, in this case, dsi_rate is actually the same than lcd_rate,
> since pll_rate is going to be divided by dsi_div:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L791
>
> Since lcd_div is 1, it also means that in this case, dsi_rate ==
> dclk_rate.
>
> The DSI module clock however, is always set to 148.5 MHz. Indeed, if
> we look at:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L804
>
> We can see that the rate in clk_info is used if it's different than
> 0. This is filled by disp_al_lcd_get_clk_info, which, in the case of a
> DSI panel, will hardcode it to 148.5 MHz:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L164
>
> So, the DSI clock is set to this here:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L805
>
> The TCON *module* clock (the one in the clock controller) has been set
> to lcd_rate (so the pixel clock times the number of bits per lane) here:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L800
>
> And the PLL has been set to the same rate here:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L794

Let me explain, something more.

According to bsp there are clk_info.tcon_div which I will explain below.
clk_info.dsi_div which is dynamic and it depends on bpp/lanes, so it
is 6 for 24bpp and 4 lanes devices.

PLL rate here depends on dsi_div (not tcon_div)

Code here
https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L784

is computing the actual set rate, which depends on dsi_rate.

lcd_rate = dclk_rate * clk_info.dsi_div;
dsi_rate = pll_rate / clk_info.dsi_div;

Say if the dclk_rate 148MHz then the dsi_rate is 888MHz which set rate
for above link you mentioned.

Here are the evidence with some prints.

https://gist.github.com/openedev/9bae2d87d2fcc06b999fe48c998b7043
https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a

>
> Let's take a step back now: that function we were looking at,
> lcd_clk_config, is called by lcd_clk_enable, which is in turn called
> by disp_lcd_enable here:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L1328
>
> The next function being called is disp_al_lcd_cfg, and that function
> will hardcode the TCON dotclock divider to 4, here:
> https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L240

tcon_div from BSP point-of-view of there are two variants
00) clk_info.tcon_div which is 4 and same is set the divider position
in SUN4I_TCON0_DCLK_REG (like above link refer)
01) tcon_div which is 4 and used for edge timings computation
https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L12

The real reason for 01) is again 4 is they set the divider to 4 in 00)
which is technically wrong because the dividers which used during
dotclock in above (dsi_div) should be used here as well. Since there
is no dynamic way of doing this BSP hard-coding these values.

Patches 5,6,7 on this series doing this
https://patchwork.freedesktop.org/series/60847/

Hope this explanation helps?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
