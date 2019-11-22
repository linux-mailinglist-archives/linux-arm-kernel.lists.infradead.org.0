Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6994107315
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:25:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nN9+jScq2Hx4M2FmzVDOdiXWioIXsrX6M4OHY3KyQSs=; b=VE+mgJw3uBYL8pQKPVnX0sx5v
	o7tfwikGBKkUqG1zrvDI/NrXiswZA8idFHC6GA1rludHunYtBAOwTmoQOyH/mXa5n3coLUcQV+JCD
	D9QsoP++v0TAvv4+bM/mj23Tyqvmj/WFkw2ro0/D8Vt2VsnDMge8lhfOn5IP9osQSIkUUQ2rcSmzA
	3Lx1ImVrRsyUvANwxL96JdmE26Do09VtUULfe0zwpLVHBnfMlVuwFdP1yZQmnv2DGZkVZkNzIFTqI
	XPjaiGAuQCQtqtVg6z9Q9EpDPQzX59E/Vc9CXGEKTkT+hFl43v1VyD5xMQVzIBLXUf04S6+DUoEdn
	p6sMjN9XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8wU-0007Pp-I0; Fri, 22 Nov 2019 13:25:46 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8wM-0007PS-4Z
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:25:39 +0000
Received: by mail-wr1-x441.google.com with SMTP id z10so8563088wrs.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:25:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=0NHwgBSUws38Es7Xi/rZX05Xqj++OpNble994Q4twz8=;
 b=nOil050ebumEVh6B4CMpHHxn/QX9acBxM3S9OLut6akRaRuTuBPBe5v+ETuUb0xLBk
 6S93YBoJ8ZjLEfTcsfAQDWNhbmhGOJ8ReZDwL+gWlIfb0dJrt4DghYC7C84CbJwYmENQ
 dBeSioVD4jg/Rsah2pbJNu4W08WN8+pkJ4bZyBMRGcSTfDCqCNyzegFTPQ4LR0+9XfR5
 RSMLNr4S5tdnmPAXBTDWBoweI2frennUR3IycN4Ga6wFah55fmDbWRFbazA60VbVwSm4
 8Ir6SxYLMs/lulTCQ4VenlRkOc3/HenQDMs3gyYqF8Paq82JaADF8T0olsWuBDSIH82g
 RBRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=0NHwgBSUws38Es7Xi/rZX05Xqj++OpNble994Q4twz8=;
 b=pQpmt2TeJS4t2pgv/JCkanMQer6XaSDLClwhKVWdJeOZD0tMqSxb7prPw6S5E+aRuv
 PnolJ55Qk6sSxjaua6Oz5s1Q5NEZadddEaj3xqKLTi9rRmLD+PY9cZLVHraPSuIzaoVv
 XeVJeX5qasKWctaNezbI0TO4wu6Mya+jQYW4qGfyL/zam3IIQrG4mZrw7RkjHIz+iuph
 Nm3Kck2dJj2TmLiTFJzPQYADYMRkSZJXnk4sLpj7TRfgwEQxToQD/71d5YznsePoLJEn
 bUjQ1mRe6T6VpMF04Bcr+dSXM+U6P+F2K/Th6M9q7cVmnBz75MIBkoZtTQApydbNv0h3
 OEkg==
X-Gm-Message-State: APjAAAXhH0QEAKC49Sgsesjr1103hF3aUlTpaLdZej1hj5OKdRrWkoea
 DLuviYAP/Bi+bh4eBqsc2Wc=
X-Google-Smtp-Source: APXvYqy6agudNWkX1IVOAditiOZUSDYrvFhjkwzj3/rM6+m7on3EEcqbwap2TkpnfGhY2DRwUzliEA==
X-Received: by 2002:adf:fbc1:: with SMTP id d1mr18273847wrs.267.1574429135841; 
 Fri, 22 Nov 2019 05:25:35 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id g74sm3414148wme.5.2019.11.22.05.25.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 05:25:34 -0800 (PST)
Date: Fri, 22 Nov 2019 14:25:33 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 6/6] arm64: tegra: Add support for PCIe endpoint mode in
 P2972-0000 platform
Message-ID: <20191122132533.GD1315704@ulmo>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-7-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20191122104505.8986-7-vidyas@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_052538_202860_5128CE82 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============3398217558156371416=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3398217558156371416==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="mJm6k4Vb/yFcL9ZU"
Content-Disposition: inline


--mJm6k4Vb/yFcL9ZU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 22, 2019 at 04:15:05PM +0530, Vidya Sagar wrote:
> Add endpoint mode support for PCIe C5 controller in P2972-0000 platform
> with information about supplies, PHY, PERST GPIO and GPIO that controls
> PCIe reference clock coming from the host system.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 29 +++++++++++++++++++
>  1 file changed, 29 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/ar=
m64/boot/dts/nvidia/tegra194-p2972-0000.dts
> index 7eb64b816e08..58c3a9677bc8 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> @@ -43,6 +43,19 @@
> =20
>  		gpio@c2f0000 {
>  			status =3D "okay";
> +			/*
> +			 * Change the below node's status to 'okay' when
> +			 * PCIe C5 controller is enabled to operate in endpoint
> +			 * to allow REFCLK from the host system to flow into
> +			 * the controller.
> +			 */
> +			pex-refclk-sel-high {
> +				gpio-hog;
> +				output-high;
> +				gpios =3D <TEGRA194_AON_GPIO(AA, 5) 0>;
> +				label =3D "pex_refclk_sel_high";
> +				status =3D "disabled";
> +			};

Why don't we put this into the PCIe controller's node as a reference to
that GPIO? Seems like the controller would know exactly when this pin
needs to go high or low, so why does it have to be a hog?

Thierry

>  		};
> =20
>  		pwm@c340000 {
> @@ -144,6 +157,22 @@
>  			    "p2u-5", "p2u-6", "p2u-7";
>  	};
> =20
> +	pcie_ep@141a0000 {
> +		status =3D "disabled";
> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		nvidia,pex-rst-gpio =3D <&gpio TEGRA194_MAIN_GPIO(GG, 1)
> +					GPIO_ACTIVE_LOW>;
> +
> +		phys =3D <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> +
> +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> +			    "p2u-5", "p2u-6", "p2u-7";
> +	};
> +
>  	fan: fan {
>  		compatible =3D "pwm-fan";
>  		pwms =3D <&pwm4 0 45334>;
> --=20
> 2.17.1
>=20

--mJm6k4Vb/yFcL9ZU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3X4c0ACgkQ3SOs138+
s6ExNQ//WK62BmgmHIoNRd5DoXDTiVMFPJTXYrKK2KEpJs39EqwfkZAYEPlfb5Si
4vAm7OchTFGLzcRQRxYlVS5ZHo9eDkHAE7pKUKkgm3Li6QTvGXlt7oRsiVv1luJx
AoqNX99LtHkgEBSLFnVIgpsstcX1Jx3DDkwjO+IINkJf+Et2GLU0Y1ez932QXf6r
eN343fUsKg5+bcIqk2hLnWCCaPe3YR9sYpRJF6psoHPOHgb4o3k7lGKUqwRHCPAB
qAq3iOral1OmZ+GQ06d3/OZHI33QG2UOqOhTTw+Xw67QernnguTI+jBAiTAZD62Y
jdIJ3X6M2t93o7yTwczq4IaTy46lktLeEXWoIWOPQiIuFWQhylfDGjVPv8Qin9JG
Ru9qCZXi1WWIDZGo99ZPB7iIyPPCB4T0cGR+nNH5i+PC4N5/6EfCXjg9gL33HB9n
brPkgl21YRmVt6JU04pKxCjcrajsR570CwfS5VMa4y6pImJiYP6cdfxdJ9Om0hei
sEmduQY1iRmoYthWXBgb3VIpZdd38nhaId4LbWhFHHObI5VZWvI1rgtkf7eq3mUV
tQEqkdpr7cLPdqjvEMf/0rffGC6UVeyeA2y7jSyHkKjrwMADSTysQz2YPtQenUhn
RRey8lUXMdiZ0XueNYIxYxijYYd1JhnVidJEfEK+FVR+59j0UHA=
=aw/J
-----END PGP SIGNATURE-----

--mJm6k4Vb/yFcL9ZU--


--===============3398217558156371416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3398217558156371416==--

