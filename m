Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DBA6186CB5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0sMHV2hiw18kfV7s4E7iSlewrjE6WLF7HZDvPrDY9es=; b=G3Y2cpL1yec45o
	s1MJ2f8P69bokP4EFuWiwgOd6rpk7VdSNfIi/nKWIT0QqokrUifzbb85LrNMgsx0bfSaPYGq6eqAz
	PEwDld+7XlIhd7IkcmmRb6oVxSLqaDTPb+srFl54h8Sx337/0A1ugwV8EdhgZb/leAf/xtlzxOwNo
	9MUaZW90cZM2RS29U3wnazf+kA90qS4rqSFZ4ujZD2+a+X2c18WpyNZUAAZx8UPxA4e73xPEQmRFu
	5hf9C7ym3hLvAWToh8hXHdDgDddAuJjQb9gNGy073PFLjxHGsJYq55v+gM5/eO5Tu3x9RN27cN21V
	u8DCZv1jOcc0+4AlUrbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqFU-00012Y-SC; Mon, 16 Mar 2020 13:57:44 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqFG-000115-7a
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:57:31 +0000
Received: by mail-wm1-x343.google.com with SMTP id 25so17780466wmk.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 06:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=0gUo0pXBfa5g0Adkrdb/oG1GrBXnYrCdwqYsM7eWapk=;
 b=i0TAHXFWx6EYjfweT/7wiVQHNwBj2rvXmJwCtXsWxFjajmal8vKylimfRMwDbAcfSU
 Om2kgnmm4nGZOMiL6TvhnEfEbN4GyrmooRXlxSf+tbUoPuPLTwFzoWcX7+jtOl7LKGq/
 RzE5PRXALkCOPC82kXn/ZjGlr6/8epsfnXfgOMxsquGyqmir5gbPZlL1deczwrEtD9mD
 tjurX6pOy0RPUgv8o0bFDk0d89MEEF82H7yAJCiEBh934dRULlw59GsQ2tJNzMlnRHYA
 KpmHvACQeLssJzRYF6hXDrbi7hUYtbeG7a6VvQT6APIvBDqKkh6GKEPbRcYOAJbMk3wc
 d9CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=0gUo0pXBfa5g0Adkrdb/oG1GrBXnYrCdwqYsM7eWapk=;
 b=o7e4/LWygnJQ9TzpzHiAjFgkCHoPnP0LiJ9/CxaJXimQQyiZys6KufpCOQtXfhMJm5
 AuJXKyPazENie/U8PtN/xIIcioXFdUSKsASAKRphktn1ad/mVafcjsGCpkMceJuH90pk
 dbjESOi9nImEXzeC/qAVGHNJlj7IYk5REaOSd0Mv7sae6xkfdjPNk8Tp2kEZQOP1qJr0
 Apr2z8caAmsKqtV+i8xWnQ/fuh2/TTnBcCENNDQZNN6pDpAleOli3ybCia/u20K1NP8p
 VRZkwZeTS36ZQx+phxJMrOtN9WUhWC/biMxOM8VfXTGXkVEj6Dr9Ov9cbeY/F+Dagar7
 v26Q==
X-Gm-Message-State: ANhLgQ26qPO9A2IrehaYx7xragu+jIJUL5YjA/2ARRnn2KMhD7o2R2fd
 DkWbrQ8jXahul5l1KJA+0zerYuww6NlyoaALCHjIrA==
X-Google-Smtp-Source: ADFU+vtlhk3JjYLDJbzUYPixBum462mqPkEnHCl9Rq9oE1BXgXmX+chAECaTk+vKbNQBmfmS5iAWIVcciBHgTdCuCrg=
X-Received: by 2002:a1c:7c18:: with SMTP id x24mr29334459wmc.82.1584367048095; 
 Mon, 16 Mar 2020 06:57:28 -0700 (PDT)
MIME-Version: 1.0
References: <20200303173217.3987-1-nsaenzjulienne@suse.de>
 <736f0c59-352b-03b2-f77f-bfc22171b3fb@i2se.com>
 <03fcb1e2bc7f3ff389b6dfbf3964e159a93ae835.camel@suse.de>
 <d3d40174-9c08-f42f-e088-08e23c2dc029@i2se.com>
 <f2ec22160ac86aec8d252ade7d6eb8789777cc42.camel@suse.de>
 <01ceb60e-a791-b6ca-352e-ad2e79f264e3@i2se.com>
 <ddcb8fd5-9e35-454c-b38d-d36e7b41ef07@i2se.com>
 <9e685fce547d808f269e59e2290331e75c66f3e4.camel@suse.de>
 <bb2c7d99-06b1-d222-7f69-8ce91157bde5@i2se.com>
 <90e92438-00df-520f-c8b1-2e2077934592@i2se.com>
 <a25b759292901eee3eab4dbf8002d2050edda6d3.camel@suse.de>
In-Reply-To: <a25b759292901eee3eab4dbf8002d2050edda6d3.camel@suse.de>
From: Dave Stevenson <dave.stevenson@raspberrypi.com>
Date: Mon, 16 Mar 2020 13:57:13 +0000
Message-ID: <CAPY8ntBB3wwkVj=+fzNRXzAqQs5q5MYmb7t7Be74zADeMCXHVA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_065730_272201_C52AE1E2 
X-CRM114-Status: GOOD (  32.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

 Hi Stefan and Nicolas

On Mon, 16 Mar 2020 at 12:40, Nicolas Saenz Julienne
<nsaenzjulienne@suse.de> wrote:
>
> Hi Stefan,
> thanks for taking the time with this. That was a hard to find one, specially
> given the race in X11.
>
> On Sun, 2020-03-15 at 20:16 +0100, Stefan Wahren wrote:
> > Hi Nicolas,
> >
> > [adjust audience]
> >
> > i've narrowed down the issue. From kernel 4.19 until 5.1 the DRM
> > emulated driver was responsible for a working X on my Raspberry Pi 3
> > with HP ZR2440w. Starting with 5.2 the vc4drmfb took over and with 5.3 X
> > didn't start anymore (display freeze).
> >
> > So i start bisecting and this was the commit where the freezing started:
> >
> > e08ab74bd4 drm/modes: Rewrite the command line parser
> >
> > After this i enabled drm debug and saw that suggest mode 1920x1200 by
> > the firmware is rejected by the driver because the pixel clock would be
> > too high (154 MHz, max = 148.5). This wasn't a problem before since the
> > firmware provided video cmdline parameter wasn't parseable:
> >
> > [drm] parse error at position 69 in video mode
> > '1920x1200M@60,margin_left=0,margin_right=0,margin_top=0,margin_bottom=0'
> >
> > After mentioned commit the display just freezes (no try to use
> > 1920x1080, no error message).
> >
> > For comparison i switched to the vendor tree with firmware kms driver
> > and noticed that the driver switches to 1920x1200 with a pixel at 154 MHz.
> >
> > So this patch works for me:
> >
> > ---
> >  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++----
> >  1 file changed, 5 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > index cea18dc..647803e 100644
> > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > @@ -681,11 +681,12 @@ static enum drm_mode_status
> >  vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
> >                  const struct drm_display_mode *mode)
> >  {
> > -    /* HSM clock must be 108% of the pixel clock.
>
> I think it'd be nice to understand how Eric came by this number. Maybe just
> empirically with 1080p60? That said, I think your change is pretty much
> harmless.
>
> I'll add a reminder to Maxime's series for him to update RPi[0-3]'s max
> frequency to 1920x1200@60's.
>
> > -     * the AXI clock needs to be at least 25% of pixel clock, but
> > -     * HSM ends up being the limiting factor.
> > +    /* According to spec the HSM clock must be 108% of the pixel clock.
> > +     * Additionally, the AXI clock needs to be at least 25% of pixel clock,
> > +     * but HSM ends up being the limiting factor.
> > +     * It seems that operating the pixel clock at 154 MHz still works.
> >       */
> > -    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
> > +    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 106 / 100))
>
> Isn't hard-coding the HSM clock kind of limited, one could overclock it, isn't
> it? I remember reading someone did it to support wider resolutions.

Checking the docs it does state the restriction that Eric quotes.

HDMI Core Clock (state machine clock)
Most of the HDMI logic operates on that clock. It
is asynchronous to system core clock and pixel
clock. Source for this clock can be chosen from
various PLLs in the chip. See CPR Manager for
details.

This clock is also used for clocking pixel valve
when HDMI peripheral is used. See Pixel Valve
for details.axi_clock >= hdmi_core_clock > 108% of
pixel_clock.


The default max pixel clock from the firmware side is 162MHz.

In the firmware source we have a comment
         // HDMI state machine clock must be faster than pixel clock -
infinitessimally faster tested in simulation.
         // Otherwise, exact value is unimportant - for HDMI operation.
         // hdmi state machine clock now derived from PLLC_PER (typ
500MHz, see relevant platform.c).
         //
         // However, CEC bit clock is derived from the HSM clock, and
the (programmable) CEC timing table
         // is configured for a 40.00kHz CEC clock.
         const unsigned margin = 1*1000*1000;
         unsigned min_hsm_clock = margin + timings->pixel_freq;
         const unsigned max_hsm_clock_for_cec = max(163682864,
hdmi_pixel_freq_limit);

         unsigned hdmi_state_machine_clock = max_hsm_clock_for_cec;

So it adds 1MHz to the pixel clock for min_hsm_clock, but then doesn't
use the value.
Unless you do request a higher hdmi_pixel_freq_limit then the HSM is
running at the same 163.68MHz that Eric's driver hard codes, and our
max pixel clock is 162MHz.
Keeping it a fixed value makes sorting the divider for CEC easier.

Just adopting a 162MHz limit with a suitable comment is probably the
most sensible move here, and Maxime's patches can pick up the same
value.

Regards,
  Dave

> Regards,
> Nicolas
>
> [1] https://www.raspberrypi.org/forums/viewtopic.php?f=29&t=24679#p333810
>
> >          return MODE_CLOCK_HIGH;
> >
> >      return MODE_OK;
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
