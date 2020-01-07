Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0698E1324D7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 12:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SMCH1WvI7RtMUpeNGGjRz7iJsjp/oIo9LHhkBEhvUn0=; b=N67G+rFFQEnJWNkWnD9hpsyaD
	gmo1ClEYifIZF32QP8t3E6Mmvinv71UTF15c6XaGiC/aJQRkGvOaI7xn/xvm8dpyFrWe6qtFbKc0F
	37YCSFzUeGVMKBN6Y7l36skCdWb911D69bqocypyChpvlnW2zRojjKKujtnm+59rxrRUMkWLVPh7s
	OX9sLsjpzS9cB8bTLqe0oKNGlc419sz5eD5VW1/08JX7vp9JUKbx9Vsh9E0gbU5SZ3mmJTFmcbOV4
	TRCH687bIPY08HOdcMjIoISqudycFEUuyBR6AX44CL3wtZ0GPsZ+BrV+5VcWN0hMGUGxmMpVg0XO2
	kVroUHoBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ion2Q-0004HY-VL; Tue, 07 Jan 2020 11:28:42 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ion2D-0004Gf-RH
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 11:28:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id C7BACAD07;
 Tue,  7 Jan 2020 11:28:27 +0000 (UTC)
Message-ID: <f14bad2513cde4e57af21fdc971638c74db9ba50.camel@suse.de>
Subject: Re: [PATCH V2 2/4] thermal: Add BCM2711 thermal driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Florian Fainelli <f.fainelli@gmail.com>, Stefan Wahren
 <wahrenst@gmx.net>,  Zhang Rui <rui.zhang@intel.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Date: Tue, 07 Jan 2020 12:28:26 +0100
In-Reply-To: <98b424ff-040c-b68c-04d3-823c771986fa@gmail.com>
References: <1578072236-31820-1-git-send-email-wahrenst@gmx.net>
 <1578072236-31820-3-git-send-email-wahrenst@gmx.net>
 <98b424ff-040c-b68c-04d3-823c771986fa@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_032830_030591_BC5D4211 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============5234867023613762773=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5234867023613762773==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-QjE9SpdH7vcQ556S/L5J"


--=-QjE9SpdH7vcQ556S/L5J
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-01-06 at 14:30 -0800, Florian Fainelli wrote:
> Hi Stefan,
>=20
> On 1/3/20 9:23 AM, Stefan Wahren wrote:
> > This adds the thermal sensor driver for the Broadcom BCM2711 SoC,
> > which is placed on the Raspberry Pi 4. The driver only provides
> > SoC temperature reading so far.
> >=20
> > Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
>=20
> This looks good, I just have a couple of nits that you can address since
> the binding needs to be re-spun, see below, in any case:
>=20
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
>=20
> [snip]
>=20
> > +	of_node_put(parent);
> > +	if (IS_ERR(regmap)) {
> > +		dev_err(dev, "failed to get regmap (error %ld)\n",
> > +			PTR_ERR(regmap));
>=20
> Here we use %ld
>=20
> > +		return PTR_ERR(regmap);
> > +	}
> > +	priv->regmap =3D regmap;
> > +	priv->dev =3D dev;
> > +
> > +	thermal =3D devm_thermal_zone_of_sensor_register(dev, 0, priv,
> > +						       &bcm2711_thermal_of_ops);
> > +	if (IS_ERR(thermal)) {
> > +		ret =3D PTR_ERR(thermal);
> > +		dev_err(dev, "could not register sensor: %d\n", ret);
>=20
> and here we do an implicit cast into int, thus using %d, could we just
> make both consistent and use %d?

Extra nit since you're changing this. I'd suggest keeping the same format
between error messages (i.e. one encloses the error message between parenth=
eses
and the other uses a colon).

Regards,
Nicolas


--=-QjE9SpdH7vcQ556S/L5J
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4Ua1oACgkQlfZmHno8
x/6Jbwf/QlXAMb6Zv08I/d4SuxsyX/MIGxjH4v6pfSY51sJLUr0J11bNSN6daz1l
b4RTVB6nAM/n7yvKXG4Fqfcp3w1N6xWYf6kuWXB5j1gzhkVzDofs/yDsJeWcMKzn
r8paTRm0gVZOIuaqrglBzRAqSL/atjROV5KWbaOxehbNYglvhBoVKNxY60v4DGs5
LqHdU2jEIO3oBc8oaPgNJS5riO91XiXVbGHw7MKAht2+mViCE3sBRmn1J1bFHxXE
coiPM7/+6iZ4+TJ6hiyDs7Ebu9x6UvAxm9HeTCHcMIeNTs7d3h2Rp1q+/vsex8OP
kjZoS4Ua9IlkqJFZAzSC5JDDlocxaw==
=/JB6
-----END PGP SIGNATURE-----

--=-QjE9SpdH7vcQ556S/L5J--



--===============5234867023613762773==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5234867023613762773==--


