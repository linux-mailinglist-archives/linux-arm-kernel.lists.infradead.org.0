Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F735D88ED
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 09:07:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=berIjtYCLdMPfYS8ZLfFbQxCRjYq8w5yd2TNXwsWCuI=; b=UuCjyYUQXyb85q5NEN4vZ5E6F
	6K8Rsv+ykIQdz5VJD+uS0IYPtaxM7DEb2VoyOO2pTbT/fDlVh3q4HuqUT3Uok4E8lHgZeNJsasK+2
	0ZI77AbQrg+P1f9BqHScGaKO3mRwv0G/xebKpuc0qu5ar9JMFi67tgHM8HdvxUXigCEwPxXW7MBNo
	TV28fZO6ZARWyRQTB1wMDGkWCEnpW+n9vDEHEQfZ2lvTpjTXxGcKT5U6DK3G6PsB6RN9/TZ6ziKkA
	czeLZWKviBmlVES0dFudTN0vT71ZDsanGOytY7Olgtb6Ke6u9pGzDCofAd6NZoChEHZa1w7oTJcJW
	n51O1/Bdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKdOX-0007yI-1f; Wed, 16 Oct 2019 07:06:53 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKdOJ-0007xr-DJ
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 07:06:41 +0000
Received: by mail-wr1-x441.google.com with SMTP id r3so26658598wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 00:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fy0Igawx+eGgGntcbgCob/Oi3WyPHOBuVYeVnj6J198=;
 b=lXI1+nMFTpbZQCJE2YZmWssTNO/Cd6w7JlpW5EEU5S+fG64Xs+A4c/IIfvcBUYfkR8
 HBbHuB8GjnQffMSBUl/lDHqdvIzYd1rTCG7mz1SoEJlnWURct9NLPukqgib9FBt1qtHw
 uaFnTc8mWZvLN/Z93b/L6QW7g7UV6/e9cRdDk10om+BoqCNOjYazgs4jTexpdI7oW4w0
 w+ZUh+qUVpI9Z+bmlXOi+5iDGjdGBQfWgYXHeRKWH/r7uPnci16jcYE0+yzCBJe4mzd0
 TNPfsWOY2wVuKUprhPysbFhcXZfY4MZYQz9I4nQZqaG/BcyOpkC7AZGfmxCu8NzG5yTc
 D5Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fy0Igawx+eGgGntcbgCob/Oi3WyPHOBuVYeVnj6J198=;
 b=WMff6LRrJrDDULN7MhcE1C36nuo6k17Jwx4rqZ2itNwZesMEFWoPu0CBZ6JN5ubr/c
 L49e1Ou4MPPdCRajWtM2E57pFJ99c6WtUpa9bo0lKVDsBymG0vviyqkpI9jrDempfQz5
 Ox6hV3cXBVvwEb4V/gER4qU6zUgRo/qCRhnHUvb/3cA2GZyrispUZdiCv76s/4wiL1eO
 NL0nGQDmNL4x6e1KHTn0Yz/mE+Q/39J3qzijCPsmG7hkBUClgV7qLjNIXijJEgetjxje
 gRsEy3CInLP6dlFRS8gUrAFEcIQjDEgcCyIM+3oHsECMcCs1nEg0Sb8fv7IhTvBVD8I/
 1rnw==
X-Gm-Message-State: APjAAAVr5a1+N3u2JI675vh+a+X7VTBg9kyrApt6ttd4EA5Dp9N3Wxii
 RG/dI8E5LewB4XE9gQ4Ifxs=
X-Google-Smtp-Source: APXvYqw6N0t13E+81VszyfgVqlQlypn9E08dVdeUj2+xS1aYERza5WnnIUhPE6yvc0WBX33f37mjCg==
X-Received: by 2002:adf:cd8d:: with SMTP id q13mr1298032wrj.103.1571209597634; 
 Wed, 16 Oct 2019 00:06:37 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id n22sm1531230wmk.19.2019.10.16.00.06.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 00:06:36 -0700 (PDT)
Date: Wed, 16 Oct 2019 09:06:35 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH v2 3/3] pwm: stm32: add power management support
Message-ID: <20191016070635.GC1296874@ulmo>
References: <1570193633-6600-1-git-send-email-fabrice.gasnier@st.com>
 <1570193633-6600-4-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
In-Reply-To: <1570193633-6600-4-git-send-email-fabrice.gasnier@st.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_000639_476882_A59D0DBF 
X-CRM114-Status: GOOD (  22.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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
Content-Type: multipart/mixed; boundary="===============5870743600026654597=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5870743600026654597==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="QRj9sO5tAVLaXnSD"
Content-Disposition: inline


--QRj9sO5tAVLaXnSD
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Oct 04, 2019 at 02:53:53PM +0200, Fabrice Gasnier wrote:
> Add suspend/resume PM sleep ops. When going to low power, enforce the PWM
> channel isn't active. Let the PWM consumers disable it during their own
> suspend sequence, see [1]. So, perform a check here, and handle the
> pinctrl states. Also restore the break inputs upon resume, as registers
> content may be lost when going to low power mode.
>=20
> [1] https://lkml.org/lkml/2019/2/5/770
>=20
> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
> Changes in v2:
> Follow Uwe suggestions/remarks:
> - Add a precursor patch to ease reviewing
> - Use registers read instead of pwm_get_state
> - Add a comment to mention registers content may be lost in low power mode
> ---
>  drivers/pwm/pwm-stm32.c | 38 ++++++++++++++++++++++++++++++++++++++
>  1 file changed, 38 insertions(+)

Applied, thanks. I made two minor changes, though, see below.

>=20
> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
> index cf8658c..546b661 100644
> --- a/drivers/pwm/pwm-stm32.c
> +++ b/drivers/pwm/pwm-stm32.c
> @@ -12,6 +12,7 @@
>  #include <linux/mfd/stm32-timers.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/pwm.h>
> =20
> @@ -655,6 +656,42 @@ static int stm32_pwm_remove(struct platform_device *=
pdev)
>  	return 0;
>  }
> =20
> +static int __maybe_unused stm32_pwm_suspend(struct device *dev)
> +{
> +	struct stm32_pwm *priv =3D dev_get_drvdata(dev);
> +	unsigned int ch;

I renamed this to just "i", which is more idiomatic for loop variables.
The function is small enough not to need to differentiate between loop
variables.

> +	u32 ccer, mask;
> +
> +	/* Look for active channels */
> +	ccer =3D active_channels(priv);
> +
> +	for (ch =3D 0; ch < priv->chip.npwm; ch++) {
> +		mask =3D TIM_CCER_CC1E << (ch * 4);
> +		if (ccer & mask) {
> +			dev_err(dev, "The consumer didn't stop us (%s)\n",
> +				priv->chip.pwms[ch].label);

Changed this to:

	"PWM %u still in use by consumer %s\n", i, priv->chip.pwms[i].label

I think that might help clarify which PWM is still enabled in case the
consumers don't set a label.

Thierry

> +			return -EBUSY;
> +		}
> +	}
> +
> +	return pinctrl_pm_select_sleep_state(dev);
> +}
> +
> +static int __maybe_unused stm32_pwm_resume(struct device *dev)
> +{
> +	struct stm32_pwm *priv =3D dev_get_drvdata(dev);
> +	int ret;
> +
> +	ret =3D pinctrl_pm_select_default_state(dev);
> +	if (ret)
> +		return ret;
> +
> +	/* restore breakinput registers that may have been lost in low power */
> +	return stm32_pwm_apply_breakinputs(priv);
> +}
> +
> +static SIMPLE_DEV_PM_OPS(stm32_pwm_pm_ops, stm32_pwm_suspend, stm32_pwm_=
resume);
> +
>  static const struct of_device_id stm32_pwm_of_match[] =3D {
>  	{ .compatible =3D "st,stm32-pwm",	},
>  	{ /* end node */ },
> @@ -667,6 +704,7 @@ static struct platform_driver stm32_pwm_driver =3D {
>  	.driver	=3D {
>  		.name =3D "stm32-pwm",
>  		.of_match_table =3D stm32_pwm_of_match,
> +		.pm =3D &stm32_pwm_pm_ops,
>  	},
>  };
>  module_platform_driver(stm32_pwm_driver);
> --=20
> 2.7.4
>=20

--QRj9sO5tAVLaXnSD
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2mwXsACgkQ3SOs138+
s6GqmQ//aMbyiuKupfEKiM3NlzeTFHoXGDg+k4W+S9nTP9R1XcCo+LUn9otYurGO
f44vih/M5jOuxA1RJ3w3Ji1fFOLD4/QXpTCN1nf+E1U0E/wo8HuPjpPJsZGj3vEJ
YeLxDNmpVe/VID1GKuyACOChqCI0dSvMmZYqbKMSSRhUVNmfja/FnubM6iCQ8xzY
qqUDkr4R1OCc4EjB9h5L+uBb+vy6iwGxEIZZNuMn3khiVvNTZpiI0D5qGLC0eVLM
3pDe6BTs/B7sI6OgQ2EJjqne9CbYXT3j/ANty3k4NcPXnMZ2nJT+8anoczxo2ZwB
zyA5SzMctvcCHNpqrbAZLuOPERTA//X8BisEzJ9YRC1WjKuvJ9ykyXWWtcEnYdyr
JeS6NNslrxDC1Fl4mrJV4rEJqm01giH2Pz1J0+8FAYYiga9QYQoYqjjxos6NSxde
PcruGHt6xLWd647jwNGDrrG1G8gz+7xUEVpyHD8xSVXsNZ41Rst3WSkmwmu0vr4Y
S7y5ylK/O9SW9p3yhyVuQPCc0rk/Mgln4BnOj8jq0FQDNVFosnC0eKX3tI8/CWlB
Mpe9Rc7W4v3Hr7GBXoNqbNx4Uudfg7exBCc0pk2LFrobvyyjy+1vmKPtW6HnH4k3
S6h+dAMVH0QFmOimR8+QXtzTSUQ3ik96+Na4q+C44ozzuX/EBNs=
=+BC6
-----END PGP SIGNATURE-----

--QRj9sO5tAVLaXnSD--


--===============5870743600026654597==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5870743600026654597==--

