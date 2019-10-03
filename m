Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDD7C9F89
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 15:34:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I+qxxKT7iYWvptMYZn8ci+x9fsBwCMkrLCk0TbJpQKU=; b=Zu5dRW88v/reuIRsG00c4W+dK
	ILmLryN9unK6YF2oZYEeWehqbtbGuWugqmbgFXCD9cS6Sa402cTFTZYFy3XWvr4M1I+C57SmYDvu1
	AJtHaSNVJD5r8kyqnaGXUxaYc6At7oilwGZja+8HKtDI2LZVsH390oS0W7azeirYND9OR8+v1D6Lh
	x5Jeyem59IEQJ+aeESLFvRj3MKoJP/jaytnA66LHsJda/j55vyAA8vZaIY6unp7a8s/IppsoygKzp
	0GLxYuxQRdwqEaeI2j9h9+flz+eKtYBbcbLB5Z6KOazDtIQ68s7ZFCZr01uH1fmzro9kczDle8HP3
	JX/GCZuCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iG1Fx-0005KX-6t; Thu, 03 Oct 2019 13:34:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iG1Fp-0005K5-VU
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 13:34:51 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A28D20700;
 Thu,  3 Oct 2019 13:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570109689;
 bh=ApHvRgiWA6cRhXYdkclbMkQdh5sxi8kdnz0cqB74Gvg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MZgD+R+QDCfhRydR0uPmxahHwv3pyjs/0u7P5qUaN9ZrKn1EY1NeQb/rH6Qp1HMaA
 YcYFxynnwZD1MteDBBoz7ouXRHx5raneJ0RAlMFML8nRlR3GaDp4GD6qyiXqRsBbR5
 GQWIUsIluS0VZfxPzYONnrO86rxq51tNC+Pk2opg=
Date: Thu, 3 Oct 2019 15:34:47 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [linux-sunxi] [PATCH 1/3] Revert "drm/sun4i: dsi: Change the
 start delay calculation"
Message-ID: <20191003133447.yh2qcaazn2blphoo@gilmour>
References: <20191001080253.6135-1-icenowy@aosc.io>
 <20191001080253.6135-2-icenowy@aosc.io>
 <CAMty3ZCjrM4MajJLyLwt-31mNnfVWghwatogtwVOvCt4gY0LZA@mail.gmail.com>
 <20191003131916.4bm22krapo5tz6oz@gilmour>
 <E0DBDA94-FA7C-4ED6-AE84-BE1FC5463C0E@aosc.io>
MIME-Version: 1.0
In-Reply-To: <E0DBDA94-FA7C-4ED6-AE84-BE1FC5463C0E@aosc.io>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_063450_034477_FC65EEB8 
X-CRM114-Status: GOOD (  17.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 Jagan Teki <jagan@amarulasolutions.com>, Daniel Vetter <daniel@ffwll.ch>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============9102155375405887212=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9102155375405887212==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ahbpm7frntnvtdny"
Content-Disposition: inline


--ahbpm7frntnvtdny
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 03, 2019 at 09:21:30PM +0800, Icenowy Zheng wrote:
>
>
> =E4=BA=8E 2019=E5=B9=B410=E6=9C=883=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=88=
9:19:16, Maxime Ripard <mripard@kernel.org> =E5=86=99=E5=88=B0:
> >On Thu, Oct 03, 2019 at 12:38:43PM +0530, Jagan Teki wrote:
> >> On Tue, Oct 1, 2019 at 1:33 PM Icenowy Zheng <icenowy@aosc.io> wrote:
> >> >
> >> > This reverts commit da676c6aa6413d59ab0a80c97bbc273025e640b2.
> >> >
> >> > The original commit adds a start parameter to the calculation of
> >the
> >> > start delay according to some old BSP versions from Allwinner.
> >However,
> >> > there're two ways to add this delay -- add it in DSI controller or
> >add
> >> > it in the TCON. Add it in both controllers won't work.
> >> >
> >> > The code before this commit is picked from new versions of BSP
> >kernel,
> >> > which has a comment for the 1 that says "put start_delay to tcon".
> >By
> >> > checking the sun4i_tcon0_mode_set_cpu() in sun4i_tcon driver, it
> >has
> >> > already added this delay, so we shouldn't repeat to add the delay
> >in DSI
> >> > controller, otherwise the timing won't match.
> >>
> >> Thanks for this change. look like this is proper reason for adding +
> >> 1. also adding bsp code links here might help for future reference.
> >>
> >> Otherwise,
> >>
> >> Reviewed-by: Jagan Teki <jagan@amarulasolutions.com>
> >
> >The commit log was better in this one. I ended up merging this one,
> >with your R-b.
>
> Please note that Jagan's v11 3/7 is still needed.

Right, unfortunately, it doesn't apply anymore.

Jagan, can you send that patch rebased?

Thanks!
Maxime

--ahbpm7frntnvtdny
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXZX49wAKCRDj7w1vZxhR
xXlJAP9eYpRWg54xgD3SVv2/I+5gd0AAON4A7dZdtgu+5/pTPQD+PCU1uq8t/VDH
usW3Bq24a2WrKYQM+3lOWKH7WkUhnA4=
=hN/o
-----END PGP SIGNATURE-----

--ahbpm7frntnvtdny--


--===============9102155375405887212==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9102155375405887212==--

