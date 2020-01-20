Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 640181429DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 12:53:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YowfkyLWzi6LBjNIxIMKqUHrS7z9mRW3r8/iwsK5UZQ=; b=LmPKy4uIzc7rjTjCQc+W21t0E
	WxjaD/HKP5NJEBAtxGqZTuSg8L1JAW5ubR7n34Fqu0oPh4QV1DEu45GSX9TrwpsjsrgFnWUcTZxrF
	UQzvFea7qqlmwRyhxVHhSLuToJ75XS1k1d1RsZQsU4QuLePKiGDXyLwH022UeSKIhn46W4hrZDt2U
	GoNpdXW7jBoGmEmNF2iYJoAYDpFoGINF9ifbC03oFrDZuSV9Y6p8M+2PsDNi0qfo0myZDbuIXaeeW
	G5FPpUiTZiy0xwiXLoiOQveHUuB27XOAyHn60AU81HLhdZoi1y9gtyBS1bsbSU/9r93n+c+2bvfx7
	EJ/jbH7Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itVc1-0005pR-L2; Mon, 20 Jan 2020 11:52:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itVbo-0005oM-DT; Mon, 20 Jan 2020 11:52:49 +0000
Received: by mail-wr1-x442.google.com with SMTP id c9so29238570wrw.8;
 Mon, 20 Jan 2020 03:52:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=dlEexr6mL3jmdas8HX2vC0IjkH4p1637y54EIvOFIS0=;
 b=LuLxPJUEDPGC37AvRPxIOC/vScV0XNVz6TGkAoXguxMz1QYoou5GX2uNzOl2Y2htyW
 PESBYh9TJID4DLI7PzkivKt4nCxoyPCFjULB7XMwoVxTOw5hij5LaJ+zeBq/0g4FXM/U
 mpjtuUKWIIkjf8MrzT0bqsKPkYnDdEFBaYtcAQMv0VJqyT/pJs1qd+PMxnHd6YiR6GZi
 U687/rF36Mc/DKd8lutbJuFHB69hHlVVgHarjzFiHymkrq3D3VYMhF9MVqZ7tONpCTZn
 MIARo7bIaFSCdkpCsveheQ+/bE+AiHFowZPFwUeVM1rYgKc83TpQd7gZp8afDvDw6Yy8
 pCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dlEexr6mL3jmdas8HX2vC0IjkH4p1637y54EIvOFIS0=;
 b=GXGMjrj/V4Lh6kwZGibz1G/8yyxnnY6ieGW0cnXHJcYYlFDh8JRu/BR0kcSmMNAEuk
 mr+rsDLgXHyyM7dpDpy6gcenJnQGBDe+/Z0BoK49u9vd6UkKvzU0qo22EYSfIQnt2z62
 ctE0Raq74M4PqTj0J3VZD12oL2p995yYlfz26j8ZTF8fe3Rdd0p/NfjVjL3laWcTajdV
 qk5qzZciAS9Qto3oNUW6Uj7xIEbmld6iHtgs/0zEpv7RaiUvdtSPd8rAnnkwFb5/szEu
 Jegp6/fEi+vcu12SdMq+PgjRPd+9TqhOGZAl/2Hm+f9XCNxjpyNhXgPPdgf+PDus2241
 Gvkw==
X-Gm-Message-State: APjAAAWiLYIoR4Aw+Y13t4FFqKdziMM4IwIGK0VqcpemFeradWsKAwRP
 YTIobM9Jwf3UK25WaJZwecw=
X-Google-Smtp-Source: APXvYqxaCrQiLJ1zFTlLghpJDa6SwdD8lSY2ITkSMeTPFLsBH2kYJH9XZQju8SrTfW+lCvzgHj33oQ==
X-Received: by 2002:adf:bc4f:: with SMTP id a15mr17531028wrh.160.1579521162018; 
 Mon, 20 Jan 2020 03:52:42 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id x11sm48338967wre.68.2020.01.20.03.52.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jan 2020 03:52:40 -0800 (PST)
Date: Mon, 20 Jan 2020 12:52:40 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v4 1/2] pwm: mtk_disp: fix pwm clocks not poweroff when
 disable pwm
Message-ID: <20200120115240.GA206171@ulmo>
References: <20191217040237.28238-1-jitao.shi@mediatek.com>
 <20191217040237.28238-2-jitao.shi@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <20191217040237.28238-2-jitao.shi@mediatek.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_035244_482735_F5B5550A 
X-CRM114-Status: GOOD (  28.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org,
 CK Hu <ck.hu@mediatek.com>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org,
 Uwe Kleine-Koenig <u.kleine-koenig@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2127632876622293432=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2127632876622293432==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vtzGhvizbBRQ85DL"
Content-Disposition: inline


--vtzGhvizbBRQ85DL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 17, 2019 at 12:02:36PM +0800, Jitao Shi wrote:
> The clocks of pwm are still in prepare state when disable pwm.
>=20
> Because the clocks is prepared in mtk_disp_pwm_probe() and unprepared
> in mtk_disp_pwm_remove().
>=20
> clk_prepare and clk_unprepare aren't called by mtk_disp_pwm_enable()
> and mtk_disp_pwm_disable().
>=20
> Modified:
> So clk_enable() is instread with clk_prepare_enable().
> clk_disable() is instread with clk_disable_unprepare().
>=20
> And remove the clk_prepare() from mtk_disp_pwm_probe(),
> remove the clk_unprepare from mtk_disp_pwm_remove().

This commit message is basically a description of what the patch does,
which is pretty useless because I can look at the patch to see what it
does.

Use the commit message to describe why you want to make this change and
what the benefits are of doing what you're doing. Describe why and how
the patch improves the driver compared to before.

With regards to clk_prepare()/clk_enable() vs. clk_prepare_enable(),
there are valid reasons for splitting the call up like this driver did.
clk_prepare() for example may sleep, so you can't call it from interrupt
context. clk_enable() on the other hand does not sleep, so it can be
called from interrupt context. So there might be legitimate reasons for
this split in the driver.

When you say that clocks are still in prepared state when you disable
the PWM this probably means that clk_disable() doesn't do anything on
your platform and clk_unprepare() is when the clock is actually
disabled. That's perfectly valid. It should also be safe to do this now,
since a while ago the PWM API as a whole was made "sleepable", so it
should be safe to call clk_prepare_enable() and clk_disable_unprepare()
=66rom any callbacks because users of the PWM API already need to assume
that the API can sleep.

So, I don't object to the patch, I just wanted to make sure that you've
thought about the consequences and to describe in the commit message
what you're actually trying to achieve and why it's better.

In particular it'd be interesting to know what the effects are that you
are noticing if the clock isn't off when the PWM is disabled and how you
found out. Those are the kinds of details that make the commit message
really useful because they help readers of the git log figure out what
the problems where that you encountered and why you fixed them the way
you did.

Thierry

> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  drivers/pwm/pwm-mtk-disp.c | 43 +++++++++++---------------------------
>  1 file changed, 12 insertions(+), 31 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-mtk-disp.c b/drivers/pwm/pwm-mtk-disp.c
> index 83b8be0209b7..c7b14acc9316 100644
> --- a/drivers/pwm/pwm-mtk-disp.c
> +++ b/drivers/pwm/pwm-mtk-disp.c
> @@ -98,13 +98,13 @@ static int mtk_disp_pwm_config(struct pwm_chip *chip,=
 struct pwm_device *pwm,
>  	high_width =3D div64_u64(rate * duty_ns, div);
>  	value =3D period | (high_width << PWM_HIGH_WIDTH_SHIFT);
> =20
> -	err =3D clk_enable(mdp->clk_main);
> +	err =3D clk_prepare_enable(mdp->clk_main);
>  	if (err < 0)
>  		return err;
> =20
> -	err =3D clk_enable(mdp->clk_mm);
> +	err =3D clk_prepare_enable(mdp->clk_mm);
>  	if (err < 0) {
> -		clk_disable(mdp->clk_main);
> +		clk_disable_unprepare(mdp->clk_main);
>  		return err;
>  	}
> =20
> @@ -124,8 +124,8 @@ static int mtk_disp_pwm_config(struct pwm_chip *chip,=
 struct pwm_device *pwm,
>  					 0x0);
>  	}
> =20
> -	clk_disable(mdp->clk_mm);
> -	clk_disable(mdp->clk_main);
> +	clk_disable_unprepare(mdp->clk_mm);
> +	clk_disable_unprepare(mdp->clk_main);
> =20
>  	return 0;
>  }
> @@ -135,13 +135,13 @@ static int mtk_disp_pwm_enable(struct pwm_chip *chi=
p, struct pwm_device *pwm)
>  	struct mtk_disp_pwm *mdp =3D to_mtk_disp_pwm(chip);
>  	int err;
> =20
> -	err =3D clk_enable(mdp->clk_main);
> +	err =3D clk_prepare_enable(mdp->clk_main);
>  	if (err < 0)
>  		return err;
> =20
> -	err =3D clk_enable(mdp->clk_mm);
> +	err =3D clk_prepare_enable(mdp->clk_mm);
>  	if (err < 0) {
> -		clk_disable(mdp->clk_main);
> +		clk_disable_unprepare(mdp->clk_main);
>  		return err;
>  	}
> =20
> @@ -158,8 +158,8 @@ static void mtk_disp_pwm_disable(struct pwm_chip *chi=
p, struct pwm_device *pwm)
>  	mtk_disp_pwm_update_bits(mdp, DISP_PWM_EN, mdp->data->enable_mask,
>  				 0x0);
> =20
> -	clk_disable(mdp->clk_mm);
> -	clk_disable(mdp->clk_main);
> +	clk_disable_unprepare(mdp->clk_mm);
> +	clk_disable_unprepare(mdp->clk_main);
>  }
> =20
>  static const struct pwm_ops mtk_disp_pwm_ops =3D {
> @@ -194,14 +194,6 @@ static int mtk_disp_pwm_probe(struct platform_device=
 *pdev)
>  	if (IS_ERR(mdp->clk_mm))
>  		return PTR_ERR(mdp->clk_mm);
> =20
> -	ret =3D clk_prepare(mdp->clk_main);
> -	if (ret < 0)
> -		return ret;
> -
> -	ret =3D clk_prepare(mdp->clk_mm);
> -	if (ret < 0)
> -		goto disable_clk_main;
> -
>  	mdp->chip.dev =3D &pdev->dev;
>  	mdp->chip.ops =3D &mtk_disp_pwm_ops;
>  	mdp->chip.base =3D -1;
> @@ -210,7 +202,7 @@ static int mtk_disp_pwm_probe(struct platform_device =
*pdev)
>  	ret =3D pwmchip_add(&mdp->chip);
>  	if (ret < 0) {
>  		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
> -		goto disable_clk_mm;
> +		return ret;
>  	}
> =20
>  	platform_set_drvdata(pdev, mdp);
> @@ -229,24 +221,13 @@ static int mtk_disp_pwm_probe(struct platform_devic=
e *pdev)
>  	}
> =20
>  	return 0;
> -
> -disable_clk_mm:
> -	clk_unprepare(mdp->clk_mm);
> -disable_clk_main:
> -	clk_unprepare(mdp->clk_main);
> -	return ret;
>  }
> =20
>  static int mtk_disp_pwm_remove(struct platform_device *pdev)
>  {
>  	struct mtk_disp_pwm *mdp =3D platform_get_drvdata(pdev);
> -	int ret;
> -
> -	ret =3D pwmchip_remove(&mdp->chip);
> -	clk_unprepare(mdp->clk_mm);
> -	clk_unprepare(mdp->clk_main);
> =20
> -	return ret;
> +	return pwmchip_remove(&mdp->chip);
>  }
> =20
>  static const struct mtk_pwm_data mt2701_pwm_data =3D {
> --=20
> 2.21.0

--vtzGhvizbBRQ85DL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4llIUACgkQ3SOs138+
s6HWIxAAnULnxFuMUVVfb+pYXq1yOZEiYCdtDOMqqn6OsLVqbL2PNcEVrQJE2KFt
xNZpXsehxGa4P5JRi7a8sJP3uW03xL89tw5vhCBgSRQ0OOM8PsmjJcQlmzZT3/ns
GNP6PODAT5rk+XaPq3y8IA+Y1BDKv1i/SB078suhEA1Suh0OwEXuVO4dPJNSUIbp
fbBBn4Svly5Ew4LZcm5zg9y5/eJh46tmWMElZtcLYaLQjO8Vf2yaYhDQRy/aP5X/
zmZER/Z3MYvF14xtkGD9JJuBHO6EiR3npcm8Taqdbz+bgEO5l8sX781a74/xgtQI
awK8fc/2XAUBgPMXms6vByxlPJsgrnDsWKV4eaNjTDP21xK2aZsGVo0hSeEEUz+k
+EIGzWZOQw4KT9Bic7KssgyiPYrGyZW0ZZJkctZWPNBKrmQx24gXAEYiDpb5rg6+
kwnze5nh+G9iFWqfWsf+SK/Qqphvw6GFosbVjgSmRLh6Ypdcp88dE1IPBXM40cgG
UnAi5BDeRujXttXoLnCucSRsNrJqzxRcD5+IVrqaP5B3vVtEnsssAXPS6hIsB6dE
ZS9suD3hl/NmAIYg0aoVoPM+eKhTLOSTArSTIguszJiUagt2lTSU9pPN/174VbsS
lDLddGbzFBEulJbyqfJFMe4EpeCa6MZnI5h5TNix8ezcHidAhlI=
=DZXz
-----END PGP SIGNATURE-----

--vtzGhvizbBRQ85DL--


--===============2127632876622293432==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2127632876622293432==--

