Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4D6186B3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 13:40:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bLPTsjC9ykXXa/0ltrAEVjEvg5JonPXrii80JgD529o=; b=NSqdOO8aNh7xDO8fh0/Z6eMlI
	C5Pxz+TS+s4e2MSe3Di93pgG6J/cvgvhFZ05QptQU0aL47RNwJUIWQtBQXpXFTkO9iONVNypJvOmh
	5TpnB8QJNNOfkPtwqEFlZ2zLadAbo5BqTqIaicpgmoa9SaTyIZHpD1g876GaaBvW8zHfBwJlcp3hw
	v4gxaf1cCtYRyFG5spIBrG3TaHIDDNfUcL5vYQ4ED/1nx97pIrle+kAE6TvFlBLsliobzoEf2w9sr
	57o00OtlpjHs/VlN330VMu45UgGXXPGq34+oHXqBii0sA17VCVmSxu33gZSkgrA0YgMyvuAO+nJPq
	dRhn5rvxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDp2m-0001YH-HQ; Mon, 16 Mar 2020 12:40:32 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDp2d-0001Xm-Gw; Mon, 16 Mar 2020 12:40:25 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id CE740B1D1;
 Mon, 16 Mar 2020 12:40:19 +0000 (UTC)
Message-ID: <a25b759292901eee3eab4dbf8002d2050edda6d3.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>
Date: Mon, 16 Mar 2020 13:40:17 +0100
In-Reply-To: <90e92438-00df-520f-c8b1-2e2077934592@i2se.com>
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
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_054023_850877_8A18075E 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, Eric Anholt <eric@anholt.net>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: multipart/mixed; boundary="===============7074909314689761780=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7074909314689761780==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-llRo3iQarP3fSJT+BfYK"


--=-llRo3iQarP3fSJT+BfYK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Stefan,
thanks for taking the time with this. That was a hard to find one, speciall=
y
given the race in X11.

On Sun, 2020-03-15 at 20:16 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> [adjust audience]
>
> i've narrowed down the issue. From kernel 4.19 until 5.1 the DRM
> emulated driver was responsible for a working X on my Raspberry Pi 3
> with HP ZR2440w. Starting with 5.2 the vc4drmfb took over and with 5.3 X
> didn't start anymore (display freeze).
>=20
> So i start bisecting and this was the commit where the freezing started:
>=20
> e08ab74bd4 drm/modes: Rewrite the command line parser
>=20
> After this i enabled drm debug and saw that suggest mode 1920x1200 by
> the firmware is rejected by the driver because the pixel clock would be
> too high (154 MHz, max =3D 148.5). This wasn't a problem before since the
> firmware provided video cmdline parameter wasn't parseable:
>=20
> [drm] parse error at position 69 in video mode
> '1920x1200M@60,margin_left=3D0,margin_right=3D0,margin_top=3D0,margin_bot=
tom=3D0'
>=20
> After mentioned commit the display just freezes (no try to use
> 1920x1080, no error message).
>=20
> For comparison i switched to the vendor tree with firmware kms driver
> and noticed that the driver switches to 1920x1200 with a pixel at 154 MHz=
.
>=20
> So this patch works for me:
>=20
> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdm=
i.c
> index cea18dc..647803e 100644
> --- a/drivers/gpu/drm/vc4/vc4_hdmi.c
> +++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
> @@ -681,11 +681,12 @@ static enum drm_mode_status
>  vc4_hdmi_encoder_mode_valid(struct drm_encoder *crtc,
>                  const struct drm_display_mode *mode)
>  {
> -    /* HSM clock must be 108% of the pixel clock.

I think it'd be nice to understand how Eric came by this number. Maybe just
empirically with 1080p60? That said, I think your change is pretty much
harmless.

I'll add a reminder to Maxime's series for him to update RPi[0-3]'s max
frequency to 1920x1200@60's.

> -     * the AXI clock needs to be at least 25% of pixel clock, but
> -     * HSM ends up being the limiting factor.
> +    /* According to spec the HSM clock must be 108% of the pixel clock.
> +     * Additionally, the AXI clock needs to be at least 25% of pixel clo=
ck,
> +     * but HSM ends up being the limiting factor.
> +     * It seems that operating the pixel clock at 154 MHz still works.
>       */
> -    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 108 / 100))
> +    if (mode->clock > HSM_CLOCK_FREQ / (1000 * 106 / 100))

Isn't hard-coding the HSM clock kind of limited, one could overclock it, is=
n't
it? I remember reading someone did it to support wider resolutions.

Regards,
Nicolas

[1] https://www.raspberrypi.org/forums/viewtopic.php?f=3D29&t=3D24679#p3338=
10

>          return MODE_CLOCK_HIGH;
>
>      return MODE_OK;



--=-llRo3iQarP3fSJT+BfYK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5vc7EACgkQlfZmHno8
x/6rqwgAtGp/748O7ODjcZ+MIIJEVrwNuS8oGIcm3532l9f4m0dCOajGLTiISxeE
DJx8+H1ccmb3OPMD7VpGqYCRyTGwrrEqcC3wl1OTZpuMtvWHerlkkQVk61hQ5lE3
OXADNYA2awrfQjqCRR2ifGNrzSRHl5TfNpRGnyBtiGNa91I2z7T/KTM6tiXyUSKe
O2t5415Ohoq+na/qR87ArrOw+K2078LvAxBu79BNz7sTmmPfylBU/cx/ByCCzKWI
zQOKEhWsBE8Y3g5xkroWUAtdq6DZudRNOM5DYx2rodOCr/WHiNBWCsfFIzQNHh9m
nVBe4XvzuJFGUle0hpnHYYpDUYuGOg==
=vmFy
-----END PGP SIGNATURE-----

--=-llRo3iQarP3fSJT+BfYK--



--===============7074909314689761780==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7074909314689761780==--


