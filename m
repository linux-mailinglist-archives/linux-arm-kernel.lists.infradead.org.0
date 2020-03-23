Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D236E18F348
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:00:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rGkPddeJrF3iHGhOiW+EDkCSzOpWI2i4EDLJ89gx39I=; b=g33Jb10LY2Q52NQHU6Vr3RDl1
	W5dqmWi186jZBjkaHmvy7+soll7yei5wKN0T8cIq+P1jzMNBb5Y2NkFRQ1oH/51npcc0LfaLemDK1
	QjEm2ezKo/a3hwLDkUzMc1h2eaw1prs9NVJqbFjObhR+w1o1Uf8Ut0FUo7WZvJARmybR76JRQPKx/
	ctiS+a+6B2yti9NOfMFfZKNR0V0Bns6xcge6PWNDvf2Cx7o3OdBM/It1dK6OejtQs719XajjhfyMd
	+QJ68Ht1p1TFBjfH6jfazqsxzmqCFczqiodKAKGODJJDPZcmK4WBV5Awz7INEK1EM1F9Uv9pnMSju
	Xi3hDpBcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKoy-0004pD-Tu; Mon, 23 Mar 2020 11:00:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKop-0004oh-CP
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:00:32 +0000
Received: by mail-wr1-x441.google.com with SMTP id p10so4030935wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 04:00:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sadhhHKl37kodrpSVYR2LnIwtVMN2BKSE6OvR4D241Q=;
 b=VBGMIJ+nSe8j7N65h6/fTgP+fPgV4ZqrJIg0hTtEsehn7H9BA+8gYR2xAzFM/ZKpAY
 5vcm87vEKYZKCAA7Lgym+BF7/rTBHBJm4sCJ0XY0u5b+A585h8xmdhz29PWUx7Zr5Qbe
 5LrMyMqhWTEwT37cAEMAhQS6JnSOXxX1vei7h/SZZtBsq1nM4ao5uuGdbjfPlo/GU86m
 ZyaligkLWyB07qOg/zprBUD3g7RkRagKW2HEzd2dScXXFgb3heV3NbEWmTNqI7OmQe4A
 J/NJjFnOdOOAbm6e92Tequk0LEYcX0b2LLFefWBlEknJ9xc5LdfMoL9hUu5LSmZ4TZJl
 dVVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=sadhhHKl37kodrpSVYR2LnIwtVMN2BKSE6OvR4D241Q=;
 b=l0KU25LPQq572M6lXLe+3gF6t6HryqfJXzvLe7sNb3RstvxWa6KW6EZw74tJlJdGTH
 C1MsdcEjp5X32xRCWSsSZY9j9z0bfMGEVJnNxf6lfb+KYPUzIq92xul6CfCvLJPymbm+
 qz2p/l9V+m1prkcvDYeXfpedsY2XJ2vzKje3eUeT7IeaZ7b7vDPxovVjOqwm2qKsgevi
 lzVP6ZpdoC1y7PYjfkHm8OzT7nEYk+MIP0wIZnm+mZfXIEb0HlNnKlESFV1+S2JDexQ6
 Ojedw5GnUlyx5uoWEHkCBYiRxrl59jZfYzPxXTrL5qC+loT08bdWTlr5ryNSFMut3cf9
 qkSA==
X-Gm-Message-State: ANhLgQ0SvOQ+8dGtavOkPo0yNio6/BD0eJw5dtzWylv7nJovd7fcXbKA
 kPkDqwCo8YS0MqliHqRoQFnMw3u9
X-Google-Smtp-Source: ADFU+vs23hQHjnsNpDugZtYful1vTGeawfdBFZ++4cAXCzh6x7Z59NoWJpJId2Y1TDOMh6OIOUhwYg==
X-Received: by 2002:adf:eec7:: with SMTP id a7mr29025432wrp.405.1584961229361; 
 Mon, 23 Mar 2020 04:00:29 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id k18sm22461158wru.94.2020.03.23.04.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 04:00:27 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:00:23 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200323110023.GB3883508@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <a5c9e3d6-2b65-ec93-d8f1-7c7680092e53@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a5c9e3d6-2b65-ec93-d8f1-7c7680092e53@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_040031_451242_CD6A8956 
X-CRM114-Status: GOOD (  19.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1475163260544994726=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1475163260544994726==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 08:44:38PM +0300, Dmitry Osipenko wrote:
> 10.03.2020 18:19, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Joseph Lo <josephl@nvidia.com>
> >=20
> > The EMC clock needs to carefully coordinate with the EMC controller
> > programming to make sure external memory can be properly clocked. Do so
> > by hooking up the EMC clock with an EMC provider that will specify which
> > rates are supported by the EMC and provide a callback to use for setting
> > the clock rate at the EMC.
> >=20
> > Based on work by Peter De Schrijver <pdeschrijver@nvidia.com>.
> >=20
> > Signed-off-by: Joseph Lo <josephl@nvidia.com>
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> > Changes in v5:
> > - major rework and cleanup
>=20
> ...
> > +static u8 tegra210_clk_emc_get_parent(struct clk_hw *hw)
> > +{
> > +	struct tegra210_clk_emc *emc =3D to_tegra210_clk_emc(hw);
> > +	u32 value;
> > +	u8 src;
> > +
> > +	value =3D readl_relaxed(emc->regs + CLK_SOURCE_EMC);
> > +	src =3D (value >> CLK_SOURCE_EMC_2X_CLK_SRC_SHIFT) &
> > +			CLK_SOURCE_EMC_2X_CLK_SRC_MASK;
>=20
> What about to use a generic FIELD_GET/PREP()?

Done.

> > +static int tegra210_clk_emc_set_rate(struct clk_hw *hw, unsigned long =
rate,
> > +				     unsigned long parent_rate)
> > +{
> > +	struct tegra210_clk_emc *emc =3D to_tegra210_clk_emc(hw);
> > +	struct tegra210_clk_emc_provider *provider =3D emc->provider;
> > +	struct tegra210_clk_emc_config *config;
> > +	struct device *dev =3D provider->dev;
> > +	struct clk_hw *old, *new, *parent;
> > +	u8 old_idx, new_idx, index;
> > +	struct clk *clk;
> > +	unsigned int i;
> > +	int err;
> > +
> > +	if (!provider || !provider->configs || provider->num_configs =3D=3D 0)
> > +		return -EINVAL;
>=20
> Why all these checks are needed? I don't think it ever could fail,
> couldn't it?

This could fail if no EMC provider is attached, which happens, for
example, when the EMC driver is not loaded.

>=20
> > +static int emc_table_lookup(struct tegra_emc *emc, unsigned long rate)
> > +{
> > +	int i;
>=20
> unsigned int
>=20
> Same for all other occurrences in the code.

This was fixed automatically after I fixed the rebase issues.

Thierry

--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl54lsQACgkQ3SOs138+
s6EeQQ/9G63M1xZHwIQsmIIdgaOw5YN+TMj2fb5Fy/mSYOOmDYJyyyRe3dx4GvEn
9HJ1jk7vLe54qYlncIy/Iq30OOZ9GfDKOQsebE/hc4j6EEa4h2VO8kRwUVWjTAer
+DykULLJpXnDOki2OeMkPx5ZRQe21SQ4NNDNcnyI1e3yHv9dNsa6lkjp1+rYshAi
SghXsdNd3yrgWYuAInyKifrPBt3VS8oeezB36G2sRRkgoWlxrYrk11R1rHmvi8vR
r5OzzniI25NLqkDpaEOQCsjYxeyqT7tr/9W6R1lmpxhcNtKT3puIA4/jYosGIRm2
9i7olnK19urr93jkXS+ljzj8jA6zWNMNGkORPHL/H7HT3wFxS42jEt0dyOUiat/E
oGN188QLQqi8grfb1qp+yeN6Gzrz9CkXNKJkC9Id3cqV1S2mqGtr9t5iDzNxYCR3
N9OtxnOK238OIEzFyeApm099w7D6ly1/yeDAUps278bbeul9sID8CCH0XGmavk5g
9ALun6d42DG1iagOafD3Reyqstw/vOItJg689zPC5aSC9MVXuTEs/Trqh2Rlgrg4
xOJe+9epTCemM8e8hAlXkA1I/t8vpV8RuDwj8KJ6QpdBaCRjxy9fYzpmDwpwvrnL
81TWT8PZbKw4IqXO/b9Yc/sjtiL4K5nPAVQVQx0d+NnjFRrLADk=
=j0rX
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============1475163260544994726==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1475163260544994726==--

