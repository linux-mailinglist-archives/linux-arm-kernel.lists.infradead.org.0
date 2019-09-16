Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DA91B3E1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 17:50:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hdpAdKB9t2rP3tyQ3a+MBnPi0dcP3jjhmTsqIMgWMrw=; b=T/ExeAD3kmYgb3zV9XD+yhDnK
	euX9a8gl9rHfawx3jcg2rS/mOD+6ywNmv8Vmevf7Xy30rGZ8wV2JwMykXAcYQc1VOsLlkOGoq7omH
	pS54fQSJXjbuG4tCkBrFpSSY0QrJE4iQwhHdxvgAd4BYWfnh7BRk2uqmmQQs8jN6b4sADSNhCF5bT
	vvIWR15FG9oIolXhnVkz6EmFVQGDYDfzSem1nqdq49Am9OkA1Q9rOw/NtwUBVlcfORhegLrI78Gfr
	Yuv2GTMTGxHSD/tHO8ua0VWSpbX7VnWn2m+xhMJ+wNRrEmwmbcCz24g8UDo5EqfVaVVze9FafNRqz
	CKBuXVZ8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9tHD-0001k8-Fd; Mon, 16 Sep 2019 15:50:55 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9tGv-0001jJ-NB
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 15:50:39 +0000
Received: by mail-ed1-x543.google.com with SMTP id y91so506746ede.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Sep 2019 08:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DXT5s5fcLo5soj6xPZXRL1OiieH+UG8Sh7YMbwrqdTY=;
 b=Z86ccvCJI2Ejf1Us2VTCs5VOixyaILzuUwsvay36+/c6qmGFGLxx/9cKATXG/I17tZ
 mORrbl5596r0TfEbX3g3qi7IJ5RkZ+AIeJO90befmT2ShG/Pg3ykLQNPEc7D2+t62vmk
 lTyMSb/ZS0NNJDnrR5m8xCCC0LzXaXFo7ynisqndrutAslb+pEfoo6bSEilKm2gz2Mc/
 noOpnkTqfvAUjSZhFT7x7kUlWUR53Ek73PKSFqRH4Spp2cHgxJVz0Bk6QKnCdEmECHSB
 gaPg8Pj+lVu/RXgXLQF5/XFBSkEVRblwmxuX2krVH2V8QgloFoTn61ux+s2QIFqc6ws0
 r9ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DXT5s5fcLo5soj6xPZXRL1OiieH+UG8Sh7YMbwrqdTY=;
 b=O9lwSZoXQ3RbJBBj5rtiU/ZYoA+3ZsPKFK1XJTJqbfUN6CaGVtnAHYD+OWHcENgl3A
 x06HwOWBpdZz4jjNFQQM6y13MCB6hIJjcMhCXf/3W+9Y76Qg9HGmiuUBsanE50VTT691
 isG0cYuc1pdx0B10aDBZI7OrF/n++cAK6ZZKL2G1l3W041wL9S8zSuWH5xdv6//HkKT8
 TQ/GlzoG96IunmV5KYHCHph94b1repKZmD2jb36rsX1frLHNlZ7sL6DwhHz/Klmgp3Ld
 nuZ557cjGuUNn5w4GK3hEL/yrnwy8iM33h+swOGRc13r8NtHYN/WY0441UWwBzO/MbzX
 Vg0A==
X-Gm-Message-State: APjAAAVm3aYvwOxmSAyYAaV6byGe91rEAEIencDmlcvRAOM0lsPmfbXf
 qaygVHC8ZlAW3iQS1CNzDPK3vs/r
X-Google-Smtp-Source: APXvYqxemzQcB+foO0oWW16WA8jesorwVSirhODeLhX0PsKWxQEP74hj5zCxde53PT5+a6JMAEj5cA==
X-Received: by 2002:a05:6402:1501:: with SMTP id
 f1mr8902512edw.76.1568649034241; 
 Mon, 16 Sep 2019 08:50:34 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id oo23sm4321225ejb.64.2019.09.16.08.50.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Sep 2019 08:50:32 -0700 (PDT)
Date: Mon, 16 Sep 2019 17:50:31 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH 0/6] ARM, arm64: Remove arm_pm_restart()
Message-ID: <20190916155031.GE7488@ulmo>
References: <20170130110512.6943-1-thierry.reding@gmail.com>
 <20190914152544.GA17499@roeck-us.net>
 <CAK8P3a3G_9EeK-Xp7ZeA0EN7WNzrL7AxoQcNZ8z-oe5NsTYW6g@mail.gmail.com>
 <056ccf5c-6c6c-090b-6ca1-ab666021db48@roeck-us.net>
 <20190916134920.GA18267@ulmo> <20190916154336.GA6628@roeck-us.net>
MIME-Version: 1.0
In-Reply-To: <20190916154336.GA6628@roeck-us.net>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_085037_761117_47D7D77E 
X-CRM114-Status: GOOD (  26.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: multipart/mixed; boundary="===============8307714486159819806=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8307714486159819806==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0H629O+sVkh21xTi"
Content-Disposition: inline


--0H629O+sVkh21xTi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 16, 2019 at 08:43:36AM -0700, Guenter Roeck wrote:
> On Mon, Sep 16, 2019 at 03:49:20PM +0200, Thierry Reding wrote:
> > On Mon, Sep 16, 2019 at 06:17:01AM -0700, Guenter Roeck wrote:
> > > On 9/16/19 12:49 AM, Arnd Bergmann wrote:
> > > > On Sat, Sep 14, 2019 at 5:26 PM Guenter Roeck <linux@roeck-us.net> =
wrote:
> > > > > On Mon, Jan 30, 2017 at 12:05:06PM +0100, Thierry Reding wrote:
> > > > > > From: Thierry Reding <treding@nvidia.com>
> > > > > >=20
> > > > > > Hi everyone,
> > > > > >=20
> > > > > > This small series is preparatory work for a series that I'm wor=
king on
> > > > > > which attempts to establish a formal framework for system resta=
rt and
> > > > > > power off.
> > > > > >=20
> > > > > > Guenter has done a lot of good work in this area, but it never =
got
> > > > > > merged. I think this set is a valuable addition to the kernel b=
ecause
> > > > > > it converts all odd providers to the established mechanism for =
restart.
> > > > > >=20
> > > > > > Since this is stretched across both 32-bit and 64-bit ARM, as w=
ell as
> > > > > > PSCI, and given the SoC/board level of functionality, I think i=
t might
> > > > > > make sense to take this through the ARM SoC tree in order to si=
mplify
> > > > > > the interdependencies. But it should also be possible to take p=
atches
> > > > > > 1-4 via their respective trees this cycle and patches 5-6 throu=
gh the
> > > > > > ARM and arm64 trees for the next cycle, if that's preferred.
> > > > > >=20
> > > > >=20
> > > > > We tried this twice now, and it seems to go nowhere. What does it=
 take
> > > > > to get it applied ?
> > > >=20
> > > > Can you send a pull request to soc@kernel.org after the merge windo=
w,
> > > > with everyone else on Cc? If nobody objects, I'll merge it through
> > > > the soc tree.
> > > >=20
> > >=20
> > > Sure, I'll rebase and do that.
> >=20
> > I've uploaded a rebased tree here:
> >=20
> > 	https://github.com/thierryreding/linux/tree/for-5.5/system-power-reset
> >=20
> > The first 6 patches in that tree correspond to this series. There were a
> > couple of conflicts I had to resolve and I haven't fully tested the
> > series yet, but if you haven't done any of the rebasing, the above may
> > be useful to you.
> >=20
>=20
> Maybe Arnd can just use your branch (or rather part of it if you would
> split it off) since you already did the work ?

Yeah, I can just send the pull request for the 6 patches after -rc1.

Thierry

--0H629O+sVkh21xTi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl1/r0cACgkQ3SOs138+
s6Hcsg//fOHVfHF/Lf4ZR1EsztDM9RWSeiV9KzV5if3/BHqV9rjYuaYD5mEGOS5/
PDmXH7k6ndPcHqi2x+QfSNUhd629S+6X63wsFswe40l1mGOcAWIYS+0Qs+hKLZh2
FtaX78iD9aKSe1/l6HEwMhw2PEGDYTSCEXr39/O8zfNRhfgmVWTXVKDFC5UR+XHw
BThItNfSoGksS1MdGERKUemF4mNhX+2tPfPYEE7sjPkf/f+Fg/vufZYCsTETWQo2
Bj35696KNjRgsYZjN5WQ3FgFA6Sz4dOqsV4c7A2iZ1294OSfKIfi4WKIWg3tJX5q
yVH/E+mXwi59c62LqNhYiS/A+ukYvMcSZZvKKCQFCw5Gc/KmdUcR724N1Xi+zMAk
kHMHJ7ADvsyJ3tYi9vck1yFpZzsCkQJzcrR///MGx3mO41offZed73j/gH/kFm7r
hoYb9y2x+E97keY++ESodR758zUlSyWXF4sR4LVmpeeqHQw25Xc+s8wXlAfy+K3T
2zE1DbxdlPB4qIjZ2FTKah7Y/h4th0+oaUa7P6ZDbrySrswFuwv3RoIK+UkZROB2
B0FRfEvtXsgqMr6T/e8x9svVhFxdar8uFtXlT9cArc79wPusjANzFP70opkQ62zN
SokCNLDqLbv0Fx4YBAZt2eFlVhvrMGQE34Ni/2R6nuDbMNHu5R4=
=bM0l
-----END PGP SIGNATURE-----

--0H629O+sVkh21xTi--


--===============8307714486159819806==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8307714486159819806==--

