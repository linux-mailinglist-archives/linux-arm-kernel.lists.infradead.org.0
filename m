Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E56E8153DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bmfNdCgRaLFOjxIhAt+uwZCmy9Nd1+STz8wPjyNwFjM=; b=IPzLBc8g3xTCiKeoJwbUINXwg
	6k3eLuU6ddp+DcnxOGeZI/zc4lEKl7SOfEt/CR2e0Vlq3tMoNYp1pqUeUlbSBCUfEwB84JiAToccD
	GUYU6JbBhgXaP2ZY71gIOiRMzshKklrVzgHzfMaaEIB3RV8YWpl7pKkIJHvstGUiPfiPeLlsnrLnM
	m2r+1259bFLxtephg4Xo2Q013L2BCyMEkZc1Ngms7NXddbUiFvTX6UgbOmZlkIsICNJRBbxyZCrW2
	cuKWsZbtqQdSQrU5FAdz5lPnhMv8UAq0VtT3/jTzGPQjbSVHQILzVAbopq4nULEDCxHCfvgLeGnlD
	MbUn+ND6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNiiU-0004NW-3Y; Mon, 06 May 2019 18:51:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNiiN-0004N6-7t; Mon, 06 May 2019 18:51:52 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 6121AACCD;
 Mon,  6 May 2019 18:51:49 +0000 (UTC)
Message-ID: <9871b5d816b3868633381dba84b315bb21bb2ace.camel@suse.de>
Subject: Re: [PATCH v2 0/3] staging: vchiq: use interruptible waits
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Stefan Wahren <stefan.wahren@i2se.com>, linux-kernel@vger.kernel.org
Date: Mon, 06 May 2019 20:51:47 +0200
In-Reply-To: <b2679404-ba00-d18e-fe15-44c6e280dc11@i2se.com>
References: <20190506144030.29056-1-nsaenzjulienne@suse.de>
 <b2679404-ba00-d18e-fe15-44c6e280dc11@i2se.com>
User-Agent: Evolution 3.30.5 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_115151_425233_189A3652 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -1.6 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: lists.fedoraproject.org]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: lists.fedoraproject.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arm-kernel@lists.infradead.org, devel@driverdev.osuosl.org,
 phil@raspberrypi.org, linux-rpi-kernel@lists.infradead.org,
 dan.carpenter@oracle.com
Content-Type: multipart/mixed; boundary="===============3166619135935029067=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3166619135935029067==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-7b5y6BpkJZ6GF8kuMfMZ"


--=-7b5y6BpkJZ6GF8kuMfMZ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-05-06 at 20:12 +0200, Stefan Wahren wrote:
> Hi Nicolas,
>=20
> Am 06.05.19 um 16:40 schrieb Nicolas Saenz Julienne:
> > Hi,
> > ...
> >=20
> > Regards,
> > Nicolas
> >=20
> > [1] https://github.com/raspberrypi/linux/issues/2881
> > [2] https://archlinuxarm.org/forum/viewtopic.php?f=3D65&t=3D13485
> > [3]=20
> >=20
https://lists.fedoraproject.org/archives/list/arm@lists.fedoraproject.org/m=
essage/GBXGJ7DOV5CQQXFPOZCXTRD6W4BEPT4Q/
> >=20
> > --
> >=20
> > Changes since v1:
> >   - Proplery format revert commits
> >   - Add code comment to remind of this issue
> >   - Add Fixes tags
> >=20
> > Nicolas Saenz Julienne (3):
> >   staging: vchiq_2835_arm: revert "quit using custom
> >     down_interruptible()"
> >   staging: vchiq: revert "switch to wait_for_completion_killable"
> >   staging: vchiq: make wait events interruptible
> >=20
> >  .../interface/vchiq_arm/vchiq_2835_arm.c      |  2 +-
> >  .../interface/vchiq_arm/vchiq_arm.c           | 21 +++++++------
> >  .../interface/vchiq_arm/vchiq_core.c          | 31 ++++++++++++-------
> >  .../interface/vchiq_arm/vchiq_util.c          |  6 ++--
> >  4 files changed, 35 insertions(+), 25 deletions(-)
> >=20
> against which tree should this series apply?
>=20
> Since the merge window opened the current staging-linus wont be
> available soon.

I don't know if that's what you meant, but I guess we should wait for 5.2-r=
c1
and then push it, the fixes will eventually get into the stable version of =
5.1.


Regards,
Nicolas


--=-7b5y6BpkJZ6GF8kuMfMZ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAlzQgkMACgkQlfZmHno8
x/5aeQf/WayQQc7jVUFGX+QXs7v5yyWsQeju/5uDmQTIx7tBkCMoEjSTOzlRs4eI
Sql06hOgpYwHD2U74Mu2bqon/sgK3royEyESPglhyI4v/V3/rFoGSd2qyRCRNs0U
ev6zXzgWYntfEguNgzhAMB+VN6MP36ea+UbPgr+88YCzKR1KBPxNjbpRH5gSoPn0
nWVFaxYidiJvFuHpuwDVYwBpDpSQkGcwhUL3ubPtZP3N0QO1MgdpJwY8+pWf+aHU
Uou4nOuQuZ7smASZ4aPWSu5HU0QoA2E+4WvKx6VezMDoBrcmH37jYUi+NIlp6dHC
dOxi0KAZi7Tam8WdDqSlo8upfd6qAQ==
=EZQz
-----END PGP SIGNATURE-----

--=-7b5y6BpkJZ6GF8kuMfMZ--



--===============3166619135935029067==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3166619135935029067==--


