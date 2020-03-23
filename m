Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5FF18F7CF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 15:57:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LBG9jsrwrfh96VXum7ZRv5NKcIUEZVlyN9UsMkZUZZM=; b=t9pgwg/tcxAardzUBepVgOPm1
	GGvt1abzKRqkr1prrK24Gn9hKQMJGZzLVnGeLEgR9s5NNxg4NI799wDyaBFZtJ2WXdsqgge2lFr7M
	RUyj7MO/EuoL4ajkUkwoL4RPAvkpevDSZBYxx/HjVTBxu/X9cKTfwNWCIGVXjbhAQNrggNB/1pVou
	dLPhTOPCt+rTKJjPZ8qlC4TkIxLKBj3sDKAjNfSDJRf6NUeyj7YYDba/RtjNaILDVYoCNGi1dXwoL
	VcFi7Mr9Zt1nSR5wdxDQ2z2TAfTjexji2BGDyWyMSb087gr04Q22na8FG2912A529HMUQZ/LjtcXR
	ZmXOE23tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOVt-0006gc-91; Mon, 23 Mar 2020 14:57:13 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOVk-0006fz-7t; Mon, 23 Mar 2020 14:57:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 1E25B5C025E;
 Mon, 23 Mar 2020 10:57:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 23 Mar 2020 10:57:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 date:from:to:cc:subject:message-id:references:mime-version
 :content-type:in-reply-to; s=fm2; bh=eaVY0X7HkQaj5Ami+3v/ZEWRrsw
 FV9JugbUASRnx5wc=; b=OsAInfE1Vm5B+QW1wof7fVJD3uqyLnHsXSwG+X4/JKI
 Xw3WitvFnWUI7GQ7TKqtbH2oLpF+vlp1uFkaZy8ypkfTPbg1fmRKjK25pOp7oDMf
 93xurvP2WUwEXCfMH/EG8z83UOWOz7NeI3/udFQX/09lDHDhr8ufKlnG42m3k/Uv
 xztPXFFzYnqbP0+8a5G2RMg6G3Dod+ITggz7QrMwMNybejFidlAwWDQwK3fdIZ1b
 h8uC+dhLBZIOvrZWoWxLCCRyVg3HuoP0M1guSt7wrFipZiiSh2kZryBD3Y8N+yYa
 YFDOCMO0kkXvn8La+w1Gus7O9DORUt+KasqOq/sqQvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=eaVY0X
 7HkQaj5Ami+3v/ZEWRrswFV9JugbUASRnx5wc=; b=AYSVOoomR8VlW+AF9iTBkE
 qcLOfh00bPrk2SCVpmwu6g+Ymv7k8xmQcDEQ0TnGz7QOwLZRVmEbePDwmPjj1A7w
 6oYg2eBV3wA+NH/uswl4viKG9xiPycDM2OXkgw0Pwt6q3dJOZoVvx/53amt0cj6u
 74+uLXsnsfNb/MlAvxbGlebLF2K1KMz/YpCW12jxwwKFGDBu5NvzJ2h0IGC4/EPC
 UAJKEsS7HM64RwepClDBYithVjr+zFG1Jh95MkyZ8mGRCBVefTCXlwBPqOZj8a+C
 ZJdY7OfQrXnLVu0cc0bVyWn0xDKhwkIq0jJliiXUoreGHf24tPaPMQ5qm4yMoZng
 ==
X-ME-Sender: <xms:PM54Xgt13rxlZjepiW9YvvyW4CszEXvz7paFUr3whtvTbgSngy7vKA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudegkedgjedtucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:PM54XkMIxzr38RtCdfaZgLwgisr6GI2amabCsozuoJk20KWc4ffQKg>
 <xmx:PM54XtiWosKWlYFH8hVVoUtzFCsdl5pY7Do_pRGuP1CDz0LbSQ1Bhw>
 <xmx:PM54Xu4e_th_PwQnCtnWns8GE7Jx1ibJFT771ez7zYPC-tqdYz8rsw>
 <xmx:Pc54XiBMj_ClFKfBO2wZXx6Rl5bBQlwtX9EO8RNR_SmUop4GjCHaEw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 138E73280066;
 Mon, 23 Mar 2020 10:56:59 -0400 (EDT)
Date: Mon, 23 Mar 2020 15:56:58 +0100
From: Maxime Ripard <maxime@cerno.tech>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
Message-ID: <20200323145658.gu72lt5wceqw4iwz@gilmour.lan>
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
MIME-Version: 1.0
In-Reply-To: <CAPY8ntBB3wwkVj=+fzNRXzAqQs5q5MYmb7t7Be74zADeMCXHVA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_075704_648428_C1ED119D 
X-CRM114-Status: GOOD (  38.22  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-rpi-kernel@lists.infradead.org,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2579235037944465504=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2579235037944465504==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="deogfedlsszkwf4x"
Content-Disposition: inline


--deogfedlsszkwf4x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Dave,

On Mon, Mar 16, 2020 at 01:57:13PM +0000, Dave Stevenson wrote:
>  Hi Stefan and Nicolas
>
> On Mon, 16 Mar 2020 at 12:40, Nicolas Saenz Julienne
> <nsaenzjulienne@suse.de> wrote:
> >
> > Hi Stefan,
> > thanks for taking the time with this. That was a hard to find one, specially
> > given the race in X11.
> >
> > On Sun, 2020-03-15 at 20:16 +0100, Stefan Wahren wrote:
> > > Hi Nicolas,
> > >
> > > [adjust audience]
> > >
> > > i've narrowed down the issue. From kernel 4.19 until 5.1 the DRM
> > > emulated driver was responsible for a working X on my Raspberry Pi 3
> > > with HP ZR2440w. Starting with 5.2 the vc4drmfb took over and with 5.3 X
> > > didn't start anymore (display freeze).
> > >
> > > So i start bisecting and this was the commit where the freezing started:
> > >
> > > e08ab74bd4 drm/modes: Rewrite the command line parser
> > >
> > > After this i enabled drm debug and saw that suggest mode 1920x1200 by
> > > the firmware is rejected by the driver because the pixel clock would be
> > > too high (154 MHz, max = 148.5). This wasn't a problem before since the
> > > firmware provided video cmdline parameter wasn't parseable:
> > >
> > > [drm] parse error at position 69 in video mode
> > > '1920x1200M@60,margin_left=0,margin_right=0,margin_top=0,margin_bottom=0'
> > >
> > > After mentioned commit the display just freezes (no try to use
> > > 1920x1080, no error message).
> > >
> > > For comparison i switched to the vendor tree with firmware kms driver
> > > and noticed that the driver switches to 1920x1200 with a pixel at 154 MHz.
> > >
> > > So this patch works for me:
> > >
> > > ---
> > >  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++----
> > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > > index cea18dc..647803e 100644
> > > --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> > > +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> > > @@ -681,11 +681,12 @@ static enum drm_mode_status
> > >  vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
> > >                  const struct drm_display_mode *mode)
> > >  {
> > > -    /* HSM clock must be 108% of the pixel clock.
> >
> > I think it'd be nice to understand how Eric came by this number. Maybe just
> > empirically with 1080p60? That said, I think your change is pretty much
> > harmless.
> >
> > I'll add a reminder to Maxime's series for him to update RPi[0-3]'s max
> > frequency to 1920x1200@60's.
> >
> > > -     * the AXI clock needs to be at least 25% of pixel clock, but
> > > -     * HSM ends up being the limiting factor.
> > > +    /* According to spec the HSM clock must be 108% of the pixel clock.
> > > +     * Additionally, the AXI clock needs to be at least 25% of pixel clock,
> > > +     * but HSM ends up being the limiting factor.
> > > +     * It seems that operating the pixel clock at 154 MHz still works.
> > >       */
> > > -    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
> > > +    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 106 / 100))
> >
> > Isn't hard-coding the HSM clock kind of limited, one could overclock it, isn't
> > it? I remember reading someone did it to support wider resolutions.
>
> Checking the docs it does state the restriction that Eric quotes.
>
> HDMI Core Clock (state machine clock)
> Most of the HDMI logic operates on that clock. It
> is asynchronous to system core clock and pixel
> clock. Source for this clock can be chosen from
> various PLLs in the chip. See CPR Manager for
> details.
>
> This clock is also used for clocking pixel valve
> when HDMI peripheral is used. See Pixel Valve
> for details.axi_clock >= hdmi_core_clock > 108% of
> pixel_clock.
>
>
> The default max pixel clock from the firmware side is 162MHz.
>
> In the firmware source we have a comment
>          // HDMI state machine clock must be faster than pixel clock -
> infinitessimally faster tested in simulation.
>          // Otherwise, exact value is unimportant - for HDMI operation.
>          // hdmi state machine clock now derived from PLLC_PER (typ
> 500MHz, see relevant platform.c).
>          //
>          // However, CEC bit clock is derived from the HSM clock, and
> the (programmable) CEC timing table
>          // is configured for a 40.00kHz CEC clock.
>          const unsigned margin = 1*1000*1000;
>          unsigned min_hsm_clock = margin + timings->pixel_freq;
>          const unsigned max_hsm_clock_for_cec = max(163682864,
> hdmi_pixel_freq_limit);
>
>          unsigned hdmi_state_machine_clock = max_hsm_clock_for_cec;
>
> So it adds 1MHz to the pixel clock for min_hsm_clock, but then doesn't
> use the value.
> Unless you do request a higher hdmi_pixel_freq_limit then the HSM is
> running at the same 163.68MHz that Eric's driver hard codes, and our
> max pixel clock is 162MHz.
> Keeping it a fixed value makes sorting the divider for CEC easier.
>
> Just adopting a 162MHz limit with a suitable comment is probably the
> most sensible move here, and Maxime's patches can pick up the same
> value.

It's kind of related, but one of the changes we did to support the
RPi4 is to change that rate calculation to increase the HSM clock for
pixel clocks higher than 148.5MHz (so typically 4k), while keeping it
as low as possible to reduce the power consumption.

How would that interact with this change?

Thanks!
Maxime

--deogfedlsszkwf4x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXnjOOgAKCRDj7w1vZxhR
xUAIAQCowT7C0I4yGXMHZa4SiPouPa6M2EAfXIjT07btqNWTeQEArgPxPTJ2/r6U
B+Af0xdTxgyC1oQMOsSNjBak/k4IVw4=
=pxMu
-----END PGP SIGNATURE-----

--deogfedlsszkwf4x--


--===============2579235037944465504==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2579235037944465504==--

