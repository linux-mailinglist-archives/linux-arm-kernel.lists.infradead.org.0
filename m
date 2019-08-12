Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BB789B60
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:23:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EksfhHZoCP+CglnSazRtkrmKVmtxjmcM49Z/13nUQ2g=; b=dalimafUhGArLr2e558msyXXG
	S+9paRb94C1IGxPUM/28ggD1o0lmNDosLfP1s8PHQ4T4v+aYkc9DP6RDHkva8hmcsVxOZ7QayESpF
	fyY/G73goHXJGZT2q1vPltrLnTOHYtdrjkxz2HjlujLkrr0q3R2TNleHMwHhMykv0f8G/OB2ZuMZy
	muvbDi7b92x76MEugkSwu92TArebOa5EUL+SnnYY8P+b5iQG645tcL8WuKvx4l0NVq+C5tCC0YoXK
	wLjE1lc4QdLZ0EsnQrTx9X7C8RcVzsWweFn2IRPJqWnvziIigzn3J5dyMTzzpsl/QnhcwYFotljzI
	ZCwBkVsFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7Ty-0005Bo-4o; Mon, 12 Aug 2019 10:23:18 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7Tk-0005Aa-0r
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:23:05 +0000
Received: by mail-wr1-x441.google.com with SMTP id j16so1816203wrr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 12 Aug 2019 03:23:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=MTiHtsvt5NhSEME25nXCrgva1MRgamkEFmaJPkZIx4w=;
 b=AjCxPLPCs5zOInkjESEXueg3dRHlkj8W/McUs0U+BiyZAAx3fiOpO9n7YUlq2uSzbL
 PDxlVAbxxKpuwXFHPWbT40/Wc07o90dvUFYO80VwftE8WJt8wZWrIN40BII0iXOCnKbf
 slnbwe8jSQt3acptM9RdKLs+g+9oG2aBRyE+1Pd1c31vH8rXAFDs43+cybT/ayVay+97
 08apvAHi52MImdRLZlosiTvpat+YkfT74LsMmhHLVciaj+ow7AL6VoRxbdBez7fn7Yoc
 vl+oZJEN9rUY7DYOYuiij1AC00ipPTh4iZjBpN/h4wQKY0otnT54HY/rcm0PzJqAi71d
 Szww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=MTiHtsvt5NhSEME25nXCrgva1MRgamkEFmaJPkZIx4w=;
 b=AlNROaBrPuwxXoCAIpv8MuGi5bmcF4Uk/JvNc/75O015cCpW2BS1/WyQwqlS0O6CC+
 aVsvAL8NL9VEmZfpcxwbvrMi6IG+I8fqJmhRCn47T3GMMNX3YmQF61Ie8UoGMq592bUe
 em9NoX9XCv5BdCkSCU99ShtwDYU7tsqU/WJG3rks4q8ncjiKplX3/Acf7reGU++xckON
 R8IgeLVJuQsZU7U1wa1FsMCL6h8sYBz6nMpB7D6PFzZ02C6Lh0kizAF3N+mal2+7EBqq
 FqeoztDTXtjVAkcZgtmB8SyY9TLHrveqGJ1aQH9qKjCjtIMylt4h2AJtH3Nn+9kOy76v
 gjmA==
X-Gm-Message-State: APjAAAWHviFiaPRzEw6dBeNPFVdcKiSMn6AwuQfJZHbDkCpoJvOJ8Frt
 O8wCm1BX7NVUWZiu7YTXAoQ=
X-Google-Smtp-Source: APXvYqw8ewrkG14Pe2lRIqxXus+F0QYZWt3csjZLIT7tSFq3ITwXIBiyhaMB3csWtIQ680aBgkgtJg==
X-Received: by 2002:a5d:634c:: with SMTP id b12mr18996501wrw.127.1565605382076; 
 Mon, 12 Aug 2019 03:23:02 -0700 (PDT)
Received: from localhost (pD9E51890.dip0.t-ipconnect.de. [217.229.24.144])
 by smtp.gmail.com with ESMTPSA id l3sm24553705wrb.41.2019.08.12.03.23.00
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 12 Aug 2019 03:23:00 -0700 (PDT)
Date: Mon, 12 Aug 2019 12:23:00 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V15 12/13] phy: tegra: Add PCIe PIPE2UPHY support
Message-ID: <20190812102300.GM8903@ulmo>
References: <20190809044609.20401-1-vidyas@nvidia.com>
 <20190809044609.20401-13-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190809044609.20401-13-vidyas@nvidia.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_032304_088173_022AE520 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============6973279013581979381=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6973279013581979381==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="GeONROBiaq1zPAtT"
Content-Disposition: inline


--GeONROBiaq1zPAtT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Aug 09, 2019 at 10:16:08AM +0530, Vidya Sagar wrote:
> Synopsys DesignWare core based PCIe controllers in Tegra 194 SoC interface
> with Universal PHY (UPHY) module through a PIPE2UPHY (P2U) module.
> For each PCIe lane of a controller, there is a P2U unit instantiated at
> hardware level. This driver provides support for the programming required
> for each P2U that is going to be used for a PCIe controller.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> Acked-by: Kishon Vijay Abraham I <kishon@ti.com>
> ---
> V15:
> * None
>=20
> V14:
> * None
>=20
> V13:
> * None
>=20
> V12:
> * None
>=20
> V11:
> * Replaced PTR_ERR_OR_ZERO() with PTR_ERR() as the check for zero is alre=
ady
>   present in the code.
>=20
> V10:
> * Used _relaxed() versions of readl() & writel()
>=20
> V9:
> * Made it dependent on ARCH_TEGRA_194_SOC directly instead of ARCH_TEGRA
>=20
> V8:
> * Changed P2U driver file name from pcie-p2u-tegra194.c to phy-tegra194-p=
2u.c
>=20
> V7:
> * None
>=20
> V6:
> * Addressed review comments from Thierry
>=20
> V5:
> * None
>=20
> V4:
> * Rebased on top of linux-next top of the tree
>=20
> V3:
> * Replaced spaces with tabs in Kconfig file
> * Sorted header file inclusion alphabetically
>=20
> V2:
> * Added COMPILE_TEST in Kconfig
> * Removed empty phy_ops implementations
> * Modified code according to DT documentation file modifications
>=20
>  drivers/phy/tegra/Kconfig            |   7 ++
>  drivers/phy/tegra/Makefile           |   1 +
>  drivers/phy/tegra/phy-tegra194-p2u.c | 120 +++++++++++++++++++++++++++
>  3 files changed, 128 insertions(+)
>  create mode 100644 drivers/phy/tegra/phy-tegra194-p2u.c

Acked-by: Thierry Reding <treding@nvidia.com>

--GeONROBiaq1zPAtT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1RPgMACgkQ3SOs138+
s6G6QRAApZ8Wo+dLU8yIc2xUpt31Zb4Mt89cHlgrBXMadX3WQGRdKFxNtS63hucq
6bj/FGGojkXhuiFBY4vaRnhhWFEeUi8khH+gCiKHEq4f8ENNpPRF3nC11/ISDQlt
rYB0lB0edwd7ZVso8KVs8LAXPO/qg3hF2UsriGDYyHIzhgNrpAqGtue+RbgfoXic
uzcPDzhaXgcSls0JkMrQrqdb3I7dH/VrPXs4Y9FdbnHb4OaaSpDRiyR1M0e+j5Rs
uBA3+qz84CGVEzUCmLakD52NbtEW1SJj2x3LfKe2LzjlR03p8p8q0+L7UbCP3OdM
SNOB+VD+FCCQ2uH0aJMn1U4t/pAp16NuDSWlJxXXx8Pn/auq1nyYgluYyyArWNJO
K1Y93Tr3DmEwzv67v8nXQqP7nyFj/Rn0XapYHt9JmjpBsFuZC9vh9lJ+m0lplJir
LYFt0sZYyP/aYr6EmNwPE4fOsgW9++yXP68WqaS7YmL+Mr7Xek+ojJqi6t65J6K+
QxIczmLN+hnkAr8RDjO1f5fClz2pIJRCt//HVwk2nMAr6aiSf4oKg0dAoxOW1q04
7d5Mfcivnqus2gm2w2g4qtnUH1hQ4zxUjDMbaNsYJTxtjwnUS01lA8M2F1eJpqJX
yTihfhNjw1i2pqoK4FD694YSFT3e/4toB0LG86K4ej9qfFcHcqI=
=HGLV
-----END PGP SIGNATURE-----

--GeONROBiaq1zPAtT--


--===============6973279013581979381==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6973279013581979381==--

