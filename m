Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A36D88E3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:03:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6J9+O00OAxEgR4R9FP9eVT7aW4ayqXy4OTvWtW3Axmw=; b=r6Nfw6aNS6R/7iKg3srRA5h6U
	fPJaFHLqSYWbo1DkZCHkUn3Hzxp6rKA1FK+nxvPvvl7bCenPtofS2tytKb/91wLUgB/GPqzJWy3lr
	uKhi7iibJordJQlhzll+6MTcvEDQ4Vc0y20AZES6/6a2vxsjMAC2v5wFm5RbjijsspJhTXaz3rH3n
	eBDWpdvcGuT8h5KJ7C5wb1Cdx4dWLY0GUvd1hRom9iIsFG+l38Se6frCrVhn51ToQIOozrc67xsw9
	9oMpufSyyVbRdCOeE+RxrMxABpfIwMt6rHdqbDNu9rfWWVGK7k8a4m3j4//EoG5q+59XfInTFr4Vt
	lWKXtn3Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdLR-0006QM-03; Wed, 16 Oct 2019 07:03:41 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdLD-0006Pz-OL
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:03:29 +0000
Received: by mail-wr1-x442.google.com with SMTP id b9so26660986wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:03:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IGofv4/Ku/88kChkBC96+cWtPXeTqXT9jPete3VOo9U=;
 b=UJ2U78bnOcl8EaGyLODuQSbvDUBNAuvXv1Fmn9uD1LkQiVl/A7ek9KcBDLcZkFrdie
 oq184dD8fZLrrI18nRhQ9Nd5V8GfwWRR06B3gOk0izZ3ZzmMGC9Qcbq2HtJFEDa24ECn
 VtsTeWUF+RY8QHzNx5ecOGMcT3orKuTWjo0sDM6eX8+LcFp/hgYfUbUgyWqc/Fb3zVBk
 IHZ7YTcOqXtBXbUQQ6ybSst9J82WegzReDYIc30PH5TmkPkV9nge4un6wigJEcahw6iN
 WRzrDVexqDA65HlCTCe4QPouzqbFQ+eRAuvwSFaoou4db0l+m4IdJ1n9jSnue+c61r1H
 PBsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IGofv4/Ku/88kChkBC96+cWtPXeTqXT9jPete3VOo9U=;
 b=hKvugDC5DBHCocppwPWqIPxT+5dOtCYGyxoI1xAq6MkrLZALRGPIekRlYN39HZPL4l
 5HjREuHFgdQk1i+150R7BYhnmSQlB1rmuhPuAodGl0sLN4h9Dlku5lJ8w4sQs7APsdx6
 AjpioyWP7h7Gzno/6hq3hBcX7mJ+5qvfBJjjZqw4gOp407ffUMy1hOh6S8Kjdc2s65M1
 MRJZ2jiEnHvcR6kYU86/gitQWA9uvlL8yJ2N7U/SrtGfh6SzvsTeFpXInXXNLiGdVsx6
 RgH/8ePW60hEiFO5H/Am3ZMlLycaUbzyBfinKLDJTNANB56AT6usoVmGkX8mSwhyKUWl
 hnAA==
X-Gm-Message-State: APjAAAWa+6RGE6Y5pf+DtVj7LoUUagcV1eyf+/F9GHYeTIPQpnSCMO7D
 vzmI2cdZY2B7quW8fIJHDUI=
X-Google-Smtp-Source: APXvYqw7t9eK30PIU6CMnErqccHPXcX7RhVu2WwgEF8LtBGQ4aGys5/7upH8IoAYtGMNILl1csS96Q==
X-Received: by 2002:adf:f04f:: with SMTP id t15mr1256271wro.123.1571209406350; 
 Wed, 16 Oct 2019 00:03:26 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id e15sm27177088wrs.49.2019.10.16.00.03.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:03:24 -0700 (PDT)
Date: Wed, 16 Oct 2019 09:03:22 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2 2/3] pwm: stm32: split breakinput apply routine to
 ease PM support
Message-ID: <20191016070322.GB1296874@ulmo>
References: <1570193633-6600-1-git-send-email-fabrice.gasnier@st.com>
 <1570193633-6600-3-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1570193633-6600-3-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000327_806583_8B48D90F 
X-CRM114-Status: GOOD (  22.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 mcoquelin.stm32@gmail.com, u.kleine-koenig@pengutronix.de,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: multipart/mixed; boundary="===============5812028199671344138=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5812028199671344138==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Yylu36WmvOXNoKYn"
Content-Disposition: inline


--Yylu36WmvOXNoKYn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 04, 2019 at 02:53:52PM +0200, Fabrice Gasnier wrote:
> Split breakinput routine that configures STM32 timers 'break' safety
> feature upon probe, into two routines:
> - stm32_pwm_apply_breakinputs() sets all the break inputs into registers.
> - stm32_pwm_probe_breakinputs() probes the device tree break input settin=
gs
>   before calling stm32_pwm_apply_breakinputs()
>=20
> This is a precursor patch to ease PM support. Registers content may get
> lost during low power. So, break input settings applied upon probe need
> to be restored upon resume (e.g. by calling stm32_pwm_apply_breakinputs()=
).
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/pwm/pwm-stm32.c | 48 ++++++++++++++++++++++++++++---------------=
-----
>  1 file changed, 28 insertions(+), 20 deletions(-)

Applied, thanks. I've made some minor changes, mostly for consistency
with other drivers and the PWM core. See below.

> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
> index 359b085..cf8658c 100644
> --- a/drivers/pwm/pwm-stm32.c
> +++ b/drivers/pwm/pwm-stm32.c
> @@ -19,6 +19,12 @@
>  #define CCMR_CHANNEL_MASK  0xFF
>  #define MAX_BREAKINPUT 2
> =20
> +struct stm32_breakinput {
> +	u32 index;
> +	u32 level;
> +	u32 filter;
> +};
> +
>  struct stm32_pwm {
>  	struct pwm_chip chip;
>  	struct mutex lock; /* protect pwm config/enable */
> @@ -26,15 +32,11 @@ struct stm32_pwm {
>  	struct regmap *regmap;
>  	u32 max_arr;
>  	bool have_complementary_output;
> +	struct stm32_breakinput breakinput[MAX_BREAKINPUT];
> +	unsigned int nbreakinput;

I changed these to breakinputs and num_breakinputs since they are
slightly more consistent with the naming elsewhere in PWM.

>  	u32 capture[4] ____cacheline_aligned; /* DMA'able buffer */
>  };
> =20
> -struct stm32_breakinput {
> -	u32 index;
> -	u32 level;
> -	u32 filter;
> -};
> -
>  static inline struct stm32_pwm *to_stm32_pwm_dev(struct pwm_chip *chip)
>  {
>  	return container_of(chip, struct stm32_pwm, chip);
> @@ -512,15 +514,27 @@ static int stm32_pwm_set_breakinput(struct stm32_pw=
m *priv,
>  	return (bdtr & bke) ? 0 : -EINVAL;
>  }
> =20
> -static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv,
> +static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv)
> +{
> +	int i, ret =3D 0;

Made i unsigned int.

> +
> +	for (i =3D 0; i < priv->nbreakinput && !ret; i++) {
> +		ret =3D stm32_pwm_set_breakinput(priv,
> +					       priv->breakinput[i].index,
> +					       priv->breakinput[i].level,
> +					       priv->breakinput[i].filter);
> +	}

I thought this was a little odd, so I changed it to explicitly check the
value of ret and return on error.

> +
> +	return ret;

And then this became "return 0;"

> +}
> +
> +static int stm32_pwm_probe_breakinputs(struct stm32_pwm *priv,
>  				       struct device_node *np)
>  {
> -	struct stm32_breakinput breakinput[MAX_BREAKINPUT];
> -	int nb, ret, i, array_size;
> +	int nb, ret, array_size;
> =20
>  	nb =3D of_property_count_elems_of_size(np, "st,breakinput",
>  					     sizeof(struct stm32_breakinput));
> -

Dropped this since it made the code look cluttered.

Thierry

>  	/*
>  	 * Because "st,breakinput" parameter is optional do not make probe
>  	 * failed if it doesn't exist.
> @@ -531,20 +545,14 @@ static int stm32_pwm_apply_breakinputs(struct stm32=
_pwm *priv,
>  	if (nb > MAX_BREAKINPUT)
>  		return -EINVAL;
> =20
> +	priv->nbreakinput =3D nb;
>  	array_size =3D nb * sizeof(struct stm32_breakinput) / sizeof(u32);
>  	ret =3D of_property_read_u32_array(np, "st,breakinput",
> -					 (u32 *)breakinput, array_size);
> +					 (u32 *)priv->breakinput, array_size);
>  	if (ret)
>  		return ret;
> =20
> -	for (i =3D 0; i < nb && !ret; i++) {
> -		ret =3D stm32_pwm_set_breakinput(priv,
> -					       breakinput[i].index,
> -					       breakinput[i].level,
> -					       breakinput[i].filter);
> -	}
> -
> -	return ret;
> +	return stm32_pwm_apply_breakinputs(priv);
>  }
> =20
>  static void stm32_pwm_detect_complementary(struct stm32_pwm *priv)
> @@ -614,7 +622,7 @@ static int stm32_pwm_probe(struct platform_device *pd=
ev)
>  	if (!priv->regmap || !priv->clk)
>  		return -EINVAL;
> =20
> -	ret =3D stm32_pwm_apply_breakinputs(priv, np);
> +	ret =3D stm32_pwm_probe_breakinputs(priv, np);
>  	if (ret)
>  		return ret;
> =20
> --=20
> 2.7.4
>=20

--Yylu36WmvOXNoKYn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2mwLoACgkQ3SOs138+
s6GHWBAAwHNWDi4qqGce8HzLiOPsZ7PV4JSn64OsoS8PfEcGLWagSsNg3JN4vG8S
Hl49Do93zxuquA7pQlxxphQZNfbg4scYnEWZdGN9NPI+HVUiWXxKyKG++k9ZJMR4
KRVmugkh/Qo+sQOAi5qgafxtj42xMnyGj0jp9FNLJ/ZiYAyTabxPalVbLoEOliPX
X3QXW/o9RCcqam/n8vyEj+rsAJj9vdctQJl2q20n3AYH/G6Ku1xbr5htG3aWhWG0
YyvuHEYsTOqo/08TIdbajpkcPzMGh1AjvXwZ6EcNCuM2mGimxv1MH6oWbXyhMO9d
6u2PP3ttwkni+ogoLaYzN7+7/elSNtP10DfThPDvp2SfS4RTOQ/MwJ3DP8+lbNbD
p27zLHY5SE3cSZV8RqXlGQ+IlIPThwG66HJNuLzsfbXCon6OXdzd/sw0s3j8tDwq
V5JEstiS3EDg9mHX7CBH1GWtNm5gYhxMwcWJ5x56yLF/oiHGb+S0MBRjAVjLid9y
JcmXdks8bCk5BieAkfYmhX6Pa3DVHjMrn+DTWfCb/P+J29woIodOkxwVu7IZdWw/
katw5Q+2qtuJsXxmgNUsxVABsaZk7Q9KPo1LNbiz4TsCvttRmRNptxSfC2Je6otM
TSj7eq8zzUcx6GdYGkC6snh+GbHMHn/DyMj+FhmTPdECcsDmiYM=
=ibpm
-----END PGP SIGNATURE-----

--Yylu36WmvOXNoKYn--


--===============5812028199671344138==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5812028199671344138==--

