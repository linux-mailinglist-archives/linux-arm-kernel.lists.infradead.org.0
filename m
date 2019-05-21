Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D1424D6F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 13:01:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MpxQaPsvZumr59w96GoFSqC2rOPJ1ly//4vaEQ6vZkc=; b=o+YOGBsaeWgburZ3BSarZwY3k
	GicpU66fSGKpNl4Spxg1Xq6Ynb3RjWeT3pW/0JaoKWjP4i/sZVKJjLDSQh8zykApV41GMzLeIR0sa
	IG7QMzuyYWUBHFNVJ3hMYhO/fIi1fVucJXNol+zqYD9ULbYT9n3+XmX8TMN6kxPzaQnO4T+wicih2
	CvP9hTvTQ/ZYv09n22wHxfXJZg8lvAagyYZcV1O5mNzKw1nB0jxusG54IDfuiQNedMcphIps7pnUJ
	UwwJIC4ZQ2ZOlYswP+nGkFOzrAS39FZ5T5G56EzFj6x0U5L9ixAD72oMTPo2bjqwiK2TqOC7XUqwO
	w3rd+kBKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT2W0-0004wK-GG; Tue, 21 May 2019 11:01:04 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT2Vs-0004vY-8H
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 11:00:57 +0000
Received: by mail-wm1-x341.google.com with SMTP id 15so2403540wmg.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 04:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6ah/A2lukvDbpHRiGOZpPj5URmPK2Vy/a2P44wSu38s=;
 b=Aor3HelpyfmyjGRK39CzK56bf/wdjOTdMTdrPVKSNxTMdnbniuMQcjqU/tjUw2gW5x
 raRl3UHiRSfUGgEoEr4kNuywmJ5bL7l1iN1hkzXnHEwcXmqiZDKGH6pj5gbDpurY4MGE
 RfLj3kmQqC/rtXnAg7vBnrMQiq03v+G6Aza6gqqzY/ULFddvJu8RVB/tnN2PBkbx2WFO
 QY+2uSYJr4c3OC30CdQyhu79hIPk2sX8BXcT4kIV1vTyhTFEiiZNSSyk8PP5LMDpVJvq
 tnwhs6DqUVwQgbMdISsXdvbj89BoxXJRnkj7VXkV3NIO6CFvYyXtKkqw8YKn49WDs9hn
 j67Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6ah/A2lukvDbpHRiGOZpPj5URmPK2Vy/a2P44wSu38s=;
 b=RBRcbpDbgpQnt3ibwmgSxjZCJKmkbGE4iVoMfcNtuDmqF6RXBQvg3xWAHpvCJOmzgj
 x/QlhZKKXvqwh72V+Ttb9sBtjpv55zwuzRgUtg/pjowR5ud+TcKtb2lre+0yO8MIYiSu
 fWYFnzBfJN5bx+UKmEMYsXrrTcMR2HiAAeZlNL9ir2H4Es472efp5OWd/0/bXgJAufng
 kM+HQHqhMa0+RwheCZfmyg5YBlzMmw4R3VjLGI+tqjSptEU4jSJXGgqkmRtspHzp/LMJ
 7PGF4Vd+0RGqsmiWdK6TPa8V+oyfFz/C9LUYH6ryynkCbnediSpmQbijSkr+IBVxjC1R
 jvjA==
X-Gm-Message-State: APjAAAVG6Ffsdp9cZQfWZaxCfA2PKY6sTgTqstkMs/WtY/hPCtMJZ/jK
 yD0/fwYJYuJKHQ5meSxqi7o=
X-Google-Smtp-Source: APXvYqx7e8R2F0j8IQWeqDS/r2kbmLTpKs95SqlnomFZ+00BfNy7tWFZFF1QTOG9jfkSyy3ltmbo5A==
X-Received: by 2002:a1c:9a14:: with SMTP id c20mr3097492wme.61.1558436454827; 
 Tue, 21 May 2019 04:00:54 -0700 (PDT)
Received: from localhost (p2E5BEF36.dip0.t-ipconnect.de. [46.91.239.54])
 by smtp.gmail.com with ESMTPSA id z21sm2999097wmf.25.2019.05.21.04.00.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 21 May 2019 04:00:54 -0700 (PDT)
Date: Tue, 21 May 2019 13:00:53 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V7 13/15] phy: tegra: Add PCIe PIPE2UPHY support
Message-ID: <20190521110053.GM29166@ulmo>
References: <20190517123846.3708-1-vidyas@nvidia.com>
 <20190517123846.3708-14-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20190517123846.3708-14-vidyas@nvidia.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_040056_298145_809DEAE2 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Content-Type: multipart/mixed; boundary="===============0768465032366216741=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0768465032366216741==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9Jdw4pA1x1k2W7MG"
Content-Disposition: inline


--9Jdw4pA1x1k2W7MG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, May 17, 2019 at 06:08:44PM +0530, Vidya Sagar wrote:
> Synopsys DesignWare core based PCIe controllers in Tegra 194 SoC interface
> with Universal PHY (UPHY) module through a PIPE2UPHY (P2U) module.
> For each PCIe lane of a controller, there is a P2U unit instantiated at
> hardware level. This driver provides support for the programming required
> for each P2U that is going to be used for a PCIe controller.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> Changes since [v6]:
> * None
>=20
> Changes since [v5]:
> * Addressed review comments from Thierry
>=20
> Changes since [v4]:
> * None
>=20
> Changes since [v3]:
> * Rebased on top of linux-next top of the tree
>=20
> Changes since [v2]:
> * Replaced spaces with tabs in Kconfig file
> * Sorted header file inclusion alphabetically
>=20
> Changes since [v1]:
> * Added COMPILE_TEST in Kconfig
> * Removed empty phy_ops implementations
> * Modified code according to DT documentation file modifications
>=20
>  drivers/phy/tegra/Kconfig             |   7 ++
>  drivers/phy/tegra/Makefile            |   1 +
>  drivers/phy/tegra/pcie-p2u-tegra194.c | 109 ++++++++++++++++++++++++++
>  3 files changed, 117 insertions(+)
>  create mode 100644 drivers/phy/tegra/pcie-p2u-tegra194.c
>=20
> diff --git a/drivers/phy/tegra/Kconfig b/drivers/phy/tegra/Kconfig
> index a3b1de953fb7..06d423fa85b4 100644
> --- a/drivers/phy/tegra/Kconfig
> +++ b/drivers/phy/tegra/Kconfig
> @@ -6,3 +6,10 @@ config PHY_TEGRA_XUSB
> =20
>  	  To compile this driver as a module, choose M here: the module will
>  	  be called phy-tegra-xusb.
> +
> +config PHY_TEGRA194_PCIE_P2U
> +	tristate "NVIDIA Tegra P2U PHY Driver"

One more thing: perhaps make this description consistent with the driver
description in the source file.

Thierry

--9Jdw4pA1x1k2W7MG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAlzj2mUACgkQ3SOs138+
s6ExSw//TFkjS9gh0++pEdMlDKh7fSzke2s2bcJz/Ph4T4aO+6p6iFE6pWLbZVZ3
/7C0QwM2i18gVP1OFuOkydreo5R4sxPrSnvpUn99dYjSVHgj1lro4O7Z/rH32KgI
c/1dUoUhJu9mynuCP2VSiUwVwhsbd1wQVDXwNW7QosmqovAYhNyPJncoSLyinU8q
IuDmi3g+EUcC+ky7Hg7ba0F9plE+HJgWyvRCrNnMoWiC9AIbbV5vU0gGtVt+u2Bs
nUxq6BRVCL7Xh8rLzGfA04i1c/BD9HOxVkZ21m/SzJ7SAJqPH2ow0DKXpID0B1mu
mF9WUO0NB21kPJR/ozuzf2Z6wT/LMxNiwl+oSK0wGBYVSopuZrV8xrisy01734VV
qqOzcztHF6QZrHWHzsaRNuWgBUwJsxNq/DLpKz6GGYv6pJedwfBQjmoWSq78dOtq
uGRcIFOtqng11KY33EP6z6EhImDI3Q1t86kmMy8xydeEh1C9yjOZhw+Fa/UHRXp6
WNHFhPHBwJnu+BcMsQ1+y2eOGeMTgvcs0VbcykfkvUxxWIHJedyqCzvVHqP/Iuya
OLa32wjLLv2gUghlswSyizpwGEHcGDdH4bLsFqCZRScyjbL74g8qY6U//yyy8x3j
T4okdiJoC7OcK2Ao3f7u9Xn/nWkybyNfrHcK5a4E0Fn/H+bhG6I=
=M2WT
-----END PGP SIGNATURE-----

--9Jdw4pA1x1k2W7MG--


--===============0768465032366216741==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0768465032366216741==--

