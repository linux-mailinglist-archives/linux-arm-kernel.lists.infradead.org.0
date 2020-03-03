Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04DB9177751
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 14:39:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=62RXo0Z01J4YUbhbw0IEKZgaOSsAIrATTC0aS0RqHbM=; b=klUPJpDPWrIPr4rbFNMjGshv/
	FZ6AorA1ZCNcscLGPwBwVHvLbxmgVltJ3c6y2xBa4GkGbDkZrt5Jcwm1pL7GFt1lltO9V06kFnHc7
	tiuUBRhOlyh6IxBdLCAJ/2mDwcDDHT3Fyi5uKehDDeJEA+diFez+5yHHXBBuHY0flx8TkhfoAHRIe
	+t12BsfUF7dkb6G3C6Juce2pOvvB0YrjQ1h/Z2JQdPcq9H7YbDluanxpsNXbzmsUQG4p4FoZ3AlWl
	4NUMEWmeROlI6QsdpFtF7NfnkWtqcFXoO0PATatd9ziUFgHOY0/cga8QE6R60urIMuTwPPU6soyiZ
	bcGEMbPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j97lI-000497-Kq; Tue, 03 Mar 2020 13:39:04 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j97lC-00048a-Aj
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 13:38:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id v4so4361835wrs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 03 Mar 2020 05:38:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ZRymEURxG29TkCLI3sdfDoyr9GF4aobVx9HepebY0JQ=;
 b=i2HHyha2l7WtQStsxE4ZCZMX6GRBeq34abSjXuFniTbuXvl0jzB0M2oNWKpwg3BzRv
 +oLl4b5c9dAiNbIM5pLuMjCILVVw/PViw/3LtxoxvJbQDPyS/plpr+keGENeMWCAXbLX
 FGpFirPQG3nECFhfxcXCwDJ9ZRq/viSU7vKsK3q87qnHS9rg0XR84iSqVGS8FQrA1gdx
 o6mh2vfrC7JhwYM4A0Wpbr+r49kf+1FGDsWV0YSvGHf3E7K03csqQ0zp1mLMi/uAicXM
 r3CJrSKfbBcCV0LxV5dmuH21ayEOfQR04q6rMWdwSiuX1QYILodb3zos8daFHqAuIDUB
 uDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ZRymEURxG29TkCLI3sdfDoyr9GF4aobVx9HepebY0JQ=;
 b=kBTM1zeS7AIs1lJN4biJmnBTu+A3hnVnuvyCKa6fakTlZr/Hy06E5k4wgiT0gLNnDW
 YSHeA6rPZUKo7wUITgOFitzK+LrRMMmyjEtkgB+4cpz0ytqhLHO5v0yXL/Q0a/e/sVWz
 JiT6EoWCbphwvkkA2g/w9uPUHIsIOBtutXALLNGaqQsbM8Y9i/5LtzOWpZeOie+SPRX3
 bznFyfh7sTmU/fZrG50YGl6HHjKk2nSZ8CfLJek3ykzCqSuW41BU5qVdokBBu+RJ1dNk
 H4Bfv2JACtkWXgxQt5XAMSZ09fH25TXb9ntq3QidRLPqARADECkTUgShknP1hZwtQEzv
 CaQw==
X-Gm-Message-State: ANhLgQ3gfNHRMwaYsPmZNGwtJS0rJjTS6ZgMDtvrLwLlKYA4K7pbfsB+
 Bm8BDRaemsZTgDB0aipEMRU=
X-Google-Smtp-Source: ADFU+vvtajUmcHxy1nP7CuGiIwApLuN21TbJVtjyuHeuiUnic+JoV9sDwPIAvu65DSjAgKrIuDsb+g==
X-Received: by 2002:adf:dd47:: with SMTP id u7mr4550046wrm.130.1583242736437; 
 Tue, 03 Mar 2020 05:38:56 -0800 (PST)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id n11sm211775wrw.11.2020.03.03.05.38.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 03 Mar 2020 05:38:55 -0800 (PST)
Date: Tue, 3 Mar 2020 14:38:54 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V4 5/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200303133854.GA2854899@ulmo>
References: <20200303105418.2840-1-vidyas@nvidia.com>
 <20200303105418.2840-6-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200303105418.2840-6-vidyas@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_053858_372530_4D9E5029 
X-CRM114-Status: GOOD (  17.04  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============0224357749792662012=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0224357749792662012==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="X1bOJ3K7DJ5YkBrT"
Content-Disposition: inline


--X1bOJ3K7DJ5YkBrT
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 03, 2020 at 04:24:18PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V4:
> * Addressed Lorenzo's review comments
> * Started using threaded irqs instead of kthreads
>=20
> V3:
> * Addressed Thierry's review comments
>=20
> V2:
> * Addressed Bjorn's review comments
> * Made changes as part of addressing review comments for other patches
>=20
>  drivers/pci/controller/dwc/Kconfig         |  30 +-
>  drivers/pci/controller/dwc/pcie-tegra194.c | 681 ++++++++++++++++++++-
>  2 files changed, 693 insertions(+), 18 deletions(-)
>=20
> diff --git a/drivers/pci/controller/dwc/Kconfig b/drivers/pci/controller/=
dwc/Kconfig
> index 0830dfcfa43a..169cde58dd92 100644
> --- a/drivers/pci/controller/dwc/Kconfig
> +++ b/drivers/pci/controller/dwc/Kconfig
> @@ -248,14 +248,38 @@ config PCI_MESON
>  	  implement the driver.
> =20
>  config PCIE_TEGRA194
> -	tristate "NVIDIA Tegra194 (and later) PCIe controller"
> +	tristate
> +
> +config PCIE_TEGRA194_HOST
> +	tristate "NVIDIA Tegra194 (and later) PCIe controller - Host Mode"
>  	depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
>  	depends on PCI_MSI_IRQ_DOMAIN
>  	select PCIE_DW_HOST
>  	select PHY_TEGRA194_P2U
> +	select PCIE_TEGRA194
> +	default y
> +	help
> +	  Enables support for the PCIe controller in the NVIDIA Tegra194 SoC to
> +	  work in host mode. There are two instances of PCIe controllers in
> +	  Tegra194. This controller can work either as EP or RC. In order to
> +	  enable host-specific features PCIE_TEGRA194_HOST must be selected and
> +	  in order to enable device-specific features PCIE_TEGRA194_EP must be
> +	  selected. This uses the DesignWare core.
> +
> +config PCIE_TEGRA194_EP
> +	tristate "NVIDIA Tegra194 (and later) PCIe controller - Endpoint Mode"
> +	depends on ARCH_TEGRA_194_SOC || COMPILE_TEST
> +	depends on PCI_ENDPOINT
> +	select PCIE_DW_EP
> +	select PHY_TEGRA194_P2U
> +	select PCIE_TEGRA194
>  	help
> -	  Say Y here if you want support for DesignWare core based PCIe host
> -	  controller found in NVIDIA Tegra194 SoC.
> +	  Enables support for the PCIe controller in the NVIDIA Tegra194 SoC to
> +	  work in host mode. There are two instances of PCIe controllers in
> +	  Tegra194. This controller can work either as EP or RC. In order to
> +	  enable host-specific features PCIE_TEGRA194_HOST must be selected and
> +	  in order to enable device-specific features PCIE_TEGRA194_EP must be
> +	  selected. This uses the DesignWare core.
> =20
>  config PCIE_UNIPHIER
>  	bool "Socionext UniPhier PCIe controllers"
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/con=
troller/dwc/pcie-tegra194.c
> index cbe95f0ea0ca..81810e644b23 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
> @@ -14,6 +14,8 @@
>  #include <linux/interrupt.h>
>  #include <linux/iopoll.h>
>  #include <linux/kernel.h>
> +#include <linux/kfifo.h>
> +#include <linux/kthread.h>

After moving to threaded IRQs, do you still need these includes?

Acked-by: Thierry Reding <treding@nvidia.com>

--X1bOJ3K7DJ5YkBrT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5eXd4ACgkQ3SOs138+
s6EVjA/+MiWicLPXeikoOsrDyo2yGmbfVl1gjhiqLmFIk0cXDwDfBegX6JWoT9CB
p7Ffs0byZ8Bi8xza+wfpO4LVjANLOxW3DMtt4tFaOu2W+OsvaNbJasvo6X07Sr7k
I+dmrxkWuPz3mN6LFbR458HY0B7YxLDKwPzyEdYss5ETaZ3asVul3cnbDPViQY8v
tjcKk2ccScCYqAdjD4AW3ijxHECa5dEaLp13qQF76VVdHd3wyQox+SHvV9NNJo1o
d5RRTlj3z6hWsqE1Bp7hDqqYWSOg1brcpuzdy+y2sV6mWaRTXL4JQzI+B8fTPUhO
JvLZbx9JqyVtmqxq+PIekzdCGGRcqpEWL6+VIL4tWKL9OhUBJzHs/BKYW46Lx7Tv
cAdBMJkkif27Y2iUR3T00cYmKLpaCPtUXZicHglrrWDVwNVbYiiGy8WiVLsQohSj
SkRsnd7w09t/ZJ7JyzSnDfk2dR8qMBNDf64iiYhpmpXZSleF7ifla4fZrikXXnHG
HjNaSxR+Euwnnlf1rDhyfDSzJWjFvWM18wnxKydS5TwGt9wA0acTQrWrv1RePl1Y
ArDnpj1xfbhJhHEFO69Fjg9kr605SSmeXLmX+r6XR/5gkfF6FfRRyN2x3nRU9Fqb
i/AtQye/0U9iTr6Rc/NVIGD86+/Fq9gik3hhR8a5o81wRdyxpr8=
=q+we
-----END PGP SIGNATURE-----

--X1bOJ3K7DJ5YkBrT--


--===============0224357749792662012==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0224357749792662012==--

