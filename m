Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E25BD89FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:40:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=T3hUuNXD6dZuMUKjX1zmjrfJl1EsPCPX8G2UZsEmiko=; b=AH4+SzaAzTSbBItnIYb/MLU8Y
	fw7A8Fz6e8mSjOm0/bLZ+MgaQR5FZcRm9tisa9CE52j0weMaYUHQorAoWlRmWxoFO+hhpvvmlZEQ6
	MPAH2SX/8H771nWniIag/USz/HcIzkseNlyUa4H8LnBiYVpCqBKRMNolUXmNHZ6+eapz5s4DN4LQM
	xBmha8et/ZfniBg/u9DzsW+nO0g95oYM6sSglAXczgbzIfxr5OCN32Sae6lWMGXoVp+qu11nLdIh+
	OPmNy9tBASslRsQ2lzDkLe6EZFKY3YKdRfU7/TWkkP/lDo5YhTFAOaWdE0Zx8QTUkVYbkmKiWPf0V
	cEG1/hz9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdvF-0007k3-VV; Wed, 16 Oct 2019 07:40:41 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdv6-0007jh-Oy
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:40:34 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so26776227wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:40:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=JmhrilHMGIrlbgH7TsADzSCXrEOuSYjY9R2YMORFMhw=;
 b=DedVAcE//eHZUpQqzyFosTstcGtkMOYBK9KXfYtHpsx1IF9yDTUZMRoBGcGRFXTv8j
 F439knPuq3UjRfS2lFkWTLX7k0k3Y/VqMSnO6rxXo4k1K/KQIYHK/zCr/iWWMozndM+N
 vVg6fdzUmhdZzXPkc3SfOeC3hOk1wCQOYgUnN/TwOjF/ttvE5YpbL12z/O+/2C+0LRk6
 7Mx2slQrcqf9SSML7YqIu6D1XjAkiHGFRpHsc9zGXZz/xNMa+UHmg5F2NNu7IJ+WZoPq
 Xo8zW1PkizDUKprdS0lCgsqOsRBQSaio8EdPJF4Jp1RH6fu9Xw0Fm4hVLmygoB+itfg6
 DlJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=JmhrilHMGIrlbgH7TsADzSCXrEOuSYjY9R2YMORFMhw=;
 b=spsYSjTUjbl1p4N5FtIYm9oYxwmNnbcuNyuaTe2oeXPblqx8zLgHlDmmRMW3VqwS20
 LzQNJhZKm2akRrvUCGfkAFzg5kOOh5LSjnEY5ioAs6VmFcU1DyqDcXRsJToxFWW0o3Cg
 fZW70fgzSgwcUv1pYFu3jufJ5HRLr1wQDFuZChB2lsD3/oRuqXNVT/R5gBVfwu80BBoG
 AotNgjwDNGmknnfNb+IX4XT3wmMXkpX0WB+McoAEDxgrCIx2KbUErNL3d+Dt7sh7+9ge
 ArnL5PtKRSmhNpqstbRem2MwQzbZ9slIVt8NEvrEN4sWNDNXMEH4qGlKvLA5bzAuToT2
 qOdw==
X-Gm-Message-State: APjAAAVb4E7c0rgfRjnFd7gnjeatdKESFy+wBT1luZfpJ43zrPmCi8Uf
 +JYAmG1Aey9A84drF8J/r6Y=
X-Google-Smtp-Source: APXvYqxDg8VFFxIqZv75E623mHWKCFpnao4V4hTS3MpjQ9QuY68mi7rEHEUbMcKnIrdgPDl7hiALjw==
X-Received: by 2002:adf:f343:: with SMTP id e3mr299765wrp.315.1571211631185;
 Wed, 16 Oct 2019 00:40:31 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id q10sm42905776wrd.39.2019.10.16.00.40.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:40:29 -0700 (PDT)
Date: Wed, 16 Oct 2019 09:40:28 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: megous@megous.com
Subject: Re: [PATCH] pwm: sun4i: Fix incorrect calculation of duty_cycle/period
Message-ID: <20191016074028.GD1296874@ulmo>
References: <20191014135303.2944058-1-megous@megous.com>
MIME-Version: 1.0
In-Reply-To: <20191014135303.2944058-1-megous@megous.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_004032_816429_68D734FE 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: "open list:PWM SUBSYSTEM" <linux-pwm@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4801266229294434152=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4801266229294434152==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="wULyF7TL5taEdwHz"
Content-Disposition: inline


--wULyF7TL5taEdwHz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 14, 2019 at 03:53:03PM +0200, megous@megous.com wrote:
> From: Ondrej Jirman <megous@megous.com>
>=20
> Since 5.4-rc1, pwm_apply_state calls ->get_state after ->apply
> if available, and this revealed an issue with integer precision
> when calculating duty_cycle and period for the currently set
> state in ->get_state callback.
>=20
> This issue manifested in broken backlight on several Allwinner
> based devices.
>=20
> Previously this worked, because ->apply updated the passed state
> directly.
>=20
> Fixes: deb9c462f4e53 ("pwm: sun4i: Don't update the state for the caller =
of pwm_apply_state")
> Signed-off-by: Ondrej Jirman <megous@megous.com>
> ---
>  drivers/pwm/pwm-sun4i.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks.

Thierry

> diff --git a/drivers/pwm/pwm-sun4i.c b/drivers/pwm/pwm-sun4i.c
> index 6f5840a1a82d..05273725a9ff 100644
> --- a/drivers/pwm/pwm-sun4i.c
> +++ b/drivers/pwm/pwm-sun4i.c
> @@ -137,10 +137,10 @@ static void sun4i_pwm_get_state(struct pwm_chip *ch=
ip,
> =20
>  	val =3D sun4i_pwm_readl(sun4i_pwm, PWM_CH_PRD(pwm->hwpwm));
> =20
> -	tmp =3D prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
> +	tmp =3D (u64)prescaler * NSEC_PER_SEC * PWM_REG_DTY(val);
>  	state->duty_cycle =3D DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
> =20
> -	tmp =3D prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
> +	tmp =3D (u64)prescaler * NSEC_PER_SEC * PWM_REG_PRD(val);
>  	state->period =3D DIV_ROUND_CLOSEST_ULL(tmp, clk_rate);
>  }
> =20
> --=20
> 2.23.0
>=20

--wULyF7TL5taEdwHz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2myWoACgkQ3SOs138+
s6HjJQ//cOaa+rQbHDiozVxUr5QyYpNUKhyDd8gH07OijRllOYlt+NRxTwhjh47l
MEYxoNRg9rBZZxqA/G7qbnGCL1iDBNAP0cWSBlHpIalVi9GVIEuIfTzI0SPeoSws
EDIr7PI6Dhv2xO3IHjkrkNCUNwQgSVdmx5gxRyKRyzmuYdCHDAV9dP9ElSK7up/9
sMNEQdl/Jh1FizoXJP397H4rWTXhhHdlboh0uZ95/LIFZtIF2vBV0QXwt8Y9H9+a
Vdu8DTpAwdDvKbBFga6fnrI7lfNkw8tco0j4xMeK3Nva+aBBCfb28uF8hNazLQ29
k/b94765M6z3Lk4CbxCKJSlRHZSuhCsBb8Fd1kSrt3/eqZhlU3yWcOWVmCwxSvkj
RCwZnPah5NtvS1DtgTawURbayZ5/Q7zJIXg218OEh0TyWabeTCckbb1HLYcDAox9
46m3GK1C64yFUHn7X21lwN9yzd9p7V06YJ+j55TIxjwDuGHffVlTNELmZmRqXop3
MVUjsx3KhAc/O93GTAUAKh0LDsqbgu7Iu3trGK2i9zyzmAsAj0Cb0BjqV9kDLlyK
JeKTFZH4Rqg8vXuN9Jh4g5DxYmyupcgFBsITECvHD8SZoukUkW9Of80lBe+NPCyV
dkrit/vckMiUWbG3fSvGDGNSoxZlC1PKZHEK3tuqZk1/UP5UQqU=
=DSZ5
-----END PGP SIGNATURE-----

--wULyF7TL5taEdwHz--


--===============4801266229294434152==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4801266229294434152==--

