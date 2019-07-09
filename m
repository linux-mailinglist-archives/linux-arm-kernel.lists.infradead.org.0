Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8029E63622
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 14:45:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0qmgyLPVjD8XD2IeCU5tT2bOY8lEjzF6uNdco0HRpc4=; b=d4PHYQuHNLEPICFNVyfNz7E47
	vHEmm5Ynlt+sXgFXKa0pIs6dJgj34vrMG6iFqGVLUwskRhiEs/Wgef0s7eIIdIdJKid7OHLGD/S7G
	6sLYivtBFszR7dAz73dd+T1noQvNBpXn91BF+JV6RrRvGCgu+FpLEt+8HKxoSXEfFYbGPRBpsBQTf
	PHi4iOF7YQ62iGnhAJKsbER6j8pc5IKnOZmsE1nWCxOnSH683PADDoIDHuoP5Ft8u5EHKGhTJlam4
	R0Xvb2UkACyionR9QjJdx/itBBKGHBylWwFWsuBbxb7E8r0ykr2j2fPfJeSope9h6QujJo85IXgD/
	1oGPNoENA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkpVI-0001Z0-Ae; Tue, 09 Jul 2019 12:45:52 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkpV5-0001Y9-EQ
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 12:45:41 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 152E7200004;
 Tue,  9 Jul 2019 12:45:26 +0000 (UTC)
Date: Tue, 9 Jul 2019 14:45:26 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Dmitry Osipenko <digetx@gmail.com>
Subject: Re: [PATCH v5 05/12] drm/modes: Rewrite the command line parser
Message-ID: <20190709124526.36szuriteq3jumhr@flea>
References: <cover.5190d070d1439d762d7ab273f4ae2573087fee20.1560783090.git-series.maxime.ripard@bootlin.com>
 <e32cd4009153b184103554009135c7bf7c9975d7.1560783090.git-series.maxime.ripard@bootlin.com>
 <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
MIME-Version: 1.0
In-Reply-To: <e1fcea71-b551-274e-4ea0-178bb0d5f71c@gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_054539_652908_854A8CD0 
X-CRM114-Status: GOOD (  14.60  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Daniel Vetter <daniel.vetter@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3584203114747311074=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3584203114747311074==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="vcujhgabco7cibei"
Content-Disposition: inline


--vcujhgabco7cibei
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Fri, Jul 05, 2019 at 07:54:47PM +0300, Dmitry Osipenko wrote:
> 17.06.2019 17:51, Maxime Ripard =D0=BF=D0=B8=D1=88=D0=B5=D1=82:
> > From: Maxime Ripard <maxime.ripard@free-electrons.com>
> >
> > Rewrite the command line parser in order to get away from the state mac=
hine
> > parsing the video mode lines.
> >
> > Hopefully, this will allow to extend it more easily to support named mo=
des
> > and / or properties set directly on the command line.
> >
> > Reviewed-by: Noralf Tr=C3=B8nnes <noralf@tronnes.org>
> > Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> > ---
> >  drivers/gpu/drm/drm_modes.c | 325 +++++++++++++++++++++++--------------
> >  1 file changed, 210 insertions(+), 115 deletions(-)
>
> I have a Tegra device that uses a stock android bootloader which
> passes "video=3Dtegrafb" in the kernels cmdline. That wasn't a problem
> before this patch, but now Tegra DRM driver fails to probe because
> the mode is 0x0:0 and hence framebuffer allocation fails. Is it a
> legit regression that should be fixed in upstream?

Thierry indeed reported that issue, but the discussion pretty much
stalled since then.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--vcujhgabco7cibei
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXSSMYQAKCRDj7w1vZxhR
xakIAP4+CIpP0/uIjF6b/BDiYxakJHM0UScucoPgY1Mh8fCrpwD/SLOeZeYOzZ3R
g10KDEYVYh0DflC+UIvy2n8COGx6YAw=
=FVma
-----END PGP SIGNATURE-----

--vcujhgabco7cibei--


--===============3584203114747311074==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3584203114747311074==--

