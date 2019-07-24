Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4114272E0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 13:47:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5PfCxAZkHeGp9ZshNUMyBlxXO5EbjuP/5aLuiayOems=; b=Mef9Zc9Seok+WonpbkkWcTI68
	gvcbqorI3hejQSGA3MHZteJwAv9+UGuSTmjUoqHbaoSbZ1JPr2IyTBr99BApRi3N4tWt02Wibhsfj
	9hIP5uUW0rKyMTJP4SS/ujQ05UrobC5iLbBpESy+0drXde+kNPewwbYuP3MGqAsH2wMWWbSpZ2nN4
	lfgWJKtc42I+wBbB9QfQJB7bwEJ+5MU7Hl+W4Qa4/8vYX2Zrs4u4+SjYndRNTo0YU/7ITkV/Vo3wf
	S4BhGvagEA57H63q8aFQ0roeuUduS2eMwuCS2PxhXoQHyAuVUdYnh87kMPJrMoMbSWZt6JtnRWuB8
	v6gT+Mkpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqFjr-0008Rd-HU; Wed, 24 Jul 2019 11:47:19 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqFjg-0008QY-Kr
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 11:47:10 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id BABA580262; Wed, 24 Jul 2019 13:46:51 +0200 (CEST)
Date: Wed, 24 Jul 2019 13:47:02 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH] coresight: fix typos
Message-ID: <20190724114702.GB26116@amd>
References: <20190724100335.GA7373@amd>
 <7ae7157b-1336-f4a6-59a3-b1ac6307bd8d@arm.com>
MIME-Version: 1.0
In-Reply-To: <7ae7157b-1336-f4a6-59a3-b1ac6307bd8d@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_044708_832384_3B9723A9 
X-CRM114-Status: GOOD (  16.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexander.shishkin@linux.intel.com, linux-arm-kernel@lists.infradead.org,
 mathieu.poirier@linaro.org, linux-kernel@vger.kernel.org
Content-Type: multipart/mixed; boundary="===============1793626322661047810=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1793626322661047810==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="R3G7APHDIzY6R/pk"
Content-Disposition: inline


--R3G7APHDIzY6R/pk
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed 2019-07-24 11:36:23, Suzuki K Poulose wrote:
>=20
>=20
> On 24/07/2019 11:03, Pavel Machek wrote:
> >
> >Fix typos in comments.
> >
> >Signed-off-by: Pavel Machek <pavel@denx.de>
> >
> >diff --git a/drivers/hwtracing/coresight/coresight.c b/drivers/hwtracing=
/coresight/coresight.c
> >index 55db77f641..1d66191 100644
> >--- a/drivers/hwtracing/coresight/coresight.c
> >+++ b/drivers/hwtracing/coresight/coresight.c
> >@@ -1001,7 +1001,7 @@ static int coresight_orphan_match(struct device *d=
ev, void *data)
> >  	if (!i_csdev->orphan)
> >  		return 0;
> >  	/*
> >-	 * Circle throuch all the connection of that component.  If we find
> >+	 * Circle through all the connections of that component.  If we find
> >  	 * an orphan connection whose name matches @csdev, link it.
>=20
> We have stopped using name to match the csdev and switched to fwnode
> handles. Please could you update the comment to reflect this, while you a=
re
> at it ?
> Otherwise looks fine to me.

I guess best way would be to apply this and then fix up the facts in a
comment... or feel free to just fix it up. I am not best person to fix
facts there...

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--R3G7APHDIzY6R/pk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl04RTYACgkQMOfwapXb+vJ1FACgr4BSo2yIxKfIP9Y0yZCav2IT
IE8AoLECqSdWmO2GfVfvl7/0bVwXZPqa
=RqVT
-----END PGP SIGNATURE-----

--R3G7APHDIzY6R/pk--


--===============1793626322661047810==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1793626322661047810==--

