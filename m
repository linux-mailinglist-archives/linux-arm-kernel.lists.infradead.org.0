Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 286EB18F364
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 12:06:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sz5ZGJ5Rs1TZPE5NXyJzIwvaQUrSUmWZMKx2Sas02UI=; b=u/FLz/OjpgNXJ3z42E9FfEk4i
	opbINxgtiiGq82g9vjiB7JD/AyIbE14Uq4BPcoEMGqwq3V3EuaorTORTyK60Qg5spe0B8gFstcmhp
	bt7AX8rIHvKJmqBH2QdI0Rq2nbZhd1lCxOhSm1ngmPVPEFCdrmHJaDHvhgLEjzJF4MgsgLo7du4Yl
	PDk5IJDzEBy10Unz3/RlTdmcd6NfSJzXtPOiLoDl/CVIEAEtPxmnNxxXBUXiU4kRx54QH2xDr8Fuw
	KPq6VU9Y5l+3OkD1wtX/gk29j3i6ThyUsgd7IumLn6T5ueaCcj+5gnvUxH2pjMXyI/7QPFMnKBcNy
	lgIfebKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGKuc-0007Tq-PX; Mon, 23 Mar 2020 11:06:30 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGKuO-0007TF-3F
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 11:06:17 +0000
Received: by mail-wr1-x442.google.com with SMTP id w10so16497262wrm.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 23 Mar 2020 04:06:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PvaA9WErHPfhLzkoxic3oiXs7q2b8jdtV9hoK7AM6S0=;
 b=KL43WrYTI7twEj/ElGDXpP3z4rMkVQmiavtuO8E43tb0A1jiSZFqTFGw+Z9rt88KA0
 HLUcj0+mGIY741Fx7Qu16MrayKfc8YZsEbRjLfhJ9c+RGuIESIuOSlVhCAxEa+rO0xoe
 umC4lTvey0CxqQ/hse7eJEfAbX4NoGpq4rw4IRlAMkb6yqE6oD7r9OkthDgzmQDEHIyo
 ytE/bxH4kGUJRdQcOva84Pex07qX2lMFU3W3fs7Jx+niVvCzGkh0WC6Nvq4f64jCojPf
 rKIMQBJjiozsPim0+P7xtUx8YJmFyt1WZcOsHeyuUOgmOtEf0TnFAfCpq/ls81VokukE
 oKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PvaA9WErHPfhLzkoxic3oiXs7q2b8jdtV9hoK7AM6S0=;
 b=NKVHlslMoE0X9TZidmrYqoC+xvYK/dJNo9hsZgbJKqVo2tgNRAvcKwbSOxeqARHwdw
 1tA7gJpP0Y9BUcqp8DSBMxcadi62wE2Wfu/jHMXnphCuwmAMH7S1V+My/Dj5ItRsuo+j
 ft7wPSTcaIpe1QhzdczCSyhy7MFmPfIIYnMQwNg6I9K5D0v1MFUJiXKXdiUAbtuNEHMf
 pqAH2Dt4ooolrtCK95C4Pk3D0YUiALcSGOFoNZQXimYxdx/3cHnX04ivL+AmLfIarPj4
 z5hlsag89MpfQV6lO1GJm0PwlfYSv7VotCEytTsOXDxmkRLniOJ0iUAqLn0rpivzxfaE
 78Xg==
X-Gm-Message-State: ANhLgQ2GKv1hJrnIH+7jkUmGhXcxPy6Ho8qK66Ht7oTOeDAALx/HomkB
 jo0/AD9CWqh7WQ9EU4i9OlE=
X-Google-Smtp-Source: ADFU+vuP8WC1Z1+VeP4J2xlTB/CcaELAr/Oz4UztThDWUzq3KVBGIo7q2+7br3Tvbrtr8IlcXKy9Rg==
X-Received: by 2002:adf:e44a:: with SMTP id t10mr19226457wrm.322.1584961574704; 
 Mon, 23 Mar 2020 04:06:14 -0700 (PDT)
Received: from localhost (pD9E51CDC.dip0.t-ipconnect.de. [217.229.28.220])
 by smtp.gmail.com with ESMTPSA id r9sm21658997wma.47.2020.03.23.04.06.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 04:06:13 -0700 (PDT)
Date: Mon, 23 Mar 2020 12:06:12 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 3/8] clk: tegra: Implement Tegra210 EMC clock
Message-ID: <20200323110612.GE3883508@ulmo>
References: <20200310152003.2945170-1-thierry.reding@gmail.com>
 <20200310152003.2945170-4-thierry.reding@gmail.com>
 <3b583202-50d0-145c-d60f-91bd646008ad@gmail.com>
MIME-Version: 1.0
In-Reply-To: <3b583202-50d0-145c-d60f-91bd646008ad@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_040616_141978_4F206FE0 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Content-Type: multipart/mixed; boundary="===============2128181441841546040=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2128181441841546040==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Rgf3q3z9SdmXC6oT"
Content-Disposition: inline


--Rgf3q3z9SdmXC6oT
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 10, 2020 at 07:29:42PM +0300, Dmitry Osipenko wrote:
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
> > +EXPORT_SYMBOL_GPL(tegra210_clk_emc_attach);
> > +
> > +void tegra210_clk_emc_detach(struct clk *clk)
> > +{
> > +	struct tegra210_clk_emc *emc =3D to_tegra210_clk_emc(__clk_get_hw(clk=
));
> > +
> > +	emc->provider =3D NULL;
> > +}
> > +EXPORT_SYMBOL_GPL(tegra210_clk_emc_detach);...
> > +config TEGRA210_EMC
> > +	bool "NVIDIA Tegra210 External Memory Controller driver"
>=20
>=20
> I'd remove all the exports for now, given that the driver is built-in.

I was able to make the driver work as a loadable module, so I've kept
the exports where needed and made TEGRA210_EMC tristate.

Thierry

--Rgf3q3z9SdmXC6oT
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl54mCQACgkQ3SOs138+
s6Fghw/9HFmA8d3ekqw+fFlSbracVyC8Jbzm7ovz/EMMhgzkKApEKD2G2L7GNFdZ
XQiWXYuI4SANsOCnbgunpoZqi5M/zh35NvbBqQoT6pJlS1WxabPWekofZGxX9WkJ
/oA5oD1gQhR3CpM+6QfgUH76surZ8LIgqlWDurqblrUeEWUftJuKa4xuhIj+7vwy
B4cZYF04OqrUl5dJXKiX9qUAb2T0i6GZb9UbWIdPtzFGpxN7WfBBjuta/nbKJCqi
Y4CkNqMDW3wqvj5zZrZN0/J+5SHQ2eJ26irWAn5Xrrd0N3xyIUy7/SetQ3hFsfAb
Gxd9WyQA8OWDdlhdkoEHoMLXX7xBmKG7PA2LakCQxguSw2+meQUfgM7JJqS1sMLY
xhqKLxu8GnMoTdwlh0LhoUAYgwYxfKrd+x+3h8qeGZAHju8nC+BrB5Pg/8gO4e3S
e64USYE4iF8tLbAhD3WYLO7xFLEHWdI+bW8lqvuTWXqXqkXA1bRFrCBidwODDkb1
rj8UuNJzhOzgB7A8us/of+PlabsIsJm4Pr7zqoBUm7LEv9x9BcDCcRRf7jl+4yE5
6lq+SF+f18powYYqdHkaIQCK3ldSfUYJp+iql2mmJSreDcVl10P8m3AW/HO5mRoH
do2qAyLmNX/4iNdEq5BnMtwMvgMqcfs6nWBayGmkpyjZhL+99YI=
=5knT
-----END PGP SIGNATURE-----

--Rgf3q3z9SdmXC6oT--


--===============2128181441841546040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2128181441841546040==--

