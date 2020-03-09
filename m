Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8837817E991
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 21:01:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rJF6D7BL6xkhjvoGn7WxD01oQ8LPwnprtOcWsCMidB4=; b=fxgxagqxXXfkWbv5NA/zMEPsg
	OL3exGJgKp5ArxZSgQprb+hdeZqLyZTQWTX9VE8Z43Rt6aw7eiOkZHLaZBhEGGeFeTyQGym9OQeyV
	IlNeyb57nLcmiM6rwTZI2jA77P+xH3A9YZp6WNmCAZermNmxvMiU65mMUTD6g8dVl8vpS0565zx3O
	+x6yJazo6WQ68lqS5iYfyVjSw6uzmgJ1PESuY1p2KnAZ/aS2K+gmWJkYKBZqSRSXv+GZ3ryKkloR9
	p74zi1c+38UY8RJ6EBNT11/GcTLcwxBKAQ6g0tIl/QVof/Uo4MKzD/aw0TNwl1xmDjxO5encJWOZG
	NjtuECr7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBOaf-0004Un-U0; Mon, 09 Mar 2020 20:01:29 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBOaV-0004Tw-MT; Mon, 09 Mar 2020 20:01:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 188F3AC15;
 Mon,  9 Mar 2020 20:01:18 +0000 (UTC)
Message-ID: <c4f9da4d57374f90632c39fd1403c339a4ed299d.camel@suse.de>
Subject: Re: [PATCH v2 11/11] ARM: dts: bcm2711: Add vmmc regulator in emmc2
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, adrian.hunter@intel.com, 
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Date: Mon, 09 Mar 2020 21:01:16 +0100
In-Reply-To: <3bd022a6-922f-c20a-8d07-383817549960@i2se.com>
References: <20200306174413.20634-1-nsaenzjulienne@suse.de>
 <20200306174413.20634-12-nsaenzjulienne@suse.de>
 <3bd022a6-922f-c20a-8d07-383817549960@i2se.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_130119_883082_D36BD9FF 
X-CRM114-Status: GOOD (  15.66  )
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, linux-mmc@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2211620761275645418=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2211620761275645418==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-6KLHT23j0gCs6Gdp3wLG"


--=-6KLHT23j0gCs6Gdp3wLG
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-03-09 at 21:00 +0100, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 06.03.20 um 18:44 schrieb Nicolas Saenz Julienne:
> > The SD card power can be controlled trough a pin routed into the board'=
s
> > external GPIO expander. Turn that into a regulator and provide it to
> > emmc2.
> >=20
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > ---
> >  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 11 +++++++++++
> >  1 file changed, 11 insertions(+)
> >=20
> > diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > index b0ea8233b636..a2da058396fe 100644
> > --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > @@ -55,6 +55,16 @@ sd_io_1v8_reg: sd_io_1v8_reg {
> >  			  3300000 0x0>;
> >  		status =3D "okay";
> >  	};
> > +
> > +	sd_vcc_reg: sd_vcc_reg {
> > +		compatible =3D "regulator-fixed";
>=20
> i think we need to enable CONFIG_REGULATOR_FIXED_VOLTAGE in
> bcm2835_defconfig

I'll take it into account for v3,

Thanks!
Nicolas


--=-6KLHT23j0gCs6Gdp3wLG
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5moIwACgkQlfZmHno8
x/4VHAf/QZBKav2zxLbotNZcl2AuN7wPf98F0DkRScSdf/GHbyP5a/Zvu4oOFMyg
FELLHQSEsK0cO+2vYoTf+u59oT2m36XksJjMVBjU1diVaavrmOS7QruV9FnLlo7t
tfmbC5LMuLRnhFy2jFe4WAIFANIAi6EK8+G/z9QZemwupAIFn8DMmYDkm6xjgyKg
YIRR2/l7RQ9L1mfUXFWZrzA6gMdxGJQX8998BNNdWJktPrGC5ijdazJvmA+ceC1v
nptYWQqVxEl864u5eiy1rinVYFNXk4/XucTlFShMAHVdTi2nQvJN6bsDQXWeCDnX
cHm9lkUI0i1KDAQBCtcMflqwEW+fpQ==
=YTCh
-----END PGP SIGNATURE-----

--=-6KLHT23j0gCs6Gdp3wLG--



--===============2211620761275645418==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2211620761275645418==--


