Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9392A2B74E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 16:10:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mjQEiMEZR5Pr/hcFMUmB0PXN0fIu5vrH8ZBGk2u0wK0=; b=JKtXOSzOVhhVCejbJ1yOr3mo/
	8d2l6bBtRTf93eH7whWSG2KUWs9Iue7SsHQf/tqPwpTAqDm3X8sW8YqjTUmwxfCD+9vxzMHLksAWQ
	ygzpO80CnAN3cB4d6XlErIm7Veu9Z4E7IauI27IQNTSky4XnOuilTUYouxsmaezv62oYgKi/+4We7
	ny/wdnxEVC2xX7C84deg0E5hdB7TgQOLgjxb9upa6TgaC93ePYNkIbA2rwU7iJbHuXZEi7fex4+wf
	a3UxtqjiexpGZjVtFXYBz8zKiW1CbWi2fv9+RCFSsDYztI3EORnOzLNAXuYXdYWRS3mxImNj+w+Hr
	UGXmPaWWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVGKF-0003WA-OZ; Mon, 27 May 2019 14:10:07 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVGK4-0003Vj-Bs; Mon, 27 May 2019 14:09:57 +0000
Received: by mail-wm1-x344.google.com with SMTP id t5so15992003wmh.3;
 Mon, 27 May 2019 07:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LVQmabqaveoCCphB3DhTxUm42/S6gLtLkjhO6CDB9nU=;
 b=kgtqsH9fZ/rbqOeQ5u5aQvsOmd/i26baPpenLVwHu7A+JjKJ6koZc5A5A4ckFaYxWT
 Y1HIxrC3fM8ZrQZSGIMnuCXeGHfGImgBTk8Zi/7ON/ZsbAt1HfXX4A+n5dG9l7mGBqE9
 ts62hpXoZZAkQk/HcpLWFcxIE5iwDjrexlhpSHTyYTW34YkqKw5ytVdjlXQaWU4jZhig
 FlwCNufb9ebITJF+guuN9cF0X886OcvC1aTC0j3g7rR9EQbZJZqv4B70OaMghb/GCcb6
 LaDxr77KaYjy3/6jQm8NyrJfB18zdL1TjmOSYZ8JS4XqY6TmKV0i5npoTNK0hQXI33q0
 g0Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LVQmabqaveoCCphB3DhTxUm42/S6gLtLkjhO6CDB9nU=;
 b=myd+hHFP8Gm6arWKLC/DZ6Rwj21EpIy49jVmMj5OGebEgNWXjOFStNASvsL/sI0czU
 NdRU4JhZJ4XQeGfr9B+n6KOy4xEUNERD4GqleaiSdrFjYC2rZiR9on6g8nEypO2rtMtY
 5yT2gNz1F78xPqrNTo7ZT0g5TTeJpbkELauFcQ7eF+rF+tMF2z1jtl68DG8JyFx2tca1
 9sgWQJBUKycFP7NVbBEchyA2n+eeu8gziIj0Imd5SCU+SIt6WgCrJKC04b6tjFPPx58a
 7pGQ5ccPSYyCf8XEGmox3fR9/ZbxqEA1d+KQGYPBlPjhClv7K+1vHcZBCL1C4OMyFDDl
 d6VA==
X-Gm-Message-State: APjAAAVt5Qd8VdMBBQho6vEfmfghsZHkZdDmf5vKbwiU2h3cIcJ50hCz
 hvZwfeDfeMQ/pfC4JeJeQOY=
X-Google-Smtp-Source: APXvYqzsW7BY/2y7fqE7i0gqeAmMCKKdIKqWX/pPSvovlJ8F2qxos0lDWm75mPwzO6yfT2dKy+reSw==
X-Received: by 2002:a1c:7216:: with SMTP id n22mr26124553wmc.111.1558966194591; 
 Mon, 27 May 2019 07:09:54 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id a124sm7874010wmh.3.2019.05.27.07.09.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 27 May 2019 07:09:53 -0700 (PDT)
Date: Mon, 27 May 2019 16:09:52 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Hariprasad Kelam <hariprasad.kelam@gmail.com>
Subject: Re: [PATCH] drivers/pci/controller: fix warning PTR_ERR_OR_ZERO can
 be used
Message-ID: <20190527140952.GB7202@ulmo>
References: <20190525085748.GA10926@hari-Inspiron-1545>
MIME-Version: 1.0
In-Reply-To: <20190525085748.GA10926@hari-Inspiron-1545>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_070956_434546_910014F3 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-samsung-soc@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 Binghui Wang <wangbinghui@hisilicon.com>, ingoo Han <jingoohan1@gmail.com>,
 linux-arm-msm@vger.kernel.org, Xiaowei Song <songxiaowei@hisilicon.com>,
 linux-pci@vger.kernel.org, Andy Gross <agross@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Yue Wang <yue.wang@amlogic.com>,
 Stanimir Varbanov <svarbanov@mm-sol.com>, David Brown <david.brown@linaro.org>,
 Kukjin Kim <kgene@kernel.org>, linux-tegra@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, Bjorn Helgaas <bhelgaas@google.com>,
 linux-amlogic@lists.infradead.org, Jonathan Hunter <jonathanh@nvidia.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7416846749126969181=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7416846749126969181==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qlTNgmc+xy1dBmNv"
Content-Disposition: inline


--qlTNgmc+xy1dBmNv
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 25, 2019 at 02:27:48PM +0530, Hariprasad Kelam wrote:
> fix below warnings reported by coccichek
>=20
> /drivers/pci/controller/pci-tegra.c:1132:1-3: WARNING: PTR_ERR_OR_ZERO
> can be used

This has been discussed many times before, but PTR_ERR_OR_ZERO is not
liked by everybody. Most of these are actually in place on purpose. One
of the reasons I hear most frequently cited in opposition to this macro
is that it complicates things when you need to add some new code in, so
PTR_ERR_OR_ZERO() becomes wrong and has to be changed. The original,
with the "return 0;" being explicit doesn't have that problem and you
can easily add things in between.

It's obviously up to Bjorn to decide whether he wants this, but I
vaguely remember discussing this particular instance with him before and
we both agreed that we didn't think this was worth it.

Perhaps it's time to make checkpatch not complain about this anymore? Or
at least make this not a WARNING.

Thierry

> ./drivers/pci/controller/dwc/pcie-qcom.c:703:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/pci/controller/dwc/pci-meson.c:185:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/pci/controller/dwc/pci-meson.c:262:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/pci/controller/dwc/pcie-kirin.c:141:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/pci/controller/dwc/pcie-kirin.c:177:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
> ./drivers/pci/controller/dwc/pci-exynos.c:95:1-3: WARNING:
> PTR_ERR_OR_ZERO can be used
>=20
> Signed-off-by: Hariprasad Kelam <hariprasad.kelam@gmail.com>
> ---
>  drivers/pci/controller/dwc/pci-exynos.c | 4 +---
>  drivers/pci/controller/dwc/pci-meson.c  | 8 ++------
>  drivers/pci/controller/dwc/pcie-kirin.c | 8 ++------
>  drivers/pci/controller/dwc/pcie-qcom.c  | 4 +---
>  drivers/pci/controller/pci-tegra.c      | 4 +---
>  5 files changed, 7 insertions(+), 21 deletions(-)
>=20
> diff --git a/drivers/pci/controller/dwc/pci-exynos.c b/drivers/pci/contro=
ller/dwc/pci-exynos.c
> index cee5f2f..b0b4849 100644
> --- a/drivers/pci/controller/dwc/pci-exynos.c
> +++ b/drivers/pci/controller/dwc/pci-exynos.c
> @@ -92,10 +92,8 @@ static int exynos5440_pcie_get_mem_resources(struct pl=
atform_device *pdev,
> =20
>  	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
>  	ep->mem_res->elbi_base =3D devm_ioremap_resource(dev, res);
> -	if (IS_ERR(ep->mem_res->elbi_base))
> -		return PTR_ERR(ep->mem_res->elbi_base);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(ep->mem_res->elbi_base);
>  }
> =20
>  static int exynos5440_pcie_get_clk_resources(struct exynos_pcie *ep)
> diff --git a/drivers/pci/controller/dwc/pci-meson.c b/drivers/pci/control=
ler/dwc/pci-meson.c
> index e35e9ea..1ca78c2 100644
> --- a/drivers/pci/controller/dwc/pci-meson.c
> +++ b/drivers/pci/controller/dwc/pci-meson.c
> @@ -182,10 +182,8 @@ static int meson_pcie_get_mems(struct platform_devic=
e *pdev,
> =20
>  	/* Meson SoC has two PCI controllers use same phy register*/
>  	mp->mem_res.phy_base =3D meson_pcie_get_mem_shared(pdev, mp, "phy");
> -	if (IS_ERR(mp->mem_res.phy_base))
> -		return PTR_ERR(mp->mem_res.phy_base);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(mp->mem_res.phy_base);
>  }
> =20
>  static void meson_pcie_power_on(struct meson_pcie *mp)
> @@ -259,10 +257,8 @@ static int meson_pcie_probe_clocks(struct meson_pcie=
 *mp)
>  		return PTR_ERR(res->general_clk);
> =20
>  	res->clk =3D meson_pcie_probe_clock(dev, "pcie", 0);
> -	if (IS_ERR(res->clk))
> -		return PTR_ERR(res->clk);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(res->clk);
>  }
> =20
>  static inline void meson_elb_writel(struct meson_pcie *mp, u32 val, u32 =
reg)
> diff --git a/drivers/pci/controller/dwc/pcie-kirin.c b/drivers/pci/contro=
ller/dwc/pcie-kirin.c
> index 9b59929..87cfdb4 100644
> --- a/drivers/pci/controller/dwc/pcie-kirin.c
> +++ b/drivers/pci/controller/dwc/pcie-kirin.c
> @@ -138,10 +138,8 @@ static long kirin_pcie_get_clk(struct kirin_pcie *ki=
rin_pcie,
>  		return PTR_ERR(kirin_pcie->apb_sys_clk);
> =20
>  	kirin_pcie->pcie_aclk =3D devm_clk_get(dev, "pcie_aclk");
> -	if (IS_ERR(kirin_pcie->pcie_aclk))
> -		return PTR_ERR(kirin_pcie->pcie_aclk);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(kirin_pcie->pcie_aclk);
>  }
> =20
>  static long kirin_pcie_get_resource(struct kirin_pcie *kirin_pcie,
> @@ -174,10 +172,8 @@ static long kirin_pcie_get_resource(struct kirin_pci=
e *kirin_pcie,
> =20
>  	kirin_pcie->sysctrl =3D
>  		syscon_regmap_lookup_by_compatible("hisilicon,hi3660-sctrl");
> -	if (IS_ERR(kirin_pcie->sysctrl))
> -		return PTR_ERR(kirin_pcie->sysctrl);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(kirin_pcie->sysctrl);
>  }
> =20
>  static int kirin_pcie_phy_init(struct kirin_pcie *kirin_pcie)
> diff --git a/drivers/pci/controller/dwc/pcie-qcom.c b/drivers/pci/control=
ler/dwc/pcie-qcom.c
> index 0ed235d..6c421e6 100644
> --- a/drivers/pci/controller/dwc/pcie-qcom.c
> +++ b/drivers/pci/controller/dwc/pcie-qcom.c
> @@ -700,10 +700,8 @@ static int qcom_pcie_get_resources_2_4_0(struct qcom=
_pcie *pcie)
>  		return PTR_ERR(res->ahb_reset);
> =20
>  	res->phy_ahb_reset =3D devm_reset_control_get_exclusive(dev, "phy_ahb");
> -	if (IS_ERR(res->phy_ahb_reset))
> -		return PTR_ERR(res->phy_ahb_reset);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(res->phy_ahb_reset);
>  }
> =20
>  static void qcom_pcie_deinit_2_4_0(struct qcom_pcie *pcie)
> diff --git a/drivers/pci/controller/pci-tegra.c b/drivers/pci/controller/=
pci-tegra.c
> index 464ba25..3cd5069 100644
> --- a/drivers/pci/controller/pci-tegra.c
> +++ b/drivers/pci/controller/pci-tegra.c
> @@ -1129,10 +1129,8 @@ static int tegra_pcie_resets_get(struct tegra_pcie=
 *pcie)
>  		return PTR_ERR(pcie->afi_rst);
> =20
>  	pcie->pcie_xrst =3D devm_reset_control_get_exclusive(dev, "pcie_x");
> -	if (IS_ERR(pcie->pcie_xrst))
> -		return PTR_ERR(pcie->pcie_xrst);
> =20
> -	return 0;
> +	return PTR_ERR_OR_ZERO(pcie->pcie_xrst);
>  }
> =20
>  static int tegra_pcie_phys_get_legacy(struct tegra_pcie *pcie)
> --=20
> 2.7.4
>=20

--qlTNgmc+xy1dBmNv
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzr77AACgkQ3SOs138+
s6E3XxAAl/LQJibF57zkjZJ/Sz1qW4r8QI3T/YJg7wQMj+JhzSbD+wvrPqHaE5x0
rhnQ3Qsr1U8uvz0Brnsnvl83bMvTc17pIRsekAwinfFwT5cKU/eH3A6xTgnHFThq
8zYBXySXZytLkVXwne0g+7ZG19FbCGhENKX1GxRFJwqKwuFXK7+eThuQtnD+SupS
vTqd4PZmTFwW+N+tY/OLAf8+UsI9uciASHnjkDI/DeQnG+xAfUzCxu3PYMYP2Wd8
YD+Lai4w89C0Q6h7sC3U2XTN050gDrFYQ0vAMZGykGGM8hjlW7yEvAKoV027uTVr
ghCypTYX1l3IlJXyPfk8T8dkWxijj5wzl+vFvCMdmMD4lpOqQGOvi8AOw8RaLYzS
r3WE1AJfo1iMCuz7lu66Z0bSQWHtPv2rfb9rK2OWOYH5JkPOuT64fdhDCz0USb8/
Xy4bARALpHhK32oNi7G6pxNmOClCrzl+ri/JNpagTmj0jh9GmeAntW+t2XwCEppH
70Z+PcA8gq2elvyx5gnA2TkbskGo2O8UH8XEDExr2hVdm8GG8N+LgEtIBbdTuecu
IKCZ9vk2X1jQ+hJAP6Cz0YSu8E2yrdBQ5Hb6pnlPz6yVzUYkuNdTPW9CDN9BU8Ve
91Y/9Oy5llAhtP9kKzXGY8wh27C0MI2m0V2+ErpsgSGszupKXRY=
=2ftq
-----END PGP SIGNATURE-----

--qlTNgmc+xy1dBmNv--


--===============7416846749126969181==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7416846749126969181==--

