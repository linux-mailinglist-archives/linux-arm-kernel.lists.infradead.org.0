Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC0CB7983
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 14:33:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DsN0uzhzTFCk36RY39Upz9Msu4qER7Scb1qCe/2hGm4=; b=nOJty2rpVmip19VV5Lpk9iyuw
	PU4odeBuWiRxWQjBIU0alv6rP+OSgdw1qH5XFA9F8O/jfTLM6NdtjDziBjZzKAQli55Y/eBU29WUT
	KHV/1oYGnO0tm8VY+rE9+XrQzQbkL0RnYiymeS2ZvAjdWCT0bxM/pjNen9VlOHDnAnRH4oEc7p7cn
	mrDwZ2lL/9Ho6P2SymX/cp5QfjrJAqB22CkxtVeIuCKniWgJF6dXj1d520D8HI28EThyJF3YzJwib
	95h7fZFVYHyNZZpoyUYcZikzRkemw0kuzH1To+ANlFSNW7/oBgf6UpNiXzKo8GhTzSoZl2Q3VLRfQ
	9hizXq9AA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAvck-0004vB-Ar; Thu, 19 Sep 2019 12:33:26 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAvcK-0004uC-2f; Thu, 19 Sep 2019 12:33:01 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: alyssa) with ESMTPSA id B8C1C28E946
Date: Thu, 19 Sep 2019 08:32:43 -0400
From: Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>
To: Nicolas Boichat <drinkcat@chromium.org>
Subject: Re: [PATCH] arm64: dts: mt8183: Add node for the Mali GPU
Message-ID: <20190919123243.GA3457@kevin>
References: <20190905081546.42716-1-drinkcat@chromium.org>
 <CAL_JsqJCO2G90TTT9Mpy4kjVKQyXWw4aXEEnbRp_SE8X=EGc5g@mail.gmail.com>
 <CANMq1KCTPdFhJG1SLf-i+-557Yx-1WLzWCHu3tT_5Q2BF+JgdQ@mail.gmail.com>
 <20190913181729.GB3115@kevin>
 <CANMq1KD++==d0Mb6T2gKU1T7c_MaedswOYdxqEqEKKUL1bxgiw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANMq1KD++==d0Mb6T2gKU1T7c_MaedswOYdxqEqEKKUL1bxgiw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_053300_254284_1A3B3FCB 
X-CRM114-Status: GOOD (  15.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Dominik Behr <dbehr@chromium.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Steven Price <steven.price@arm.com>,
 Nick Fan <nick.fan@mediatek.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============8878456813461194414=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8878456813461194414==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="sm4nu43k4a2Rpi4c"
Content-Disposition: inline


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

> > By the time MT8183 shows up in more concrete devices, it will, certainly
> > in kernel-space and likely in userspace as well. At present, the DDK can
> > be modified to run on top of the in-tree Mali drivers, i.e. "Bifrost on
> > mainline linux-next (+ page table/compatible patches), with blob
> > userspace".
> >
> > While the open userspace isn't ready here quite yet, I would definitely
> > encourage upstream kernel for ChromeOS, since then there's no need to
> > maintain the out-of-tree GPU driver.
>=20
> That's an interesting idea, I had no idea, thanks for the info!
>=20
> Would that work with midgard as well? We have released hardware with
> RK3288/3399, so it might be nice to experiment with these first.

Yes, the above would work with Midgard as well with no changes needed.
Ping Steven about thtat (CC'd).

> > More immediately, per Rob's review, it's important that the bindings
> > accepted upstream work with the in-tree Bifrost driver. Conceptually,
> > once Mesa supports Bifrost, if I install Debian on a MT8183 board,
> > everything should just work. I shouldn't need MT-specific changes / need
> > to change names for the DT. Regardless of which kernel driver you end up
> > using, minimally sharing the DT is good for everyone :-)
>=20
> Yes. I'll try to dig further with MTK, but this may take some time.

Thank you!

--sm4nu43k4a2Rpi4c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQ17gm7CvANAdqvY4/v5QWgr1WA0FAl2DdWcACgkQ/v5QWgr1
WA1hxw//TRYFfG359ycsk4qVwveSnK9GFoKgfPx0UD6KVttjcVebh10JgmvhdS6P
MIUe3X2Z55xOliZtP/J8aRTI+GcqodYOm+2NXit9Qrs9ME3wH1PribyPOanVdDeY
LyVOiz2hKFiXgIQ+Tc3IwbKF8fG/9J1SCuBCPF7WhxWPPCq/M8l9nfis2BptnMri
e/qXnFjFULKgZqr2PT/iAE4FwqqRwazg3zZrknP+pVyluXKYm2yjVN9wpjG9PD+/
rxjgLJF8q+YmhTnVsN17bs5/lM0I1DPAMPaQqcDgYXt2BDpqqX1iImmxvLhWo2Gd
cJ9uLExJvgwlpwGAv/q5S6UDJb6Svm2Hj9vqhE4gc0nRldJ+z61CnoSZZxohSOLP
c37VB3DCoy2Nq3AYL2RWWESL1e7fmrFvhfXAn+vUguvufzv6khm/ymkV/Fv3sCIf
pScO4+/WtjsjPVCUJhqE/sJmQAZSGJl3JntNPjW/Wcx/RytrfduL7/xDm36jtC5u
zMTPdW9gZlS6ljNBVpErL1sq40MLM3aH8uUaeiOZmq+/P8zDYYBPgxAPPQ+oa0Ai
y3uXXGb80thBw3uCZQlYmfeo5pfGb8opGmvEGejJWy05CC/jZIdDvq7vm0Cw9r0Y
FniCzNzidydYsTv2Hg6rPNSGHAfh2ZzJq9nSRKhUa4HpZEOK0SY=
=V95/
-----END PGP SIGNATURE-----

--sm4nu43k4a2Rpi4c--


--===============8878456813461194414==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8878456813461194414==--

