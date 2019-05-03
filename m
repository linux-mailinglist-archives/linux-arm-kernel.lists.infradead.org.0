Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1E212BF3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NjfxKKWvIFA3zteLOB9U22ioGGwD/l8RQXf9mPIaow4=; b=kC0FxYOhm5ZlLJsDtIeCBFfJ8
	aFd94vZWYubV/lCVoE4Eqe4HDMog6tYuNPWI2HKrhgu9I+/8MZVrMQ9OVyZph7YruEwTm+iI3uNmW
	6WjUq+RCzc9n7J8Agmi1OC3AU6cmD/XAwTdRfeJhnfKR7/wzl5Kqes/98FIpwdZrKMZyVXPQ0hjfW
	nfBWfGqls0RxXaFcCjewSXYvQrZst8PHiad7R+eH663XAD1p1LLPdZMcU0R+0tQFd6db65UEgJi7m
	O8QdvqhPGjkazQMz61KweH2SmSdJy6L7c4AxoJwzj6SFh31718vy5aMGWgPFRh0T6h5ARtc1neFPj
	iaeQxQnHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMVxC-00077P-ER; Fri, 03 May 2019 11:02:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMVx4-00076r-SF
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:02:04 +0000
Received: by mail-wr1-x441.google.com with SMTP id a9so7326208wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:02:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nGfgCQXG08efjjx2XWvqXdQV7y9Ll65hvnLfZn3O1ag=;
 b=bgWOxyzuPG//QO2JUiLSKloKw++xzOzO4bBxyiHmHbyJIK1PggjN3UQ+TaymK810Pu
 Ancw4z6IABPZColxV3nbSsFbOyh5GLhSpSSw3CcxpiFmLREAr0XkGyTwp2aZgpSXUISA
 zfX9l/hrJ76Yfj8mqDKmpiKkuCkPyBGZ+HwABA/fWnKh1fjMML4dburNQSZqC/HrmEnI
 nMxegD0LT1/WjgLYeT64jzkKSvOGBSwr0Ph2m7wQW57c7eQf3VpYUyuGzUnN2/NI/2V8
 jCn3gLgzIZFg1KsovV8Xb5h8ciQI159W0G/hsmnIV5aroqKatBfhcuqDIrlK1RV72dMH
 k7qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nGfgCQXG08efjjx2XWvqXdQV7y9Ll65hvnLfZn3O1ag=;
 b=EA/YmW/fejoK08tjipjaUVlVoSyL97/3sElH8XEv/n0UZKkOLH3vVsBRkw28Kp0FeS
 DNP0e53xgvrvt3il9QyVl1FhmfeDLEMzp0lXljQA32mXFslCEFrzoyiJkGs7jWm5gmtl
 b8jC1ru+TINvzbSIGwb1oSmbJMjx+a4DvoCxT+YWIUlYXellE0d1rIRpHUq4zIavR6Xm
 3/JshPOSgf9t7l2EBR3AP8NilBMqfixiVMTnXJPI39BdwLVBnTDxhqKYBEY2ctc2ugc9
 1M+oSHDGZmFoiJzW8JbI7lNBZt4EykuuBQ6RQJPP+Chs1+qFnQ9JDraObjegmEi2IQ+0
 glKg==
X-Gm-Message-State: APjAAAU0qSWZhnwLE/isjordOUxew7z4j6D4PDE/3GNCQI1FKnd6eEil
 utJV3VF081BNKeAJmFYRAV0=
X-Google-Smtp-Source: APXvYqyZrCi9BgSuSGPoKfa+sfrnKJfwljqkgF9FkpEdGOxfOe/jX4Ra5F+4c3H7nv9LPTNjKbL2ZQ==
X-Received: by 2002:a05:6000:9:: with SMTP id h9mr6692149wrx.194.1556881321143; 
 Fri, 03 May 2019 04:02:01 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id x18sm1635766wrw.14.2019.05.03.04.01.59
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 04:02:00 -0700 (PDT)
Date: Fri, 3 May 2019 13:01:59 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 02/16] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
Message-ID: <20190503110159.GB32400@ulmo>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-3-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190424052004.6270-3-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_040202_911200_CB598D06 
X-CRM114-Status: GOOD (  16.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============8674907831973918863=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8674907831973918863==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ZfOjI3PrQbgiZnxM"
Content-Disposition: inline


--ZfOjI3PrQbgiZnxM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 10:49:50AM +0530, Vidya Sagar wrote:
> Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
> using this API be able to build as loadable modules.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes from [v4]:
> * None
>=20
> Changes from [v3]:
> * None
>=20
> Changes from [v2]:
> * Exported pcie_pme_no_msi() API after making pcie_pme_msi_disabled a sta=
tic
>=20
> Changes from [v1]:
> * This is a new patch in v2 series
>=20
>  drivers/pci/pcie/pme.c     | 14 +++++++++++++-
>  drivers/pci/pcie/portdrv.h | 16 +++-------------
>  2 files changed, 16 insertions(+), 14 deletions(-)
>=20
> diff --git a/drivers/pci/pcie/pme.c b/drivers/pci/pcie/pme.c
> index 54d593d10396..d5e0ea4a62fc 100644
> --- a/drivers/pci/pcie/pme.c
> +++ b/drivers/pci/pcie/pme.c
> @@ -25,7 +25,19 @@
>   * that using MSI for PCIe PME signaling doesn't play well with PCIe PME=
-based
>   * wake-up from system sleep states.
>   */
> -bool pcie_pme_msi_disabled;
> +static bool pcie_pme_msi_disabled;
> +
> +void pcie_pme_disable_msi(void)
> +{
> +	pcie_pme_msi_disabled =3D true;
> +}
> +EXPORT_SYMBOL_GPL(pcie_pme_disable_msi);
> +
> +bool pcie_pme_no_msi(void)
> +{
> +	return pcie_pme_msi_disabled;
> +}
> +EXPORT_SYMBOL_GPL(pcie_pme_no_msi);
> =20
>  static int __init pcie_pme_setup(char *str)
>  {
> diff --git a/drivers/pci/pcie/portdrv.h b/drivers/pci/pcie/portdrv.h
> index 1d50dc58ac40..7c8c3da4bd58 100644
> --- a/drivers/pci/pcie/portdrv.h
> +++ b/drivers/pci/pcie/portdrv.h
> @@ -125,22 +125,12 @@ void pcie_port_bus_unregister(void);
>  struct pci_dev;
> =20
>  #ifdef CONFIG_PCIE_PME
> -extern bool pcie_pme_msi_disabled;
> -
> -static inline void pcie_pme_disable_msi(void)
> -{
> -	pcie_pme_msi_disabled =3D true;
> -}
> -
> -static inline bool pcie_pme_no_msi(void)
> -{
> -	return pcie_pme_msi_disabled;
> -}
> -
> +void pcie_pme_disable_msi(void);
> +bool pcie_pme_no_msi(void);
>  void pcie_pme_interrupt_enable(struct pci_dev *dev, bool enable);
>  #else /* !CONFIG_PCIE_PME */
>  static inline void pcie_pme_disable_msi(void) {}
> -static inline bool pcie_pme_no_msi(void) { return false; }
> +static inline bool pcie_pme_no_msi(void) {}

This looks wrong.

Thierry

--ZfOjI3PrQbgiZnxM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMH6YACgkQ3SOs138+
s6E4xw//dFTo8a4I8XRjFuw8mmRxoi0ZrVcgaoQ/hqpIqu/cew7PXc9XaqiB0JIK
KJjArrSz8XHoez/vrmk4CBNk5ECEAeVV6Eyrm3R99fPoBuBihH+B3QYkeMALa6hh
l2WUQRuDIYbRF71GjZlcgslAqZ8Bde19bxdwPg1T9kyOZmQrAiFq/PsRUPGscz1T
b5EVJMR+GiKQ/dceyluUz1bqp0JFpdX6Ae6IgCKrw2Z1plVvGi39Pzix1Za1Q3pY
EAlwOo6cebEhx0D7j/W/PLQM8+nQhBBAZiUWlwCOq/lsaL8Gt3r0RoLZchbX11Fp
hOmz1535bjHaUx/NT6zz2QgKvJ8tErCCooq+RUlubv6QLdOTIegaLDVpCAa4CsTv
wByyM7+oWwCvmIkWmv+nfllINKUiRFZOWASJ7aXAQh/1GGpx6wU/eaI+fbGMI/XJ
c0n031xH/GPAL5fx9BnX5M0mYBUkxTEWWvMuAwrodEtJEqc++RIs9CHGXNICSqPs
39NNzOS3tlhFDdR/KMe86vNYl8vfhjbM7m5v+8hmLwi4tOFO2KYY4KUXHNSgfnIi
tMbUOjs3ojI3E3vvLqiYYPQ1F0xLCuY1KshgaZ/V7tdqn/pzPQtYaEedA3jh7XVd
FVqPM1w7coRP7ty0PfJtfkUjOiV16jmSZdeMbzIJUqd7+9u5h74=
=+xfr
-----END PGP SIGNATURE-----

--ZfOjI3PrQbgiZnxM--


--===============8674907831973918863==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8674907831973918863==--

