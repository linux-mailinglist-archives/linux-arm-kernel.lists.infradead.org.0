Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5AA7168E94
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 22 Feb 2020 12:44:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lJeUnlhKejCTLIplLT0iBKPIhEjkHYGI+e28+YbjKKs=; b=iX5X9X/9Mdh+gmfCWDvuO81+6
	MBkeOW5gzfYGInvoXDDTlxC10BfgzfYMBuJjZ0AoJBWphNLQpknEX3uSoEWHBePdYeAp+ATox1S5j
	aC5xJvfQBMxSEK3aWTIxqjOjazv6fmBUFqfHqY8pCdiogyLwjupx/A1jEz+pjrYV0v5faAv+JDMZf
	6a4GfZkPVWoXKkqF/UBltHvwdkfy8WSWG3lAsLh06OdvHarFBX91Fdd9dEvF6D0YVdgZJKSORp/eq
	sHmF0+fxLZE5j1HgZE/Yp5k5JniA8GgHBlVyo1i9pTrYC0slO8RZRTeUN6dPvlkeYkSL4qEQJ9wSR
	sKoN2keXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5TDB-0007ei-KH; Sat, 22 Feb 2020 11:44:45 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5TD1-0007eJ-IH
 for linux-arm-kernel@lists.infradead.org; Sat, 22 Feb 2020 11:44:38 +0000
Received: from localhost (p5486C6B7.dip0.t-ipconnect.de [84.134.198.183])
 by pokefinder.org (Postfix) with ESMTPSA id 2399A2C07F9;
 Sat, 22 Feb 2020 12:44:34 +0100 (CET)
Date: Sat, 22 Feb 2020 12:44:33 +0100
From: Wolfram Sang <wsa@the-dreams.de>
To: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Subject: Re: [PATCH v3 3/6] i2c: at91: Send bus clear command if SDA is down
Message-ID: <20200222114433.GC1716@kunai>
References: <20200115115422.17097-1-codrin.ciubotariu@microchip.com>
 <20200115115422.17097-4-codrin.ciubotariu@microchip.com>
MIME-Version: 1.0
In-Reply-To: <20200115115422.17097-4-codrin.ciubotariu@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_034435_756148_E893CFCE 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alexandre.belloni@bootlin.com,
 kamel.bouhara@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-i2c@vger.kernel.org, peda@axentia.se,
 linux@armlinux.org.uk, robh@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3282927592083646049=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3282927592083646049==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2/5bycvrmDh4d1IB"
Content-Disposition: inline


--2/5bycvrmDh4d1IB
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jan 15, 2020 at 01:54:19PM +0200, Codrin Ciubotariu wrote:
> After a transfer timeout, some faulty I2C slave devices might hold down
> the SDA pin. We can generate a bus clear command, hoping that the slave
> might release the pins.
> If the CLEAR command is not supported, we will use gpio recovery, if
> available, to reset the bus.
>=20
> Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>

One thing to improve:

> +	/*
> +	 * some faulty I2C slave devices might hold SDA down;
> +	 * we can send a bus clear command, hoping that the pins will be
> +	 * released
> +	 */
> +	if (has_clear_cmd) {
> +		if (!(dev->transfer_status & AT91_TWI_SDA)) {
> +			dev_dbg(dev->dev,
> +				"SDA is down; sending bus clear command\n");
> +			if (dev->use_alt_cmd) {
> +				unsigned int acr;
> +
> +				acr =3D at91_twi_read(dev, AT91_TWI_ACR);
> +				acr &=3D ~AT91_TWI_ACR_DATAL_MASK;
> +				at91_twi_write(dev, AT91_TWI_ACR, acr);
> +			}
> +			at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_CLEAR);
> +		}

The inner if-block should be a seperate function, then you could do in
probe:

	if (has_clear_cmd)
		rinfo->recover_bus =3D <the above function>;
	else
		rinfo->recover_bus =3D i2c_generic_scl_recovery;

Then, i2c_recover_bus() will always do the right thing. More readable
and better maintainable IMO.

If this is not possible (maybe I overlooked some logic), then maybe this
will work:

	rinfo->recover_bus =3D <your custom function>;

and put the

	if (has_clear_cmd)

block there.


--2/5bycvrmDh4d1IB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl5RFCEACgkQFA3kzBSg
KbawZQ//djH+GtmK3cq1f/dFHYW7brVxy999V22SKk3jREpntfZkN3nb23ARpOvR
JxIHA71f3FR5XIIyLWV0xzU04ZsmwZctcQ5jS15KPNHzHShSRgXWq0ioGAjzxkX2
AKqutS55+2qUGELcX7C/KKeIaLLOfzdvrol4ZPqowCaMrP/DbqcNh/7qL2JB244N
5giSlvyaOmOMIO8ZdMqrA85G+OwHMDcChti8Ba9TxzSmDJRas46XQ9HkwvEEpdca
iUoPbSj3hFaAlplTUVs/j4NlOV0fIjxeC3fGYgXTVIGOD1KvGfh4+f+YI2lV9YDx
lAHcIM6fUTx0+uC4dFWJdaqq+9QfyxHPnCOiH8wIr8XKDvOQbAIu2kP/C80QvhL3
WeK3fl/JMwxLC3b4fFeAvki9Kdzt42IFK2EDXw/uWyDa39Vl1smk3vRDqHkDzKoB
DUZ+BWF9VB/y5qdgN2lvT510u0oiCMW0EuaOgZHrvvB08+e7Z5PNZvJb+JzUaXYo
oSVCsdevMNE7yBX+aBjjOegU8p2ip9jIHCGRiKALM1ab1Vr1co/x3U02hecgTBNd
VOfHwyBQbdukaExvFAmcrCBeWDOCLUj1F6Wy8g38hBhwKcT1kG/xqYflmQdeTKJk
taBIAgbnPcMxpcqh+yphRZv69GXo3KQ9fwygszyHw4KWp4d0p50=
=P68w
-----END PGP SIGNATURE-----

--2/5bycvrmDh4d1IB--


--===============3282927592083646049==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3282927592083646049==--

