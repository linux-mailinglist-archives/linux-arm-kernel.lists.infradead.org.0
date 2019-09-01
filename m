Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F39C4A4B6A
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 21:39:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CObIxVfWhXsY5Np99hyiegtJrDaHKoTGZquTihzBEDM=; b=YmHFVx/dcR5G9ksvNLKckM9px
	wAC9WMEwjwrQ8WSvz7+ZOkzqNDISC72BvNsHgFhAMv87G9JLtb9kYb1L+2D7rR9nrEArm4cqBzpBI
	Uf764gBXyHRHR+0YQ5vVUwFem42rfVFoSOoXXVHqEN4cqSOFgpFZp5XsuLuj+pY1A5rBHVV2WEBwY
	FQiFebNXoOUv+lBm+GfWIT2iPPl6TxIfbi7WaT+bpPedoCgy7my3N8po0tTcHLAQDK4mP+4nT2Db1
	a9dGYxDdmLg4+E+PBpUtW7ovkDz4Xu9bvOkzJWpT/CeKOsiHFrP3NFE0e9L6I+jIKTuTpq4UnDnm3
	GEZpCe+hQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4VhV-0008I0-4C; Sun, 01 Sep 2019 19:39:49 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4VhJ-0008Gd-Lf
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 19:39:40 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id A29FC8153D; Sun,  1 Sep 2019 21:39:12 +0200 (CEST)
Date: Sun, 1 Sep 2019 21:39:25 +0200
From: Pavel Machek <pavel@denx.de>
To: Tony Lindgren <tony@atomide.com>,
 kernel list <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-omap@vger.kernel.org, sre@kernel.org, nekit1000@gmail.com,
 mpartap@gmx.net, merlijn@wizzup.org
Subject: next-20190830 on Droid 4 was Re: [PATCH 0/4] musb host improvments
 mostly for omap2430 glue
Message-ID: <20190901193925.GA30586@amd>
References: <20190830232058.53414-1-tony@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20190830232058.53414-1-tony@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_123937_861884_9D92145C 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jacopo Mondi <jacopo@jmondi.org>, Marcel Partap <mpartap@gmx.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Merlijn Wajer <merlijn@wizzup.org>, linux-usb@vger.kernel.org,
 Sebastian Reichel <sre@kernel.org>, NeKit <nekit1000@gmail.com>,
 Michael Scott <hashcode0f@gmail.com>, linux-omap@vger.kernel.org,
 Bin Liu <b-liu@ti.com>
Content-Type: multipart/mixed; boundary="===============2528377641054786314=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2528377641054786314==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi!

> So I ended up cleaning up omap2430 glue layer a bit for host mode with the
> various reproducable errors I was seeing docking droid4 to a lapdock. The=
re
> are a few fixes, and then we end up removing all the devctl register tink=
ering
> for omap2430 glue layer.

I thought I'd test this, so I took

commit 6d028043b55e54f48fbdf62ea8ce11a4ad830cac
    Add linux-next specific files for 20190830

Series (and the other two patches you sent around it) applies ok, but
the result does not boot.

Hmm.

I guess I'll need to resurrect the serial port cable.

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl1sHm0ACgkQMOfwapXb+vIVbQCgsPODxEwwCon5ZeHC4gpSLfq1
aB4An14jJZbgRELk7gz8FZPreGgMAzW+
=paUb
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--


--===============2528377641054786314==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2528377641054786314==--

