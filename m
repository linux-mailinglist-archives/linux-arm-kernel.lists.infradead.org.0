Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE75A0744
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:24:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pMPDzZIBu6cceUIulCYbv74Qq84v7aYg9WSmXruBIks=; b=MJY7WiIGeARyqugswKM1hZnwM
	maT+ApMIOjx3SpuqsLl8KSDklCCIvipkjStMDrwkoqioMJ/L3+B0x8cZza86+ZvDEYv5/GlW9rLCs
	gIx8BtVB+W+Pbw7BaEL7v2DTKQ0JAhxim977x+eSaQL+kDMOiV+PdpvvTVwklqj46txGeGZO4A7/U
	ZQJg6ZBvCqMo5wH8m0iFBc2Pd1/GiybHGAbsT7jFJBpknaFsF1PWnY8WSIH8apXDPPa9JaK7jZNal
	6k5Uup2PJIwcQphfwyxM4sGkNLUFj8PCw1fxSkvaPGxa8m9MLnw5cmMz1oFhlXMeZdCaQ6q8diYX8
	vSsfBB6xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30kj-0000CK-UK; Wed, 28 Aug 2019 16:24:58 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30kD-0008VI-Bg
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:24:29 +0000
Received: by mail-wr1-x443.google.com with SMTP id j16so409611wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 09:24:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T7PlrcxLk2eACw8JmDL04UIhUfIfxORH4t2fZ6oKREc=;
 b=H2f/GYUC4U4SneMzdX5gHzPIb0MpE08dCzH6QzU4DT+ywDJZ6yGs1hZZrM6YOi77y1
 2GES+CIQW+PrrA9oQ6BeyigwdPltZvpjipCu7csS913QC5cpsykk1b5zUFCxAenLTUbs
 kn3qNGoYqDPnR4Y/lJhSZW3elfh2z1WciCpHqbx3aY+kKyj0q/dieS4kjSBWJF2bieeJ
 fN+dxfnPHRpxNild06yFXLe+165mRR/kyHqUV+PwJBPoigxficHhnqEWmu7DHQ5KQLrY
 sMpKZEic782ak8KNaPfgbi9IKB1DZB22nuH+Di1IIOg02BShC9cjlLg/IlE6Udj5hwZN
 CD4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T7PlrcxLk2eACw8JmDL04UIhUfIfxORH4t2fZ6oKREc=;
 b=R8J+h9u/n4ojH8bqLvisI9KeTPph4ZkppOz7uj4QmV3JB4HcykUWyzNq3Col49T8WM
 01U6lpNGhoyJPRWAkDn9gy/RU8O3XU+1RGWwgJD21lUDlqPGX87Nt5XyiMMVbSZjsXqd
 8f1VoaxX82NX2+YoJmvnCGUeUug1r2A0agBO7bUYSQGHQGtNFUShgMdpTlRJmGFzx8R6
 sEsXZ2Hh+9XVQOoQZa6NfyupPTah6eqw8PIovMnZDxgcveIhjBh5nIS24asm+6T1oqFC
 mI0/99NGA9x5UoCYDX+NS7piZxX+SiJwPzMUUOC+GUW41FG9UVSrwM5P+DhOoI0JyEKm
 FotQ==
X-Gm-Message-State: APjAAAV30ILhLsPbSGITLPXseTfLHoXXLAY+yyYQB6uelE34+hqxYvLu
 acpild+sDKxKS/8qlWkw2z8=
X-Google-Smtp-Source: APXvYqyRriUjCs3ZlOBPjcnjk6Dlny+i+saQAMYcCYZPxkCae/MfThQ4rk6LGRmointUKRz2ghtdwg==
X-Received: by 2002:adf:f0ce:: with SMTP id x14mr5759363wro.31.1567009463862; 
 Wed, 28 Aug 2019 09:24:23 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id e15sm1978364wrj.74.2019.08.28.09.24.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 09:24:21 -0700 (PDT)
Date: Wed, 28 Aug 2019 18:24:20 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 4/6] PCI: tegra: Add support to enable slot regulators
Message-ID: <20190828162420.GB10422@ulmo>
References: <20190828131505.28475-1-vidyas@nvidia.com>
 <20190828131505.28475-5-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190828131505.28475-5-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_092425_623098_323212A3 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org, kishon@ti.com,
 linux-tegra@vger.kernel.org, robh+dt@kernel.org, linux-pci@vger.kernel.org,
 bhelgaas@google.com, andrew.murray@arm.com, digetx@gmail.com,
 jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============1662487244176696279=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1662487244176696279==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7iMSBzlTiPOCCT2k"
Content-Disposition: inline


--7iMSBzlTiPOCCT2k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 28, 2019 at 06:45:03PM +0530, Vidya Sagar wrote:
> Add support to get regulator information of 3.3V and 12V supplies of a PC=
Ie
> slot from the respective controller's device-tree node and enable those
> supplies. This is required in platforms like p2972-0000 where the supplies
> to x16 slot owned by C5 controller need to be enabled before attempting to
> enumerate the devices.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed review comments from Thierry Reding and Andrew Murray
> * Handled failure case of devm_regulator_get_optional() for -ENODEV clean=
ly
>=20
>  drivers/pci/controller/dwc/pcie-tegra194.c | 80 ++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>=20
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/con=
troller/dwc/pcie-tegra194.c
> index 057ba4f9fbcd..6a66101ec83d 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -278,6 +278,8 @@ struct tegra_pcie_dw {
>  	u32 aspm_l0s_enter_lat;
> =20
>  	struct regulator *pex_ctl_supply;
> +	struct regulator *slot_ctl_3v3;
> +	struct regulator *slot_ctl_12v;
> =20
>  	unsigned int phy_count;
>  	struct phy **phys;
> @@ -1047,6 +1049,72 @@ static void tegra_pcie_downstream_dev_to_D0(struct=
 tegra_pcie_dw *pcie)
>  	}
>  }
> =20
> +static int tegra_pcie_get_slot_regulators(struct tegra_pcie_dw *pcie)
> +{
> +	pcie->slot_ctl_3v3 =3D devm_regulator_get_optional(pcie->dev, "vpcie3v3=
");
> +	if (IS_ERR(pcie->slot_ctl_3v3)) {
> +		if (PTR_ERR(pcie->slot_ctl_3v3) !=3D -ENODEV)
> +			return PTR_ERR(pcie->slot_ctl_3v3);
> +
> +		pcie->slot_ctl_3v3 =3D NULL;
> +	}
> +
> +	pcie->slot_ctl_12v =3D devm_regulator_get_optional(pcie->dev, "vpcie12v=
");
> +	if (IS_ERR(pcie->slot_ctl_12v)) {
> +		if (PTR_ERR(pcie->slot_ctl_12v) !=3D -ENODEV)
> +			return PTR_ERR(pcie->slot_ctl_12v);
> +
> +		pcie->slot_ctl_12v =3D NULL;
> +	}
> +
> +	return 0;
> +}
> +
> +static int tegra_pcie_enable_slot_regulators(struct tegra_pcie_dw *pcie)
> +{
> +	int ret;
> +
> +	if (pcie->slot_ctl_3v3) {
> +		ret =3D regulator_enable(pcie->slot_ctl_3v3);
> +		if (ret < 0) {
> +			dev_err(pcie->dev,
> +				"Failed to enable 3V3 slot supply: %d\n", ret);

Nit: perhaps make this error message "Failed to enable 3.3V slot
supply"? Seems somewhat more user-friendly than 3V3.


> +			return ret;
> +		}
> +	}
> +
> +	if (pcie->slot_ctl_12v) {
> +		ret =3D regulator_enable(pcie->slot_ctl_12v);
> +		if (ret < 0) {
> +			dev_err(pcie->dev,
> +				"Failed to enable 12V slot supply: %d\n", ret);
> +			goto fail_12v_enable;
> +		}
> +	}
> +
> +	/*
> +	 * According to PCI Express Card Electromechanical Specification
> +	 * Revision 1.1, Table-2.4, T_PVPERL (Power stable to PERST# inactive)
> +	 * should be a minimum of 100ms.
> +	 */
> +	msleep(100);

Do you perhaps want to guard this with something like:

	if (pcie->slot_ctl_3v3 || pcie->slot_ctl_12v)

? Doesn't seem useful to me to sleep 100 ms here if there are no
regulators being enabled to begin with.

Thierry

> +
> +	return 0;
> +
> +fail_12v_enable:
> +	if (pcie->slot_ctl_3v3)
> +		regulator_disable(pcie->slot_ctl_3v3);
> +	return ret;
> +}
> +
> +static void tegra_pcie_disable_slot_regulators(struct tegra_pcie_dw *pci=
e)
> +{
> +	if (pcie->slot_ctl_12v)
> +		regulator_disable(pcie->slot_ctl_12v);
> +	if (pcie->slot_ctl_3v3)
> +		regulator_disable(pcie->slot_ctl_3v3);
> +}
> +
>  static int tegra_pcie_config_controller(struct tegra_pcie_dw *pcie,
>  					bool en_hw_hot_rst)
>  {
> @@ -1060,6 +1128,10 @@ static int tegra_pcie_config_controller(struct teg=
ra_pcie_dw *pcie,
>  		return ret;
>  	}
> =20
> +	ret =3D tegra_pcie_enable_slot_regulators(pcie);
> +	if (ret < 0)
> +		goto fail_slot_reg_en;
> +
>  	ret =3D regulator_enable(pcie->pex_ctl_supply);
>  	if (ret < 0) {
>  		dev_err(pcie->dev, "Failed to enable regulator: %d\n", ret);
> @@ -1142,6 +1214,8 @@ static int tegra_pcie_config_controller(struct tegr=
a_pcie_dw *pcie,
>  fail_core_clk:
>  	regulator_disable(pcie->pex_ctl_supply);
>  fail_reg_en:
> +	tegra_pcie_disable_slot_regulators(pcie);
> +fail_slot_reg_en:
>  	tegra_pcie_bpmp_set_ctrl_state(pcie, false);
> =20
>  	return ret;
> @@ -1174,6 +1248,8 @@ static int __deinit_controller(struct tegra_pcie_dw=
 *pcie)
>  		return ret;
>  	}
> =20
> +	tegra_pcie_disable_slot_regulators(pcie);
> +
>  	ret =3D tegra_pcie_bpmp_set_ctrl_state(pcie, false);
>  	if (ret) {
>  		dev_err(pcie->dev, "Failed to disable controller %d: %d\n",
> @@ -1373,6 +1449,10 @@ static int tegra_pcie_dw_probe(struct platform_dev=
ice *pdev)
>  		return ret;
>  	}
> =20
> +	ret =3D tegra_pcie_get_slot_regulators(pcie);
> +	if (ret < 0)
> +		return ret;
> +
>  	pcie->pex_ctl_supply =3D devm_regulator_get(dev, "vddio-pex-ctl");
>  	if (IS_ERR(pcie->pex_ctl_supply)) {
>  		dev_err(dev, "Failed to get regulator: %ld\n",
> --=20
> 2.17.1
>=20

--7iMSBzlTiPOCCT2k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1mqrEACgkQ3SOs138+
s6HMTA/7BaNM/Xj4xK9AjEBIMHXA4666EmcrXLkTloR4XlbAVgHAqLNRt8NJbLug
RnvbDhe8AlKWkF190aWD93lwSDhH6EL/h4Wk7oGQV5NoSdb80ItInJMmBnlhwKSC
XkBG0g7I5Fhym8C10Ai7v9lfaK/BrHBiFYxWyWZg1o90zyImCt6yGAZDMbZH/iM9
ZeVfkljnOMhua/vd06aklh5h4GJ5FJAzKrxbEc4oPv+gQyvvU6rby7bH/NDytDrO
ECPmdSYGq12+kXo9N2DFbCzJi5kZwYbFnEU7UUnlctuZbhJ9tKUZVDkvxOXo5AOo
jbTCN6qVzrfQopNNwwMuMluaH7B6iM8L7bZXeCUpVTAbrAeoXTBBBkInvA64/wTb
Sr9rJCKh/Z+NX1jNPmZVNW0A9QZn2JToK3yg6h3LrRlJPSfLC2+OENfIbZJJ4AsO
NIe8BK/cY4ZyrdMEag/eJCGoqr8fgKeeZR2kDfnCOw5ueXSKIuPp4JS6qZupa24V
GZIXy99oKJk3jCC42I6kkmkralvWwzWuF6IWFxboDgK28lwmYsweowkcvwZZ4KFR
gIREfskCmyFHKJg5Nuw7m1VlC6qvBqqAVcVICisCr69GHWfFa/ltNdVg0bnxIxcG
h8mS+uuYoCyVGjmm4BsFdgjQbqe5vdj1sa8OgZmx5X6DWuCjraM=
=zyeB
-----END PGP SIGNATURE-----

--7iMSBzlTiPOCCT2k--


--===============1662487244176696279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1662487244176696279==--

