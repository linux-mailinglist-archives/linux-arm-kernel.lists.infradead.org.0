Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D401A7FE1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 16:34:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8PsXmASDBkDrzp8J4S7+BmALDfy//i4kXsLES2I5k/0=; b=EnROpgs1UpGdmo3/XJLidPWrS
	afs7hXpJB9BXQ2U0vjwBtpXz5CmJqLQGM/7E/VyviCkJXhE8MjA9NxUsggI+QtXEPxL2bQPeGp2au
	xaDJiZn1zfZd6ycBW5E0NH6pW1R2xb5K+RBefqcQGoRKjj05o8uZZlxXt5UiDcGxF4uslEbTkEhZw
	VvCiEQ3kK+ju0E1e6wqCciGpTmeFyC6VVCacwst/jZ5DN75zBxE+E2unH/de6ZxSgHTqlOryWgRxf
	qjox2FXnCw03S5YhVxw6q+n7u3+M46bbO7EBHQ4VQxG9CeruTTfQXpfyjd7EiEy9CrSRM/ozWj9Sq
	Tcz6xF8Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOMe6-0002BS-5A; Tue, 14 Apr 2020 14:34:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOMdx-0002Al-Br
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 14:34:30 +0000
Received: by mail-wm1-x344.google.com with SMTP id g12so6369164wmh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 07:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=GzDsay7ZtiUVlGJrHI4dwfbZX1amh97113yqGdPhgsI=;
 b=pH8ZpxX86b9a+zmBKSD6oQacbBLG6EAUwd7+HWjEleK6fQSx5ckspywSPxY2vX922b
 z2389d7IpkI72Wczr3fPFN0H/iR3Pl5H0p9fxAivAnLF7tDOVTWW/Fd76rEC+6SjAfI9
 x0Gx6wj5ly4Z97+t4Bw/08mXmnIzF+uMT5wunJPlBnqLPbSA+pvSlSNamOSyVzQobmn/
 b+avRlJr4Nt1HtcTkWxLQs/GWXSTMs5IQM/+tnalhXoN5HJrEHbeHXQzabW8ATh9Wi/y
 KJVNE7Dv063mAxV7P4Zmm9bCAPWqGul4/5K2BzJ6wQG/qUbBQf5XqI9TFV00PYFQbkj/
 RGQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=GzDsay7ZtiUVlGJrHI4dwfbZX1amh97113yqGdPhgsI=;
 b=UtrrnSRhcLAdUu6GhFyWq+Awb3DzP2mz+HkEIh4ieeDeC7NUgf7ioZGWVcq9BacA9e
 DU5pkTHG9GEw6AYgo0qKpmnUmKmMmc8dYx068LayZ0XUaZzHwnmliXYz/OnXQLIPrmcQ
 hf2in+HEQrgmGKNURdd5bJtRrCJioz6/7ROl/edtdR4zQD2qmhhBkZ82jc/HG7HTqfc2
 qLH2iorh8xFKNki2vNKfMS36ZNXHPDjKAdvXOo1BfWx9nZXdAelZP3uap4H540xoffEu
 4cTr2BkwQ3W2KzKGUQxyLrI759dgIxN2AwggORqvphwx+OnylmNpmGTJELVw3g6XRZ1S
 cs0g==
X-Gm-Message-State: AGi0Puam12fvD/r9p7JWvLF4BfVQlGMP+hntFDmGQn6gZvMuZM0OZYl4
 xzm8CESnRQ431Xd0LmYwDSs=
X-Google-Smtp-Source: APiQypKQlLXB+oj+GcW3+9i6c3fANKqXUMA8Cm07ep/LoWEiOgjrO70vfEfldPonvOpewJ6cfmC1dA==
X-Received: by 2002:a1c:dc8b:: with SMTP id t133mr145571wmg.117.1586874868078; 
 Tue, 14 Apr 2020 07:34:28 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id q143sm19971427wme.31.2020.04.14.07.34.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 07:34:25 -0700 (PDT)
Date: Tue, 14 Apr 2020 16:34:24 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 07/14] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200414143424.GG3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-8-thierry.reding@gmail.com>
 <8dc000fb-8867-cf8f-8204-a9e1e79a4811@gmail.com>
MIME-Version: 1.0
In-Reply-To: <8dc000fb-8867-cf8f-8204-a9e1e79a4811@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_073429_427278_D27B630C 
X-CRM114-Status: GOOD (  17.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [thierry.reding[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3928922501043889865=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3928922501043889865==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="pE2VAHO2njSJCslu"
Content-Disposition: inline


--pE2VAHO2njSJCslu
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 09, 2020 at 09:24:31PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> ...
> > +static long tegra210_clk_emc_round_rate(struct clk_hw *hw, unsigned lo=
ng rate,
> > +					unsigned long *prate)
> > +{
> > +	struct tegra210_clk_emc *emc =3D to_tegra210_clk_emc(hw);
> > +	struct tegra210_clk_emc_provider *provider =3D emc->provider;
> > +	unsigned int i;
> > +
> > +	if (!provider || !provider->configs || provider->num_configs =3D=3D 0)
> > +		return clk_hw_get_rate(hw);
>=20
> This still looks wrong to me. Nobody should be able to get EMC clock
> until provider is registered.

The EMC clock is mostly orthogonal to the provider. The provider really
only allows you to actually change the frequency. The clock will still
remain even if the provider goes away, it just will loose the ability to
change rate.

> This is troublesome, especially given that you're allowing the EMC
> driver to be compiled as a loadable module. For example, this won't work
> with the current ACTMON driver because it builds OPP table based on the
> clk-rate rounding during the driver's probe, so it won't be able to do
> it properly if provider is "temporarily" missing.
>=20
> ... I think that in a longer run we should stop manually building the
> ACTMON's OPP table and instead define a proper OPP table (per-HW Speedo
> ID, with voltages) in a device-tree. But this is just a vague plans for
> the future for now.

This code only applies to Tegra210 and we don't currently support ACTMON
on Tegra210. I'm also not sure we'll ever do because using interconnects
to describe paths to system memory and then using ICC requests for each
driver to submit memory bandwidth requests seems like a better way of
dealing with this problem than using ACTMON to monitor activity because
that only allows you to react, whereas we really want to be able to
allocate memory bandwidth upfront.

Thierry

--pE2VAHO2njSJCslu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6VyfAACgkQ3SOs138+
s6HofRAAia8TjCbY5zDBbRMouJEBKcUyaKEoUaUahRyFSZueh7M+Cbv/OqonijkR
LM4T1jYRzLNA6mhU+k0bDjFhM9NWnCxs5HAAr0uMk6pVdGXMyYnUtqps0mGfVJFd
q6M842aj7XYqZaQcamhCqTC62Bpi5ggbSLzkhV9nv1k5OKR06rXWYu//FAogjIKM
zVHansjaeBdsaeuWg4kvsx6su7IPAyVzYJCO05fooziHEKJjUzouzCkIDSXM6noQ
LhmnidHUVAOHw4Qit4/ccT3azEYYSEuOl1R2P9JyRgR9zvOxp3GJtIOC09KUjyP/
Z8EiLDKlgyMPi4Ev10njlhHjkJ9Sao/ICYYyfzika+RQtdILzCLhx4tIlxsu+Ahp
MOwUU4RYufFF3GGbeCrMd2qwPN15VdxhaiqWUeIlusBLiCSu/jXUdI0VRa06J4dv
wp0gkDdDQE+IxDms1sp3BCppQyMgf7wZvW+obCPTofwUFzs+uyUllZn8Mv9+2QKC
DGO30C2kk2NrA5XZASA/y0+6LQFAzNMIYl+TqKgKuusW3jHeSR1dzPmwl0v1qdb/
YqibANFqzqFbhSbR0JLlG30lZ1LW62AbKCVu6kiyz8xOm34bhQTCNlbtYkopfuHs
RfM7hq61jxfyqyCvwujvw3EIxfdMFwejUCX0vmfCHEfvF24bxQ4=
=V99P
-----END PGP SIGNATURE-----

--pE2VAHO2njSJCslu--


--===============3928922501043889865==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3928922501043889865==--

