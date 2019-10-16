Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2465BD96EF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:19:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KqnZdeoSNA/3CPli7wkyDFXLuimbkMy3BoDDqxQbSAw=; b=kwpryCb+E1fykrM6O1kZSiwsJ
	4O2Tur3gJ6wdI8HncZmmwt5axkjPpmO43gPfmN2O6LfiHrX3+vmGobVzXe/Ag3Nuq7kPl5MZ14VBn
	zJ1KjjY0cqBtikfoQ4iMnrrUT0gyP2PIDejVy0aY1CgD2T25y4uBmjbtlsowtv4NDNi3vRX5CKUI4
	WEDI16PGEDrSQCPF+VT/IijC9sivaePUAu7QLNLAa9R3owjMsiJSJh0cPb6IBH2nYbMndo2nmAaPK
	YAAkQDKGpshRzciGJyfWNal4WCrdg78MR1LlLBslL1sA63GH6jicl1adpr/422ghcPMAVg2ASW7vH
	15+YHfeGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKm1X-0004uT-GT; Wed, 16 Oct 2019 16:19:43 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKm1H-0004td-3a
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:19:28 +0000
Received: by mail-wm1-x343.google.com with SMTP id r19so3595504wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 09:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DePY+vd4CjRqNFClvgu0HEDLinybeEc/aYWJ2h0z7BU=;
 b=E1iBpF2AGWUiFRx3XaIfiOP0Gt8lL91/ccFuACx91vHthjRam+9ld0bu/ojzEkqtgB
 YqteocE9aoljJs/8AsW90LoWzAUGPlJ2pLBBG9QGer1+qmWjjaubAfx2qHUx+xeBI4ni
 vW4YS5M/XA21+hrlJAVp4caPOuJe1B9m/T4aC2UNLW1mTsDo8Pp+ICVomxoCeCIVlIHk
 MZzLsQsQr1ON5NGgaJZPBiTY87sMBvCt3TV7adw//O4wM8wkob+yGvGhehFZ163adqcG
 JAryEidJaWF33Ye6mqvBlZFaPaJkakMI77atgkDo/ATylRLBdDKKv81aTOye0IO2i3Wl
 qk4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DePY+vd4CjRqNFClvgu0HEDLinybeEc/aYWJ2h0z7BU=;
 b=UFiPrVBPptXxs+JS3kD5yQF6/PjyY57Xi6fu+ypVh5uTnqg+mfZNpykfeRrPxfp05k
 5zN97Hos9/qqpBDHSgSqRxpVGhpFMSeefJpVeUHS8IgRt9rR6aueShXgot0xDthpoU9R
 TQTchU0Akq97nBuGcREZtktWaIqiXVTGZyqSjShD4U+o39cv45z1A96QVCFLaEqMPz8j
 xR5esicaYHw55A50ydNeyTp+wv1UPOJ2wYOBaS3HNgXfA8VZcwHBUGuehtz8BdR/Bh2i
 PZRNHvApXNTTN61zmWr3Kb+nfflZKCkctiHazKG/tIdcCb8cm8Kk1S5tIEAvOoZ84w12
 FDAg==
X-Gm-Message-State: APjAAAWLxPrySDl5VV3qrxY7SSFiV2nMqlEnlk7VeGOgBq6y9N8hxhhb
 Uu59/MINvuSdRmvwa/OVClw=
X-Google-Smtp-Source: APXvYqzZfR0uIAdhsAhB1DocvPRZKquR4DWTYHM+2m9sDni/Be1CRMbNuYHuyf9JeRQcV75hbzbVNw==
X-Received: by 2002:a1c:9e07:: with SMTP id h7mr4246374wme.96.1571242764842;
 Wed, 16 Oct 2019 09:19:24 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id r13sm38495943wrn.0.2019.10.16.09.19.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Oct 2019 09:19:22 -0700 (PDT)
Date: Wed, 16 Oct 2019 18:19:20 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 1/2] PCI: tegra: Fix CLKREQ dependency programming
Message-ID: <20191016161920.GA2526111@ulmo>
References: <20191005164212.3646-1-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20191005164212.3646-1-vidyas@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_091927_145243_1D9813D2 
X-CRM114-Status: GOOD (  16.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============5181985294041930356=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5181985294041930356==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="UlVJffcvxoiEqYs2"
Content-Disposition: inline


--UlVJffcvxoiEqYs2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, Oct 05, 2019 at 10:12:11PM +0530, Vidya Sagar wrote:
> Corrects the programming to provide REFCLK to the downstream device
> when there is no CLKREQ sideband signal routing present from root port
> to the endpont.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  drivers/pci/controller/dwc/pcie-tegra194.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
>=20
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/con=
troller/dwc/pcie-tegra194.c
> index f89f5acee72d..cbe95f0ea0ca 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -40,8 +40,6 @@
>  #define APPL_PINMUX_CLKREQ_OVERRIDE		BIT(3)
>  #define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE_EN	BIT(4)
>  #define APPL_PINMUX_CLK_OUTPUT_IN_OVERRIDE	BIT(5)
> -#define APPL_PINMUX_CLKREQ_OUT_OVRD_EN		BIT(9)
> -#define APPL_PINMUX_CLKREQ_OUT_OVRD		BIT(10)
> =20
>  #define APPL_CTRL				0x4
>  #define APPL_CTRL_SYS_PRE_DET_STATE		BIT(6)
> @@ -1193,8 +1191,8 @@ static int tegra_pcie_config_controller(struct tegr=
a_pcie_dw *pcie,
> =20
>  	if (!pcie->supports_clkreq) {
>  		val =3D appl_readl(pcie, APPL_PINMUX);
> -		val |=3D APPL_PINMUX_CLKREQ_OUT_OVRD_EN;
> -		val |=3D APPL_PINMUX_CLKREQ_OUT_OVRD;
> +		val |=3D APPL_PINMUX_CLKREQ_OVERRIDE_EN;
> +		val &=3D ~APPL_PINMUX_CLKREQ_OVERRIDE;
>  		appl_writel(pcie, val, APPL_PINMUX);
>  	}

If we do support CLKREQ, do we have to explicitly set the OVERRIDE bit?
Or clear the OVERRIDE_EN bit? Is it always guaranteed that the defaults
(OVERRIDE_EN =3D 0) is applied at this point?

That's an issue that's orthogonal to this patch, though, so for this
one:

Acked-by: Thierry Reding <treding@nvidia.com>

--UlVJffcvxoiEqYs2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2nQwMACgkQ3SOs138+
s6E8BQ/9G0VANNqYdS++3CnPnN8WpRzZ5X80eDfGsloeyXEpgMYt6+9yOAtm0JTO
3LKUqhWTtoxqnN9FqF6rTVhrfI+m7Wm2clBufTkX9OfDuRkFN4OD9bXBvWcNm43T
esUpA3PPPPPcjN+b2vGG7iSc95ZkbJdf6+9RpehqEe308SFcftIwHgMww4AFVVv8
3zATGvVSqU9oOK8J5TTVvKjlJ6JatSniwIUWj6GM8JdKduvD3qcua5BHOmRqgYJh
J+OApeTRDjRdeSRyPQuiTN8ByBp01Z228OBGoRsdTqnypLq5lNV5WGT4P9bywFVV
4+D99VAgL1qtSNlaJqxLUBiNjTDIGrkK6Z/pc1sgUVQdotLPjD47Vfh8URTskzz4
u2k2IRuowNPRpKV/7zto23j7PS10tOKCfTi63/+RVj+rahp4ACGAJy1Mn9dU3Zai
3zorkVVE02mUOsj5VKB9JQIetrqoxt+LLf+cjOZDfr8H+ehtDWIsb9b4QWFXlm5Q
4xgpPD9Uuw6pSfEd+qCT7VkudCwqYFsvyGjHVSfaL0/nHadHy+8cLGDb0tWBXUTY
8pMI8klIWZ0OUn2j/KPTj+x+dWalfEmS/5Ez/fM8IZpxOzQSHgd1VJAwmZTuChUR
vJhRao5glT/alH6W+G/yhGIKVpWDL1ZTeF35/ibVHqKOxi1JxV0=
=schF
-----END PGP SIGNATURE-----

--UlVJffcvxoiEqYs2--


--===============5181985294041930356==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5181985294041930356==--

