Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E24E24D53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 12:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=s7Hw7cNxh5UVqKU+0bWLCC7ZAgFpkOieJWPgf0sIeWw=; b=tf28xWgL01SG9J0f+3BzjQIhJ
	PW/uY6SQlysXpzoVexoY7sEvixOefApw/Fsjavwf28PHLJF0XY65aTpRbg4Lj51HY6yaGMq5De8O6
	xhkdqeajqCtwUhwW4PQeypwVwBWz6ZRKaMiEdcDrC8jstysjSoL44URE+waPpkn2f00P6e+WT5qQQ
	qUkHXn10hUSXfo6pgLmsvg9S4cUxu3EJnl9aj/PD+9aLqWPQXJ0MdaJi1zl5XzOFZgw4g6Ejzllff
	EqtyYBFCNHp7j/uczXlINTOxw1QUb0Cx+cCP16qOq3yAr3+PirGmQqF7Ah+bueeYrOcURS4wwUwWT
	D8x5UAsgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2QJ-0001Xe-7M; Tue, 21 May 2019 10:55:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Q6-0001Um-EB
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 10:55:00 +0000
Received: by mail-wm1-x342.google.com with SMTP id x64so2479307wmb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 03:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=17nYfbdzzIwCOeEA+32Sv30sZvfqih6k6/KJfQXHU0U=;
 b=ZeCYc5/F8knOo4+9a9x6Xq+QFpVOaFI3oIhMnprKcgXcpS0kD1HJciICKcvMlghVW0
 XfCl+74pJ6lL6G113gPktUgcftO4/FlnnjbiPOLrTZDSKGg5HHEUWd+4Cb+9Cd+ADIt/
 xpvfN1/LZjXz5OwL5kj7NUy58RxlnTo7kTgJPRKNy0E2Ue4hxsX9YDXcxe1kYVglKBEo
 dmUC+Oeiw5Img+KeBRlGuX8erP29OpjFE7kWGMG89WJR2wRKoLjIbWEkNXiEY2sp8Pbh
 CvguTnOhYmiwt65ikaarYkabr/g4bzFtFYHlcbCRamQ1gHzQv4pp3EEo4bznfCNvDJT0
 kVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=17nYfbdzzIwCOeEA+32Sv30sZvfqih6k6/KJfQXHU0U=;
 b=X4gWDH6VkjN2zdQ0rf8WCFZepCgFleX2mLN25SeA0kuYz3pscjTHyIdz53rTb9EwdS
 +WZJiDGzH4P2Cg5IF46JhkylrooT1QU4xjY0DmwkgVWcDEEOZgsdriBMRm9XshDvjz+a
 9gH4gf2XJzQW0fCjwk5jDfJqEKmqpAGkPj0YfBz3oaRTCzWmdROjkgzrHQvw6Kf/68JA
 /0RO119D6Pl2uqyiBDZfp1+Xl7cWuzD7OxuIkmBhKPPOYhUfyG0RkVGfucr0xqUEX2zH
 DJyiWWDw0ed/BPwoW2MfTUyRpfVt2ehdk+AyIFSu5JeSzxkKVdIgm8QL/f8txYVcALHF
 OSLw==
X-Gm-Message-State: APjAAAWfZXRVvdjlGdiyVFdcu/7vKTtq/UKViUBlN75ObHgris+nnmFR
 rR1cQKoHNtldBuPVHAVQwto=
X-Google-Smtp-Source: APXvYqz60C1gN4ScjH6m6U5kFd88ETnN9gWQBtpWy+PHfqfM7Bq7SOcnQmw1+nRlZkREwZl5nQ9N7w==
X-Received: by 2002:a1c:65c3:: with SMTP id z186mr2831904wmb.93.1558436096773; 
 Tue, 21 May 2019 03:54:56 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id k8sm7245236wrp.74.2019.05.21.03.54.55
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 03:54:56 -0700 (PDT)
Date: Tue, 21 May 2019 12:54:55 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 12/15] arm64: tegra: Enable PCIe slots in P2972-0000
 board
Message-ID: <20190521105455.GK29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-13-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-13-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_035458_481837_40BCAAC3 
X-CRM114-Status: GOOD (  16.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Content-Type: multipart/mixed; boundary="===============5723479081408525477=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5723479081408525477==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ibq+fG+Ci5ONsaof"
Content-Disposition: inline


--ibq+fG+Ci5ONsaof
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:43PM +0530, Vidya Sagar wrote:
> Enable PCIe controller nodes to enable respective PCIe slots on
> P2972-0000 board. Following is the ownership of slots by different
> PCIe controllers.
> Controller-0 : M.2 Key-M slot
> Controller-1 : On-board Marvell eSATA controller
> Controller-3 : M.2 Key-E slot
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
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
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2888.dtsi b/arch/arm64/=
boot/dts/nvidia/tegra194-p2888.dtsi
> index 0fd5bd29fbf9..30a83d4c5b69 100644
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
> index 73801b48d1d8..a22704e76a84 100644
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

This last controller is disabled by default. Why do we need to include
all of this if it's not going to be used anyway?

Thierry

--ibq+fG+Ci5ONsaof
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj2P8ACgkQ3SOs138+
s6EDeA/9EVyT1aT46kUCfatlTu/Dz99vr8HzGHDju/DqmmIWFuXT6U/7e/iziS8m
LcoCBu23buFnDYZe9UBTKkKtTUSOipOpE+TW0MR/h3Rk0E7sB29RljYCoooRJbrZ
cRBl1HbLt4NueaYck621spKCghRw84gPRDOtCEIP1ET/kpkDCRYBtuoMhOufrqgQ
8Zddc+5YzhNC7dYdV+DLi6WvKjmi12Tz3HNFgwxIXSgfEieCnzwms63qZLULA2tf
dvwCNKS9w8x6EsOmu8iXxfYv9gr823Yge1pCJTKW+LxTaACRSzKMiGAotDMqCxWG
VIb39bG+wsiSLb8PjKT3X34wW6VPtsAWCCxeXJ8EsZuT3YGVskswBQ/tLyDvpooJ
ni/zobjMTFqJl9ePCgEauo+Zhdf665JwZO6vkRql7+ZFquFBHVwY8IOag0qM/kx5
pv4Q8Ov3GQr/QYPfn+CtvYJ1Iq61NJBhNC6zQwxw8DonLLt1OL64gGpF32x2155I
Toi6a3SAnJVYe1rJirldNME8Xb3HbyBhItj5GVMkf+jMxrsxs3GL9nzNfLi4gmDT
EXleRiiWixks2F/DATusE28tPhE9j+Fo9ZUXyLZ9rJiCuvqcZKGgtnboipXrn0+o
bRdy6xLv9PhLEkwYzxqnn9odSa3LHH40b39t+xOgdr9Yw8QZ0ZM=
=xv9D
-----END PGP SIGNATURE-----

--ibq+fG+Ci5ONsaof--


--===============5723479081408525477==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5723479081408525477==--

