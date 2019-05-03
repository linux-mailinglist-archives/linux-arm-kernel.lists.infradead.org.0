Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 918EB12C54
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:26:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vt4yxsjug/omIFJc90exFeFVTbSkX02IIxhI+d8WXUs=; b=UwENj2gQmpY2DAg1HOyhW+v3/
	fyogAwzm/PpcDUPPbPnWJCgmjbIybccfbm5J88d5+0u9urDb83kD9B6rqflxMTUHAbfcAPWIyR6pX
	wWVOUVk8kp8x3URsOX7PGe0XILr3PVj2IBRmXZ54NMdEvS9fxX1TUksLctTRs5o7rdAt/ZrQZtOny
	HscebCWa0pc6aECukclGAzhR7ZSbl0vOPK41VA3QvDibgUfgh8tgVDRF47TOONnLtfCTsBQqzlAf5
	ahAmvEnsfJlxJXs9sqQm0CqfGHrs3k6kxfcSs2GvqpdPAqy+qBFJy1y4AqF4cI2HPtV93nkPU88Og
	3vpglz9ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWL1-0000Tq-Vu; Fri, 03 May 2019 11:26:47 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWKv-0000TM-Cv
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:26:42 +0000
Received: by mail-wr1-x442.google.com with SMTP id k16so7428993wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 04:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=j9Bj+Dr7WyGv/rMCkmt5BFQpG8uQuF0RuguMoXtRvS0=;
 b=KhcmV8O0dVPoB8tdfI0z+kSjdn0vdYUoQOtCSIuzIFMc9Aa4HDUEnrmw8ciYUvNEJy
 cvtUtn9J7f0xcQIm9oTTSb1CPbKpiYTi63Up+RBnqOLRJEy3mB75iZM3JjDoGR8dg2in
 MMdZCcNPKdneA1jqG0wBS25E0In2g/NgyNJcxSAzkGzuQF/bnPJ9sYywS8i0ErLThyoP
 q8Z9/bTw4J4LJDR1aGodbcw9SXlS+YrsYzComoXB45V24RjcJN6pzGoMIUd3Kf/g0kFo
 JBhZoShu8+BzKxJtAFo+zvIyY5YFvWbaE2SwEA+I/0YifEKenih8ayBtbD5eUv1s6Eoo
 Mmuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=j9Bj+Dr7WyGv/rMCkmt5BFQpG8uQuF0RuguMoXtRvS0=;
 b=dh5tNLAHfI3gSbplILvmpRh64Xw3Ap+kGQAIE0VvxMX+QJBYcu8p/Kadu6waJR6ORQ
 2rXe8v8YxyM6TCgizSp8KbJG45vtjVqnZZME5IB3F5cVwdXwakO7vSFYqxLqk7tAQCRw
 zii4NCfi7P85ASHzQoTsX1XTmSmybtwI9KBC6hodd8M3y5ImusEQE9glfu2pbmb7JmgS
 IInVLSe4g3wOzkIvAVedxUU8nj7Eh/sZHEsA0gjleJK9bshqHmY8OkaMZRQ6h3sy5zbW
 lmITpdkwrVLBHFjUGrOVwpkIdIoNQa0VlCZlp8OXzsRt1Bnc2kf3mLtQzwxhJ2k407zd
 LACw==
X-Gm-Message-State: APjAAAWqpXCpbKGi72hhSPuAmSRgEbPed8EqFLxjVT++XkzAOrxCVDwo
 jtBbQjXwS6BOJ0bW2Hie1GQ=
X-Google-Smtp-Source: APXvYqw2hvhDgJ3VCDJcQcuW3ahQwR7R2Mg91+rWb9Y8oVcliDb9EpMX8XcPO53tP0nhm0GQTpf37g==
X-Received: by 2002:adf:e9cb:: with SMTP id l11mr6376382wrn.114.1556882799909; 
 Fri, 03 May 2019 04:26:39 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id t27sm4332288wrb.27.2019.05.03.04.26.38
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 04:26:39 -0700 (PDT)
Date: Fri, 3 May 2019 13:26:37 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V5 12/16] arm64: tegra: Add P2U and PCIe controller nodes
 to Tegra194 DT
Message-ID: <20190503112637.GF32400@ulmo>
References: <20190424052004.6270-1-vidyas@nvidia.com>
 <20190424052004.6270-13-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190424052004.6270-13-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_042641_461221_8328E1C2 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Content-Type: multipart/mixed; boundary="===============7435059741593917560=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7435059741593917560==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="jkO+KyKz7TfD21mV"
Content-Disposition: inline


--jkO+KyKz7TfD21mV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 24, 2019 at 10:50:00AM +0530, Vidya Sagar wrote:
> Add P2U (PIPE to UPHY) and PCIe controller nodes to device tree.
> The Tegra194 SoC contains six PCIe controllers and twenty P2U instances
> grouped into two different PHY bricks namely High-Speed IO (HSIO-12 P2Us)
> and NVIDIA High Speed (NVHS-8 P2Us) respectively.
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
> * Included 'hsio' or 'nvhs' in P2U node's label names to reflect which br=
ick
>   they belong to
> * Removed leading zeros in unit address
>=20
> Changes since [v1]:
> * Flattened all P2U nodes by removing 'hsio-p2u' and 'nvhs-p2u' super nod=
es
> * Changed P2U nodes compatible string from 'nvidia,tegra194-phy-p2u' to '=
nvidia,tegra194-p2u'
> * Changed reg-name from 'base' to 'ctl'
> * Updated all PCIe nodes according to the changes made to DT documentatio=
n file
>=20
>  arch/arm64/boot/dts/nvidia/tegra194.dtsi | 449 +++++++++++++++++++++++
>  1 file changed, 449 insertions(+)
>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194.dtsi b/arch/arm64/boot/d=
ts/nvidia/tegra194.dtsi
> index c77ca211fa8f..dc433b446ff5 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194.dtsi
> +++ b/arch/arm64/boot/dts/nvidia/tegra194.dtsi
[...]
> +	pcie@14180000 {
[...]
> +		ranges =3D <0x81000000 0x0 0x38100000 0x0 0x38100000 0x0 0x00100000   =
 /* downstream I/O (1MB) */
> +			  0xc2000000 0x18 0x00000000 0x18 0x00000000 0x3 0x40000000  /* prefe=
tchable memory (13GB) */
> +			  0x82000000 0x0 0x40000000 0x1B 0x40000000 0x0 0xC0000000>; /* non-p=
refetchable memory (3GB) */

Please be consistent in the capitalization of hexadecimal numbers. You
use lowercase hexdigits in one place and upprecase in others. Just stick
to one (preferably lowercase since that's already used elsewhere in this
file).

> +	};
> +
> +	pcie@14100000 {

Also, entries should be sorted by unit-address, so controller 0 above
needs to go further down.

Thierry

--jkO+KyKz7TfD21mV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzMJW0ACgkQ3SOs138+
s6E+CxAAl1IP5hPwNub+ynrfDHIlvS8wnANVpXA+TBShMg1rBrA2c7ErQwRKFKrH
nt0A/GAU1JPp+Ugy6Rvesx1f+mNpHl3ueZY9DnlY7FRjfgv39qKvFuCRAPHR2YDk
CCgNJjCBroY3+OvmMxtK0b46pB7xtAwDXVBp0DbUGibGU+6wQ5XplqmwqQONu9YU
tmMCy2vpr1PNzwgLGfhC7owYfz4vQVzJDWeSfUVbuf0uuhaYg9Lak5cfPJqEPPEF
husujx86GqI+xk4zhAN/mvoMN9OoJplO7icUXCJRrB9lHOycZOA3SZwDFZm/rRmA
q7AwE+bXW0FIX6Zel+6wAxBdpwvqc/RJmsRAe1efSh88NuTFn3AWW8Fc4K+4mOn/
royxYh3z7Z/91PmfgoF9Ku6xtpeZVmD63lDQ+LHbTgrDb2lEjZ66Wcque1mYn4pt
N6ko8YOVjwSEu0kVTk36j7Qyrk7VMTzuloelaaplcXY8iX0ClplKPTYH8+FbzXgQ
W3itYlLXLNJQpfEceRZwuqWCcerLyURykmeVOih1n8PLuK0yEK8fr8GvyGP2JMvG
hoF0m1QDdjnm1G7LvfLCBrngb6Bze4wQ+wLqn2u3ydi0m1gU5vJ0ac1oKIhMm6Si
ntXZJ7cuJbnw4M3fkL8zHz+2HPyVZ+ZmZV/1GNX6KMKocNI8A6o=
=IZEE
-----END PGP SIGNATURE-----

--jkO+KyKz7TfD21mV--


--===============7435059741593917560==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7435059741593917560==--

