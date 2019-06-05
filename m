Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F98357D9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gYcbb3e5mCWPaeHfqVuKPlb1xkKxxE7cb9MR4fYbamY=; b=vAAHnYWTl0BJVR
	y9IwzbfCWVyvAHWEwGF7yYAcU0xsvZ/oEtHKMweRLkvuRYa2epiRCya/MbhyDEkG9SoJVRt9IVPgt
	SRbcW7hrInOHWc8ORJdmQ505/X36TMmfxXXaApqYgPwgeMjr/i11YBhpKVe5EW7XUsOlIZ+h2tFND
	J2Aqt2GpkvALzsSzT3NXSZsc13Yh8nr1Cfr9M1SHaHAfhHLQXK95aN08HRqKZOZjuRuuQZksW9FDS
	fXMnl0axr2dXPxMWfkmV/2GKZyykCC39A7IMuMpyu8sUDrQFs/3aLUIVMO9GxV+iTjL+1+GJ+ZeXB
	p53jcWtz/8MaccH0X5mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQQd-0003Go-As; Wed, 05 Jun 2019 07:33:47 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQQM-00031i-4I
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:33:37 +0000
Received: by mail-io1-xd44.google.com with SMTP id r185so19476475iod.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:33:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sT5+EcB+YlUyYXK4d4U6HyNi0I1g3TpKkvkKUR2F5ZM=;
 b=VCL9eX+gvb3o26vh8+qUEyB25EROXALxlcBtJbdKECcuk3tu3EhsabIrBfSsB75pr5
 FSPgWuvogGIrYzakye+464zhUCYtAWxxrXoobR4lMdIBE4sPDZhOuVvQYjH+EPDCnjx1
 VQFFZVOeOFCa2ZERZrwmBQG1QQ1c3oCxK6/5g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sT5+EcB+YlUyYXK4d4U6HyNi0I1g3TpKkvkKUR2F5ZM=;
 b=Ogm3+mTEGigd380L+14rkMY9Nb/lYWiu6QLsN3OHNvN1DdxmHttUgEuiSXDARc/26w
 fkKALxSy2f9mu3Qj2WRX57DAK8UtspEdpefXVNou1YwQ6UcpTSguK5L8nQVr0QyGsSxf
 3flxSBsns4+DM6VIB3PrLj8rAx5Gxi12IlFBPcXvYWxriGO9V+L2tmOjA0sEIgBJdk1i
 aIXYd9q9aFtEqHd5qnpLucTvXGJSvNEDdP9B1FCbF5gFhKQUirRnBxiHpKdw94L+DGcw
 qy9yl08O0QsyRg3g8sDwsXEotTFB7jkUXh7hhZSSt7VOlmJoxX9SZad61pqwhl4gXkvn
 3NuQ==
X-Gm-Message-State: APjAAAWFx7cQ5ttjA4CFXj5+9NiZmOXomGZg6IgB+I8CA03hsOB8b3ZU
 +2sT2W2vPyf84ys7DOfzWUL6i0ID9fobA9HreRs0Bw==
X-Google-Smtp-Source: APXvYqxoBfSiE/FChf+zOd+5G7lXRSPudgwOU4Z2EmihRMqCcQlK79PteyJ9VYub2JxxeB4a4GDKO/a5RQWhtvdopNE=
X-Received: by 2002:a5d:994d:: with SMTP id v13mr8213052ios.77.1559720008302; 
 Wed, 05 Jun 2019 00:33:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190124195900.22620-1-jagan@amarulasolutions.com>
 <20190124195900.22620-12-jagan@amarulasolutions.com>
 <20190125212433.ni2jg3wvpyjazlxf@flea>
 <CAMty3ZAsH2iZ+JEqTE3D58aXfGuhMSg9YoO56ZhhOeE4c4yQHQ@mail.gmail.com>
 <20190129151348.mh27btttsqcmeban@flea>
 <CAMty3ZAjAoti8Zu80c=OyCA+u-jtQnkidsKSNz_c2OaRswqc3w@mail.gmail.com>
 <20190201143102.rcvrxstc365mezvx@flea>
 <CAMty3ZC3_+z1upH4Y08R1z=Uq1C=OpWETNrBO8nGRoHhuNrHSA@mail.gmail.com>
 <20190605064933.6bmskkxzzgn35xz7@flea>
In-Reply-To: <20190605064933.6bmskkxzzgn35xz7@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 5 Jun 2019 13:03:16 +0530
Message-ID: <CAMty3ZCCP=oCqm5=49BsjwoxdDETgBfU_5g8fQ=bz=iWApV0tw@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_003330_647464_21FB3FA9 
X-CRM114-Status: GOOD (  34.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On Wed, Jun 5, 2019 at 12:19 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> Hi,
>
> I've reordered the mail a bit to work on chunks
>
> On Fri, May 24, 2019 at 03:37:42PM +0530, Jagan Teki wrote:
> > > I wish it was in your commit log in the first place, instead of having
> > > to exchange multiple mails over this.
> > >
> > > However, I don't think that's quite true, and it might be a bug in
> > > Allwinner's implementation (or rather something quite confusing).
> > >
> > > You're right that the lcd_rate and pll_rate seem to be generated from
> > > the pixel clock, and it indeed looks like the ratio between the pixel
> > > clock and the TCON dotclock is defined through the number of bits per
> > > lanes.
> > >
> > > However, in this case, dsi_rate is actually the same than lcd_rate,
> > > since pll_rate is going to be divided by dsi_div:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L791
> > >
> > > Since lcd_div is 1, it also means that in this case, dsi_rate ==
> > > dclk_rate.
> > >
> > > The DSI module clock however, is always set to 148.5 MHz. Indeed, if
> > > we look at:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L804
> > >
> > > We can see that the rate in clk_info is used if it's different than
> > > 0. This is filled by disp_al_lcd_get_clk_info, which, in the case of a
> > > DSI panel, will hardcode it to 148.5 MHz:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L164
> >
> > Let me explain, something more.
> >
> > According to bsp there are clk_info.tcon_div which I will explain below.
> > clk_info.dsi_div which is dynamic and it depends on bpp/lanes, so it
> > is 6 for 24bpp and 4 lanes devices.
> >
> > PLL rate here depends on dsi_div (not tcon_div)
> >
> > Code here
> > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L784
> >
> > is computing the actual set rate, which depends on dsi_rate.
> >
> > lcd_rate = dclk_rate * clk_info.dsi_div;
> > dsi_rate = pll_rate / clk_info.dsi_div;
> >
> > Say if the dclk_rate 148MHz then the dsi_rate is 888MHz which set rate
> > for above link you mentioned.
> >
> > Here are the evidence with some prints.
> >
> > https://gist.github.com/openedev/9bae2d87d2fcc06b999fe48c998b7043
> > https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a
>
> Ok, so we agree up to this point, and the prints confirm that the
> analysis above is the right one.
>
> > > So, the DSI clock is set to this here:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L805
>
> Your patch doesn't address that, so let's leave that one alone.

Basically this is final pll set rate when sun4i_dotclock.c called the
desired rate with ccu_nkm.c so it ended the final rate with parent as
Line 8 of
https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a

>
> > > The TCON *module* clock (the one in the clock controller) has been set
> > > to lcd_rate (so the pixel clock times the number of bits per lane) here:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L800
> > >
> > > And the PLL has been set to the same rate here:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L794
> > >
> > > Let's take a step back now: that function we were looking at,
> > > lcd_clk_config, is called by lcd_clk_enable, which is in turn called
> > > by disp_lcd_enable here:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L1328
> > >
> > > The next function being called is disp_al_lcd_cfg, and that function
> > > will hardcode the TCON dotclock divider to 4, here:
> > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L240
> >
> > tcon_div from BSP point-of-view of there are two variants
> > 00) clk_info.tcon_div which is 4 and same is set the divider position
> > in SUN4I_TCON0_DCLK_REG (like above link refer)
> > 01) tcon_div which is 4 and used for edge timings computation
> > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L12
> >
> > The real reason for 01) is again 4 is they set the divider to 4 in 00)
> > which is technically wrong because the dividers which used during
> > dotclock in above (dsi_div) should be used here as well. Since there
> > is no dynamic way of doing this BSP hard-coding these values.
> >
> > Patches 5,6,7 on this series doing this
> > https://patchwork.freedesktop.org/series/60847/
> >
> > Hope this explanation helps?
>
> It doesn't.
>
> The clock tree is this one:
>
> PLL(s) -> TCON module clock -> TCON dotclock.
>
> The links I mentioned above show that the clock set to lcd_rate is the
> TCON module clocks (and it should be the one taking the bpp and lanes
> into account), while the TCON dotclock uses a fixed divider of 4.

Sorry, I can argue much other-than giving some code snips, according to [1]

00) Line 785, 786 with dclk_rate 148000000

lcd_rate = dclk_rate * clk_info.dsi_div;
pll_rate = lcd_rate * clk_info.lcd_div;

Since dsi_div is 6 (bpp/lanes), lcd_div 1

lcd_rate = 888000000, pll_rate = 888000000

01)  Line 801, 804 are final rates computed as per clock driver (say
ccu_nkm in mainline)

lcd_rate_set=891000000

As per your comments if it would be 4 then the desired numbers are
would be 592000000 not 888000000.

This is what I'm trying to say in all mails, and same as verified with
2-lanes devices as well where the dsi_div is 12 so the final rate is
290MHz * 12

>
> In your patches, you're using the bpp / lanes divider on the TCON
> dotclock, ie, the wrong clock.
>
> Again, I'm not saying that my analysis of the source code is correct
> here. But you haven't said anything to prove it's wrong either.

Don't understand what proves are remaining, I have explained each line
from BSP and saying pll rate is depends on dsi_div which is bpp/lanes
not wrt tcon_div on BSP (which is set to default 4) and which indeed
verified in A33, R40. all the code using bpp/lanes.

Please let me know if you need any more information to look?

[1] https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L805

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
