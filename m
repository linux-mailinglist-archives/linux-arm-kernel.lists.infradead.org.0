Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AD2518D152
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 15:43:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VaQJAksgUHgZnWYxb1yAyJECIrso4J4uQVyfhAWiNMw=; b=fRpsrzroanXqExrgbgwYdSeed
	CpwYBrOAWUY3GVf8vd+IAiJbYmy+U2SWVHHDKfpkYR+LWnHfEQYuVPZFpyyWT9t8nQ5a4OTkfGlKt
	zR67wSv+1ZLa6nv6XzXUVhLzxcvVpxn2cEq5amA2dBEO/R5d0XE2XJTra1Z7XdEIN1m8iTJTGz+mW
	Oga2ajD4tdSSWEZg98Mf9F9M1+3OZ9HZ9/HlJ/t40uJMF7n88ZvqbsJQGZRLxEcvh7JPlhAQy+9vo
	vIlhVIuGIKla5SlDwpwDaDlNsJ9wApl8+Q97zkqG9Q8n76/DWPo+Qucfw+/3l4O55McRwK0EJOVfc
	PvW6sACNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFIs5-0001ag-Qf; Fri, 20 Mar 2020 14:43:37 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFIrx-0001a4-Fy; Fri, 20 Mar 2020 14:43:31 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 69C2EAD32;
 Fri, 20 Mar 2020 14:43:27 +0000 (UTC)
Message-ID: <2f198d1afe80e4a4c48703462d63bdb0858fb4a2.camel@suse.de>
Subject: Re: [PATCH] ARM: dts: bcm283x: Use firmware PM driver for V3D
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Dave Stevenson <dave.stevenson@raspberrypi.com>, Stefan Wahren
 <stefan.wahren@i2se.com>
Date: Fri, 20 Mar 2020 15:43:25 +0100
In-Reply-To: <CAPY8ntBB3wwkVj=+fzNRXzAqQs5q5MYmb7t7Be74zADeMCXHVA@mail.gmail.com>
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
 <CAPY8ntBB3wwkVj=+fzNRXzAqQs5q5MYmb7t7Be74zADeMCXHVA@mail.gmail.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_074329_822506_D30B2962 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: multipart/mixed; boundary="===============5443663461911992541=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5443663461911992541==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-/tkxwxJi1mY/EDU3Qsgm"


--=-/tkxwxJi1mY/EDU3Qsgm
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-03-16 at 13:57 +0000, Dave Stevenson wrote:
>  Hi Stefan and Nicolas
>=20
> Checking the docs it does state the restriction that Eric quotes.
>=20
> HDMI Core Clock (state machine clock)
> Most of the HDMI logic operates on that clock. It
> is asynchronous to system core clock and pixel
> clock. Source for this clock can be chosen from
> various PLLs in the chip. See CPR Manager for
> details.
>=20
> This clock is also used for clocking pixel valve
> when HDMI peripheral is used. See Pixel Valve
> for details.axi_clock >=3D hdmi_core_clock > 108% of
> pixel_clock.
>=20
>=20
> The default max pixel clock from the firmware side is 162MHz.
>=20
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
>          const unsigned margin =3D 1*1000*1000;
>          unsigned min_hsm_clock =3D margin + timings->pixel_freq;
>          const unsigned max_hsm_clock_for_cec =3D max(163682864,
> hdmi_pixel_freq_limit);
>=20
>          unsigned hdmi_state_machine_clock =3D max_hsm_clock_for_cec;
>=20
> So it adds 1MHz to the pixel clock for min_hsm_clock, but then doesn't
> use the value.
> Unless you do request a higher hdmi_pixel_freq_limit then the HSM is
> running at the same 163.68MHz that Eric's driver hard codes, and our
> max pixel clock is 162MHz.
> Keeping it a fixed value makes sorting the divider for CEC easier.
>=20
> Just adopting a 162MHz limit with a suitable comment is probably the
> most sensible move here, and Maxime's patches can pick up the same
> value.

I agree with Dave.

Moreover, this was initially introduced to fix resolution negotiations with=
 4k
devices, which use higher pixel clocks than HSM_CLOCK_FREQ. I've been revie=
wing
common HDMI resolutions and 1200p60 seems to be the one closer to RPi's HSM
limitations (as far as widely used aspect ratios are concerned). So I can't
image how setting a smaller than HSM_CLOCK_FREQ limit here is going to brea=
k
anything. That said I'm no expert in this area.

Stefan, any opinions? Feel like sending a patch? :)

Regards,
Nicolas


--=-/tkxwxJi1mY/EDU3Qsgm
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl501o0ACgkQlfZmHno8
x/5X7gf8Dt1VwHhuwYsFMK0N+kIBlPJFPb020tJAsnrIkw664hu9Cll04EB4MOG9
EaG3b2Jo9QUseesoKUnxkOMvUk05CxuOhUvhpM3pz5g9cI0BDrqo4n35pEh6F0CV
p/JQGMzrXznbciEzJVXP2Tyz1HtNeECyOnQwpCrQLuE5c6zd4v+bw3ydexf+0LmH
IAluJa/u4x3u1jrs4i2VGn2kGT9bWT3q+Y9bBCCwjKkYZigCx6Ab92HZaKC+N+hI
unHr/aTUSGwUx6qjmtt+WXdXLt+Z1X3PfPzn6g69yLGg9mX64asfQeGoeRQT8x6v
7qW0Lis2BzrEEv5ih1yUoILIWbx0sA==
=N/Y7
-----END PGP SIGNATURE-----

--=-/tkxwxJi1mY/EDU3Qsgm--



--===============5443663461911992541==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5443663461911992541==--


