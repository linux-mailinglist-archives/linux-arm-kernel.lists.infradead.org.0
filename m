Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67254CC7A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 13:02:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=flPIOG2xd4gJ1pvSakVinUkFArXCL6vPs/FhSpSRwyQ=; b=eCIyCdkEscLUbbjGKWVrCj0+D
	/rzIg9/jDR9SRlhUXhQARfQqqSRmzSVJDbusmu+M5Uyvla5iSHCOxSxf5fADKkCklCgmkOrfTLZSc
	Ri3GknLzltuUIXPQhZuMgrrIxbloBZOlfRPxFfpwGSO1zO5wuXQnkkX57eKYnB0AdhxJjdjwidcQ+
	OldT116MbCr/uwrUDDE+cUiZy+pREm6nBUORdtDPmAUAR1VbG9ruZbY3EdXkMNlcf71At/4SrQuEt
	dy05y4r1NzLdzG/kWnzDW9N2elMsAOMtfy+eMOMt626uR5I2erebALkG0YBww4d3Na9ve2PX1IwWl
	lKN4esRZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdupN-0002Ae-DG; Thu, 20 Jun 2019 11:02:01 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdup7-00029x-Mt
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 11:01:47 +0000
Received: by mail-wm1-x343.google.com with SMTP id 207so2632651wma.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 04:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=IF1UrzkwmllV6FGnyrzvVneNFAPUj7twgof+cG/GUpc=;
 b=JD+NNQgW19oNRgSd06HC2uGvQaFBvrgQWSYwgHBKr2S+ufx9hPwHzpDMDfLBbW7hsn
 cLD5QhMs+C5t15puHlS0opsPJRgBlCMJ7Hmyubc5EVWjc9uW8k2iVp3J54aMAO4nR0jN
 uBcYsH+rap54RR+4JqGAl9QkfOTHvtmKQLoKRtqVd35dQiulpfyAi1VjEB6swbgGlvsd
 CzRyw/WTeBfQvnkufg2C8wMV0bhO13fsZITOeO1W2jqPnDv3w8a7glpcD6glYjgBiJ0p
 NCxH7XcY61mHCrQlx+kePNlXVw3jQtyyEL4qeB5vi6RE36iQKyR1BXjoqA3Lmj2ZQLIo
 PfLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IF1UrzkwmllV6FGnyrzvVneNFAPUj7twgof+cG/GUpc=;
 b=esHEiHOH1iSWZbprGKY7ASh4KqNdnPk0bpAo0VrBvuiiTzh6aY8VDsoeKr2jQ8vneD
 KqXEOkgtqSBmlSXsEj//YChJHZ+T5bOeZB6/kgR4Mo67DLaDIh9DHFXJ2Eh/zymBIa53
 FXjVDFAs84QwUcICRFMzMlBjKb6mxn21Ky2r2WJMggnxYMxPcTkkWiDh8n5ih6unHHDI
 d95WI0d/UBfOx2c/tW9HlAHn5R+ZG2onmwwB2WACID9ca54+ZHFvXVbfRMzeQ8w7KOj3
 SuAHUWULDz/ax97nN39EXI+P/6XckZh1br+ufAZn9LWOLctcPLKrEib1KSM0G2Vwv0AJ
 YcHw==
X-Gm-Message-State: APjAAAX4CV8/G4ruCh6oF+uVjfM8OC5gSvRZit1sMEIxpujtfq6lvG0y
 GWo9/j88336juWpHVsjvq/3cPgX8JYI=
X-Google-Smtp-Source: APXvYqwNWQMemI2u6x6OPYvPpZUAnjFUhDWBD6VyDhpD1JiXbXPDS5UK7eBLywUJkgssbzISohn3eA==
X-Received: by 2002:a7b:cbcb:: with SMTP id n11mr2365032wmi.146.1561028503945; 
 Thu, 20 Jun 2019 04:01:43 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id y133sm6010161wmg.5.2019.06.20.04.01.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 20 Jun 2019 04:01:43 -0700 (PDT)
Date: Thu, 20 Jun 2019 13:01:41 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V10 12/15] arm64: tegra: Enable PCIe slots in P2972-0000
 board
Message-ID: <20190620110141.GB15892@ulmo>
References: <20190612095339.20118-1-vidyas@nvidia.com>
 <20190612095339.20118-13-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190612095339.20118-13-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_040145_796938_9FEE2389 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 kthota@nvidia.com, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 bhelgaas@google.com, digetx@gmail.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============5565069025433726594=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5565069025433726594==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="TRYliJ5NKNqkz5bu"
Content-Disposition: inline


--TRYliJ5NKNqkz5bu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Jun 12, 2019 at 03:23:36PM +0530, Vidya Sagar wrote:
> Enable PCIe controller nodes to enable respective PCIe slots on
> P2972-0000 board. Following is the ownership of slots by different
> PCIe controllers.
> Controller-0 : M.2 Key-M slot
> Controller-1 : On-board Marvell eSATA controller
> Controller-3 : M.2 Key-E slot
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v9]:
> * None
>=20
> Changes since [v8]:
> * None
>=20
> Changes since [v7]:
> * None
>=20
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * Arranged PCIe nodes in the order of their addresses
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * None
>=20
> Changes since [v2]:
> * Changed P2U label names to reflect new format that includes 'hsio'/'nvh=
s'
>   strings to reflect UPHY brick they belong to
>=20
> Changes since [v1]:
> * Dropped 'pcie-' from phy-names property strings
>=20
>  .../arm64/boot/dts/nvidia/tegra194-p2888.dtsi |  2 +-
>  .../boot/dts/nvidia/tegra194-p2972-0000.dts   | 41 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 1 deletion(-)

Applied to for-5.3/arm64/dt, thanks.

Thierry

> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/=
boot/dts/nvidia/tegra194-p2888.dtsi
> index 9f5810765efc..62e07e1197cc 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi
> @@ -191,7 +191,7 @@
>  						regulator-boot-on;
>  					};
> =20
> -					sd3 {
> +					vdd_1v8ao: sd3 {
>  						regulator-name =3D "VDD_1V8AO";
>  						regulator-min-microvolt =3D <1800000>;
>  						regulator-max-microvolt =3D <1800000>;
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/ar=
m64/boot/dts/nvidia/tegra194-p2972-0000.dts
> index 6e6df650a4b0..eb79663b2af8 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> @@ -167,4 +167,45 @@
>  			};
>  		};
>  	};
> +
> +	pcie@14100000 {
> +		status =3D "okay";
> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		phys =3D <&p2u_hsio_0>;
> +		phy-names =3D "p2u-0";
> +	};
> +
> +	pcie@14140000 {
> +		status =3D "okay";
> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		phys =3D <&p2u_hsio_7>;
> +		phy-names =3D "p2u-0";
> +	};
> +
> +	pcie@14180000 {
> +		status =3D "okay";
> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		phys =3D <&p2u_hsio_2>, <&p2u_hsio_3>, <&p2u_hsio_4>,
> +		       <&p2u_hsio_5>;
> +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3";
> +	};
> +
> +	pcie@141a0000 {
> +		status =3D "disabled";
> +
> +		vddio-pex-ctl-supply =3D <&vdd_1v8ao>;
> +
> +		phys =3D <&p2u_nvhs_0>, <&p2u_nvhs_1>, <&p2u_nvhs_2>,
> +		       <&p2u_nvhs_3>, <&p2u_nvhs_4>, <&p2u_nvhs_5>,
> +		       <&p2u_nvhs_6>, <&p2u_nvhs_7>;
> +
> +		phy-names =3D "p2u-0", "p2u-1", "p2u-2", "p2u-3", "p2u-4",
> +			    "p2u-5", "p2u-6", "p2u-7";
> +	};
>  };
> --=20
> 2.17.1
>=20

--TRYliJ5NKNqkz5bu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl0LZ5UACgkQ3SOs138+
s6E0OxAAqHtlSQS8hK55p9RUs8cm+q25f/x4sLncet4I7dGg+1mwumU92ACOOAo5
phKrW0oi/ZaR2KpU9T9edmuaWP3dDjXIvUBjJ+vIQTBvA5FzB8xOO+LGcvgj6Sj8
W/9pozwzVswEtxv/EolG7HIqNV4rbb8yKzIagqXc8pQBElS8NPJkUEz+VSj6+1b+
9QqFl/bqp+iQzdLvCCMKcIUKISJM4JVnqLQ3dgeJuRajAqVm7UzQOtg7Yhm3hGML
QEU48F8vmeutUyu6wziMkOX+EBGBx9ogiTi5J+IwZHnsVN8kn9aMAKmZyoZW0aOa
WQI4sy/6WWnKqisRNc6H+gepjdw0MG+ToJKjDFNfMld+8CRrqm9YlwpTVgRx6MT7
MPY2CJ7mUQzj/+tUrq7WueQOLI+kmqpB2PNeWe2pPDFCyE0tZgW99S8C7YKMF3Zp
n77aTAOXTAWvbB78nakTik4DQmzuETZl2XEoqHDYVJ7WBzjXH2t1nFaU2+9Yx6kI
EIiWYuSyR3NFzBuK368HQlJ3hyAmR0dvKapobzGz4zZrW+rAFT6INeQet+Snolhm
IQ6shdCKCkD8p90VrV8UOowNJSo7df5mr6LdGv/zWhEU0YnqhI6cv0XtYs1yUh/1
ZNbJfLMebxvjqwmB4n7pCnpt1otenWTcKgEfw0fxDiD2hJK51vw=
=sH4H
-----END PGP SIGNATURE-----

--TRYliJ5NKNqkz5bu--


--===============5565069025433726594==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5565069025433726594==--

