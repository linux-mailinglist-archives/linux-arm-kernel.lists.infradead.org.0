Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B13DADA8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jIr6um1pmysvanoZGZ7G7NL54uLLY2mEt7IeNLDptP0=; b=VklYrpPgTf+tpgVeqS1cJAI/A
	8pmlmJHqhu5xoc9PrplP5pl/hfL/kpcnBR0x3RRctgYkEbgvAn+VxiSQ4L4qfG4oEnAakGp/tFTWP
	iRUSqxMV5vpUiQ1kJZ/3Z9w/kOC+ZwLTcW6wrJkAK0yMQFGPnIp5pSwDcmG86AA910w+GgIH4+wUV
	F8SpCsfotIIBPAw16XK7mnncuHpf9PXLREIwYVOlx72dVqNxErAKUAZWdETDG2KT0eM1w+hABbN/P
	Lcmuq7k5dokQgdvndI3sGtCPlFfkTldLc9VCbykr6JOeU1h4E9TfL7dgfYB34/7+mFjsVYgA3UDRK
	5T7+FMXqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5Mz-0007Yd-E9; Thu, 17 Oct 2019 12:59:09 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5GJ-0000Ht-Qv
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:52:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id m18so2429262wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 17 Oct 2019 05:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Fku2RnOxGv4zaKqVP5kIkNCGUU7a/SQjY418THGkTpE=;
 b=YcGz7/+2KBfu00lJ4kIc6oJFv2Dj65kYVMSk0+yRUdNphnaSUytpTpnJUXveNrG4MF
 bLqy5+bthQEvAX4SY2dRuWERSfyF1ocpW6WT0eYsSPSrLXbb+psT2X3hUMAtzFeofP9b
 VGPoHeFGkW3bQ00824SjG9+p5Tmzcb4sUe7rvrbnXf4phaG0yIMWq/yXNVgkZ2mtTD9r
 MC0PzA07DMWv5Bn68l/rK2EZtEvhYYkhw8X7BN5UQniDMlEXHf2MMwtnl8OyHA/mo99M
 COfyvlo4j8NYC15muLR3o7qca4SakNMoYWUljbQQyvEhceoY6NfT63F+jc08Zytiad20
 ya/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Fku2RnOxGv4zaKqVP5kIkNCGUU7a/SQjY418THGkTpE=;
 b=VroncO/oYXhGRo9deLOxhFMCxvTe2rx6GOI+XsoQvui+tT0iR4lDb9Bhq322LOBDBn
 tyzuiCS9b44uEnZcVFjye2DS2NGxRSkMcvuRcM3JqhalhGBD10xZ0yQNuKawxYu6oEnc
 UJ3NeQwYjT19GoXeBsUVyGhqmR6fGsQXNPJQvkvCE87wCL/4E6CowdbjRPKNB1DGkB9o
 8DaETzLNSsWLaygviBgR25Fuz5RaiSC4+lxlrK5WDBpiVTbkZ0yPUeoYWMpePQnx5Bv8
 5am2HDc++EkvH9iIdPUGWfDKW7fhX3bqAqOPhYDhyS8IhCpVcEpn/2W1xLjIV5DLjj5w
 t1jw==
X-Gm-Message-State: APjAAAVpw2Of4nxDC3MQ7hCZSWOLu3tOQlU71+my9LPricBX7IX5m9Ro
 QB2hKpBqunqTANYgg9tBUOU=
X-Google-Smtp-Source: APXvYqxXVdwZKFcae4UW9WkJTpM0WU2xLxCUyMYPr6Iqbbvkq1A3T7bAB+o7wt/5KP+X/chk/Eh6+w==
X-Received: by 2002:a1c:720a:: with SMTP id n10mr2968261wmc.0.1571316733871;
 Thu, 17 Oct 2019 05:52:13 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id 63sm2283799wri.25.2019.10.17.05.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 05:52:12 -0700 (PDT)
Date: Thu, 17 Oct 2019 14:52:11 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 10/30] pinctrl: tegra: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191017125211.GA3768303@ulmo>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-11-yuehaibing@huawei.com>
MIME-Version: 1.0
In-Reply-To: <20191017122640.22976-11-yuehaibing@huawei.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_055215_984885_4A4D1F80 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Cc: alexandre.belloni@bootlin.com, geert+renesas@glider.be,
 narmstrong@baylibre.com, linus.walleij@linaro.org, baruch@tkos.co.il,
 linux-kernel@vger.kernel.org, manivannan.sadhasivam@linaro.org,
 jesper.nilsson@axis.com, f.fainelli@gmail.com, wens@csie.org,
 linux-arm-kernel@axis.com, jonathanh@nvidia.com,
 ludovic.desroches@microchip.com, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rjui@broadcom.com, haojian.zhuang@gmail.com, vz@mleia.com,
 linux-gpio@vger.kernel.org, lars.persson@axis.com, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 linux-renesas-soc@vger.kernel.org, linux-oxnas@groups.io, afaerber@suse.de,
 daniel@zonque.org
Content-Type: multipart/mixed; boundary="===============0935205499312820338=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0935205499312820338==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="OXfL5xGRrasGEqWY"
Content-Disposition: inline


--OXfL5xGRrasGEqWY
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 17, 2019 at 08:26:20PM +0800, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
>=20
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>
> ---
>  drivers/pinctrl/tegra/pinctrl-tegra-xusb.c | 4 +---
>  drivers/pinctrl/tegra/pinctrl-tegra.c      | 3 +--
>  2 files changed, 2 insertions(+), 5 deletions(-)

Acked-by: Thierry Reding <treding@nvidia.com>

> diff --git a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c b/drivers/pinctrl=
/tegra/pinctrl-tegra-xusb.c
> index f2fa1f7..6f7b376 100644
> --- a/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
> +++ b/drivers/pinctrl/tegra/pinctrl-tegra-xusb.c
> @@ -873,7 +873,6 @@ int tegra_xusb_padctl_legacy_probe(struct platform_de=
vice *pdev)
>  {
>  	struct tegra_xusb_padctl *padctl;
>  	const struct of_device_id *match;
> -	struct resource *res;
>  	struct phy *phy;
>  	int err;
> =20
> @@ -894,8 +893,7 @@ int tegra_xusb_padctl_legacy_probe(struct platform_de=
vice *pdev)
>  	match =3D of_match_node(tegra_xusb_padctl_of_match, pdev->dev.of_node);
>  	padctl->soc =3D match->data;
> =20
> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	padctl->regs =3D devm_ioremap_resource(&pdev->dev, res);
> +	padctl->regs =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(padctl->regs))
>  		return PTR_ERR(padctl->regs);
> =20
> diff --git a/drivers/pinctrl/tegra/pinctrl-tegra.c b/drivers/pinctrl/tegr=
a/pinctrl-tegra.c
> index e9a7cbb..692d8b3 100644
> --- a/drivers/pinctrl/tegra/pinctrl-tegra.c
> +++ b/drivers/pinctrl/tegra/pinctrl-tegra.c
> @@ -781,8 +781,7 @@ int tegra_pinctrl_probe(struct platform_device *pdev,
>  		return -ENOMEM;
> =20
>  	for (i =3D 0; i < pmx->nbanks; i++) {
> -		res =3D platform_get_resource(pdev, IORESOURCE_MEM, i);
> -		pmx->regs[i] =3D devm_ioremap_resource(&pdev->dev, res);
> +		pmx->regs[i] =3D devm_platform_ioremap_resource(pdev, i);
>  		if (IS_ERR(pmx->regs[i]))
>  			return PTR_ERR(pmx->regs[i]);
>  	}
> --=20
> 2.7.4
>=20
>=20

--OXfL5xGRrasGEqWY
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2oY/kACgkQ3SOs138+
s6FgNw/+NID79dubYxesxorqI1f3Qx/IwcfoDiRN4AKvBhcJwBc3NKVGf/hLYpqL
YuiRdhCR9PDTEAhuX5Hk86vPnUn4G9c7PXHjcCnXJS05Bf4HOuCvrEvKhn1aBSJg
BKpQYyXht8ekGsWrhu6lHAs5TGDL+mqaw6OrDh0llnlnRSrWMeYIntmqhN9hWNUA
r0dlzs3Kt4uxPwJ+LD/yLHdaMLHsL7FVzZOyODJgrS7iepKhPNFNxshPH75xVQo7
FxzRu3voR+YjModyfO5X83hg8FnKh85Lvc5Ovhm7rjjWrQo73xCv2YfYjL6O5opg
Ig2FBF2R3zyUzxNvg2xOuLD29Jf0Rbb48V8A3VkTzcSTSU4I6Pp91O+IJzSI3NPV
Q+JtwCuflch6NG4JcvDJPCfqy6gUftF9c7/jcd8XFF/fFYdbwcpouUyOkifrbZh6
uRyvEvKoR5Tdy+wolglL2srp9kHFUJbBgUKmvkuN9IP5297f1/SMeHhQTJ9NRWOd
YcnQZsbNoJsUjNiE4v81BsXcWle7IANdhhY2vZShNcJxZATiektLeCO4FmN+pCIV
nII5+ZV2MPnJk0xxu3w0/0AYbQbJAFaXHLvB/zhYcJcAyAC47qyv6K1s24zj/i1T
FWPpngjetj8eTK50ENzsHDS46hyVpvQsVHsjuckItF1R3bmExPo=
=hNUZ
-----END PGP SIGNATURE-----

--OXfL5xGRrasGEqWY--


--===============0935205499312820338==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0935205499312820338==--

