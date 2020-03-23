Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFBF18FD5A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 20:11:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yztQZmVR4IZqDKg63VSxNdEqWWSzI7cqTzaLJQRuna8=; b=rOUQSlFid/Gq2Z
	6UO+rjDxBDw9cDukCzEzpweLh0EaFMXAxJqZhxyQSrvaG3DjPG4O6SgfiBg3mRrNtRTS/eVivVxnJ
	MFcdyhglGQbZzBt88xftgZt3Twvfs7MZn/WFMudl7ykkbzSHjNHJIPPBuRILRdjnnZ/IdLSROy/mA
	VXqCrdPXwWzCj+xuDz610v4mkbcatVsgmZq/06bqGgEGO4FHZWqlmnK978JnMJoATrmwItXh6y+zU
	ggeO9+MfpbSnAt52aVKqSR7MsD1hgOiPx79pAS7/QB4fnEashOkjvEqjcBlqHlX8liBZG8BpkYdFp
	tWwutUm5OHVBcLo56g2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGSTw-0000FT-7k; Mon, 23 Mar 2020 19:11:28 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGSTf-0000EC-BL
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 19:11:13 +0000
Received: by mail-wm1-x344.google.com with SMTP id d1so792509wmb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 12:11:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pf+qUh7EBEBDemmA22qZeNyA8zt651mmhnuvEAM+lMU=;
 b=KGNDsz72kXza0P4lMe9mMaNwZHz947JtWcUfoneVfrcVXW1+qa0ymRzAsS8UfKZNae
 4Ve7rJwmNXbr+LhM6qAf3+DfGUfgdN9iVmlWMw/cvM18z4Js4X13MV3WhMXVvCcMVA8F
 QIfUWaw92rcQ2JBbaRXslKJpTnqQnGkZZD85SmJymORl0XVBJA7yV7r07O7GvuVOFd33
 js+ILbDOVsWj0iF3H/TbS5jIbZyBWZnP3pvlkZ+zaP9x6f1cgtOr/tMJ/R2gTD+Q7Vqz
 Dj2pulSs/7dAM5KNqSVAuUUQoWscY9wScRRU9I6a+NqOlkvwtfAFcH1o7Z1NFP0LXmRU
 oz5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pf+qUh7EBEBDemmA22qZeNyA8zt651mmhnuvEAM+lMU=;
 b=IqHv/ekCVRTy8CTgJ7aA4v4+6UL+kSqLclrcUqR1lWQ+HN/W9L7xDBc5cOGZgLOsW5
 tqDSZEuwESLMxBK8pWSTpCA+riTXmiusaHtM3GAGTk7FBv+nu7+oQY9lsUIARdYmNAMB
 kBinpgBUs7Ra00MooistayOQ0/B1uT8PFo/zCg7jf3/Y2z9lf72LhcvfgVGtzK0DuzHk
 +gI4VDx1amn3xyizYDcdig02ALlLnlwQeUeTQOwc79Wo5QbGGfvnWAMPnjULqJvRQqvE
 CMRSHr+qQzW90iWa8MMLbinExQm8gtlLsYgDJPyDdgafS0OeN3MuOm9XD4tpZ7yPsEm4
 8ylg==
X-Gm-Message-State: ANhLgQ1lrAS3TtKzj9CNOQSl2NIvT1dvaTLefl2/cFNZN0laFhP3+RHg
 aRFZJ06alZONQ29ioDnlpbWBzFxz3nI20TMzJ2dM8A==
X-Google-Smtp-Source: ADFU+vsKLKTY5RnDNYB+1EQTfD7qahBL7j0X4NYY89owfLY8KBE1rjQmqRHFkwawi3Kcmp9BLgIAp6njZz7wq8uxn+0=
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr975857wmc.82.1584990669746;
 Mon, 23 Mar 2020 12:11:09 -0700 (PDT)
MIME-Version: 1.0
References: <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
 <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
 <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
 <9e685fce547d808f269e59e2290331e75c66f3e4.camel@suse.de>
 <bb2c7d99-06b1-d222-7f69-8ce91157bde5@i2se.com>
 <90e92438-00df-520f-c8b1-2e2077934592@i2se.com>
 <a25b759292901eee3eab4dbf8002d2050edda6d3.camel@suse.de>
 <CAPY8ntBB3wwkVj=+fzNRXzAqQs5q5MYmb7t7Be74zADeMCXHVA@mail.gmail.com>
 <20200323145658.gu72lt5wceqw4iwz@gilmour.lan>
 <CAPY8ntD=VFrb91V7uM5zROxD-r6+bU+Nmj+ZDFCdwvTuq8eF6g@mail.gmail.com>
 <ab7b5386-2471-006f-0d6f-5230fd92445c@i2se.com>
In-Reply-To: <ab7b5386-2471-006f-0d6f-5230fd92445c@i2se.com>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 23 Mar 2020 19:10:52 +0000
Message-ID: <CAPY8ntCeXD9rsfdN34QucUt236pu2-HgxUXuRPJ0pC_UQ+F36Q@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Stefan Wahren <stefan.wahren@i2se.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_121111_527380_6C543A0D 
X-CRM114-Status: GOOD (  44.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Eric Anholt <eric@anholt.net>,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stefan

On Mon, 23 Mar 2020 at 18:53, Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Hi,
>
> Am 23.03.20 um 16:55 schrieb Dave Stevenson:
> > Hi Maxime
> >
> > On Mon, 23 Mar 2020 at 14:57, Maxime Ripard <maxime@cerno.tech> wrote:
> >> Hi Dave,
> >>
> >> On Mon, Mar 16, 2020 at 01:57:13PM +0000, Dave Stevenson wrote:
> >>>  Hi Stefan and Nicolas
> >>>
> >>> On Mon, 16 Mar 2020 at 12:40, Nicolas Saenz Julienne
> >>> <nsaenzjulienne@suse.de> wrote:
> >>>> Hi Stefan,
> >>>> thanks for taking the time with this. That was a hard to find one, specially
> >>>> given the race in X11.
> >>>>
> >>>> On Sun, 2020-03-15 at 20:16 +0100, Stefan Wahren wrote:
> >>>>> Hi Nicolas,
> >>>>>
> >>>>> [adjust audience]
> >>>>>
> >>>>> i've narrowed down the issue. From kernel 4.19 until 5.1 the DRM
> >>>>> emulated driver was responsible for a working X on my Raspberry Pi 3
> >>>>> with HP ZR2440w. Starting with 5.2 the vc4drmfb took over and with 5.3 X
> >>>>> didn't start anymore (display freeze).
> >>>>>
> >>>>> So i start bisecting and this was the commit where the freezing started:
> >>>>>
> >>>>> e08ab74bd4 drm/modes: Rewrite the command line parser
> >>>>>
> >>>>> After this i enabled drm debug and saw that suggest mode 1920x1200 by
> >>>>> the firmware is rejected by the driver because the pixel clock would be
> >>>>> too high (154 MHz, max = 148.5). This wasn't a problem before since the
> >>>>> firmware provided video cmdline parameter wasn't parseable:
> >>>>>
> >>>>> [drm] parse error at position 69 in video mode
> >>>>> '1920x1200M@60,margin_left=0,margin_right=0,margin_top=0,margin_bottom=0'
> >>>>>
> >>>>> After mentioned commit the display just freezes (no try to use
> >>>>> 1920x1080, no error message).
> >>>>>
> >>>>> For comparison i switched to the vendor tree with firmware kms driver
> >>>>> and noticed that the driver switches to 1920x1200 with a pixel at 154 MHz.
> >>>>>
> >>>>> So this patch works for me:
> >>>>>
> >>>>> ---
> >>>>>  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++----
> >>>>>  1 file changed, 5 insertions(+), 4 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> >>>>> index cea18dc..647803e 100644
> >>>>> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> >>>>> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> >>>>> @@ -681,11 +681,12 @@ static enum drm_mode_status
> >>>>>  vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
> >>>>>                  const struct drm_display_mode *mode)
> >>>>>  {
> >>>>> -    /* HSM clock must be 108% of the pixel clock.
> >>>> I think it'd be nice to understand how Eric came by this number. Maybe just
> >>>> empirically with 1080p60? That said, I think your change is pretty much
> >>>> harmless.
> >>>>
> >>>> I'll add a reminder to Maxime's series for him to update RPi[0-3]'s max
> >>>> frequency to 1920x1200@60's.
> >>>>
> >>>>> -     * the AXI clock needs to be at least 25% of pixel clock, but
> >>>>> -     * HSM ends up being the limiting factor.
> >>>>> +    /* According to spec the HSM clock must be 108% of the pixel clock.
> >>>>> +     * Additionally, the AXI clock needs to be at least 25% of pixel clock,
> >>>>> +     * but HSM ends up being the limiting factor.
> >>>>> +     * It seems that operating the pixel clock at 154 MHz still works.
> >>>>>       */
> >>>>> -    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
> >>>>> +    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 106 / 100))
> >>>> Isn't hard-coding the HSM clock kind of limited, one could overclock it, isn't
> >>>> it? I remember reading someone did it to support wider resolutions.
> >>> Checking the docs it does state the restriction that Eric quotes.
> >>>
> >>> HDMI Core Clock (state machine clock)
> >>> Most of the HDMI logic operates on that clock. It
> >>> is asynchronous to system core clock and pixel
> >>> clock. Source for this clock can be chosen from
> >>> various PLLs in the chip. See CPR Manager for
> >>> details.
> >>>
> >>> This clock is also used for clocking pixel valve
> >>> when HDMI peripheral is used. See Pixel Valve
> >>> for details.axi_clock >= hdmi_core_clock > 108% of
> >>> pixel_clock.
> >>>
> >>>
> >>> The default max pixel clock from the firmware side is 162MHz.
> >>>
> >>> In the firmware source we have a comment
> >>>          // HDMI state machine clock must be faster than pixel clock -
> >>> infinitessimally faster tested in simulation.
> >>>          // Otherwise, exact value is unimportant - for HDMI operation.
> >>>          // hdmi state machine clock now derived from PLLC_PER (typ
> >>> 500MHz, see relevant platform.c).
> >>>          //
> >>>          // However, CEC bit clock is derived from the HSM clock, and
> >>> the (programmable) CEC timing table
> >>>          // is configured for a 40.00kHz CEC clock.
> >>>          const unsigned margin = 1*1000*1000;
> >>>          unsigned min_hsm_clock = margin + timings->pixel_freq;
> >>>          const unsigned max_hsm_clock_for_cec = max(163682864,
> >>> hdmi_pixel_freq_limit);
> >>>
> >>>          unsigned hdmi_state_machine_clock = max_hsm_clock_for_cec;
> >>>
> >>> So it adds 1MHz to the pixel clock for min_hsm_clock, but then doesn't
> >>> use the value.
> >>> Unless you do request a higher hdmi_pixel_freq_limit then the HSM is
> >>> running at the same 163.68MHz that Eric's driver hard codes, and our
> >>> max pixel clock is 162MHz.
> >>> Keeping it a fixed value makes sorting the divider for CEC easier.
> >>>
> >>> Just adopting a 162MHz limit with a suitable comment is probably the
> >>> most sensible move here, and Maxime's patches can pick up the same
> >>> value.
> >> It's kind of related, but one of the changes we did to support the
> >> RPi4 is to change that rate calculation to increase the HSM clock for
> >> pixel clocks higher than 148.5MHz (so typically 4k), while keeping it
> >> as low as possible to reduce the power consumption.
> >>
> >> How would that interact with this change?
> > I'd forgotten that your patches mean we change the HSM clock on Pi3.
> > As you're aware, whilst I have some extra docs, many of them aren't as
> > comprehensive as one would hope. We can go back to the Broadcom and
> > RTL if absolutely necessary, but it's a pain. Broadcom don't
> > necessarily have the personnel who designed the blocks still working
> > there.
> >
> > Your patches appear to recompute the HSM clock based on pixel_clock *
> > 108%, with a min of 108MHz, so effectively the same limit as the old
> > version did by fixing the HSM rate.
> >
> > Checking the firmware for Pi4, it sets the HSM (M2MC) clock to
> > pixel_rate * 1.01, clipped to 120MHz and 600Mhz. (Audio drops out if
> > less than 108MHz. "Pick 120 to have an integer divider with some
> > margin." I'd need to check which divider that is referring to).
> > As noted above, the Pi3 firmware sets the HSM clock to 163.6MHz.
> >
> > I'd suggest that we:
> > a) Increase max_pixel_clock for vc4 (Pi0-3) to 162MHz.
> > b) Set HSM clock to 101% of the pixel clock, with a min of 120MHz
> > (4k60 with pixel clock 594MHz would go to a 599.94MHz HSM clock which
> > is still within range)
> > c) Test it! I know we have some 1920x1200 monitors in the office (when
> > I'm back in there).
>
> i don't think that i'm able to prepare those patches, but i'm happy to
> test them.

Conversations at slight cross-purposes.
With the current driver we just need the limit lifting to 162MHz.
My comment:

> >>> Just adopting a 162MHz limit with a suitable comment is probably the
> >>> most sensible move here

above. And code change along the lines of:
-    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
+    if (mode->clock > 162000000)
with suitable comment.

Maxime was querying the plan for how the increased pixel rate/HSM
clock should be reflected in his patch set which adds Pi4 support to
the vc4 driver.

  Dave

> Thanks
> Stefan
>
> >
> > Whilst the firmware would appear to use a fixed HSM clock on Pi0-3, I
> > don't anticipate there being any issue with varying it. It looks like
> > there was the expectation of it being variable in the past, but
> > someone has refactored it and either accidentally or deliberately
> > given up on the idea.
> >
> >   Dave
> >
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
