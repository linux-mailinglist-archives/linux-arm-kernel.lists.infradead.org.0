Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 937EA107303
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 14:20:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=z3pz18z2hHloz2iK22AkvlBV+9ne6i9KF3X1QRUEzcY=; b=A0gsofDJ1LO9LFr2bP5uSfJM+
	GOxo3JXAw1fjAHS4mA3dpRCOs8DoRu7ecYL1KQlmbPiSr0EE5IU9OCKj5lAOUuh2QpFu6YQXmLvQq
	pVbsd0CvfCdAPtCz5j6+lc65GaGXlI2sN9QgkN4Gw2c5OlsETjRM3LdJT9MIS9iLCdBmk26eJSrjL
	eg0doI5zCq/xTK52+1a0iXpn2KzdZOziERNNFqimsdqu6JKT2ASuP3O2t6UwEds/YIYeirCpHMw57
	TKr1GJZipXHdoFvQupyeM73UcqZCnu65C5zob4g4NqoVhGD5+xj6Qx0sr7msdt291/FEMbOP9kMB6
	n7bvxs0kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY8rK-00053a-2V; Fri, 22 Nov 2019 13:20:26 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY8r6-00052a-41
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 13:20:17 +0000
Received: by mail-wr1-x443.google.com with SMTP id y11so5489255wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 22 Nov 2019 05:20:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6sg6rDS5zsmnONV3JVTno5+5UKGIXJNaE0e1hOOttVA=;
 b=LwMro+DWviHvcawXAIPhdJi5PSeHe95tuxMmk4eMaDwhHeli14vHK63rrBLaytZBX4
 gaSOx7PJ3CGfHdepQUlIq3YTfnqBQOzl+iT4n0q/aBWAeOUJpLc0clmfZ7HK/j6OK/N+
 pe/SrMQuc5TA4FWwm/mEBbHxIXRc+0H6ENtlw3uqXJw9RA8i0By7ESmIVWmxQKJixodi
 pDSUWqfK3QeRlK45U4Zzm18W1zZ1bN6spDNvo5Dihj5gbZrw9cktKqKRaUaMw7iETrJL
 nJ/K8N5R4ZvmyvqZ6GvAC9dqrOZg8uVAPAYpPEFV3HYzGjeIrzXp3uvwj8VLaDhtDiLp
 sIUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6sg6rDS5zsmnONV3JVTno5+5UKGIXJNaE0e1hOOttVA=;
 b=Oxs0tHFiS8H722Tx/+kIaE6bLNSEigo2dNgfUjHD63XJXRFA3lRGksV3NB35m0dQ1B
 QFGfQdRKgk4KGBTvMizWf64mK8tUxf9RBslMqDZJmIgtyFnzj5hQo36bneRcydtXHf2y
 xOKus5t4H8hD8GYg0HJXxK/XCLG9ggvMFD1IO3PLVG7F183cBSn+GluBjpu+RLK1p749
 mL0ckvY7W2MHHtjuVAZqUqIIGTs68mbcSP+krmt4O0hYbnU0/EU56fu8rk/koRyydzPC
 lE0l/W8S2qFEmOcrnoCdZQyA5Q6/YRb3AJ/tyQzoYvQ9sehISoZbuU1Eie6LDQK4uUnW
 XU2A==
X-Gm-Message-State: APjAAAXPPNMss4p2GkkNN5jyN44FBi+Eggtiz38UcDnDf+AJXFmBWwTc
 Z0KOpuoVMuAiz3uH294WVcc=
X-Google-Smtp-Source: APXvYqzrCqSjrtUVRHlaOa9Gk4HuJFCQ1LF9bmXEW4d7Zmwj4NkDmsR4lDd8rOe+2g7t/R+8gHhFoQ==
X-Received: by 2002:adf:dd10:: with SMTP id a16mr18371366wrm.213.1574428810111; 
 Fri, 22 Nov 2019 05:20:10 -0800 (PST)
Received: from localhost (pD9E518ED.dip0.t-ipconnect.de. [217.229.24.237])
 by smtp.gmail.com with ESMTPSA id 16sm3808746wmf.0.2019.11.22.05.20.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Nov 2019 05:20:08 -0800 (PST)
Date: Fri, 22 Nov 2019 14:20:07 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH 5/6] arm64: tegra: Enable GPIO controllers nodes for
 P2972-0000 platform
Message-ID: <20191122132007.GC1315704@ulmo>
References: <20191122104505.8986-1-vidyas@nvidia.com>
 <20191122104505.8986-6-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20191122104505.8986-6-vidyas@nvidia.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_052012_161672_CB50CF77 
X-CRM114-Status: GOOD (  13.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
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
Content-Type: multipart/mixed; boundary="===============8879373582136011741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8879373582136011741==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nmemrqcdn5VTmUEE"
Content-Disposition: inline


--nmemrqcdn5VTmUEE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 22, 2019 at 04:15:04PM +0530, Vidya Sagar wrote:
> Enable GPIO controllers nodes for P2972-0000 platform which are required
> by other controllers in the SoC for example when PCIe C5 controller
> operates in endpoint mode.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
>  arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts | 8 ++++++++
>  1 file changed, 8 insertions(+)

The GPIO controllers are enabled by default, so there's no need to
explicitly enable them.

Thierry

>=20
> diff --git a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts b/arch/ar=
m64/boot/dts/nvidia/tegra194-p2972-0000.dts
> index 353a6a22196d..7eb64b816e08 100644
> --- a/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> +++ b/arch/arm64/boot/dts/nvidia/tegra194-p2972-0000.dts
> @@ -37,6 +37,14 @@
>  			status =3D "okay";
>  		};
> =20
> +		gpio@2200000 {
> +			status =3D "okay";
> +		};
> +
> +		gpio@c2f0000 {
> +			status =3D "okay";
> +		};
> +
>  		pwm@c340000 {
>  			status =3D "okay";
>  		};
> --=20
> 2.17.1
>=20

--nmemrqcdn5VTmUEE
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl3X4IcACgkQ3SOs138+
s6FpAQ/+JotZz8/2JN3IdtE0k+8HWLGaEx1OOv0qlI9Im7TRT6KIdSgkmlOjyWc8
3JJ8fSte/65M3AqAJl+321hN4dhmnh4VDxHXfKsmx3q5PaZr02AByCD8sCNqkpt2
/mDeVZ8rwWhtGOA3L20pPbRLeEKNlhzWPX02saLkTSH2eL34fHu/eg1YZAeW9Cu8
oNg3i/2aqHKoyMoUvXE9MlrbibcGQAB3ZL9samNeotzBYF0r/jUTPVe/8Hb/M8+l
9VFAHuw8Rv5VQCiHkiwtBZccd40PXeNISeGsrIuDPYY2MY8qmJncvYYqJLtsILyg
R2bztDz4+5F77NLP92ktl6AXfO6pR0bG+PYMMauh95yxtJ9it5I51LKXTOXSxXCy
fBmzIyR4rWYMtZE8TH8bahyR0nScsIFUlYT74w4CRchW5j4OEd/AhV/CECdPVOU0
j9ANfV1g+OCPx/J3NOSxmIJDrDIjOwKqNCofb1ijc11kVketJ1ubmObS8bgu3oLV
uE32RVxblix0IT0geVDMDP4r4z7nDNE6PmCptvhtyiVmtdSWKoMLod1nxZ7qGbT2
BrEEozE/f/kNpQvLDp1uhCdtkgOi+hxqPze6p5FJhrJJ1ftzB+mdinqgOU9Jm8yQ
En+CE7rFd5SFf2RRD/5r+bb93b8DBwNYbh1B0AGjT5EpTqi2Qbg=
=kby4
-----END PGP SIGNATURE-----

--nmemrqcdn5VTmUEE--


--===============8879373582136011741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8879373582136011741==--

