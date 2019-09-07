Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9BE9AC90D
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Sep 2019 21:41:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xckvJxSRAq8NzXlsYHZ3J7BMjSq7nDwsWNmKFvcMTec=; b=duF1yy+2NWlp0Y9DysFIagq3K
	Pt1Xn8RQQ4XrlafckkC4X+Kp1KLCHhu/altd9TM5E88WFE2mq6qmJk/4DOFceWCyWmoFJR19GzYnq
	EFrGzEmBZr7H9uD5ArRXXRBFFB47GxN3eJcCpJVQ/zprhExDVs88kjcYpqiZpQ40IIBO4IfXhoKl4
	BOm1kznabrmNzE59Hlsxwq844QH8hg5VNxjhge0wAbhPCgniI/M3+YtDROylfjNavW6dByINee79G
	2rP90W10QQiVAkJ80CHfIqlDjlTOmD/gz6Wr6VfUJRXmn2DqHqvA0In4G68pUBtUOHnAboJC66Ig5
	dr1A/O9DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6gZs-000137-A1; Sat, 07 Sep 2019 19:40:56 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6gZg-0000tQ-TT
 for linux-arm-kernel@lists.infradead.org; Sat, 07 Sep 2019 19:40:47 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 4D6EF8106D; Sat,  7 Sep 2019 21:40:27 +0200 (CEST)
Date: Sat, 7 Sep 2019 21:40:40 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Lubomir Rintel <lkundrak@v3.sk>, arnd@arndb.de
Subject: Re: [PATCH v3 0/6] ARM: dts: mmp2: devicetree updates
Message-ID: <20190907194040.GB25459@amd>
References: <20190828072629.285760-1-lkundrak@v3.sk>
MIME-Version: 1.0
In-Reply-To: <20190828072629.285760-1-lkundrak@v3.sk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190907_124045_110738_D1302691 
X-CRM114-Status: GOOD (  11.32  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Olof Johansson <olof@lixom.net>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7605620017976983390=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7605620017976983390==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="/NkBOFFp2J2Af1nK"
Content-Disposition: inline


--/NkBOFFp2J2Af1nK
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable


> Here's a couple of updates for the MMP2 SoC devicetree files.
> I'm wondering if they could be applied to the armsoc tree?
>=20
> Compared to previous submission, the only change is the addition of
> Acks from Pavel.

Any news here? Having up-to-date dts is kind-of useful....

Best regards,
									Pavel
--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--/NkBOFFp2J2Af1nK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl10B7gACgkQMOfwapXb+vL57QCePr8u74aSYcjohldUqTvltb7V
yXgAn3R0Z3XkdBPdQ/o0vDjj9hQh9Seh
=BYLZ
-----END PGP SIGNATURE-----

--/NkBOFFp2J2Af1nK--


--===============7605620017976983390==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7605620017976983390==--

