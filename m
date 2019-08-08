Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6CB86B02
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 22:02:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lOFyeiW2Yxdrt9g+M1asOqN1bcaswwR+aJQM+1Xj4wg=; b=OVvfOigVoQkxjr8os3Gb6j9ZY
	TGAfvdNAA3LtvBArsr9XgEW5EYDvYlzOc1123Mjh8uVuQdfNX4oB2VMPR7aKg62lnsWxyJcKtgZ7m
	oQhWk7U5nSYPr3uOSB30QBSleu3eXp2dy0dIXlBJIEBPCuUxeo4EAn2fsMADqECA72z30TvB2UwVS
	Y4xy0K0liruZXtNlXSyMNO3jiwhbKujKo1Ab9x5j6E99pvoP0uyaie361c7cuk//uqhM93Mmc7g4k
	Y6kyWhHjP6gEnfmVGSsr7wOJhdwwXDEIbTAssCdOZiAzjPTfpR7jGOEPI2nvVmhaN2RJzen1KoOSo
	YvxbUJ2lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvoc5-0000FP-K6; Thu, 08 Aug 2019 20:02:17 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvobw-0000Ee-52
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 20:02:10 +0000
Received: from localhost (p5486CA1C.dip0.t-ipconnect.de [84.134.202.28])
 by pokefinder.org (Postfix) with ESMTPSA id 9AAEE2C3112;
 Thu,  8 Aug 2019 22:02:02 +0200 (CEST)
Date: Thu, 8 Aug 2019 22:02:02 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Biwen Li <biwen.li@nxp.com>, Joshua Frkuska <joshua_frkuska@mentor.com>
Subject: Re: i2c: imx: support slave mode for imx I2C driver
Message-ID: <20190808200202.GA6609@ninjato>
References: <20190808035343.34120-1-biwen.li@nxp.com>
MIME-Version: 1.0
In-Reply-To: <20190808035343.34120-1-biwen.li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_130208_494748_911124C9 
X-CRM114-Status: GOOD (  19.66  )
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
Cc: shawnguo@kernel.org, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, laurentiu.tudor@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-i2c@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============8695999058371436208=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8695999058371436208==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="7JfCtLOvnd9MIVvH"
Content-Disposition: inline


--7JfCtLOvnd9MIVvH
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 08, 2019 at 11:53:43AM +0800, Biwen Li wrote:
> The patch supports slave mode for imx I2C driver
>=20
> Signed-off-by: Biwen Li <biwen.li@nxp.com>

Wow, this is much simpler than the other approach flying around:

http://patchwork.ozlabs.org/patch/1124048/

Can this one be master and slave on the same bus, too?

CCing the author of the other patch.

> ---
>  drivers/i2c/busses/i2c-imx.c | 199 ++++++++++++++++++++++++++++++++---
>  1 file changed, 185 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index b1b8b938d7f4..f7583a9fa56f 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -202,6 +202,9 @@ struct imx_i2c_struct {
>  	struct pinctrl_state *pinctrl_pins_gpio;
> =20
>  	struct imx_i2c_dma	*dma;
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +	struct i2c_client		*slave;
> +#endif /* CONFIG_I2C_SLAVE */
>  };
> =20
>  static const struct imx_i2c_hwdata imx1_i2c_hwdata =3D {
> @@ -583,23 +586,40 @@ static void i2c_imx_stop(struct imx_i2c_struct *i2c=
_imx)
>  	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
>  }
> =20
> -static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> +/* Clear interrupt flag bit */
> +static void i2c_imx_clr_if_bit(struct imx_i2c_struct *i2c_imx)
>  {
> -	struct imx_i2c_struct *i2c_imx =3D dev_id;
> -	unsigned int temp;
> +	unsigned int status;
> =20
> -	temp =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> -	if (temp & I2SR_IIF) {
> -		/* save status register */
> -		i2c_imx->i2csr =3D temp;
> -		temp &=3D ~I2SR_IIF;
> -		temp |=3D (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> -		imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2SR);
> -		wake_up(&i2c_imx->queue);
> -		return IRQ_HANDLED;
> -	}
> +	status =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	status &=3D ~I2SR_IIF;
> +	status |=3D (i2c_imx->hwdata->i2sr_clr_opcode & I2SR_IIF);
> +	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
> +}
> +
> +/* Clear arbitration lost bit */
> +static void i2c_imx_clr_al_bit(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status;
> +
> +	status =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	status &=3D ~I2SR_IAL;
> +	imx_i2c_write_reg(status, i2c_imx, IMX_I2C_I2SR);
> +}
> =20
> -	return IRQ_NONE;
> +static irqreturn_t i2c_imx_master_isr(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status;
> +
> +	dev_dbg(&i2c_imx->adapter.dev, "<%s>: master interrupt\n", __func__);
> +
> +	/* Save status register */
> +	status =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	i2c_imx->i2csr =3D status | I2SR_IIF;
> +
> +	wake_up(&i2c_imx->queue);
> +
> +	return IRQ_HANDLED;
>  }
> =20
>  static int i2c_imx_dma_write(struct imx_i2c_struct *i2c_imx,
> @@ -1043,11 +1063,162 @@ static u32 i2c_imx_func(struct i2c_adapter *adap=
ter)
>  		| I2C_FUNC_SMBUS_READ_BLOCK_DATA;
>  }
> =20
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +static void i2c_imx_slave_init(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int temp;
> +
> +	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> +
> +	/* Set slave addr. */
> +	imx_i2c_write_reg((i2c_imx->slave->addr << 1), i2c_imx, IMX_I2C_IADR);
> +
> +	/* Disable i2c module */
> +	temp =3D i2c_imx->hwdata->i2cr_ien_opcode
> +			^ I2CR_IEN;
> +	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> +
> +	/* Reset status register */
> +	imx_i2c_write_reg(i2c_imx->hwdata->i2sr_clr_opcode, i2c_imx,
> +			  IMX_I2C_I2SR);
> +
> +	/* Enable module and enable interrupt from i2c module */
> +	temp =3D i2c_imx->hwdata->i2cr_ien_opcode
> +			| I2CR_IIEN;
> +	imx_i2c_write_reg(temp, i2c_imx, IMX_I2C_I2CR);
> +
> +	/* Wait controller to be stable */
> +	usleep_range(50, 150);
> +}
> +
> +static irqreturn_t i2c_imx_slave_isr(struct imx_i2c_struct *i2c_imx)
> +{
> +	unsigned int status, ctl;
> +	u8 value;
> +
> +	if (!i2c_imx->slave) {
> +		dev_err(&i2c_imx->adapter.dev, "cannot deal with slave irq,i2c_imx->sl=
ave is null");
> +		return IRQ_NONE;
> +	}
> +
> +	status =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	ctl =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> +	if (status & I2SR_IAL) { /* Arbitration lost */
> +		i2c_imx_clr_al_bit(i2c_imx);
> +	} else if (status & I2SR_IAAS) { /* Addressed as a slave */
> +		if (status & I2SR_SRW) { /* Master wants to read from us*/
> +			dev_dbg(&i2c_imx->adapter.dev, "read requested");
> +			i2c_slave_event(i2c_imx->slave, I2C_SLAVE_READ_REQUESTED, &value);
> +
> +			/* Slave transimt */
> +			ctl |=3D I2CR_MTX;
> +			imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +			/* Send data */
> +			imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> +		} else { /* Master wants to write to us */
> +			dev_dbg(&i2c_imx->adapter.dev, "write requested");
> +			i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_WRITE_REQUESTED, &value);
> +
> +			/* Slave receive */
> +			ctl &=3D ~I2CR_MTX;
> +			imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +			/* Dummy read */
> +			value =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> +		}
> +	} else {
> +		if (!(ctl & I2CR_MTX)) { /* Receive mode */
> +			if (status & I2SR_IBB) { /* No STOP signal detected */
> +				ctl &=3D ~I2CR_MTX;
> +				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +				value =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> +				i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_WRITE_RECEIVED, &value);
> +			} else { /* STOP signal is detected */
> +				dev_dbg(&i2c_imx->adapter.dev,
> +					"STOP signal detected");
> +				i2c_slave_event(i2c_imx->slave, I2C_SLAVE_STOP, &value);
> +			}
> +		} else { /* Transmit mode */
> +			if (!(status & I2SR_RXAK)) {	/* Received ACK */
> +				ctl |=3D I2CR_MTX;
> +				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +
> +				i2c_slave_event(i2c_imx->slave,	I2C_SLAVE_READ_PROCESSED, &value);
> +
> +				imx_i2c_write_reg(value, i2c_imx, IMX_I2C_I2DR);
> +			} else { /* Received NAK */
> +				ctl &=3D ~I2CR_MTX;
> +				imx_i2c_write_reg(ctl, i2c_imx, IMX_I2C_I2CR);
> +				value =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2DR);
> +			}
> +		}
> +	}
> +	return IRQ_HANDLED;
> +}
> +
> +static int i2c_imx_reg_slave(struct i2c_client *client)
> +{
> +	struct imx_i2c_struct *i2c_imx =3D i2c_get_adapdata(client->adapter);
> +
> +	if (i2c_imx->slave)
> +		return -EINVAL;
> +
> +	dev_dbg(&i2c_imx->adapter.dev, "<%s>\n", __func__);
> +	i2c_imx->slave =3D client;
> +
> +	i2c_imx_slave_init(i2c_imx);
> +
> +	return 0;
> +}
> +
> +static int i2c_imx_unreg_slave(struct i2c_client *client)
> +{
> +	struct imx_i2c_struct *i2c_imx =3D i2c_get_adapdata(client->adapter);
> +
> +	if (!i2c_imx->slave)
> +		return -EINVAL;
> +
> +	i2c_imx->slave =3D NULL;
> +
> +	return 0;
> +}
> +#endif /* CONFIG_I2C_SLAVE */
> +
>  static const struct i2c_algorithm i2c_imx_algo =3D {
>  	.master_xfer	=3D i2c_imx_xfer,
>  	.functionality	=3D i2c_imx_func,
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +	.reg_slave	=3D i2c_imx_reg_slave,
> +	.unreg_slave	=3D i2c_imx_unreg_slave,
> +#endif /* CONFIG_I2C_SLAVE */
>  };
> =20
> +static irqreturn_t i2c_imx_isr(int irq, void *dev_id)
> +{
> +	struct imx_i2c_struct *i2c_imx =3D dev_id;
> +	unsigned int status, ctl;
> +	irqreturn_t irq_status =3D IRQ_NONE;
> +
> +	status =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2SR);
> +	ctl =3D imx_i2c_read_reg(i2c_imx, IMX_I2C_I2CR);
> +
> +	if (status & I2SR_IIF) {
> +		i2c_imx_clr_if_bit(i2c_imx);
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +		if (ctl & I2CR_MSTA)
> +			irq_status =3D i2c_imx_master_isr(i2c_imx);
> +		else
> +			irq_status =3D i2c_imx_slave_isr(i2c_imx);
> +#else
> +		irq_status =3D i2c_imx_master_isr(i2c_imx);
> +
> +#endif /* CONFIG_I2C_SLAVE */
> +	}
> +
> +	return irq_status;
> +}
> +
>  static int i2c_imx_probe(struct platform_device *pdev)
>  {
>  	const struct of_device_id *of_id =3D of_match_device(i2c_imx_dt_ids,
> --=20
> 2.17.1
>=20

--7JfCtLOvnd9MIVvH
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl1Mf7UACgkQFA3kzBSg
KbbIdRAAmY+CmZvnxzaoFKgN0BZt09R2Y3W+z+3mpuJC4EC9WDc3zZxrLAJBtXKB
m5GiooGqY9tYfxKDEcZgnAbsg0+duHDCBi7Ky7qrgiyawIo8ZbhRCpa4LSzA0QRN
+FmL91PDIJcqxd4xIU6UKJRFrKCpWeR4iYOAVuF/3PtPlIpzgVRZvvi5/fFAaIHx
2gGvdGAx9eMtAs7HMA7/GMYalzex4EuGBuP+U5rXP6tUBNh+pSzJtqof9WFwGV/N
OmUBLCd6dVoLbJcT1F47gxqC4mEo8SKsgv2rMlYS5GQIInVU7/p6uER/Yr5zHERS
Z/phPdfMhqmATRIOBKdrgDRBPfAwHU9tuBep8glR0MpfjiejrZLWri4kTJ18nPy5
znVN0QiLU4rFNyHOn716AS9ykzmRd1a2ujs5nT8vRd6ccNxi9zLAT68VuYY62HLS
iWaVjx5kCgfx/W9GZMs0e++i+I3wca40LpeLMvP56wGjrBh+VfoMQVeKk3IONgYQ
6fECaczR3Fop5W3pYf8+n/rekOw9u1fEIFz4FDLxxb+Rjsiu60/5o99MgU+Zd8+C
z42/FHVuhdZE93Y9kfudirKPBen05s6qdnbEr98DZhMJZ0oT7RBCLsfRl5kIqWgH
mOYmOGy4u7m4h+CLHmlrYDdVOnBPj5JnAqvqJdyqm47YC1OgrvU=
=2lFt
-----END PGP SIGNATURE-----

--7JfCtLOvnd9MIVvH--


--===============8695999058371436208==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8695999058371436208==--

