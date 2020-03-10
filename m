Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83EB918044F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:05:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sQqxhYdIHIY2YHkOwjY83pi1ZbzAeSFazjF1msAxxck=; b=ffkd/gBaeEOHVohW5J6c6nP4w
	9iS1EHVIW9QQdRe5fRkXr4IDdt4vMp1doBcfirwXb8I2cJyDZ7/HfBWcoBy/BX+mHqOeUDoXXV/xU
	4nmyuijzEw5u0lpr4QXC/r24Q7eWxNaoDijuYLTeYJUJ2FIrsRschpICs+0qqMT6qZ2Hkjlw60KIG
	4F2UHt9hy25AdnfX57kW+Bfztl98uYs/gQomPdRsdQt0weepehIa2yKLOO4CRhbACPKsuHlqhsuBt
	pFs72b7WHD14We27oqGYKmvWdF++xlcCgClK26H7sHKvuynpeFVyd2nKvvhbQkIW8fQkziTiF2p9h
	6/dU33MHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBiJl-0006hg-Id; Tue, 10 Mar 2020 17:05:21 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBiJd-0006gs-CH
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:05:14 +0000
Received: by mail-wr1-x441.google.com with SMTP id s14so3196970wrt.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 10:05:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=6OEUqmMP57cb74MhBgNDVNN+KyC7WBhjSIu721xvBNU=;
 b=VHm/SShvv2oKDxW/Ex9HZ/5D/Hlf5Ru68Xy1a7ESmyT/NhZvBUFu/A3bRF1NVV7qKM
 FKKiI1raEcI7niAr0wL+5WWU+U/NR0eWQExTMW9Pe0W7xoFg6xs5T++o1Nwy6TWWqnp8
 ThDf8+ulnumZ705uFuUJF8MgNzlGlelU+LlAYCL7n01kjG3+jLzk+7828jUgfNI4tgPU
 vlZUkQaf+mw8dLwWutKKEFha1Sj8QB1bzzyH1vn4fU2L3ME/bZebyD66+Dg8sDmDVhPE
 gstZH1y/ZBC7EE0fzENEr+JnK/a9kYxpKSNyIBo9v75WBuXd5+EyYbPJRRSTjkoeI7JA
 dL3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=6OEUqmMP57cb74MhBgNDVNN+KyC7WBhjSIu721xvBNU=;
 b=P2UbJc1RtqVmArTIrdA9YFD8c5skw+h+ijwzMvlAnRPqeKGaJlEnDd7h4KHCrZcVor
 jrbBe83TTDnjOlPCPh8GgrE50lALgdteCe9IBjAa5cc5iLuHAEFg8jPFwCyZ9nMHLzbg
 v0ySZqZahsBfz0vW5ehW6rC31slnfep6btrOBnNBioTNY3CBdSICl+ZykYUwZVOetplx
 aRQwqKHaieyX/z5SD/udI8KjV1/Y+Eo8V82/fcnRPs94+L9jpGsLtKNLXZ+IRwqhWYSD
 JN0oN3XpnmwCqqLsGK0VSjPAwAERZmYuYnkugJUpJd7nyGVgW9w9dQtEuJoLr1ra00Le
 S5Yg==
X-Gm-Message-State: ANhLgQ1MMibKwQ5olwtv0EdYkuyim9s5z1d7EpZTUPV5ph04t6Vz5n6z
 M+h8IqNY9otk9XDRUyfZZec=
X-Google-Smtp-Source: ADFU+vv+IEQslBSOgKdHxaft8X7ofDv4clakgjSuWe9FiCBWvzGCaoweilLbkexC2zw/U2MvtO+lhQ==
X-Received: by 2002:a05:6000:44:: with SMTP id
 k4mr13774361wrx.205.1583859911867; 
 Tue, 10 Mar 2020 10:05:11 -0700 (PDT)
Received: from localhost (pD9E516A9.dip0.t-ipconnect.de. [217.229.22.169])
 by smtp.gmail.com with ESMTPSA id q13sm15604915wrs.91.2020.03.10.10.05.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 10:05:09 -0700 (PDT)
Date: Tue, 10 Mar 2020 18:05:08 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 1/8] clk: tegra: Add PLLP_UD and PLLMB_UD for Tegra210
Message-ID: <20200310170508.GA3079591@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-2-thierry.reding@gmail.com>
 <9b343fd1-15df-409a-390f-e30fa6bbbfe7@gmail.com>
MIME-Version: 1.0
In-Reply-To: <9b343fd1-15df-409a-390f-e30fa6bbbfe7@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_100513_425848_49FBAD10 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5717784694641859717=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5717784694641859717==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="uAKRQypu60I7Lcqm"
Content-Disposition: inline


--uAKRQypu60I7Lcqm
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:19:59PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 18:19, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Joseph Lo <josephl@nvidia.com>
> >=20
> > Introduce the low jitter path of PLLP and PLLMB which can be used as EMC
> > clock source.
> >=20
> > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/clk/tegra/clk-tegra210.c         | 11 +++++++++++
> >  include/dt-bindings/clock/tegra210-car.h |  4 ++--
> >  2 files changed, 13 insertions(+), 2 deletions(-)
> >=20
> > diff --git a/drivers/clk/tegra/clk-tegra210.c b/drivers/clk/tegra/clk-t=
egra210.c
> > index 45d54ead30bc..f99647b4a71f 100644
> > --- a/drivers/clk/tegra/clk-tegra210.c
> > +++ b/drivers/clk/tegra/clk-tegra210.c
> > @@ -3161,6 +3161,17 @@ static void __init tegra210_pll_init(void __iome=
m *clk_base,
> >  	clk_register_clkdev(clk, "pll_m_ud", NULL);
> >  	clks[TEGRA210_CLK_PLL_M_UD] =3D clk;
> > =20
> > +	/* PLLMB_UD */
> > +	clk =3D clk_register_fixed_factor(NULL, "pll_mb_ud", "pll_mb",
> > +					CLK_SET_RATE_PARENT, 1, 1);
> > +	clk_register_clkdev(clk, "pll_mb_ud", NULL);
> > +	clks[TEGRA210_CLK_PLL_MB_UD] =3D clk;
> > +
> > +	/* PLLP_UD */
> > +	clk =3D clk_register_fixed_factor(NULL, "pll_p_ud", "pll_p",
> > +					0, 1, 1);
> > +	clks[TEGRA210_CLK_PLL_P_UD] =3D clk;
>=20
> Isn't it possible to auto-enable the low-jitter bit when necessary
> during of the rate-change based on a given clock-rate?

I don't think so. These new clocks (pll_mb_ud and pll_p_ud) are parents
for the emc clock, so they are needed to properly reflect the position
of the emc clock in the clock tree.

Thierry

--uAKRQypu60I7Lcqm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl5nyMIACgkQ3SOs138+
s6EMCA//Uxo0Bgi/lGCwUNR+qekqxpV446rEudb/jWg4Kh7pFTMGgzA/YUE8sFUV
Q2y2URjCPwMRveAm1dE4gBq7UA/eLIYBBMl/9tmc8PVad14aOyoKuiDX3jYddvg7
/kXm+UZPC3HLCPuSZKpF34zadrI4ndEw9z22S8hWClGuaUYBegAApiOI28T5FSSX
ZrPydC1NjdkXPNxL5KLaCugVCbBP4J36UhjY9xOhAxCLb3MX5Qxwbh0BKJDe+7xw
l/b134bBjjaF8yIogH6PmSABg1bsL0K+aCzK3JVXvEmMJXZwl0rSeQFs0kZZRdND
yvMdV7RyvhnPvuplbMU3Mym3o/RfQB2XUzsPqj8g6yQqBokJdV5xyTJ60H7sqamW
Ag+5jrVpzud7nJLXMjBYteAsCMBMvOe9T4SknvruYNxpWAWsLDTkqoa0YQ1P7kvD
rT3aW0XDLCt9jyQ+bHjl5xhYgCbJdAVgdq9sRe8BBNcQOPCh9Fk8vIEJyglcRDJ4
flGMTeQTGvnugxfEzQ4auDqpm1EjWHB9M/CRCbRgvFdB/irb+N/J42xqIPQUzAa5
iFIq+4u9NfKAGKO+QONto4nHk2cnEMZaCA3DKXf1zQ/9T+/ELbDV8LbpxkUJZadB
4pWq0GsF2rjnAApsk8Uyo69TZyWLhxZFLjxhNDEJZZTHkLbHRTo=
=oCYd
-----END PGP SIGNATURE-----

--uAKRQypu60I7Lcqm--


--===============5717784694641859717==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5717784694641859717==--

