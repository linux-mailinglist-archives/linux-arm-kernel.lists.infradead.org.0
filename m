Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E90C1CBA30
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 14:18:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VbHtjmzyrXHE64cYKqBfPKjyo+TaeIRELGtnOmxAB94=; b=EJbG1RIySBv4q8qPvIZqGC3Rw
	79HQI+4JEnXkMusQB1ceEAWYeXp/TkR62WfRghF/1S+9g4B86rFdXHNW4ODLRktv9zywZ5XxPiLHp
	yIeg9JIt+bR0giu8x/+JKoCt/EPA1e4bmbosEIj7XNj1yWKmcbNEuvhfXsQBQSGUfdgndLUqRAe66
	3+MgmwUfAQykXv2U7CkFOXRNcu8SyOekgeFyUPGwe8ZrMqJM1vs5Cu/RBcL30ONCcoOAItfkQWnjb
	yzdL4R171Gmamqy7DhObdihzip1AdNsrMMEzgXlK4+MXHsxcOLwXo8NhcpCYQXep7OUh5eoeQJUD4
	XZKp43uBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGMXR-0006lG-Vt; Fri, 04 Oct 2019 12:18:25 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGMXI-0006kr-SA
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 12:18:18 +0000
Received: by mail-wm1-x343.google.com with SMTP id f22so5627303wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 04 Oct 2019 05:18:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=a5ZHEoqYReyHaWoTAGRJX9sQBJyRzf+dIboLmi7nj5g=;
 b=McaTuND8turrP8fNwJCff5YQXhQrjmaDzl9ocbUv5Ugx29QIrR5ia2DPTooopT3un9
 4qrw0YjmUxHAOAcP9DWHMrgFTTLgE7xlkEpojcldyDCdQtJiP/CXyFtPoT1xDUzTg3kn
 T6pv3yrrrhHGsxllnl+Ig9xB4eBr3UOs3tCfZXjoXMp71CzF2s/kcEPNjirjRC1HOTLH
 L4e0HDc/zJDoRf+fh5TIo5ooRwVhtH9mzXzna/MoQpkA3uOToDmMRMex7a1dLcRiCk8J
 Yh8ML/FxXVC6lcQz5yBlEO7i3/xsHEHr2LA6+jjxIJM71kN3b0R7ZU2cKmb3MZ/b5sBO
 P9NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a5ZHEoqYReyHaWoTAGRJX9sQBJyRzf+dIboLmi7nj5g=;
 b=n6UX004VfWZwdhsqz0IJ1Cqpfi187h95bvdi3Tdw+iWJDxYXf4cZdzUqlctqX7PQRT
 6/xkM6YhA0yZOe9sxApTeUFJEVpVNfw5QUN/fPgRlxRQS0sRUD7xZtNqwXihPezvmGFh
 ZuHU4AozOo5FyPS9hWRcJMwhJVUikvBGnNv/x3zQC9xD/Xhb+nYJU8oidxDEtOU+62iy
 5/dVBS/LpK9gKL/snNhNnSmnbiriqt//Cuja4dqU19s3DIwqr8erRXCOHA+JY2Z6oFwE
 UWoCHo0AsQX66NaRoqkSNza2NaMHOMTVMStYFofwWq09+8InXcteZ6Ew1sokBFccGD88
 +LVQ==
X-Gm-Message-State: APjAAAUSDwRPzpQ2M3dBYpD8UTG84dWv2h/QirgO3wf+KTHqXVjuB8XA
 TCgWiF6fZUxvUjFN5rYSAtY=
X-Google-Smtp-Source: APXvYqxJzlLEHbVZCmH6QoqZrLg/HvfDtfdkC4eDJSbBmNwr4U6R0EuzbBoYdlFg1/DhY1M0HTD9EA==
X-Received: by 2002:a1c:1d84:: with SMTP id d126mr10361445wmd.58.1570191494755; 
 Fri, 04 Oct 2019 05:18:14 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id z189sm6462542wmc.25.2019.10.04.05.18.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 04 Oct 2019 05:18:13 -0700 (PDT)
Date: Fri, 4 Oct 2019 14:18:12 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH 1/4] clk: tegra: Enable fuse clock on Tegra124
Message-ID: <20191004121812.GB227112@ulmo>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
 <20191002110454.GJ3716706@ulmo>
 <6a48d716-2312-4623-f47a-a53ac2ece83c@wwwdotorg.org>
MIME-Version: 1.0
In-Reply-To: <6a48d716-2312-4623-f47a-a53ac2ece83c@wwwdotorg.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_051816_939991_3185832B 
X-CRM114-Status: GOOD (  26.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Prashant Gaikwad <pgaikwad@nvidia.com>, Stephen Boyd <sboyd@kernel.org>,
 Peter De Schrijver <pdeschrijver@nvidia.com>, linux-clk@vger.kernel.org,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-tegra@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3056316276139130121=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3056316276139130121==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="eAbsdosE1cNLO4uF"
Content-Disposition: inline


--eAbsdosE1cNLO4uF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 02, 2019 at 02:59:03PM -0600, Stephen Warren wrote:
> On 10/2/19 5:04 AM, Thierry Reding wrote:
> > On Tue, Oct 01, 2019 at 03:13:43PM -0600, Stephen Warren wrote:
> > > From: Stephen Warren <swarren@nvidia.com>
> > >=20
> > > For a little over a year, U-Boot has configured the flow controller to
> > > perform automatic RAM re-repair on off->on power transitions of the C=
PU
> > > rail1]. This is mandatory for correct operation of Tegra124. However,=
 RAM
> > > re-repair relies on certain clocks, which the kernel must enable and
> > > leave running. The fuse clock is one of those clocks. Enable this clo=
ck
> > > so that LP1 power mode (system suspend) operates correctly.
> > >=20
> > > [1] 3cc7942a4ae5 ARM: tegra: implement RAM repair
> > >=20
> > > Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
> > > Cc: stable@vger.kernel.org
> > > Signed-off-by: Stephen Warren <swarren@nvidia.com>
> > > ---
> > >   drivers/clk/tegra/clk-tegra124.c | 1 +
> > >   1 file changed, 1 insertion(+)
> > >=20
> > > diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk=
-tegra124.c
> > > index 0224fdc4766f..f53f6315c646 100644
> > > --- a/drivers/clk/tegra/clk-tegra124.c
> > > +++ b/drivers/clk/tegra/clk-tegra124.c
> > > @@ -1291,6 +1291,7 @@ static struct tegra_clk_init_table common_init_=
table[] __initdata =3D {
> > >   };
> > >   static struct tegra_clk_init_table tegra124_init_table[] __initdata=
 =3D {
> > > +	{ TEGRA124_CLK_FUSE, -1, 0, 1 },
> >=20
> > I think the correct way to do this these days is to mark the clock as
> > CRITICAL. Not sure if there's an easy way to do that given that the
> > clock init table doesn't allow storing flags.
> >=20
> > Do you have any good ideas on how to achieve this with the critical flag
> > instead of forcing the refcount to 1?
> >=20
> > Perhaps something like the below would work?
> > ...
>=20
> The following works for me; does this seem like a reasonable approach? It
> does set the critical flag for all SoCs, including any that don't require
> RAM re-repair. I'm not sure which do; I know it's more than just Tegra124,
> but I'm not sure how far back/forward the requirement goes.
>=20
> > diff --git a/drivers/clk/tegra/clk-tegra-periph.c b/drivers/clk/tegra/c=
lk-tegra-periph.c
> > index 1ed85f120a1b..76dd91eebd13 100644
> > --- a/drivers/clk/tegra/clk-tegra-periph.c
> > +++ b/drivers/clk/tegra/clk-tegra-periph.c
> > @@ -785,7 +785,7 @@ static struct tegra_periph_init_data gate_clks[] =
=3D {
> >         GATE("ahbdma", "hclk", 33, 0, tegra_clk_ahbdma, 0),
> >         GATE("apbdma", "pclk", 34, 0, tegra_clk_apbdma, 0),
> >         GATE("kbc", "clk_32k", 36, TEGRA_PERIPH_ON_APB | TEGRA_PERIPH_N=
O_RESET, tegra_clk_kbc, 0),
> > -       GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, =
0),
> > +       GATE("fuse", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_fuse, =
CLK_IS_CRITICAL),
> >         GATE("fuse_burn", "clk_m", 39, TEGRA_PERIPH_ON_APB, tegra_clk_f=
use_burn, 0),
> >         GATE("kfuse", "clk_m", 40, TEGRA_PERIPH_ON_APB, tegra_clk_kfuse=
, 0),
> >         GATE("apbif", "clk_m", 107, TEGRA_PERIPH_ON_APB, tegra_clk_apbi=
f, 0),

It's probably fine to do this. The patch I proposed would've restricted
the change to just Tegra124. But if we need this on other generations, I
don't think the extra complexity is justified, especially since I can't
imagine that the FUSE clock remaining always on would consume a lot of
extra power.

Thierry

--eAbsdosE1cNLO4uF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2XOIQACgkQ3SOs138+
s6HlwxAAh5ESXhxNQcvDEspLmSsT6O8TIw5aMmfrdeUldnIoOilb5YUh4dp7CixY
/+pOnbUDDYbNaYlViZ65/xqJ5/C0+iDn7Kxs4t/AN5W7HNVeUL6p5ltd/iRNIpF7
eiyePXcChZOmYc98HtSsos+2cOMfQ6vyvpDN90tETJZrPvrxp66osXSy2YaECWqy
SE6DeN4eJof5bnY+t8EiiXK2rfIcuKMNG9axtYuDcNWlvG+tIrNUbcF2GaajESXe
yfxAjlFH2CKfhQ0ju7DIxxkfFhtStvm+1qnW4oUPEzC4LIRRTRBHDFWOmrPnU0UH
DKvVQxWSfanaNNFSCBTsT6J+qpVR0N78MlBgWeM9DCQq4fy0lcrozLQhyuyQHeh2
OyXmhfFSm53UilGeFG84kBgu2QfDlWjFMLg4rndPIqCBlVoowbPu6u62Dolxpfp7
ejH7+jGz3ftckFJblStXDw5AwR7x0Aa8X4xYqzrkbDcVXw7R5Mynn6vWYxGurWRd
M4I2Lozh/HqPHAIkSvHujI7GxLxa5fVez9kUPMjIyWB6eIE7yE2u33NEQ86FFzlr
x0hOLwNhnXhhAZXeKqP6N6wpCTVBX9AVZEGjjRaQKAXIaJWhBbqV5r5PNYGJIPvq
AUqYyl/uWZ1GqdJSoLVS42uhIz7D+CsHVGAZfAm7PDpvMg2ol3Q=
=C3XR
-----END PGP SIGNATURE-----

--eAbsdosE1cNLO4uF--


--===============3056316276139130121==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3056316276139130121==--

