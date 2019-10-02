Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D34E4C86EE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 13:05:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MS7ljM6RMxhwygEROGjkeEoRXuXKaWqULYoz8Gd7PaI=; b=ugg9DP7FA+EuQnrLZSFk1r1dY
	h1dH6lNw/nmEFUwhA4RY7vrVidMJVJRR59TAwYm7mKx9diK7c3V8JLls706aVNNFtaHx0JHUqLr3n
	44Sxv8unxnTAJjXQ1frpcARJGDpXRfSSFbH5/h/f2YwUdnoRh1Vo5VEzcwR/Zb+slg+GLFcQOQU9O
	6aXMH8dz+DYF59cI6F4i3zuPfQmkpn4eC57wafjFa6cJBXis6mummdvz0iMXVZcZ39dzIF7WSCE5E
	tOFfVmLuhZMClvivtKk5noS7Oh3N8u4ak0p3Aa3a2/9FlDENs1L5WyRskyjFAluOYYmjmRzuanzzn
	mPkslJ97w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFcRS-00052D-V5; Wed, 02 Oct 2019 11:05:10 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFcRH-0004qf-8R
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 11:05:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id 3so6524003wmi.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 04:04:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hzHiNYwEiQMY1fQfolaX55jjgo9qLlhwuZiwsuSVSjk=;
 b=lb/xNqmMYB8GiTdRbmVtRVwbbWCvqiKM9Bq2DlqnOdT1yV1ZXIvHy5DSfXhT2ySOZU
 NxxIgsgOtdtaPUF07kwEHY1+QhH7+HLjQ4OeOFLDcpNECezGowa/TOrIOF/9v4ZAbkwZ
 dGNTIVnypie+aL36RZk/i38s6HKQCq6UAL5H6cJFPOpMCEND/KQ3as+7ScOcm0oyL9hO
 i7kbRFJpyamg3ZMTpOPAVeBvz/63SuOZPJeF5n5XhQ6ANijKQhSk/r9dROmQAq6z3Gsi
 CD+c9NhM1NIyfqQbbT+ccf/KVYAcATPK8PyjbD3Yloe5H0prWLuBNTRb+2MOep0hYxUG
 FD5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hzHiNYwEiQMY1fQfolaX55jjgo9qLlhwuZiwsuSVSjk=;
 b=tC/jgbkHRAiSBjHkh6IClUiTzytjujTkU86y/QPmiF4SnvqGn+4lr7uxFWYHuT5r8U
 2RFHFhDsa94gWrqop5abp+KTeVmy3h/PaQPa/jCZL44jTCm29NnYXf51jStZcNCAxAuI
 W6p2IJijEWXtI4fgl6LDY+ASdcylPjAu8FaEhfDPIUgtmJie2BDBx0mWc5mCtzUJXJLZ
 Rul0QQBSw+YWFEKpxFc3Dgsl5q81ML+y5VwZulAxMJEA/3jp+FZ1pwrVPpMKMihofEoL
 fKxBudEBLNsSINRKF0YD5gHfJ/4SqwUCqpr447xf+9YUlD+Wm4pJH1oZtAhsaL/+Im40
 414g==
X-Gm-Message-State: APjAAAWefEiNoJYTXO386iAC+4Qs3wfGcO2OSiVq20ieduZ1/xyScMJU
 No3lGPGVCp1uuKrrnI7qmvs=
X-Google-Smtp-Source: APXvYqxK+eN/tu6LMT3Jp958TgJOonu+QZb5u78vyMwFWSzhIw3yjXT0Lr1eTKTtPaYMkuG3AXtkkg==
X-Received: by 2002:a1c:9c52:: with SMTP id f79mr2386773wme.89.1570014297525; 
 Wed, 02 Oct 2019 04:04:57 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id q15sm41028596wrg.65.2019.10.02.04.04.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2019 04:04:55 -0700 (PDT)
Date: Wed, 2 Oct 2019 13:04:54 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Stephen Warren <swarren@wwwdotorg.org>
Subject: Re: [PATCH 1/4] clk: tegra: Enable fuse clock on Tegra124
Message-ID: <20191002110454.GJ3716706@ulmo>
References: <20191001211346.104400-1-swarren@wwwdotorg.org>
MIME-Version: 1.0
In-Reply-To: <20191001211346.104400-1-swarren@wwwdotorg.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_040459_300714_69EAB6D6 
X-CRM114-Status: GOOD (  19.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============0404798811146570980=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0404798811146570980==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rmUrFcWP4LYae1gV"
Content-Disposition: inline


--rmUrFcWP4LYae1gV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 01, 2019 at 03:13:43PM -0600, Stephen Warren wrote:
> From: Stephen Warren <swarren@nvidia.com>
>=20
> For a little over a year, U-Boot has configured the flow controller to
> perform automatic RAM re-repair on off->on power transitions of the CPU
> rail1]. This is mandatory for correct operation of Tegra124. However, RAM
> re-repair relies on certain clocks, which the kernel must enable and
> leave running. The fuse clock is one of those clocks. Enable this clock
> so that LP1 power mode (system suspend) operates correctly.
>=20
> [1] 3cc7942a4ae5 ARM: tegra: implement RAM repair
>=20
> Reported-by: Jonathan Hunter <jonathanh@nvidia.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: Stephen Warren <swarren@nvidia.com>
> ---
>  drivers/clk/tegra/clk-tegra124.c | 1 +
>  1 file changed, 1 insertion(+)
>=20
> diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-teg=
ra124.c
> index 0224fdc4766f..f53f6315c646 100644
> --- a/drivers/clk/tegra/clk-tegra124.c
> +++ b/drivers/clk/tegra/clk-tegra124.c
> @@ -1291,6 +1291,7 @@ static struct tegra_clk_init_table common_init_tabl=
e[] __initdata =3D {
>  };
> =20
>  static struct tegra_clk_init_table tegra124_init_table[] __initdata =3D {
> +	{ TEGRA124_CLK_FUSE, -1, 0, 1 },

I think the correct way to do this these days is to mark the clock as
CRITICAL. Not sure if there's an easy way to do that given that the
clock init table doesn't allow storing flags.

Do you have any good ideas on how to achieve this with the critical flag
instead of forcing the refcount to 1?

Perhaps something like the below would work?

Thierry

--- >8 ---
diff --git a/drivers/clk/tegra/clk-tegra124.c b/drivers/clk/tegra/clk-tegra=
124.c
index 0224fdc4766f..bba12d8308d3 100644
--- a/drivers/clk/tegra/clk-tegra124.c
+++ b/drivers/clk/tegra/clk-tegra124.c
@@ -838,7 +838,7 @@ static struct tegra_clk tegra124_clks[tegra_clk_max] __=
initdata =3D {
 	[tegra_clk_spdif_out] =3D { .dt_id =3D TEGRA124_CLK_SPDIF_OUT, .present =
=3D true },
 	[tegra_clk_vi_9] =3D { .dt_id =3D TEGRA124_CLK_VI, .present =3D true },
 	[tegra_clk_vi_sensor_8] =3D { .dt_id =3D TEGRA124_CLK_VI_SENSOR, .present=
 =3D true },
-	[tegra_clk_fuse] =3D { .dt_id =3D TEGRA124_CLK_FUSE, .present =3D true },
+	[tegra_clk_fuse] =3D { .dt_id =3D TEGRA124_CLK_FUSE, .present =3D false },
 	[tegra_clk_fuse_burn] =3D { .dt_id =3D TEGRA124_CLK_FUSE_BURN, .present =
=3D true },
 	[tegra_clk_clk_32k] =3D { .dt_id =3D TEGRA124_CLK_CLK_32K, .present =3D t=
rue },
 	[tegra_clk_clk_m] =3D { .dt_id =3D TEGRA124_CLK_CLK_M, .present =3D true =
},
@@ -1033,6 +1033,12 @@ static __init void tegra124_periph_clk_init(void __i=
omem *clk_base,
 	clk_register_clkdev(clk, "cml1", NULL);
 	clks[TEGRA124_CLK_CML1] =3D clk;
=20
+	clk =3D tegra_clk_register_periph_gate("fuse", "clk_m",
+					     TEGRA_PERIPH_ON_APB, clk_base,
+					     CLK_IS_CRITICAL, 39,
+					     periph_clk_enb_refcnt);
+	clks[TEGRA124_CLK_FUSE] =3D clk;
+
 	tegra_periph_clk_init(clk_base, pmc_base, tegra124_clks, &pll_p_params);
 }
=20

--rmUrFcWP4LYae1gV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2UhFMACgkQ3SOs138+
s6FlZQ//cKIMvXQriD1VmW+HASRz/xjiUiEIAO7HKSifQ3AGz8Cefz3bltXfJgnl
PMWqX+UpxTMkUYNLqCl5bRwUQruyhnxVmeHDIlairmkEGAhrWvZpqgiQdrAoZzmp
/ruHc2e/hBWNUXEGHia9eeD5zwUNtUmI/XQQAXmoLSTTv38OooQWIp8ff/i3hwLh
921GSaoLo4QQmlzpU+VoUAlvBAbBZzL6a7/2QT6/CDP7g47PJfeD8xoQH+kuGHPn
B6ZWxqMq7CteI7SfdWRpF/frmaCV5bxQQ9w3+bwLxDl+CxXKV2AA/GjYt9In2M0Q
kqrCMM+77y+K4VL5Nz3BA46Z8TUK+5jLmrhYMpA3e5PrxeTEWKb+q+XDa1OnKNPK
mIfFYv97pPeKnBi5nOIy8AemssitWpbHBskVrRG42LjyQ5cknUvrNcCByOgW/6LC
UT1RvXZbukY0X2B0ePTiyMGRh5IVqiuUC6QqvBMP4WncDnKncKKcA1N8In22DaFZ
61uJdMIXMurMkDR3IfR4ZKUvKFHeojGmzBzO5lQyWOua11S1yJcfwoIqhRW4JPEy
nySi33yc0t9Nm6AhXeArW1r1fnrujO2+9aqEaMtiYnnym6kQhs8RfaQ0eke92KAJ
QroNOG0WObaFbkOv0MW7RB1DAxgcPeMrWWRysiEaZ4rYFho+MgE=
=hRxp
-----END PGP SIGNATURE-----

--rmUrFcWP4LYae1gV--


--===============0404798811146570980==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0404798811146570980==--

