Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C28A1C02A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 18:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=npt+m5Sl4/E5MQb+szZEbK9ALDxnLzdeDilIuROwmyk=; b=QhvqKKAHfP/BJlqmtZNZ/VfLg
	PXH+AWAF8vFdNZYoG6hgArNkD9tGbX81eGT+JMowxx91UyEOnQqtixW/d5BE89sLYEXmkPlILEAQg
	eRxWA1+bGfLS7l2AhC+Uccf3+3d9W0dWy+fAeWF9F0xoV4ZjWa7TWRyH4o7lym3sYfJ2IEegyEnus
	WPrqGrAPAngCRYXfzhWg9T3XdwTZLLw0eYewwLR02TLkT3WDv4DVBjiaLrFIxL1AJFNJXB0Yja1oF
	mbMX3BnejY+BVC3lNm8XfmTNbBTDMnFADXsqqLY7JySwY1JF5YVvFaEevmLS4WhJc3NhwcD2f+psi
	bFxCNtgbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUC9e-0001pb-OF; Thu, 30 Apr 2020 16:35:18 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUC9R-0000Ku-P0
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 16:35:07 +0000
Received: from localhost (p5486CDDB.dip0.t-ipconnect.de [84.134.205.219])
 by pokefinder.org (Postfix) with ESMTPSA id A47D92C08FC;
 Thu, 30 Apr 2020 18:35:03 +0200 (CEST)
Date: Thu, 30 Apr 2020 18:35:03 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Alain Volmat <alain.volmat@st.com>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>
Subject: Re: [PATCH] i2c: fix missing pm_runtime_put_sync in i2c_device_probe
Message-ID: <20200430163503.GA15047@ninjato>
References: <1588261401-11914-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
In-Reply-To: <1588261401-11914-1-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_093506_114275_2D9527BB 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, robh+dt@kernel.org,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4993985987843194227=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4993985987843194227==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zYM0uCDKw75PZbzx"
Content-Disposition: inline


--zYM0uCDKw75PZbzx
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 30, 2020 at 05:43:21PM +0200, Alain Volmat wrote:
> In case of the I2C client exposes the flag I2C_CLIENT_HOST_NOTIFY,
> pm_runtime_get_sync is called in order to always keep active the
> adapter. However later on, pm_runtime_put_sync is never called
> within the function in case of an error. This commit add this
> error handling.
>=20
> Fixes: 72bfcee11cf8 ("i2c: Prevent runtime suspend of adapter when Host N=
otify is required")

Adding the patch author to CC.

> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  drivers/i2c/i2c-core-base.c | 22 ++++++++++++++++------
>  1 file changed, 16 insertions(+), 6 deletions(-)
>=20
> diff --git a/drivers/i2c/i2c-core-base.c b/drivers/i2c/i2c-core-base.c
> index 139aea351ffb..2e4560671183 100644
> --- a/drivers/i2c/i2c-core-base.c
> +++ b/drivers/i2c/i2c-core-base.c
> @@ -338,8 +338,10 @@ static int i2c_device_probe(struct device *dev)
>  		} else if (ACPI_COMPANION(dev)) {
>  			irq =3D i2c_acpi_get_irq(client);
>  		}
> -		if (irq =3D=3D -EPROBE_DEFER)
> -			return irq;
> +		if (irq =3D=3D -EPROBE_DEFER) {
> +			status =3D irq;
> +			goto put_sync_adapter;
> +		}
> =20
>  		if (irq < 0)
>  			irq =3D 0;
> @@ -353,15 +355,19 @@ static int i2c_device_probe(struct device *dev)
>  	 */
>  	if (!driver->id_table &&
>  	    !i2c_acpi_match_device(dev->driver->acpi_match_table, client) &&
> -	    !i2c_of_match_device(dev->driver->of_match_table, client))
> -		return -ENODEV;
> +	    !i2c_of_match_device(dev->driver->of_match_table, client)) {
> +		status =3D -ENODEV;
> +		goto put_sync_adapter;
> +	}
> =20
>  	if (client->flags & I2C_CLIENT_WAKE) {
>  		int wakeirq;
> =20
>  		wakeirq =3D of_irq_get_byname(dev->of_node, "wakeup");
> -		if (wakeirq =3D=3D -EPROBE_DEFER)
> -			return wakeirq;
> +		if (wakeirq =3D=3D -EPROBE_DEFER) {
> +			status =3D wakeirq;
> +			goto put_sync_adapter;
> +		}
> =20
>  		device_init_wakeup(&client->dev, true);
> =20
> @@ -408,6 +414,10 @@ static int i2c_device_probe(struct device *dev)
>  err_clear_wakeup_irq:
>  	dev_pm_clear_wake_irq(&client->dev);
>  	device_init_wakeup(&client->dev, false);
> +put_sync_adapter:
> +	if (client->flags & I2C_CLIENT_HOST_NOTIFY)
> +		pm_runtime_put_sync(&client->adapter->dev);
> +
>  	return status;
>  }
> =20
> --=20
> 2.17.1
>=20

--zYM0uCDKw75PZbzx
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6q/jMACgkQFA3kzBSg
KbbwFBAAhtQzzNeB/GCaKLSF1bZD7pXmWBQHwK11H0kJO7UkmEVuRuLNCn250MMa
AOmgf8Y27Ij/cb5xcnLfWYpf/c8EKB68QnOawPIpu7P2loT3VwEOcbn3to8yi0WU
42ZJmWshB26DyiqaH6IWbqRNVL5t6qhPtnIbOU84pO5FExppXlB63kShSUKO2gXi
kehrRerP6h8hZFYlz0wYSVgBpL/2B4BOydkCGlK4INoGtgIVGPwcrqP557ulqXe4
kTlu3uCeo3aZFfzmoeui+SoXvBPA1PdHOT4HZRs6Pcw1FFOed95JyrVJxSSiKK35
zGBOFjDTA9ZbfROzK3YHZR525uEQkceqGJHrRSpxqrM3o02sZXO/W2j359TbEHB2
PQncp1GAXNePayRakxrd9q8MpBoFRtiRiaGPZVuF9lCof+DERo27cpnINOc4E+Te
WnW7QRxjyDguqkDdUZEdDGJ9nX6BO+Yg1OhoBQdjZ9vvnqrYMmRZZCDYNAU13ZLi
lzR3mLPoyJMIj2c251mWUaNrm0nHZrw2PAmrNwygyu4MTmaZGxECu725lRNajqeu
1SuXby3l59NU+yKTze5oOhRvsjTP55mgDRVxzTbtnmZNDkE6EgKLsSvHG3PX6wAB
YMBYlbSH6QxZ338/XA0Cvkbc4zn5vScALsa0lT6l69wtPPP6obk=
=lXSI
-----END PGP SIGNATURE-----

--zYM0uCDKw75PZbzx--


--===============4993985987843194227==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4993985987843194227==--

