Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6E5817BBCA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 12:37:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LLkPRJCBV8P65Q6+9yDERkB6uJq1/wVl/cdRNyY14ks=; b=JN7Bg5GhACR1ko6pAJn11cI+K
	bK//BYUt2yVcpZnRKQbgLT8mFeE8oBvDd5sU1TfMcr9Wj3B8uJI+Y1/rIl70Ck59kV000MLoy6b7E
	A3RDU0rPM1YA+dRmLooKgspiqE7qXm+Xs+MdkPdY128gc7iaeSzjdCs9bcfpX43bNqFgtZGyEw4D3
	HNHUrRK0vZQPe+Tlls+dSrxpvH1wNAZwnXa1CRO7iW1r9tBbZodqVPGNG8hoWYUzVDTk0wy+0pSn/
	vocHkulWtCnsXODpf05wijpPNgDjjl6W2tH5ROcpkYhPRa5IwR9+H1wDdEPH1T0hKpMGAwsaSRqxl
	eP/6RyU1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABIG-0002bd-Ch; Fri, 06 Mar 2020 11:37:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABI5-0002ae-LJ; Fri, 06 Mar 2020 11:37:19 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 1D2BEAC23;
 Fri,  6 Mar 2020 11:37:16 +0000 (UTC)
Message-ID: <63c490557c344e74c287361541b7e100f5c68bb7.camel@suse.de>
Subject: Re: [PATCH 10/10] ARM: dts: bcm2711: Add vmmc regulator in emmc2
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Phil Elwell <phil@raspberrypi.com>, Stefan Wahren
 <stefan.wahren@i2se.com>,  devicetree@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-mmc@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
Date: Fri, 06 Mar 2020 12:37:14 +0100
In-Reply-To: <714c41ef-85ea-da2b-1701-9132703a832c@raspberrypi.com>
References: <20200306103857.23962-1-nsaenzjulienne@suse.de>
 <20200306103857.23962-11-nsaenzjulienne@suse.de>
 <408aa93f-b5c8-c4b3-384b-c8d018a8d549@i2se.com>
 <714c41ef-85ea-da2b-1701-9132703a832c@raspberrypi.com>
User-Agent: Evolution 3.34.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_033717_847006_F50153EC 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: ulf.hansson@linaro.org, f.fainelli@gmail.com, phil@raspberrypi.org,
 adrian.hunter@intel.com, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8483029484986430095=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8483029484986430095==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-dgDR5QAIQKj09tBjjIOy"


--=-dgDR5QAIQKj09tBjjIOy
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-03-06 at 11:35 +0000, Phil Elwell wrote:
> Nicolas, Stefan,
>=20
> On 06/03/2020 11:07, Stefan Wahren wrote:
> > Hi Nicolas,
> >=20
> > On 06.03.20 11:38, Nicolas Saenz Julienne wrote:
> > > The SD card power can be controlled trough a pin routed into the boar=
d's
> > > external GPIO expander. Turn that into a regulator and provide it to
> > > emmc2.
> > >=20
> > > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > > ---
> > >   arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 11 +++++++++++
> > >   1 file changed, 11 insertions(+)
> > >=20
> > > diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > > b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > > index e26ea9006378..8e98e917f9f4 100644
> > > --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > > +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> > > @@ -56,6 +56,16 @@ sd_io_1v8_reg: sd_io_1v8_reg {
> > >   			  3300000 0x0>;
> > >   		status =3D "okay";
> > >   	};
> > > +
> > > +	sd_vcc_reg: sd_vcc_reg {
> > > +		compatible =3D "regulator-fixed";
> > > +		regulator-name =3D "vcc-sd";
> > > +		regulator-min-microvolt =3D <3300000>;
> > > +		regulator-max-microvolt =3D <3300000>;
> > > +		regulator-boot-on;
> > > +		enable-active-high;
> > > +		gpio =3D <&expgpio 6 GPIO_ACTIVE_HIGH>;
> > this new GPIO has an empty GPIO label, please add it.
>=20
> The correct name would be "SD_PWR_ON".

Noted

Regrads,
Nicolas


--=-dgDR5QAIQKj09tBjjIOy
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl5iNeoACgkQlfZmHno8
x/5mbwf/WiSmeHldOn54HB+wF+evWnAjtmflOLsTqDqnZaOLL0VOeXvz7UGWsswn
q/ZIPlXJQouzkARdn07BoVLFuc8C+D6Usl43V9yL0My/YKQaqutF4HoSP59mT8Sx
Wv/NehTBiih9NWjMjvbusnbPWLmwvLawimwHtuZei+c+DhgyXWM5XhiPCMGR3ILK
JmyN8XwFcSAYCLXF8bJoQhIB90wcNCtekIHl4isyF7hT85+HX9pfwzJC5efHfwQR
avdQJZOopFUAE8SKgSrN2Qngmk/z8RhOQO5jzh2qFC7918S/oSnmTAu46/V24Zej
klgahEJdegIsXTyKg9kG28oPN0PIJg==
=PsYj
-----END PGP SIGNATURE-----

--=-dgDR5QAIQKj09tBjjIOy--



--===============8483029484986430095==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8483029484986430095==--


