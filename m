Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1F41BD69F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 09:54:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M+nSjqv0JZyZ7JrFXI3LHBLIEaL8URVDXeL5+kK+700=; b=Ppu3fYRrrc8q0EANpjqhsynRg
	hsXp+5btuURKKuJ8sTNOoJbzmuOzJC2/DHz/D/BWDeTjyK2hgJ5IMAV+wnmvhC6CzAv8UdNYnl5b9
	lw2HZCYh1dtOfqm18v/V4rVdP1hO9kc4QnKcKPVtZ+Z+6XtKC3em6Xp9J3GyZwn82MO5qenOcSowB
	eDjE+kUEsgH0KgYayDTdrmOYmn3CDBvtPWzy/L6FwePOjLeaGVbm10Xb+q9ZMZCGmUb3ScJFTzDtC
	rsEHpqmIOb1ByObaYAbZga7ie911OJt3Mk8pWo8Ypgfl7hLt5oqXEz0R8DCTDlcaNfJXbYCD/PzYB
	GA8o6roiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jThXo-0003Kg-5U; Wed, 29 Apr 2020 07:54:12 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jThXc-0003J4-MN
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 07:54:02 +0000
Received: from localhost (p54B330EB.dip0.t-ipconnect.de [84.179.48.235])
 by pokefinder.org (Postfix) with ESMTPSA id 3F6972C08B2;
 Wed, 29 Apr 2020 09:53:59 +0200 (CEST)
Date: Wed, 29 Apr 2020 09:53:57 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: ryan_chen <ryan_chen@aspeedtech.com>
Subject: Re: [PATCH v0 linux master] i2c/busses: Avoid i2c interrupt status
 clear race condition.
Message-ID: <20200429075357.GA1957@kunai>
References: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
MIME-Version: 1.0
In-Reply-To: <20200429033737.2781-1-ryan_chen@aspeedtech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_005400_880662_27C2E620 
X-CRM114-Status: GOOD (  14.56  )
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
Cc: linux-aspeed@lists.ozlabs.org, Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 Brendan Higgins <brendanhiggins@google.com>, linux-kernel@vger.kernel.org,
 Joel Stanley <joel@jms.id.au>, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1563597670179732980=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1563597670179732980==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0F1p//8PRICkK4MW"
Content-Disposition: inline


--0F1p//8PRICkK4MW
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 29, 2020 at 11:37:37AM +0800, ryan_chen wrote:
> In AST2600 there have a slow peripheral bus between CPU
>  and i2c controller.
> Therefore GIC i2c interrupt status clear have delay timing,
> when CPU issue write clear i2c controller interrupt status.
> To avoid this issue, the driver need have read after write
>  clear at i2c ISR.
>=20
> Signed-off-by: ryan_chen <ryan_chen@aspeedtech.com>

v0? is it a prototype?

And is there maybe a Fixes: tag for it?

> ---
>  drivers/i2c/busses/i2c-aspeed.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-asp=
eed.c
> index 07c1993274c5..f51702d86a90 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -603,6 +603,7 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void *=
dev_id)
>  	/* Ack all interrupts except for Rx done */
>  	writel(irq_received & ~ASPEED_I2CD_INTR_RX_DONE,
>  	       bus->base + ASPEED_I2C_INTR_STS_REG);
> +	readl(bus->base + ASPEED_I2C_INTR_STS_REG);
>  	irq_remaining =3D irq_received;
> =20
>  #if IS_ENABLED(CONFIG_I2C_SLAVE)
> @@ -645,9 +646,11 @@ static irqreturn_t aspeed_i2c_bus_irq(int irq, void =
*dev_id)
>  			irq_received, irq_handled);
> =20
>  	/* Ack Rx done */
> -	if (irq_received & ASPEED_I2CD_INTR_RX_DONE)
> +	if (irq_received & ASPEED_I2CD_INTR_RX_DONE) {
>  		writel(ASPEED_I2CD_INTR_RX_DONE,
>  		       bus->base + ASPEED_I2C_INTR_STS_REG);
> +		readl(bus->base + ASPEED_I2C_INTR_STS_REG);
> +	}
>  	spin_unlock(&bus->lock);
>  	return irq_remaining ? IRQ_NONE : IRQ_HANDLED;
>  }
> --=20
> 2.17.1
>=20

--0F1p//8PRICkK4MW
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl6pMo4ACgkQFA3kzBSg
KbbntRAAs++ZnC+iCmSLY5Q3M4OON+jEs3K4ZhdSuNgzbZsLaWVt5Cx7cCjT/JDi
988C8kzysPKL8Cknlqyv4GBus0cCPwylvFZGHWXdot89RmG4stjYb3JbaV+Qm9Ov
8bCKE8xEWEHyYFFEgreqtLbEFCnHCNf7TnX21b8+L6E988R1AE7r5qIFCTuK1/4/
hrNCRmEoXYLp0pSDC6BuAgJvayrewlTkvCfnBVv39FzN95ghtC21cC73I6SKfDat
qxCyKy1x++V6n03sprTFgc8MCqOpYu6rIgFKm94NSltyJWaRAZKY1vd/Pzj7D0Oc
UPhtu7ldQAbllMAZmMutCDf8m0ek+Ob4jHF+DQKqq2E8MQZs35RxrNnDYzFOLm7r
NISJkGAZ6ZmC3lmyH1t1GRxZls5RfqpUJuVFIke07C4eSO7r6y9rWoOOhzMYJERC
cQuG05T6fcJRGx35/h9GHbcb9+kafQXXRaM65H4aEPKBjbtDbyC8j9PT5WGTRFwS
kS0iSZ5XnSiCccMv33mJqgotV9yPTaVHstupHCnI7K77MH0b7l4Ni1Q7DAnR0cE/
7mhN81qc04aqCi4+Zi1PtWRKMBcgvdX9QmHQnt2KYc7kSmgD9gy454O1NOIbA97S
c1UOGjbptbrnl1VaH9/o0SldOXlHGdNzkzspFGAhk/5ioC8I2oE=
=hr47
-----END PGP SIGNATURE-----

--0F1p//8PRICkK4MW--


--===============1563597670179732980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1563597670179732980==--

