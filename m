Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04D61A84E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7VRlNydG9FHsKnSN0wWkut6Gh/GWtnMNqUhejOVhMxo=; b=EXLtGfDkx51SCmsRO8giiJTvb
	lLynud3jpRsy3wamlyTIFCTQrDaGxEYJ/C1F3uOy7UGR3PCLw/APCxOpnVMzWZraH1HxZk3B+YHPi
	OgRtMW8r0i+TV8cRwXPCFKGPFn9RE4Nm+i+kCBM5Wv4e25CCzeFMpR9WIhEOFxB+RaX5G+J0U7dXc
	B6eu1Nq6WcDWh2HT/gaYhoAWrfKMizRntLNZr9AnpTK/2OJ5RDUMVR35jT7hZH+BD7Pacii5eCfxJ
	iUoQH4L8RKHVkLVqxCPIBVrN3uiuIVagVUqkaQS3YFgrxEM9BwaudfyyCGm4actUof59pqQLiOuLu
	wce5MxSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOORR-0001BJ-CO; Tue, 14 Apr 2020 16:29:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOORD-0001AI-Ok
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:29:33 +0000
Received: by mail-wm1-x342.google.com with SMTP id x4so13677703wmj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:29:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=HjwUJ2rdgqk7yfPt/6aFb6AkYHLc65R6LzpvQtbTgLU=;
 b=brfTLqYGG2BTWixqKkzT/IZQhhwLyIIjRVWJkPw6XJgVe/kYdwXsLtmVcHniPG63bO
 R2o5oMmZrTHhbZGNtZTbdvikrtabvdRk6qHsXj/EkshAAe8E9CmYe+zbzcEZIEksJu7z
 u6K8+KQLVkVJwOR66ocfU+3vOVpquIrWUX+slENez2w+4guiG8Q3TbOUME1JLKCJMzA9
 diB/TM6KENrDCHy9cC9zH776QoOqZeBOD9L5Flgiv0COqOuRIshmrc7zocYW+XPAx1u2
 +6c466IVAMi7K0rd3VqldpHNwBTcWu2gH+VKoI2mJ7yE6yfanE1gEx+NvMEJeonfkk3k
 Ga5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HjwUJ2rdgqk7yfPt/6aFb6AkYHLc65R6LzpvQtbTgLU=;
 b=ajeNTMGCb8/EEw3n812rlpoGEEbIKMOfO7PBKyuHSJky8Jv+6khrLzufltoPaVoBgt
 hjG64o2D5XqiQuvEJCg9vQqfjXt+sr66qr/bOZ4sBeR0QaZtWOyhjGSxQ28o19ZNRJTi
 hBkDVh30hU501meWU2laIgnBG2UKePl+gYrLnn1kvZYa6tVZvf33HfXZIBJcJDdrEoGP
 2P6ijK/ZyB+nU7le0Q1NbNCyw8C3KnknI5NmnMxJSWtE9GPZO68WVBCwevCZl0nu8zwF
 xThvbC0zTtr1Q7V/K1aIGKb0TEHt3BatsrNLwOdj+o5iHtek3vpDs37j3GnS2FIF553w
 apcQ==
X-Gm-Message-State: AGi0PuayoP30ssZoqYIbshE/gv+CkWv1ll1gKt8PL9a9dFOPeBCqDHsu
 TaPAHCzbIo/Nwa8QjfM0E2M=
X-Google-Smtp-Source: APiQypIWJ1Z8mSk51/i+xtZdOYqdqReMtGC+Hc05PDoIRn91gT1uJcnTQD5NU03oRerofwjM62G5TQ==
X-Received: by 2002:a1c:f012:: with SMTP id a18mr624618wmb.41.1586881766494;
 Tue, 14 Apr 2020 09:29:26 -0700 (PDT)
Received: from localhost (pD9E51D62.dip0.t-ipconnect.de. [217.229.29.98])
 by smtp.gmail.com with ESMTPSA id m1sm14546851wro.64.2020.04.14.09.29.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Apr 2020 09:29:25 -0700 (PDT)
Date: Tue, 14 Apr 2020 18:29:24 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v6 11/14] memory: tegra: Support derated timings on
 Tegra210
Message-ID: <20200414162924.GR3593749@ulmo>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-12-thierry.reding@gmail.com>
 <937a1aa6-473a-f6c5-729a-4f34e4ee3abb@gmail.com>
MIME-Version: 1.0
In-Reply-To: <937a1aa6-473a-f6c5-729a-4f34e4ee3abb@gmail.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_092927_825992_F4EB062B 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
Content-Type: multipart/mixed; boundary="===============5706797534630603287=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5706797534630603287==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="juwRYO7N74otsfNI"
Content-Disposition: inline


--juwRYO7N74otsfNI
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 10, 2020 at 05:28:22PM +0300, Dmitry Osipenko wrote:
> 09.04.2020 20:52, Thierry Reding =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > -enum tegra210_emc_dram_over_temp_state {
> > -	TEGRA210_EMC_DRAM_OVER_TEMP_NONE =3D 0,
> > -	TEGRA210_EMC_DRAM_OVER_TEMP_REFRESH_X2,
> > -	TEGRA210_EMC_DRAM_OVER_TEMP_REFRESH_X4,
> > -	TEGRA210_EMC_DRAM_OVER_TEMP_THROTTLE, /* 4x Refresh + derating. */
> > +enum tegra210_emc_refresh {
> > +	TEGRA210_EMC_REFRESH_NOMINAL =3D 0,
> > +	TEGRA210_EMC_REFRESH_2X,
> > +	TEGRA210_EMC_REFRESH_4X,
> > +	TEGRA210_EMC_REFRESH_THROTTLE, /* 4x Refresh + derating. */
> >  };
>=20
> What about to avoid all the unnecessary renamings?

Looks like I forgot to move the addition of this enum to a later patch.

Thierry

--juwRYO7N74otsfNI
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl6V5OEACgkQ3SOs138+
s6GedxAAjMev/glkxqVALMJ3js/+OL+6+tcWF8fwUwt8eeVSB90IejTNv+f0yaGL
agERwBMUH07L0WgF+jp+XFTuKAx1v5FhsF60B30Xh/PpxsMGh8M+nJ3EFDERkzCH
TVVKSuUrx/thQH6OF0Y+iWs1coXD113XNi8KcqNdcSPtSwo9tglvSF/Qb/PPS+4t
/F4+TSNfa3EZk1JZ0JOejJkfIXgJ+Hrkwp8vrhz6Oux7DuZ1vTX6A/ktYuqC+XX/
SDLpOPhnGnhU+BV54+39taQB7k/44cbmmfRgSNdeZUx1yznOAHnsUKvy3IRHq3Bf
8Z0R+2yHTxttx1hiZBMXt5g0Mbek4b5V6NSpWTdW2J6aPmMkiwrQke+M5o+PnYV5
hsB6YVj0qoFVciCfSR1lZSw0qB6e2RibSHkyHC8CiD4qJpJhBfOdXVVGJTLY8lbK
POz8E/LuDaOvCSJf7EhwZ4tUVMOJROzR6WSqaloObQ3s0Bgd0NpS/GWd/LqQLNi/
kFHoHWoFJ0WiuEzNuFjLJ+x/YGIzEChFK5KAPG05RFUyn78pvdmAdfUtMxxuD3cH
KPMzH6+J/1AhszE5mbSRaydbALB0wEMmE5K96anC9ufbe3zGxOKed2q4eYSA853m
gregdGClQ1FEUkDIBiubvqh2DzPhAYz7NnTdY6salzA4mQWoFu8=
=p4SC
-----END PGP SIGNATURE-----

--juwRYO7N74otsfNI--


--===============5706797534630603287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5706797534630603287==--

