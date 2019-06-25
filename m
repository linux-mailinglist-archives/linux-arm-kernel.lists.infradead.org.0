Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAF75536D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 17:31:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vO3BUivEUAS6DITPeovlbQacDuV3tlaX1z62Jc/q2SM=; b=ALt5sfYO9I4kgq
	sRMeDYb6Rlf7v7qmZfla6KyFWVM284x5SY2Yj4zqOo0uIK3gtSpWnUme4KoViVsRDsOumtkj2Waxi
	NEQtEEnPa/7zI9x0cTN7A6S1hnWmejSvEZ10N15iEAl984Mfl27INdLmHB/roSdP5/jJWhZRskCD3
	fU5AROjVI45QeBphO9hofM1K31ad5QIPLqzj+7Y/xCvZwPiyvdvRQ744bGOakh6FJ/Hn7IDm5uXXi
	a93Hq22ViXO13SJjrAfsCbDfiwHIBfZajdWGGFQ8V0cB8Ddty8CvhsMMOwGyz9j5FQ2urOkke5apT
	YHADiPOFHEjmFgq3580Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnPQ-0008Ue-JK; Tue, 25 Jun 2019 15:31:00 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnPF-0008Tb-2H
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 15:30:52 +0000
Received: by mail-io1-xd43.google.com with SMTP id j6so638920ioa.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Jun 2019 08:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DbjGcIHVq7Seqb3nFBpJ2SDuEzj1Vg1xGKOHQ0u+QVE=;
 b=Krs9nOlvnvHdMjsdtHJ7Ga1LoWQORO6Tl6eR5IJaTZwVZdxwwpMdcqjSqJoz1l4uxi
 H2K5c9m1KMJJxCejXU3ZvZMVusP1A9qCgRTFMxUP4NYxfUHvxFHPCts+fi7e8L7KZBC9
 e9x1ilGAVUnotFiE5m73bfM1ds/KjI30ytC2Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DbjGcIHVq7Seqb3nFBpJ2SDuEzj1Vg1xGKOHQ0u+QVE=;
 b=JXuifJ2L+W1f0zfkVAZouGr8gdlS1c6fer1vxeoIC6+kdt8845agZc59eNuYx6tZAs
 ouxux46Q0iZS1yk2BoGsNxb6PPHmre+/8oICPun3+AwgYPWw2/5JW91KBGhZNqeNgbEI
 iHzt01+CyQDHPYFWr/nbF2vMQVa1vjKf43yHU08iGn3nSZMmuqz9lcU+FSHgETNtgjLI
 jCx1VAICmsbifEgpruBSPAkjiDXZJgKwaBRCEcWL9fzxO+KEdjgYIsSM9LPE1++EVQSn
 /CNuwhQzMCtrbO8jXxt0d+7L9R8Q+9hM5CNvxeRF/w8f0PkWAr3XQlU5DNHBuPciZzAC
 Bhkw==
X-Gm-Message-State: APjAAAWGzpNgegxEDQ07RQdo+uEvlUV4oc8eH3dIyG1o0Zl4M/lhSRY1
 qgQBWzFXNU85Bpu048ILoRXrhgt/y7ebBzrbRdjvjw==
X-Google-Smtp-Source: APXvYqzFxPeDibOft1CSvr6wMS/7trjG/8osga1n8VjObABAl/tWabbodMYYTHWbArt1xrqx7Zh3yMUZGkCesx8u5vs=
X-Received: by 2002:a6b:6a01:: with SMTP id x1mr1078839iog.77.1561476647519;
 Tue, 25 Jun 2019 08:30:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190125212433.ni2jg3wvpyjazlxf@flea>
 <CAMty3ZAsH2iZ+JEqTE3D58aXfGuhMSg9YoO56ZhhOeE4c4yQHQ@mail.gmail.com>
 <20190129151348.mh27btttsqcmeban@flea>
 <CAMty3ZAjAoti8Zu80c=OyCA+u-jtQnkidsKSNz_c2OaRswqc3w@mail.gmail.com>
 <20190201143102.rcvrxstc365mezvx@flea>
 <CAMty3ZC3_+z1upH4Y08R1z=Uq1C=OpWETNrBO8nGRoHhuNrHSA@mail.gmail.com>
 <20190605064933.6bmskkxzzgn35xz7@flea>
 <CAMty3ZCCP=oCqm5=49BsjwoxdDETgBfU_5g8fQ=bz=iWApV0tw@mail.gmail.com>
 <20190614142406.ybdiqfppo5mc5bgq@flea>
 <CAMty3ZB45cHx3WeXnywBh2_UA_bTmFs6yBTqLWA1BNf4fQtVvQ@mail.gmail.com>
 <20190625144930.5hegt6bkzqzykjid@flea>
In-Reply-To: <20190625144930.5hegt6bkzqzykjid@flea>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Tue, 25 Jun 2019 21:00:36 +0530
Message-ID: <CAMty3ZCmj0Rz7MMhLqihsvLQi+1CHf0fAoJQ4QN65xB-bwxaJw@mail.gmail.com>
Subject: Re: [PATCH v6 11/22] clk: sunxi-ng: a64: Add minimum rate for PLL_MIPI
To: Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_083050_276448_99B81E47 
X-CRM114-Status: GOOD (  42.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Tue, Jun 25, 2019 at 8:19 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
>
> On Thu, Jun 20, 2019 at 11:57:44PM +0530, Jagan Teki wrote:
> > On Fri, Jun 14, 2019 at 7:54 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > >
> > > On Wed, Jun 05, 2019 at 01:03:16PM +0530, Jagan Teki wrote:
> > > > On Wed, Jun 5, 2019 at 12:19 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> > > > >
> > > > > Hi,
> > > > >
> > > > > I've reordered the mail a bit to work on chunks
> > > > >
> > > > > On Fri, May 24, 2019 at 03:37:42PM +0530, Jagan Teki wrote:
> > > > > > > I wish it was in your commit log in the first place, instead of having
> > > > > > > to exchange multiple mails over this.
> > > > > > >
> > > > > > > However, I don't think that's quite true, and it might be a bug in
> > > > > > > Allwinner's implementation (or rather something quite confusing).
> > > > > > >
> > > > > > > You're right that the lcd_rate and pll_rate seem to be generated from
> > > > > > > the pixel clock, and it indeed looks like the ratio between the pixel
> > > > > > > clock and the TCON dotclock is defined through the number of bits per
> > > > > > > lanes.
> > > > > > >
> > > > > > > However, in this case, dsi_rate is actually the same than lcd_rate,
> > > > > > > since pll_rate is going to be divided by dsi_div:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L791
> > > > > > >
> > > > > > > Since lcd_div is 1, it also means that in this case, dsi_rate ==
> > > > > > > dclk_rate.
> > > > > > >
> > > > > > > The DSI module clock however, is always set to 148.5 MHz. Indeed, if
> > > > > > > we look at:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L804
> > > > > > >
> > > > > > > We can see that the rate in clk_info is used if it's different than
> > > > > > > 0. This is filled by disp_al_lcd_get_clk_info, which, in the case of a
> > > > > > > DSI panel, will hardcode it to 148.5 MHz:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L164
> > > > > >
> > > > > > Let me explain, something more.
> > > > > >
> > > > > > According to bsp there are clk_info.tcon_div which I will explain below.
> > > > > > clk_info.dsi_div which is dynamic and it depends on bpp/lanes, so it
> > > > > > is 6 for 24bpp and 4 lanes devices.
> > > > > >
> > > > > > PLL rate here depends on dsi_div (not tcon_div)
> > > > > >
> > > > > > Code here
> > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L784
> > > > > >
> > > > > > is computing the actual set rate, which depends on dsi_rate.
> > > > > >
> > > > > > lcd_rate = dclk_rate * clk_info.dsi_div;
> > > > > > dsi_rate = pll_rate / clk_info.dsi_div;
> > > > > >
> > > > > > Say if the dclk_rate 148MHz then the dsi_rate is 888MHz which set rate
> > > > > > for above link you mentioned.
> > > > > >
> > > > > > Here are the evidence with some prints.
> > > > > >
> > > > > > https://gist.github.com/openedev/9bae2d87d2fcc06b999fe48c998b7043
> > > > > > https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a
> > > > >
> > > > > Ok, so we agree up to this point, and the prints confirm that the
> > > > > analysis above is the right one.
> > > > >
> > > > > > > So, the DSI clock is set to this here:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L805
> > > > >
> > > > > Your patch doesn't address that, so let's leave that one alone.
> > > >
> > > > Basically this is final pll set rate when sun4i_dotclock.c called the
> > > > desired rate with ccu_nkm.c so it ended the final rate with parent as
> > > > Line 8 of
> > > > https://gist.github.com/openedev/700de2e3701b2bf3ad1aa0f0fa862c9a
> > >
> > > If that's important to the driver, it should be set explicitly then,
> > > and not work by accident.
> > >
> > > > > > > The TCON *module* clock (the one in the clock controller) has been set
> > > > > > > to lcd_rate (so the pixel clock times the number of bits per lane) here:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L800
> > > > > > >
> > > > > > > And the PLL has been set to the same rate here:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L794
> > > > > > >
> > > > > > > Let's take a step back now: that function we were looking at,
> > > > > > > lcd_clk_config, is called by lcd_clk_enable, which is in turn called
> > > > > > > by disp_lcd_enable here:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L1328
> > > > > > >
> > > > > > > The next function being called is disp_al_lcd_cfg, and that function
> > > > > > > will hardcode the TCON dotclock divider to 4, here:
> > > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/disp_al.c#L240
> > > > > >
> > > > > > tcon_div from BSP point-of-view of there are two variants
> > > > > > 00) clk_info.tcon_div which is 4 and same is set the divider position
> > > > > > in SUN4I_TCON0_DCLK_REG (like above link refer)
> > > > > > 01) tcon_div which is 4 and used for edge timings computation
> > > > > > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/lowlevel_sun50iw1/de_dsi.c#L12
> > > > > >
> > > > > > The real reason for 01) is again 4 is they set the divider to 4 in 00)
> > > > > > which is technically wrong because the dividers which used during
> > > > > > dotclock in above (dsi_div) should be used here as well. Since there
> > > > > > is no dynamic way of doing this BSP hard-coding these values.
> > > > > >
> > > > > > Patches 5,6,7 on this series doing this
> > > > > > https://patchwork.freedesktop.org/series/60847/
> > > > > >
> > > > > > Hope this explanation helps?
> > > > >
> > > > > It doesn't.
> > > > >
> > > > > The clock tree is this one:
> > > > >
> > > > > PLL(s) -> TCON module clock -> TCON dotclock.
> > > > >
> > > > > The links I mentioned above show that the clock set to lcd_rate is the
> > > > > TCON module clocks (and it should be the one taking the bpp and lanes
> > > > > into account), while the TCON dotclock uses a fixed divider of 4.
> > > >
> > > > Sorry, I can argue much other-than giving some code snips, according to [1]
> > > >
> > > > 00) Line 785, 786 with dclk_rate 148000000
> > > >
> > > > lcd_rate = dclk_rate * clk_info.dsi_div;
> > > > pll_rate = lcd_rate * clk_info.lcd_div;
> > > >
> > > > Since dsi_div is 6 (bpp/lanes), lcd_div 1
> > > >
> > > > lcd_rate = 888000000, pll_rate = 888000000
> > > >
> > > > 01)  Line 801, 804 are final rates computed as per clock driver (say
> > > > ccu_nkm in mainline)
> > > >
> > > > lcd_rate_set=891000000
> > > >
> > > > As per your comments if it would be 4 then the desired numbers are
> > > > would be 592000000 not 888000000.
> > > >
> > > > This is what I'm trying to say in all mails, and same as verified with
> > > > 2-lanes devices as well where the dsi_div is 12 so the final rate is
> > > > 290MHz * 12
> > >
> > > In the code you sent, you're forcing a divider on the internal TCON
> > > clock, while that one is fixed in the BSP.
> > >
> > > There's indeed the bpp / lanes divider, but it's used in the *parent*
> > > clock of the one you're changing.
> > >
> > > And the dsi0_clk clock you pointed out in the code snippet is yet
> > > another clock, the MIPI DSI module clock.
> >
> > Correct, look like I refereed wrong reference in the above mail. sorry
> > for the noise.
> >
> > Actually I'm trying to explain about pll_rate here which indeed
> > depends on dsi.div
> > https://github.com/BPI-SINOVOIP/BPI-M64-bsp/blob/master/linux-sunxi/drivers/video/sunxi/disp2/disp/de/disp_lcd.c#L786
> >
> > lcd_rate = dclk_rate * clk_info.dsi_div;
> > pll_rate = lcd_rate * clk_info.lcd_div;
> >
> > Say
> >
> > 1) For 148MHz dclk_rate with dsi_div is 6 (24/4) lcd_div is 1 which
> > resulting pll_rate is 888MHz.
> >
> > 2) For 30MHz dclk_rate with 4 lane and 24 RGB the resulting pll_rate is 180MHz
> >
> > 3) For 27.5MHz dclk_rate with 2 lane and 24 RGB the resulting pll_rate is 330MHz
> >
> > Here is the few more logs in code, for case 2)
> >
> > [    1.920441] sun4i_dclk_round_rate: min_div = 6 max_div = 6, rate = 30000000
> > [    1.920505] ideal = 180000000, rounded = 178200000
> > [    1.920509] sun4i_dclk_round_rate: div = 6 rate = 29700000
> > [    1.920514] sun4i_dclk_round_rate: min_div = 6 max_div = 6, rate = 30000000
> > [    1.920532] ideal = 180000000, rounded = 178200000
> > [    1.920535] sun4i_dclk_round_rate: div = 6 rate = 29700000
> > [    1.920572] sun4i_dclk_recalc_rate: val = 1, rate = 178200000
> > [    1.920576] sun4i_dclk_recalc_rate: val = 1, rate = 178200000
> > [    1.920597] rate = 178200000
> > [    1.920599] parent_rate = 297000000
> > [    1.920602] reg = 0x90c00000
> > [    1.920605] _nkm.n = 3, nkm->n.offset = 0x1, nkm->n.shift = 8
> > [    1.920609] _nkm.k = 2, nkm->k.offset = 0x1, nkm->k.shift = 4
> > [    1.920612] _nkm.m = 10, nkm->m.offset = 0x1, nkm->m.shift = 0
> > [    1.920958] sun4i_dclk_set_rate div 6
> > [    1.920966] sun4i_dclk_recalc_rate: val = 6, rate = 29700000
> >
> > and clk_summary:
> >
> >     pll-video0                        1        1        1   297000000
> >         0     0  50000
> >        hdmi                           0        0        0   297000000
> >         0     0  50000
> >        tcon1                          0        0        0   297000000
> >         0     0  50000
> >        pll-mipi                       1        1        1   178200000
> >         0     0  50000
> >           tcon0                       2        2        1   178200000
> >         0     0  50000
> >              tcon-pixel-clock         1        1        1    29700000
> >         0     0  50000
> >        pll-video0-2x                  0        0        0   594000000
> >         0     0  50000
>
> This discussion is going nowhere. I'm telling you that your patch
> doesn't apply the divider you want on the proper clock, and you're
> replying that indeed, you're applying it on the wrong clock.
>
> It might work by accident in your case, but the board I have here
> clearly indicates otherwise, so there's two possible way out here:
>
>   - Either you apply that divider to the TCON *module* clock, and not
>     the dclk
>
>   - Or you point to somewhere in the allwinner code where the bpp /
>     lanes divider is used for the dclk divider.

I don't know how to proceed further on this, as you say it might work
in accident but I have tested this in A33, A64 and R40 with 4
different DSI panels and one DSI-RGB bridge. All of them do use
PLL_MIPI (pll_rate) and it indeed depends on bpp/lanes

4-lane, 24-bit: Novatek NT35596 panel
4-lane, 24-bit: Feiyang, FY07024di26a30d panel
4-lane, 24-bit: Bananapi-s070wv20 panel
2-lane, 24-bit: Techstar,ts8550b panel

and

4-lane, 24-bit, ICN6211 DSI-to-RGB bridge panel

All above listed panels and bridges are working as per BSP and do
follow bpp/lanes and for DIVIDER 4 no panel is working.

The panels/bridges I have has tested in BSP and as you mentioned in
another mail, your panel is not tested in BSP - this is the only
difference. I did much reverse-engineering on PLL_MIPI clocking in BSP
so I'm afraid what can I do next on this, If you want to look further
on BSP I would suggest to verify on pll_rate side. If you feel
anything I'm missing please let me know.

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
