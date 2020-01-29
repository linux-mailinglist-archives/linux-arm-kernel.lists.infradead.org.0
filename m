Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071BF14CBDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 14:53:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DQDTd8v/zs3577fWYc0uA2BJ8VtJSCL4n2LBrlmsbIk=; b=vAferI3RSggCdbLCmqCzeqPRS
	/MDYtRLB4EgWU2tGEjjwW6ARSugnUANzcEnh9fVGsXpVhVZ/wy8GY2lukC/ixZrx/oZGJMsUY+uk+
	sZsnaZNv6sIg8mcqZdxo118bbOh/Qf6eBMXbstb6sOPS5mLsZt4H0i2aa+Dy6VnISAopxWRERwE38
	AB5ihmgml/UAe23hpC8xOwCmnv/2bCerrq1makwFSTLM/mlus4PZn2Uvv2Vs8klS+m8D+f1ucj+HK
	JfXVcqYwMNDfaSlRRhTs0kAgO4/uBsV32ehn5bG9D0Thba7edEsDSHlsPnxlQTW9bNlLIQalXw2wZ
	KWNujEWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwnmY-0000Ot-HD; Wed, 29 Jan 2020 13:53:26 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwnmM-0000Oa-QD
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 13:53:16 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 85AC3AD3A;
 Wed, 29 Jan 2020 13:53:13 +0000 (UTC)
Message-ID: <e4c0ba6eb4b3282c5b2c08f9bd11b1bf109b646b.camel@suse.de>
Subject: Re: [RFC PATCH 4/4] ARM: dts: bcm2711-rpi-4-b: Add SoC GPIO labels
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, Florian Fainelli
 <f.fainelli@gmail.com>, Linus Walleij <linus.walleij@linaro.org>, Ray Jui
 <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>
Date: Wed, 29 Jan 2020 14:53:12 +0100
In-Reply-To: <1580148908-4863-5-git-send-email-stefan.wahren@i2se.com>
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
 <1580148908-4863-5-git-send-email-stefan.wahren@i2se.com>
User-Agent: Evolution 3.34.3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_055315_140917_28B54345 
X-CRM114-Status: GOOD (  18.08  )
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
Cc: linux-gpio@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============4069920484058760132=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4069920484058760132==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-W7Z0xkNoSi4WzK5KufDN"


--=-W7Z0xkNoSi4WzK5KufDN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-01-27 at 19:15 +0100, Stefan Wahren wrote:
> This adds the labels for all the SoC GPIOs on the Raspberry Pi 4.
>=20
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  arch/arm/boot/dts/bcm2711-rpi-4-b.dts | 74
> +++++++++++++++++++++++++++++++++++
>  1 file changed, 74 insertions(+)
>=20
> diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> index 1b5a835..6607e2e 100644
> --- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> +++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
> @@ -71,6 +71,80 @@
>  	};
>  };
> =20
> +&gpio {
> +	/*
> +	 * Parts taken from rpi_SCH_4b_4p0_reduced.pdf and
> +	 * the official GPU firmware DT blob.
> +	 *
> +	 * Legend:
> +	 * "NC" =3D not connected (no rail from the SoC)

May be drop this from the legend, as it's not used.

> +	 * "FOO" =3D GPIO line named "FOO" on the schematic
> +	 * "FOO_N" =3D GPIO line named "FOO" on schematic, active low
> +	 */
> +	gpio-line-names =3D "ID_SDA",
> +			  "ID_SCL",
> +			  "SDA1",
> +			  "SCL1",
> +			  "GPIO_GCLK",
> +			  "GPIO5",
> +			  "GPIO6",
> +			  "SPI_CE1_N",
> +			  "SPI_CE0_N",
> +			  "SPI_MISO",
> +			  "SPI_MOSI",
> +			  "SPI_SCLK",
> +			  "GPIO12",
> +			  "GPIO13",
> +			  /* Serial port */
> +			  "TXD1",
> +			  "RXD1",
> +			  "GPIO16",
> +			  "GPIO17",
> +			  "GPIO18",
> +			  "GPIO19",
> +			  "GPIO20",
> +			  "GPIO21",
> +			  "GPIO22",
> +			  "GPIO23",
> +			  "GPIO24",
> +			  "GPIO25",
> +			  "GPIO26",
> +			  "GPIO27",
> +			  "RGMII_MDIO",
> +			  "RGMIO_MDC",
> +			  /* Used by BT module */
> +			  "CTS0",
> +			  "RTS0",
> +			  "TXD0",
> +			  "RXD0",
> +			  /* Used by Wifi */
> +			  "SD1_CLK",
> +			  "SD1_CMD",
> +			  "SD1_DATA0",
> +			  "SD1_DATA1",
> +			  "SD1_DATA2",
> +			  "SD1_DATA3",
> +			  /* Shared with SPI flash */
> +			  "PWM0_MISO",
> +			  "PWM1_MOSI",
> +			  "STATUS_LED_G_CLK",
> +			  "SPIFLASH_CE_N",
> +			  "SDA0",
> +			  "SCL0",
> +			  "RGMII_RXCLK",
> +			  "RGMII_RXCTL",
> +			  "RGMII_RXD0",
> +			  "RGMII_RXD1",
> +			  "RGMII_RXD2",
> +			  "RGMII_RXD3",
> +			  "RGMII_TXCLK",
> +			  "RGMII_TXCTL",
> +			  "RGMII_TXD0",
> +			  "RGMII_TXD1",
> +			  "RGMII_TXD2",
> +			  "RGMII_TXD3";
> +};
> +
>  &pwm1 {
>  	pinctrl-names =3D "default";
>  	pinctrl-0 =3D <&pwm1_0_gpio40 &pwm1_1_gpio41>;


--=-W7Z0xkNoSi4WzK5KufDN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4xjkgACgkQlfZmHno8
x/4RxAf+Po8dJxuJatdJG3Apbg1cwwn5IV+bD4rK9TBFtotXR+sCSId44VQV5SqA
G/8uB2Qu8U7HgAE/60TOUBBIRlyHFoLPthhrgC4Y9KWj7F3rWPbUfg878XHhk8Fg
64XJ9WD2UZ3d9lqfmPmnzjm0+Fj+Frk8bPZHTwUKrmIe6l0wD+DfCtBeN3yToSnh
4/g1FfzwueRY92Rtz2vDWl+jHxU0IiRC5LUbOOS1EdKS7XefAyjpetc0Yf19Qmsv
VbNRa0Kqh60aqWjZ5KLSkxf/nRDDddexhmDzmtfmjUhZ7pnzbR4uBcCteOWuUrpm
2DoNaiKIiNNRgmNbzwAC9dqg8tfe4Q==
=9DtJ
-----END PGP SIGNATURE-----

--=-W7Z0xkNoSi4WzK5KufDN--



--===============4069920484058760132==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4069920484058760132==--


