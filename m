Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FB656B05
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 15:46:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=POdvDFaSzs8GNQxGvDA9kAW3PK+HsviRW6kpkcBjCsY=; b=omSTu75iSQKAOrycp5sNrLGnk
	1MTiB0TtAHwQPFK4cIeA2QPXh0Jgdp43pjZYu0NA2GZc30jeax9FGrZQtu0IIiS8qYcyYJI6kIiyi
	YM8z3PVMjuCk0tAtLcicawrK7Opc+NfwenmTKCfIau8/WFBnfv1m+gUYvWa1s8BzhAv/ZJNbuJ/3i
	Pbm5GmsYqTOh+kWsS8+oooWYQXRmciAus8bFccclX320/7f3jpcp8k+XvlN00nHrbVoJ11mz83Ahb
	YVLOik+bxa9q2WaBbkJEoEL6bz97IfQfGRd3cpogdvkFMEJWEwct2U7jmcLgQW6x3MiR2hTIhAuCa
	yg9yZcLkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8FF-0002B0-CJ; Wed, 26 Jun 2019 13:45:53 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8Ey-0002AU-Of
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 13:45:38 +0000
Received: from localhost (p54B330AF.dip0.t-ipconnect.de [84.179.48.175])
 by pokefinder.org (Postfix) with ESMTPSA id 00AF52C0114;
 Wed, 26 Jun 2019 15:45:35 +0200 (CEST)
Date: Wed, 26 Jun 2019 15:45:35 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH] i2c: i2c-stm32f7: Add I2C_SMBUS_I2C_BLOCK_DATA support
Message-ID: <20190626134535.GN801@ninjato>
References: <1559654451-26612-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1559654451-26612-1-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_064536_947642_F116F5C8 
X-CRM114-Status: GOOD (  17.43  )
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
Cc: alexandre.torgue@st.com, linux-kernel@vger.kernel.org,
 pierre-yves.mordret@st.com, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6593504173043123567=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6593504173043123567==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="8MZM6zh5Bb05FW+3"
Content-Disposition: inline


--8MZM6zh5Bb05FW+3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 04, 2019 at 03:20:51PM +0200, Fabrice Gasnier wrote:
> This patch adds the support of I2C_SMBUS_I2C_BLOCK_DATA transaction type
> for the stm32f7 SMBUS Controller.
> Use emulated I2C_SMBUS_I2C_BLOCK_DATA transactions as there is no specific
> hardware in STM32 I2C to manage this (e.g. like no need for PEC here).
> Emulated transfer will fall back calling i2c transfer method where there's
> already support for DMAs for example.
> So, use the I2C_FUNC_SMBUS_I2C_BLOCK in stm32f7_i2c_func(), and rely on
> emulated transfer by returning -EOPNOTSUPP in the smbus_xfer() routine
> for such a case.
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>

Maintainers?

> ---
>  drivers/i2c/busses/i2c-stm32f7.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/i2c/busses/i2c-stm32f7.c b/drivers/i2c/busses/i2c-st=
m32f7.c
> index 48337be..68a751e 100644
> --- a/drivers/i2c/busses/i2c-stm32f7.c
> +++ b/drivers/i2c/busses/i2c-stm32f7.c
> @@ -953,6 +953,9 @@ static int stm32f7_i2c_smbus_xfer_msg(struct stm32f7_=
i2c_dev *i2c_dev,
>  		cr2 &=3D ~STM32F7_I2C_CR2_RD_WRN;
>  		f7_msg->read_write =3D I2C_SMBUS_READ;
>  		break;
> +	case I2C_SMBUS_I2C_BLOCK_DATA:
> +		/* Rely on emulated i2c transfer (through master_xfer) */
> +		return -EOPNOTSUPP;
>  	default:
>  		dev_err(dev, "Unsupported smbus protocol %d\n", f7_msg->size);
>  		return -EOPNOTSUPP;
> @@ -1803,7 +1806,8 @@ static u32 stm32f7_i2c_func(struct i2c_adapter *ada=
p)
>  		I2C_FUNC_SMBUS_QUICK | I2C_FUNC_SMBUS_BYTE |
>  		I2C_FUNC_SMBUS_BYTE_DATA | I2C_FUNC_SMBUS_WORD_DATA |
>  		I2C_FUNC_SMBUS_BLOCK_DATA | I2C_FUNC_SMBUS_BLOCK_PROC_CALL |
> -		I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC;
> +		I2C_FUNC_SMBUS_PROC_CALL | I2C_FUNC_SMBUS_PEC |
> +		I2C_FUNC_SMBUS_I2C_BLOCK;
>  }
> =20
>  static struct i2c_algorithm stm32f7_i2c_algo =3D {
> --=20
> 2.7.4
>=20

--8MZM6zh5Bb05FW+3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0Tdv8ACgkQFA3kzBSg
KbY34A/8CYpfe2MHsAqTGHO1tyGPc3Fuatefa6I/N/YHYLpWoSl3mpGia6mLK7s7
gpUm/ClB+7Sl5KKdUaQ2zbvDtBPKQHfpZ/2QAYgBIoTVpf+snQLYRv4I5EiDD9Hs
EAD+2gH3nxPCHu4q/J97lT/wq4o5IxeyzsLHxeRnnBB+Ziov+9Zoad5ug3f6jRTp
KcL9B7T1Is0CU4xlqO/m3sHiRgfzIjovv7l6UIWd4JgRCiXerqkDuaZ7kp/rin5h
4JQplk9UxamamgkjDexY/CE1Jk2ZN1NYLck574DAFO2J0CpGsYYu+ykC046A1H2i
1yPfuLWy6Ie3IHHmf0CWJOw9h0o0oxmZQkTiX8WoXwUAozrodjbHo5asLK8V+F+z
mjv8YhvXjbZRePtqpusnwtU7p4kXNhfi2skCNUPMqEQlAMgHecagto0+rDcfy6qI
icB1x3LegvBoO1wWRilTvjYAYC5/gFLSdqppZVYGF5kEEzmJ1Q/Tv+Ekb3fUbgEz
50riYWCnCoOdCs6S2XNb8/aSgHkU+6sjRNA7hCJCNNLPxcMobmUCk5V2R56GWjPW
4z30wWy4vO3eo4CtH7WDUsMDnxiNK4lxqMkiPZPXgcJRl+SDnIPsyWrQKN9CCNoq
c2br40VJ1gnvj0OX0TSKItNmxc5K4Q1iQWGiEwmA7DMumfDW9Kw=
=as2l
-----END PGP SIGNATURE-----

--8MZM6zh5Bb05FW+3--


--===============6593504173043123567==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6593504173043123567==--

