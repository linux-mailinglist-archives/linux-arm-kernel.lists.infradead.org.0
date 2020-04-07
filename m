Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167C51A1231
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 18:54:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=R51kYZNAY8Kw44lR7alqYvFk7guJ8TdTMidXOBU1VBE=; b=dDeWXfmVgb3rSzczCNNpUeNY3
	GB7hjk+YXphwy96ZVP+689tTQw9R4jGR0hRoh9tFyer19NdOauosMYweELT3nnOMHmyiZl6vBYFkE
	o1jEWgor65Joo97oqZ5s9FE8PvUU+Q16H47C1JNn04xCQ/7RLfrl5z0merQL4/cHctOIOQM0K7hg3
	xgkBsEeDCIBeDlN80Qp4XCoVQVYjftt8Y/v7zDhyfG9TFj1hrbPlMPxs/Ulv/w00fJ8hwIksvLuSa
	yJD0Mob3wzhY4HGglC9dOwoSqtP4rv1oO/A1S+4dZ/qpesvWfzzLEibL6K+Bb0f1NHQiki4zATxv9
	MnhmDnqIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrTy-0007o1-J2; Tue, 07 Apr 2020 16:53:50 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrTr-0007nX-ET
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 16:53:44 +0000
Received: by mail-qv1-xf41.google.com with SMTP id c28so2145595qvb.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Apr 2020 09:53:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=d3VppNLHFrOcwWwbhA0a42eUvrzhWAyV8lp0TArcKUI=;
 b=gTMYjS8VCusWzzR0ujkxGvuNVHTf97jQDDyMXbcKUdhzfmqh8hJapcfDJXCqvVpZpH
 y2GtAqJX+ZTq7ILnqzyqwMPlBeZG6qYiFEZmMWMuGYCZvqaf8ejN8sL87Ju22j+VgjrR
 7fCs7WafEs77ZB3k+dcLzdVHRizOUpzywpcDREzNQROl8lHJ9z+GEBgRCqavav/TuGky
 ZAaAHWX/8hTFesdNvVB1CQkMJA6ugBJl2tgreshtXqx2bPI3VZOk1Rb5QEF3zVPNm1qz
 3aOHzWfcR4WTQ425t7EDeNinHx4272hmXhvbdNIAl5S7wVj0DQcw65lp+JH2cTVw7hKv
 IsVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=d3VppNLHFrOcwWwbhA0a42eUvrzhWAyV8lp0TArcKUI=;
 b=trcPw1ZxlMt8Ikok7c8A1ZsBe5Qj3f/6yWd1CVp0y6p+B8XPvxA1JhGSP/4xA8O95I
 wDdb5QMstwfNIpyXErkg5t14aCc2o2R4O4KQ2nwCaEISt3jM45heUQrHhz3cZND+PG04
 RrBYuMgzqXaS74+SZIQaKd6EtA5m1pOvxdy0c1blMUOVQVgAEQQ29mheREaozA1Je4Br
 gsja/6+6vgVJoP8t/KLKZSP6Je0u4FpXHUMl2KviZnq7ZU9GYSOVFa6UvcmlPpG9lOpg
 FDIxMrVjTQ6bFwum1DC+ezYEYUfJCw4SIKi035Bbm72hD1eyHTD76jI5uI3//OzSC6Bt
 HekQ==
X-Gm-Message-State: AGi0PuY2qfoxsWI11wpmEClPU3OUirPYIJNdFLMeXljmVTgoC+fgjNGE
 rFjeS1Zthp6p0jzusKwn8Zw=
X-Google-Smtp-Source: APiQypK11F/M1pHTJnN84IWOLfEDHscNiF0dxYg4qZy2tkh6lY/465HRjDB4R4Bn3/EpZJUuWGcf6w==
X-Received: by 2002:ad4:496b:: with SMTP id p11mr3140242qvy.202.1586278418655; 
 Tue, 07 Apr 2020 09:53:38 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id m127sm13463453qke.64.2020.04.07.09.53.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Apr 2020 09:53:37 -0700 (PDT)
Date: Tue, 7 Apr 2020 12:53:35 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 1/3] ARM: at91: add atmel tcb capabilities
Message-ID: <20200407165335.GF5578@icarus>
References: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
 <20200406155320.1291701-2-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200406155320.1291701-2-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_095343_510976_6F8B2E67 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0514170500172652534=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0514170500172652534==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="RE3pQJLXZi4fr8Xo"
Content-Disposition: inline


--RE3pQJLXZi4fr8Xo
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 06, 2020 at 05:53:18PM +0200, Kamel Bouhara wrote:
> Some atmel socs have extra tcb capabilities that allow using a generic
> clock source or enabling a quadrature decoder.
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  include/soc/at91/atmel_tcb.h | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/include/soc/at91/atmel_tcb.h b/include/soc/at91/atmel_tcb.h
> index fbf5474f4484..6b9c9bec982e 100644
> --- a/include/soc/at91/atmel_tcb.h
> +++ b/include/soc/at91/atmel_tcb.h
> @@ -39,7 +39,8 @@ struct clk;
>   */
>  struct atmel_tcb_config {
>  	size_t	counter_width;
> -	unsigned int has_gclk:1;

Hi Kamel,

I'm having trouble applying this patch, so I think we have different
bases. Specifically, I'm not sure where this has_gclk member was
introduced. It doesn't look like it's in the testing branch of the IIO
tree yet.

What branch did you base your patches on?

Thanks,

William Breathitt Gray

> +	bool	has_gclk;
> +	bool	has_qdec;
>  };
> =20
>  /**
> --=20
> 2.25.0
>=20

--RE3pQJLXZi4fr8Xo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6MsA8ACgkQhvpINdm7
VJI7/g/8DlUdnaSLPC9O0tau43LweVzguxsRZUbsgEYcyNqguZF+ZmPWMospskNI
LqRF7nWh6hVXjz9EarWDGKT+EEw2ykfJnkc+9UYnDseXC8lcphprTyTQxRg1Q0ol
Ot9jb1uHhPWE5hOQqrwwP84ec43wjUryFER//0NmpJZEPGjCEiJK7oqjJahLN12v
ooL6gDIB3iGV8QBIfANVUxwBV00pnsFAxtQMZ7euZew+qN9nxxUA1DmfTlW7tO7p
te+ZW9WwEb2qhE1KhxBv3rcul1kxGSj2gA0MufqW7MsKEQN+iZiZorXy7p9ZbSG5
L2NgwY/HnIT6yyoOZZ+c25yhfL+suFW2o9s0C16CqTOmmMXoqLevPTllgNSVxkod
mZ73s9+JOrhGr9qjwqyLOWo4gGvIzaxfwbeTpgVcq0rLcdinDFLH09eorvDogeWv
QfMZSrR30ATakNbdJcglA6Kf7q6CNxvELc9P5aSxeujLTwezP+Cy6Ea61eSIeR60
dvxyttF09iBzTKr0VjqFJ19geMFS4RExoN2Vu4w03RqyTihcDQHJnNF8hO4l/mpl
t/lKLh06mUEB7LFNwh1AisIO+l/EKiPmDGb1cuefI9v92k2Nof32QfvhAmmYDl1g
0OMxLl/WMd563XzCDKRLPqm7IIgjEtJEg7uU2YHiaSNk3p2t3TA=
=66eq
-----END PGP SIGNATURE-----

--RE3pQJLXZi4fr8Xo--


--===============0514170500172652534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0514170500172652534==--

