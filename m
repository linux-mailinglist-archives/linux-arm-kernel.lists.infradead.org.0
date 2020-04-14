Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E27F1A8736
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 19:14:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jddSjVl//jlT+lGFztdLGofteBcZh4fGzfhgNPxhKlA=; b=XPVon1yg8QTQjeBu77zC4UAgK
	90LWdOe9C3UThm58hIkDGx9MUR1lsDQ4143tDjKVhxHIcfyWKOIw8IE7dpnoesbJhUHxD7Y4oWUmW
	7MqOZlV7ODJSpVvNWN1E466zm71UXzk/jdpYCx0jDVlMio1g5sGqbCzm3QQHQJaQgID3wPE3/9SC8
	RpvCnohwxDrlCxQ7n3/90Z4CNARET5BjSTtWbf0Xu42dVwEt2s941PxygQX67+/XJzcZyLYd88wXI
	wyCzC5a1TF7hj4bOGorQFZMBoPbYmZow7cx8cAKz983ciPv+TzaVilq5tz6RvozlFD0e7b5Z2Rx7E
	oWlf00ahA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOP90-0006e2-05; Tue, 14 Apr 2020 17:14:42 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOP8q-0006dV-AB
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 17:14:35 +0000
Received: by mail-wm1-x341.google.com with SMTP id x4so13877689wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 10:14:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=4s7/P9MzS+AHwYX5Ehx+WXBD5Ss1A0suZC9xBAAs4Nc=;
 b=SwqKKPpgIQXGa11LiDYPKpl7R21xtiSkDEGqlBD+OZOodqg33J5O/dkr7MA83PEOJJ
 rIhPMl+vek5+Rkmy/gjIwgWBxPWFrSViI2WvMwIktb7NfwOevGqWGL8Wq9XYhTZRjR/i
 juSZz+B7nVyBxPg8M0WaYrKXu+o4X11QygyRvl3lay3Py5Yb3KOxiQytqXDCVAo/2WnC
 Gbe4xAqhDb7ItwVHbl0hce6A7brSLUFlkiD5u5l4T61upiKg33WBCaz3R2pBRF60aLIU
 0qUwE2/86/KHp8dY+h0lqxaMtupayO9jH+RJIHQtKFzIJLkAhtt/0CF8+UIgCArE6GPG
 pVvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4s7/P9MzS+AHwYX5Ehx+WXBD5Ss1A0suZC9xBAAs4Nc=;
 b=PpE16tI/aP3DnPZ0UASslTEpFbeIPBUIrHZHcDXLdeFebx3LktcwO8qf6IOR39fsAT
 JhSU8v4ILMGEmLuRKcrOqEbr3YW4LyA9mC6Y432BelOettR9hkQBWY7tCDvTZPv6zR+Z
 kNaJP5/H98oWi0iikFrFPgUx4OSCXqQFf3Hwj4KrSg3ICzKK9lrvvIkStuKBwAsuBNub
 a6HiHgF+fOniKTv1PTReuE4lr9q5k/K2s4OCfWR3Od2D2Z1N4CiA6fMPf6L8lJXK0fng
 qgkOSaLehr+zm1gVc5luQ8mj2HYxxX9TihpVE5tWsqOtoJC76sZQdrVVMwRsssR+ygm/
 Q5Qw==
X-Gm-Message-State: AGi0Pub/G+zn5jkbuPFkTCPA+NxZPISitvqrnvkNTUJTAUrfJIOkU9o3
 UIHdKNbq658NBaFgAKqQK6pv7WP4
X-Google-Smtp-Source: APiQypJEZqr9oXe9t7ABpK1+x84U9UtGQAUsE7LsFqCeUnsT3lRe9eKk6hMreCgAYXXHKbiO+8Klzg==
X-Received: by 2002:a7b:c247:: with SMTP id b7mr822062wmj.35.1586884470950;
 Tue, 14 Apr 2020 10:14:30 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id h13sm8773634wrs.22.2020.04.14.10.14.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 10:14:29 -0700 (PDT)
Date: Tue, 14 Apr 2020 19:14:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 04/14] clk: tegra: Rename Tegra124 EMC clock source file
Message-ID: <20200414171429.GC15932@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-5-thierry.reding@gmail.com>
 <a7209708-6e67-5885-5935-2db3d92174e8@gmail.com>
MIME-Version: 1.0
In-Reply-To: <a7209708-6e67-5885-5935-2db3d92174e8@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_101433_482110_FFBAF924 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
Cc: devicetree@vger.kernel.org, Mikko Perttunen <cyndis@kapsi.fi>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Jon Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Joseph Lo <josephl@nvidia.com>, linux-tegra@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8396381082625142234=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8396381082625142234==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="5G06lTa6Jq83wMTw"
Content-Disposition: inline


--5G06lTa6Jq83wMTw
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 14, 2020 at 07:48:12PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Thierry Reding <treding@nvidia.com>
> >=20
> > This code is only used on Tegra124, so rename it accordingly to make it
> > more consistent with other file names.
> >=20
> > Signed-off-by: Thierry Reding <treding@nvidia.com>
> > ---
> >  drivers/clk/tegra/Makefile                          | 2 +-
> >  drivers/clk/tegra/{clk-emc.c =3D> clk-tegra124-emc.c} | 0
> >  2 files changed, 1 insertion(+), 1 deletion(-)
> >  rename drivers/clk/tegra/{clk-emc.c =3D> clk-tegra124-emc.c} (100%)
> >=20
> > diff --git a/drivers/clk/tegra/Makefile b/drivers/clk/tegra/Makefile
> > index 1f7c30f87ece..dec508ef2ada 100644
> > --- a/drivers/clk/tegra/Makefile
> > +++ b/drivers/clk/tegra/Makefile
> > @@ -14,7 +14,6 @@ obj-y					+=3D clk-tegra-audio.o
> >  obj-y					+=3D clk-tegra-periph.o
> >  obj-y					+=3D clk-tegra-fixed.o
> >  obj-y					+=3D clk-tegra-super-gen4.o
> > -obj-$(CONFIG_TEGRA_CLK_EMC)		+=3D clk-emc.o
> >  obj-$(CONFIG_ARCH_TEGRA_2x_SOC)         +=3D clk-tegra20.o
> >  obj-$(CONFIG_ARCH_TEGRA_2x_SOC)		+=3D clk-tegra20-emc.o
> >  obj-$(CONFIG_ARCH_TEGRA_3x_SOC)         +=3D clk-tegra30.o
> > @@ -22,6 +21,7 @@ obj-$(CONFIG_ARCH_TEGRA_3x_SOC)		+=3D clk-tegra20-emc=
=2Eo
> >  obj-$(CONFIG_ARCH_TEGRA_114_SOC)	+=3D clk-tegra114.o
> >  obj-$(CONFIG_ARCH_TEGRA_124_SOC)	+=3D clk-tegra124.o
> >  obj-$(CONFIG_TEGRA_CLK_DFLL)		+=3D clk-tegra124-dfll-fcpu.o
> > +obj-$(CONFIG_TEGRA_CLK_EMC)		+=3D clk-tegra124-emc.o
>=20
> What about to rename CONFIG_TEGRA_CLK_EMC to CONFIG_TEGRA124_CLK_EMC as
> well?

Yeah, I could do that.

> Also.. maybe the CONFIG_TEGRA_CLK_EMC isn't really needed at all and the
> TEGRA124_EMC of memory/tegra could be re-used here?

Sounds like that should work... let me see what I can do.

Thierry

--5G06lTa6Jq83wMTw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V73QACgkQ3SOs138+
s6GEsg/+IZcdQCLTqDBB8dWq8+IHcYR4MKibWV3/XPcYJ29XjUgSohR1ne4jlJrB
7WeB32SUULUOpmRtHw45hF5htbJYHa2Mxwpqv6NGAyXf+A2Xxls2mKzfqNcujijj
J9ewU0PuBJfvWLjSKGYQtYmIyj73M68NUCJVUaDZ3hbv5INljFNyUN2wuwMzo1L1
jFOfe+O2YBBr157WZlMZLqIDInAEvZUSVYF80KtOdJUw8jU1uh2zP8ufgD6S6ZGt
TuMdHIUyEy9qwFldgwEy2nXBIAIiHWtDDHUDatdn/A8PWw+Auqd0v2XKktucqv4S
+Lq3BG3jCNk54vOWiBjJIDTxF/CrAP03myqF19tNO3OfRLffTjLah1qp//sj//lU
hbq/XEslGhwOzCUvKXawY8RO8yuSGgKDuwV6aSEDNW6Oo0sbCHrMcLFWu2dNR3Gk
KdwiyZFeo0xLH8/P+pIJ+V7xpMnRJpKhYlRrnHl94qt6Gum2LSlQXVATklZHcBoE
1eV5NBovcpH9Eq4FJWFlkkT2VWcLrWam0UF1LG6gBHllWJBXhBvX95k2Yfb3gF4m
Zh2V92hkPa0ZzU3pdNEu8Qlcbm78yAMYHSrN+oNnV7bbbnePkYEiJCauKt+uihB8
UhUFxei8DW+O9tT1MI0QFaPln6dXzUdhr102o4CevKkD9kDft4U=
=ednv
-----END PGP SIGNATURE-----

--5G06lTa6Jq83wMTw--


--===============8396381082625142234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8396381082625142234==--

