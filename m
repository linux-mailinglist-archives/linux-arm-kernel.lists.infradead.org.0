Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE9D15F90
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 10:40:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DhiIeKQ7RjeXH63elyEyx1hljxd/LYmmSVVIdqm005o=; b=XZ7AecTRtk1YrS15Y5XAbKvmM
	3sKPC3QUXipNKsn7sd17GriXrxGP5SFOhVEjlfaU2uC+73KCgCID/Y9V3/OEU5y/mPheI9i2bv19R
	JRXZoWPQ7QcGFKLF/PtiEVz9wWmM/YSiVhdr0RkjHP9HaQTjR5W/UcdquuSqwNfzCJVWWJNixeWQE
	T1pJQX60ZCjJdFGlGNKZ4PHVwYwdH4r4zHQrgHmmXeV0824qemLq/MXrMHo3HTNCH1medcU5x5iRl
	jCEWxigZcojzMe4AVtOV48WiuYUCWQ5JiqlDnU8JjFTkXq+wwFwWLq5bdBfght8AuGXjen/CEjea/
	cluvPEr9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNve3-0007qS-Vh; Tue, 07 May 2019 08:40:16 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNvdv-0006oe-El
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 08:40:09 +0000
Received: from localhost (p54B332BA.dip0.t-ipconnect.de [84.179.50.186])
 by pokefinder.org (Postfix) with ESMTPSA id 6C28C2C28E9;
 Tue,  7 May 2019 10:40:03 +0200 (CEST)
Date: Tue, 7 May 2019 10:40:03 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/3] dt-bindings: i2c: add optional mul-value property to
 binding
Message-ID: <20190507084002.GA25688@kunai>
References: <20190430043242.29687-1-chuanhua.han@nxp.com>
 <20190502205901.GA24224@bogus>
MIME-Version: 1.0
In-Reply-To: <20190502205901.GA24224@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_014007_800369_F6BD293C 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, sumit.batra@nxp.com,
 eha@deif.com, festevam@gmail.com, s.hauer@pengutronix.de,
 u.kleine-koenig@pengutronix.de, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, wsa+renesas@sang-engineering.com, l.stach@pengutronix.de,
 linux-i2c@vger.kernel.org, kernel@pengutronix.de,
 Chuanhua Han <chuanhua.han@nxp.com>, linux@rempel-privat.de,
 shawnguo@kernel.org, peda@axentia.se, linux-arm-kernel@lists.infradead.org,
 linux-imx@nxp.com
Content-Type: multipart/mixed; boundary="===============3827498726113570625=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3827498726113570625==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 02, 2019 at 03:59:01PM -0500, Rob Herring wrote:
> On Tue, Apr 30, 2019 at 12:32:40PM +0800, Chuanhua Han wrote:
> > NXP Layerscape SoC have up to three MUL options available for all
> > divider values, we choice of MUL determines the internal monitor rate
> > of the I2C bus (SCL and SDA signals):
> > A lower MUL value results in a higher sampling rate of the I2C signals.
> > A higher MUL value results in a lower sampling rate of the I2C signals.
> >=20
> > So in Optional properties we added our custom mul-value property in the
> > binding to select which mul option for the device tree i2c controller
> > node.
> >=20
> > Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> > ---
> >  Documentation/devicetree/bindings/i2c/i2c-imx.txt | 3 +++
> >  1 file changed, 3 insertions(+)
> >=20
> > diff --git a/Documentation/devicetree/bindings/i2c/i2c-imx.txt b/Docume=
ntation/devicetree/bindings/i2c/i2c-imx.txt
> > index b967544590e8..ba8e7b7b3fa8 100644
> > --- a/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> > +++ b/Documentation/devicetree/bindings/i2c/i2c-imx.txt
> > @@ -18,6 +18,9 @@ Optional properties:
> >  - sda-gpios: specify the gpio related to SDA pin
> >  - pinctrl: add extra pinctrl to configure i2c pins to gpio function fo=
r i2c
> >    bus recovery, call it "gpio" state
> > +- mul-value: NXP Layerscape SoC have up to three MUL options available=
 for
> > +all I2C divider values, it describes which MUL we choose to use for th=
e driver,
> > +the values should be 1,2,4.
>=20
> Needs a vendor prefix. I don't find 'value' to add anything nor do I=20
> understand what MUL is.
>=20
> If it is determined by SoC rather than board, then it should perhaps be=
=20
> implied by compatible.

I was wondering the same.


--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAlzRRF8ACgkQFA3kzBSg
KbbUbRAApE4I45wTxiU40khw2A2mDLGqByh6dKjqeRVRHGsUrLdKN3tptV5pVqgM
LdX5QFuA4Hp1TEkPLhuie+S7y0DfcN1NQEOPtP2ofZFTcMV93MhvZ7W2KEegnbld
RzvlIcqxMHoQgDBsJunkOcZuqUVicSwYETYXsbFGBAMJGTzhZR4Sh2Qt0VNRUmwu
UMFuBqnnhDXBkl7VSeKXDgjctCJnVaiyqj2jnz5HD4eOBtHj7zvPXnSYyMfYhrUL
Z6TXVxdloC6j8noqtORUM4YmlleDepXqp/L2SGRhZ1Qi55XQd6oexxiP7ndDZV0W
WRu3GaJOtXyOQYqeYMkfLbUPn90FkDLCFun1HKPBO07fcX/qWZmZnoXVX2799odV
jofYTj6X0ILs79fIUT8wAUnMCmEgjgPOynl57loP4f8lh6VoWeDAEI1nwCoPxi0l
TKabxPYDHpbT7vFP2eaR7/dXQxb+pgLNMUeqzPpIQ7XnSHrLl+7nrhVDcpzSWTr2
ci6eWscPRJNr/OVa0wd+L4nthna/K89ZApK4zf9aioBTLPZ/EEZscAJ/YuZiJZ2d
ZtwvTt6ewEz6D5OF6vsNjn7FOuqp7CIEhyPqFU+E5SC3iO05TqBhb9w34F5mO2oK
Oswf5Q47JpcE4stdbVJa7ZTUd+P8gfmH+X71qLQzcU3wujem2K4=
=cq07
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--


--===============3827498726113570625==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3827498726113570625==--

