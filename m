Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 738634B60D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:17:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BzVYOu8nkBeq/BjpgOcvN1q+TBLtr7MBdthhbUlvRyA=; b=kgEv52MMolvqnDidz8aapOMOS
	M2sMn0t5C34p2lvJnqkkC2U7DqJkd2LRv4JHths5HbQGAuizpqqqJcvbkubmKs4U9ishgf5kBpTPM
	xx/yCmSluQtxBwqbpJHwog7NGh1hSTKGwv/g6rHSci2Zo7s57R5posEd6yLtfSuphPKGrLAcwgHcv
	+9vSi0/ZHzriGCBbwQn5h0CQt6xiiSKRIEZNFZBBeUPyF0kelXG9ONK/mK1L1DB0pDtXe81SOFQiK
	ABZQGQqWlYbx5xIC1z2lBKwoIzOGjUrh8gD4z95gS34Qo/mWonkpSCP9cZ+hbtTf9nUMeWGl7stwN
	yGy/Mj6OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXeF-0002eu-T4; Wed, 19 Jun 2019 10:16:59 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXe5-0002dv-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:16:52 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 287CB240010;
 Wed, 19 Jun 2019 10:16:41 +0000 (UTC)
Date: Wed, 19 Jun 2019 12:16:41 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH v5 07/12] drm/modes: Allow to specify rotation and
 reflection on the commandline
Message-ID: <20190619101641.5wimygyv7uoorylw@flea>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <777da16e42db757c1f5b414b5ca34507097fed5c.1560783090.git-series.maxime.ripard@bootlin.com>
 <a106a40f-4918-e9b6-2d58-f7ad9d7b191d@tronnes.org>
MIME-Version: 1.0
In-Reply-To: <a106a40f-4918-e9b6-2d58-f7ad9d7b191d@tronnes.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_031649_836761_BE529E99 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: eben@raspberrypi.org, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel@lists.freedesktop.org,
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Eric Anholt <eric@anholt.net>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7837934029016990803=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7837934029016990803==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ooppuouaxuwtdyr6"
Content-Disposition: inline


--ooppuouaxuwtdyr6
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 18, 2019 at 07:47:04PM +0200, Noralf Tr=F8nnes wrote:
> > diff --git a/Documentation/fb/modedb.rst b/Documentation/fb/modedb.rst
> > index 3c2397293977..3e8a6f79dcd7 100644
> > --- a/Documentation/fb/modedb.rst
> > +++ b/Documentation/fb/modedb.rst
> > @@ -53,6 +53,17 @@ Specifying the option multiple times for different p=
orts is possible, e.g.::
> >
> >      video=3DLVDS-1:d video=3DHDMI-1:D
> >
> > +Options can also be passed after the mode, using commas as separator.
> > +
> > +       Sample usage: 720x480,rotate=3D180 - 720x480 mode, rotated by 1=
80 degrees
> > +
> > +Valid options are:
> > +
> > +  - reflect_x (boolean): Perform an axial symetry on the X axis
> > +  - reflect_y (boolean): Perform an axial symetry on the Y axis
>
> 2x s/symetry/symmetry/
>
> Reviewed-by: Noralf Tr=F8nnes <noralf@tronnes.org>

I've fixed it and applied, thanks for your reviews!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ooppuouaxuwtdyr6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQoLiQAKCRDj7w1vZxhR
xevQAP4oliKdO/dVf2wqkYiOCk1yfQAhaUSoOLmGztmMGEjb4AD/Zr2FZZ5eP3ET
0J1ZV2aXZiVrrgLgXVqKIsVUPwxKlwE=
=8ysB
-----END PGP SIGNATURE-----

--ooppuouaxuwtdyr6--


--===============7837934029016990803==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7837934029016990803==--

