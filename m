Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 385CC1312A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:14:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pxrnT4wtuPiY3735cgkZMe3voSfpY0aoBIncxX71t5k=; b=J+xyglnJ3MVkrujJYSDlBT6iq
	9gh5Dhtxil4+cgURnzSqgw66tXgWOhthGlPgji/ZMOfwA5ckV0WciQwS8TZlroq6rAZvoeCjuDF9F
	Ka2rJQXinCLeILi518t8D/T82dwiu8HGBp5h1uyvaN8lkuj3nhIyX6BKQWOzTfTtKrbt4r9a5ELrK
	QnY5JANhZf1NqJ2qmjLptBRgi2b1ydRNZnna9fTEPEDUt+myAN4//8SQ5qEVU66RYrS30RxLP7gRX
	mnCvowsFkguN/iNnZFBtER8a5+l/E0+PaWyKFxAR3O/BF5hk498zMejuoRvCqDxp1Xu6BdAEktFL6
	wsxu2BFjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSDD-0002XS-7S; Mon, 06 Jan 2020 13:14:27 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSD5-0002Wu-Qy
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:14:21 +0000
Received: by mail-wm1-x341.google.com with SMTP id p17so15218738wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:14:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LrWoGYPQhmVuVZJ2chuTv8wabYF1cEdpWPnR/3AObmI=;
 b=Tor+9VLbD7Zc0d9dWTQ0qbqi2gIK9SgGkqe6Px5lL21j9bsRAy4aai5nJAi0j4r9g9
 wpYhaVOZc6YfHSwHCk/Z0G62gebtmK3ONeAvqNVFuAtZFuL6urTbCd43yMF2jD0y3Hcq
 F3/0Ysb8OfXt5KCdVi5aTAzN8g6MkrQ1Dq43XhiOHE9vhora4MjjcqS5hutXVTzDnLUm
 l6dsW8sqYjGIi3B1nM59QyeUY1UPo4TYMkKAbnrGsa8yWYrtWaC/1yYERtl9i5gCk8tX
 ZjgAdNwQ3cZV4ivBs6lzf8W/O/NiUEsusmmpoWSWiJTtVJop3LNc8q415YJkw9/bD9YF
 26SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LrWoGYPQhmVuVZJ2chuTv8wabYF1cEdpWPnR/3AObmI=;
 b=oBr+kH/Yqev558kX4Oca2eC2ma8bN/V2VwsBMhywx+UzYK7q8Jr7TD+ij4Dh0z1F3e
 m7L6qc7B9ObvqiVef6Yg2lyu5rVhUNdUuioBQvb7TakhlxjyxY5ySZsYE4ncgSbw1oyp
 Eg7nCqqapDKSU6npXSmIy0uX21CQ0cCVK6cOU6qCXqvWyV30ynKXV9eShS9ZJU0kE07c
 e/dihXYe81jL5br6Tr+HBnvOfIMIwy/NP41uHRe1eSmHJezSVemJaKiuzmVf1YWi4F5J
 9XFvfDR3yIzcnXcotKBJeNt0a8EXD3AqN5XT6WbA5uTdglFirEGVyoBlvrppOxsItF9x
 pc/w==
X-Gm-Message-State: APjAAAUX3YKtiiw0KkKtMpH2dt/T1ueMjTKNUQap2/pYx3hl/SLsvdeB
 AMFDyvTAeyuqoZRYGHQS4G0=
X-Google-Smtp-Source: APXvYqxNvAqB5fDsO76GWUOtJXB7v4lpojthI3YAMdCJtc4OE+SxwUanVxHbhH7I6AagyWwIAy6qGQ==
X-Received: by 2002:a1c:5f41:: with SMTP id t62mr36486858wmb.42.1578316458683; 
 Mon, 06 Jan 2020 05:14:18 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id v62sm22970179wmg.3.2020.01.06.05.14.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 05:14:17 -0800 (PST)
Date: Mon, 6 Jan 2020 14:14:16 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 3/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200106131416.GD1955714@ulmo>
References: <20200103124404.20662-1-vidyas@nvidia.com>
 <20200103124404.20662-4-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200103124404.20662-4-vidyas@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_051419_904129_D0CE88F1 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============1255278639510142692=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1255278639510142692==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="veXX9dWIonWZEC6h"
Content-Disposition: inline


--veXX9dWIonWZEC6h
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 03, 2020 at 06:14:02PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed Bjorn's review comments
> * Made changes as part of addressing review comments for other patches
>=20
>  drivers/pci/controller/dwc/Kconfig         |  30 +-
>  drivers/pci/controller/dwc/pcie-tegra194.c | 782 ++++++++++++++++++++-
>  2 files changed, 796 insertions(+), 16 deletions(-)
>=20
[...]
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/con=
troller/dwc/pcie-tegra194.c
> index cbe95f0ea0ca..6621ac79efee 100644
> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
[...]
> @@ -1427,8 +1620,553 @@ static int tegra_pcie_config_rp(struct tegra_pcie=
_dw *pcie)
[...]
> +static int tegra_pcie_config_ep(struct tegra_pcie_dw *pcie,
> +				struct platform_device *pdev)
> +{
[...]
> +	ret =3D devm_request_irq(dev, pcie->pex_rst_irq,
> +			       tegra_pcie_ep_pex_rst_irq,
> +			       IRQF_TRIGGER_RISING | IRQF_TRIGGER_FALLING,
> +			       name, (void *)pcie);
> +	if (ret < 0) {
> +		dev_err(dev, "Failed to request IRQ for PERST: %d\n", ret);
> +		return ret;
> +	}
> +	disable_irq(pcie->pex_rst_irq);

I just came across this while reviewing another patch: it looks like a
better way to handle "disabled by default" interrupts is to do this:

	irq_set_status_flags(rtc->irq, IRQ_NOAUTOEN);

before calling devm_request_irq(). See here for an example:

	http://patchwork.ozlabs.org/patch/1217944/

Thierry

--veXX9dWIonWZEC6h
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4TMqgACgkQ3SOs138+
s6GNwg//eoYbBqRW7zBR5KGrZcKbRD3VPCZru7iK4ARTdjfc4up0xfWPooDjX0ns
a/jL8FztSb++YHsLIWsH3B4/IguatB0jQrajT6Dduco7gPifJuJz6S2IyTufgba7
FzAgJQX4sFkqa7fIpZhJASjSpyMg9907eSXM/FEKqjcmE8w3/xHKrpFV/uGWDOC0
9r2fAX7432kmmKaiIPWlMLo/CjSvuaOb1GHHkxBZmh+pV7zvCfyw3o8h3+6sdyJB
MSGuG17DCT9/MgBfSEQCO4ZqKbB8LcnsIgOyDsEp9h6iKPjdLvOV5aiGbn5I7Ett
SdOsISrYFgcl6jVIhz+osfOmadoBWpJAYvRMVJH1BKQ0RqKRXtMk6lC95k96WdNm
iw1tUajyBQzSdPN02Uu+IamwacrYv1VP/35HHF5E0qWpE/HcUOAVp0ASPaG9WlI5
OlIBc6Ysh7G4de/bberj5eZ012GtEVdE+uetC+G4Mx3BDhhIjHNOYFGGbkQb5dRB
yQTA792ZrYow2jYkz9WbnB5MXtYrZDAwA0J1lSSsNqUfq16X1jq31mmCmS7jlOS2
HZr3LkEaKLcqqWQXMke1MA4xLB0RcOJd2jFFPUYztBZKRbZ+/sFnquP1qk5rtAnt
jUgJNeQ15mLQE2GwhmUQbUSLI3PCVr6FBfWY8XsndLkfAZU4jWw=
=JFHB
-----END PGP SIGNATURE-----

--veXX9dWIonWZEC6h--


--===============1255278639510142692==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1255278639510142692==--

