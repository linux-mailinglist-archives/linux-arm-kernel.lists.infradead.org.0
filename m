Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FCADD9DB3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 23:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d0ffTRpIkTIIeyu9Q1DwzzmYxjv/dm75tL5Jdl6Jeo8=; b=n4Tf5ItaY94ZJXVqpeRUpfZ4G
	bgvQf/U0f3C4Af0DoM94IUBTTZVe4lQ+PbpZ/6IMvAe2o4cz4P0NEJ+mkTZp6+IyKO1gzLJmbcW2K
	94t2LPgbAZUJzHOzdyJTL7pBVltPsjnYSFqUMQhCa1qvKfXXVC3bMxUioiKx6PT+Fqoq8itfvvsE0
	bx2YMGX3K1kO6szlpMqdnkXEwKsNmyGM/3w6Zo9RNrpE6sY3/CVtfphEJsEan1s8OrSpwmrULgEHb
	xTt32v0EqohNI6NTOTzHEULnUjUImjhG9E1QMp4L3C5Las8JyUPDAIo1YjJRk0gkWfY0QJFKG7s9t
	Cz9Qem/Ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKrAn-0004nc-SA; Wed, 16 Oct 2019 21:49:37 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKrAe-0004mw-45
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 21:49:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZufvcA61v5agVfmRZclKpGS8RTRtaYHF1QkCoX0ETPs=; b=l51SxgSoH+eyfT2mm1rmGeBDT
 yhHObXSSp07I53kvAtlsoaAsFbOHIxbXQ+5WvPbqdFhqeM5Btng1ceKWOY/GqEEy2ZUfVTEoxRXTa
 1c+E9q1JTFuFWhzN0HvBdTIi9uijXihuIrT+FpqUqznByX6wziQTTDR7YCaC4sXshvUbk=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iKrAV-0006KC-UE; Wed, 16 Oct 2019 21:49:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id EB915274325C; Wed, 16 Oct 2019 22:49:18 +0100 (BST)
Date: Wed, 16 Oct 2019 22:49:18 +0100
From: Mark Brown <broonie@kernel.org>
To: Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>
Subject: Re: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
Message-ID: <20191016214918.GA11473@sirena.co.uk>
References: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
 <36610873-fa30-a286-d05c-5eceb3cbcb57@tronnes.org>
MIME-Version: 1.0
In-Reply-To: <36610873-fa30-a286-d05c-5eceb3cbcb57@tronnes.org>
X-Cookie: Auction:
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_144928_167299_3C93E339 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org,
 Andy Shevchenko <andriy.shevchenko@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Mack <daniel@zonque.org>
Content-Type: multipart/mixed; boundary="===============5161062621241070062=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5161062621241070062==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2019 at 11:30:51PM +0200, Noralf Tr=F8nnes wrote:

> As Andy mentioned, ->max_transfer_size is a callback:

> struct spi_controller {
> 	/*
> 	 * on some hardware transfer / message size may be constrained
> 	 * the limit may depend on device transfer settings
> 	 */
> 	size_t (*max_transfer_size)(struct spi_device *spi);

> (I looked at its users and they all return a static or probe time value
> so not sure why it's a callback.)

Huh, I wonder why we did that...  I can't find any clear record, and
like you say nothing is using it so we should probably fix it - however
that's best done separately to this :/  Sorry for the confusion, I
didn't register what Andy was saying as being pointing out the current
state of the code.

--yrj/dFKFPuw6o+aM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2nkF4ACgkQJNaLcl1U
h9A+Pwf/W+TqlKqBacstyeP18KY0oRQ7ySrj544UYjH8VdN93ZMgWCSCZ5FgL9tv
APkLEB1mXcpDeqLbLHKrNBS+8yMpCzqOVIYjmA1COIRm627P28BGBF1IKaFaPg2N
fjG5vu2nWcgpCjPneFPOdCP0RLEiRd0qWLCbPv4VpKJpYHK4U44/m7bN8iuM9cHB
Chd4H3kndisVKQXkwsAT6emauaPLaf17Hbhovoar5TlHECfIwOYKanPDPIYqgol6
uOFs93BJbfky2Wj5rbCNh1F6T2zKpG8ctOvrPrDVvNcVF2vv0+EIlESSGM+aON42
h/DQKS+S9hNCPnEKRtbjv++nzuZbow==
=+n2p
-----END PGP SIGNATURE-----

--yrj/dFKFPuw6o+aM--


--===============5161062621241070062==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5161062621241070062==--

