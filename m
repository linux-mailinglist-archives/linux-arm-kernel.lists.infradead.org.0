Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 103B012C02
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=moDHV+ndH2Mj6Lm2hEjx1En6SA+tERgJ5+GpWXwByxg=; b=pjmBWHRsr/BWa/RieedeeD0mm
	9OBIdfVC/1LexMgZUPDsqxkicioRDg45ZFIzHs6cOL+ip2O4wva/ZbZncukBLhXd4fgdXx1i+lUMJ
	q0VGTe90Vl/mpDr6d8qkjD3HWDEts88VjFOLvtG8mIzn2550kxGBvX1/dekpJHCvi1740TUJyqYA2
	LA0SxBXuL+KW6aQrgkxuYHVi1LQzmEOMynmwsHbg1ZJxy17p4K9x6Z2ai9mvwxaR2jMjDxtvLlTKO
	2TIEMX7KUhTGyWcl6zIRg1p8k0wXD70fzUU6pFffVdTZaNwwdqhHGss01yfSHoD5wZM8mJYWLGqWD
	nUFROaOXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMW2Z-0000tM-IO; Fri, 03 May 2019 11:07:43 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMW2S-0000sk-AM
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:07:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id a9so7348145wrp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:07:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=YpAYu2aGgmHElV09nPrKKKpHaRIZFfJTu8xyr7w6FJ0=;
 b=caBhdS/8I0WX4MnHOx4k7w/1pPNo2BgsqRuKhIyi5451TY2FeTuE9X4avsaYGkO7Pz
 a6lp9CxLKUK/Np/D15pRUinhgeXHS1eI1wTV5Igoica47BnsseYsiz4EELf1x/sXyB+/
 vcznVD1pptRAQEYkF/78qb2T7ekuFgcxGDVgrjtV85uOa99WDnAQ2/G0VLNpvR732Kx0
 Kh0Oprx11ReIMvFT7iNeBA0dwD1PSy6ffKV2U7/L0XXFGq0ZG/l/lOvK1CuK1F/r+jX+
 Y1NUdNk3ozGc/AtqN1MO51lgZQfqrI/b4vBwnesiFmjwxPd8aWciWvg+NQGMtyrF61Xt
 DaTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=YpAYu2aGgmHElV09nPrKKKpHaRIZFfJTu8xyr7w6FJ0=;
 b=mqzEhvnOmiQSNuJjapUrtgu9FC51Z4wUlmNpbnKydeti4EO7G4RufdmrreMYh8fmdx
 IBsOFvsYyhaxJDB119/qnl/AzYEgeCsrtHIKbPMBcJIlHsEeHythoxMwDRQ7zVz1UUxA
 t7vDOD4ClJ/0YV9eV6uB9fAmFiqICz1y72ioLq8YHOhuDzekOHpZgUYg1vzX8doGYlab
 d8tKEDVStiEK50Xg2c7pb3hrqKxZ7f/c2yKD+kGRqjGtM19gDEvza5U+8wC0ssTxzs1h
 g37VHV9/zb3tIRWThqwWT2gQtQdqN8vMvYKCJ8LMnAU3urBSlCsb4E8zoaXwFjDnCRxJ
 PYTQ==
X-Gm-Message-State: APjAAAXSgiT2FmsEHEns8qfoaJDZF9S3Xr1A0sE2C/uGA+EqHkh1KGsF
 BKpuRDoNyw0mGsIqwJmc65s=
X-Google-Smtp-Source: APXvYqzjiQa8Q7+aDDyQPZIshcqUe8xFgkRxo6KKN6IKWW0PaiXZLSdZpkK0irkKsMNSsQieQ0Zlsg==
X-Received: by 2002:a5d:6341:: with SMTP id b1mr6600866wrw.28.1556881654652;
 Fri, 03 May 2019 04:07:34 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id j190sm2404085wmb.19.2019.05.03.04.07.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 04:07:33 -0700 (PDT)
Date: Fri, 3 May 2019 13:07:32 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 03/16] PCI: Export pcie_bus_config symbol
Message-ID: <20190503110732.GC32400@ulmo>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-4-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190424052004.6270-4-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_040736_385010_FC9B6EB9 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Content-Type: multipart/mixed; boundary="===============1289226113309427538=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1289226113309427538==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="R+My9LyyhiUvIEro"
Content-Disposition: inline


--R+My9LyyhiUvIEro
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 10:49:51AM +0530, Vidya Sagar wrote:
> Export pcie_bus_config to enable host controller drivers setting it to a
> specific configuration be able to build as loadable modules
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * None
>=20
> Changes since [v1]:
> * This is a new patch in v2 series
>=20
>  drivers/pci/pci.c | 1 +
>  1 file changed, 1 insertion(+)

It doesn't look to me like this is something that host controller
drivers are supposed to change. This is set via the pci kernel command-
line parameter, meaning it's a way of tuning the system configuration.
Drivers should not be allowed to override this after the fact.

Why do we need to set this?

Thierry

> diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
> index f5ff01dc4b13..731f78508601 100644
> --- a/drivers/pci/pci.c
> +++ b/drivers/pci/pci.c
> @@ -94,6 +94,7 @@ unsigned long pci_hotplug_mem_size =3D DEFAULT_HOTPLUG_=
MEM_SIZE;
>  unsigned long pci_hotplug_bus_size =3D DEFAULT_HOTPLUG_BUS_SIZE;
> =20
>  enum pcie_bus_config_types pcie_bus_config =3D PCIE_BUS_DEFAULT;
> +EXPORT_SYMBOL_GPL(pcie_bus_config);
> =20
>  /*
>   * The default CLS is used if arch didn't set CLS explicitly and not
> --=20
> 2.17.1
>=20

--R+My9LyyhiUvIEro
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMIPQACgkQ3SOs138+
s6GSnA/9HdsbQNxtdYHMx36I9O7XPCiJpWTqbqCG5v80y6wwm85gZ7gKZ3tnpqoG
AVff+CvhQQwIIW7t5OxkdDNvNz/65YPCYRngILQIIgQbXppF/tMu3YMQVPWGNY6R
LuV8/SkicRqGoyYvEhNY8oxObL191X964tV6roAy2zaPCk4FuNCqJPlRPpu7fXlG
u9H5zlpi/gVtvZNyJyOJLb/zG9cXIaO4lJCN43thTSD/vVCtytgvQRNWHWT9r7lR
wqy5o69fRtUXowCRNjlVR/nYJfguU1Eh+9YVr8l0Hen9XgKyNv6ebrzWSeZx76nS
xTj3bgbOrGm4yWM4EbQZNiGzM1d1+Ggz08osM7n6dqymSMP1zjAHAvb/S+7AulfC
J2b9VwKf/VnRzdU5fkbQEHtPsoOAwA7t70z5qwukraNLVgE7BO0R4A+Wca1kRRJ+
2NMhLmTFJJoR42ZI80UGH6KjixdU7p8cAup1ftb6YqxAWxIthSjb+xhka9s0cPV0
/XcAjoNMXXV9LRk/VoiuNhPMNs17u19NwVZ4O4f/l6qiSvI4BsjMs5B/70UXJgET
aAw4RI207uObGTDCKFKEXNVKf3WPwjiCRBv8X06OfKReDdnPobVETv4boTZFfreZ
WNKJYDqWndqUkSMR46sxPEUnfXNr+he7XCyzGLhOs3lAxGEsdPE=
=F/Ew
-----END PGP SIGNATURE-----

--R+My9LyyhiUvIEro--


--===============1289226113309427538==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1289226113309427538==--

