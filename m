Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D210012C5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PYpdVzACmVzBmmhaaGOL9TPyyYZsmo2Wo8IiYdklw8E=; b=ZjBa3x2mTkNDLf3EHRhIDWLCB
	xxoQJS0arU8TJssHZDSUCC++lPy14NB/bpLyVw5n3FPaFd785VxY1TNVg4FeN6OkoAllcDA8SG9Sb
	skoYjK8AQ1hetxcusah7uOaxDO3cQax1aht0l1YHRBWx6UZYFSwjR9s9Ppl9kQ2hAcc6tj2wkrYJL
	RSXjyUcznLoDkS8A4kEc2zDgNAwKYKrsIlVxNHJPjYWdOS/Ne94tU2ISUbEL1eTCEGVPL+Lz2b5I4
	VTlruEny+6LuOpLvYWv3pGfMkELMXYSx7KoTPSkKfTrl7TEgOyzN75G1DvId3/XgxZVgdKfhlQf+o
	lyZmoBlkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWME-0000xs-Sz; Fri, 03 May 2019 11:28:02 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWM6-0000wH-Cj
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:27:55 +0000
Received: by mail-wm1-x341.google.com with SMTP id q15so6684386wmf.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+STCk8lkhn2EMGrmWWOJnwKAHaye6MrOKuwobW7Ffyw=;
 b=Hn0+ae2RVQUkEg8KJ9vqDa6wvcfoucf5Bkh5dCex2giBknGyExKhLscPZNBMctQyiS
 vj6IW8k8OlAIBqGtXyRbl65EWeEvHqIoP5rp6wiPXbc2r6QRxJq85R8u/Igdl5HMqlZQ
 cAq8UTqF/s9oxgnxWWu1SgPGbVqjEdGMOvfrkyqVArd+HmG3iB29yeXCBMLZrzB7otxl
 Dnm4kKrJAT1OQ9wFZqxhdfTHbkjWXCbo3SAPF5zuUx4Xf9Z6lwuAbv7Ja1FZIytgyUrt
 fohOb8XJFrdeTs+ExhyQaLW+fkXkmexL/lbI88wn3lgeN67vP85wx/bhtPT2rDUiQ8zw
 3zMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+STCk8lkhn2EMGrmWWOJnwKAHaye6MrOKuwobW7Ffyw=;
 b=QrSdrOKZwpxs58rgyu1V7W9WxUbGzcAKkqhMF6+migDb9Rxr23RzHkG/wB66OXucw/
 dRSkkWVeR8txg1b/cLo9EzCF3j5zG2cH1fwEyyek9pSYPd1n9FxmUsK1nR/JcDKQt7DK
 b1fjU8vJbjI7R9N4aZ/dHzsm9a49seH7gaTUp+nslG8Y87ZcDndCPNEkO8k1z/H1Saq8
 p1YEHE97pzi2a/WrwO5yJOyEe16Ej7Ufs8eD3nbDAY+9SbOrkgQzRAbHuKpqqrlNsWZx
 5R9qD7C6MIc/MUgM7FENvZegk4UdNoFFaSQTv0EXB0C1iVDKUPRMfVRxeVfeGvL2zcL7
 9/hw==
X-Gm-Message-State: APjAAAVHEir/ieHH7bQy5i5y7d7v8cl3ODsNRCCsEQkJlpxQkV1ZE3d9
 3LViIWCB16H7rmQMuCnx5N8=
X-Google-Smtp-Source: APXvYqwQrxKNaLICLGkYq38/wgnqvaPrZNOSheS067NT8/BmmHPNXUeg9NSyFiuVMn7NIkQ0UQJzGg==
X-Received: by 2002:a7b:c053:: with SMTP id u19mr5695704wmc.63.1556882873012; 
 Fri, 03 May 2019 04:27:53 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id d29sm1413751wrb.61.2019.05.03.04.27.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 04:27:52 -0700 (PDT)
Date: Fri, 3 May 2019 13:27:51 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 13/16] arm64: tegra: Enable PCIe slots in P2972-0000
 board
Message-ID: <20190503112751.GG32400@ulmo>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-14-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190424052004.6270-14-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_042754_431887_59F8B401 
X-CRM114-Status: GOOD (  14.74  )
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
Content-Type: multipart/mixed; boundary="===============0143239425727969910=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0143239425727969910==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jt0yj30bxbg11sci"
Content-Disposition: inline


--jt0yj30bxbg11sci
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 10:50:01AM +0530, Vidya Sagar wrote:
> Enable PCIe controller nodes to enable respective PCIe slots on
> P2972-0000 board. Following is the ownership of slots by different
> PCIe controllers.
> Controller-0 : M.2 Key-M slot
> Controller-1 : On-board Marvell eSATA controller
> Controller-3 : M.2 Key-E slot
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
> index b62e96945846..7411c64e24a6 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> @@ -169,4 +169,45 @@
>  			};
>  		};
>  	};
> +
> +	pcie@14180000 {
[...]
> +	pcie@14100000 {
[...]

Again, these should be sorted by unit-address.

Thierry

--jt0yj30bxbg11sci
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMJbcACgkQ3SOs138+
s6HqvA/+M9cG4kk4zwslByULuSa3GW5lU3VrIoR10dZx2JrclNuFl6eQDq7V4k+j
deUegnpbG0goInypfsnJjE1+hIea6yuNBfNdJjSlZFh5rQHkUMTQjn3S+N50UHEL
otKt7xqpY963RRujKLQg+E+SUNi9unfKWy3hK2UhaZHVO77bP7hcsV7ViukhPwD3
mPKyhbC5JEFjj4rPCGbLYfc2JhE0Gn7/f6Y9AZtIjIOm6MWSJwQyfcPMRkhlnnxn
J++oHYUprmbOtJ91v8Wm3RFj19UmDDgac2cqxivu+p4JlH3FgJc7LRZsBr46OQcm
hBwpLOQWcyDYx9hHOBbZZl7XuYb1wQQMhQMZzKapkcgNnRGKnN/Yhbm+Ac4ekopZ
UKN/v4MEmHM9DpTgzVG+A3i6iTIvLJsQt3/vwgTfO65FwYUo8wUigUQJIPiSvtOJ
OGtM18DBINzIJVGuPzcAMLiVNJb1p1mECu7fyS+/tgHT2xS55D3Q5QIpFiqvhqAG
Vd81Jim/e2dBO0kJ17wSWbSM77AN0ETMkngiB7Jc3A98R5bNVQvwtGBq0xfRE1Yp
R8KHqW7TP2/Iin6yJywqg6OyK7SBMlP+Mh1pU6rfz94JQ1CKCl6w/9zG0/tzMapP
SQckzgvfGXJrSbBq7K/RQKbNdrC5f9cNKoPCXaqwze6sx5qw7L8=
=/a8a
-----END PGP SIGNATURE-----

--jt0yj30bxbg11sci--


--===============0143239425727969910==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0143239425727969910==--

