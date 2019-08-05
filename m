Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B399817F1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:13:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kfxuYR3EoPNB1luK5MsUZuc2J3Ix2J8CSdhW86BEoyg=; b=EBf+sPpvtbwc6SZ+Ku0WoNBYb
	hibVn9cbtbr3cI1JdQ60ElYcOt2EJwQbKN1Afa+K0M1s/LWaTaRSrnhRUCJnALIBChWTwQRewHceg
	19OAxv+AbdffrGcDAOH2Sd6AuvLa9sVs3efvjldCSqcFMrXJk3OUYH8Z4h01cKu5sQ9c0FePPAMMS
	TA7VA1wsst1Ah06juSz2i02xLTdZAro8Wgm9mUfS3jlNaWEntEnnvlMq27v/TVaey4YhKN3p/t0Ec
	uHXzvl3UR8sNQBnCufLpuHgbHCX+SBiQ9A6jDDJeEWtd8up7+2yY10zAOUC9jqRCUvrN1jdNoUhoH
	fGBQFMfJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huavd-0005VT-6g; Mon, 05 Aug 2019 11:13:25 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huavM-0005V7-B1; Mon, 05 Aug 2019 11:13:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=utB0r1atmnVwa7CY1NTWgbkaYDxQ5etSjcoSuqlLbMk=; b=NgjEVd/0WOtO+B3zJm+gOUBRU
 yHilyhEsbqPZrpPixoQnumwIxj6RwvF24GISfjL79c79VykIZNce79+G7UlQ6SBrEtr4lnsEy1TmD
 RgifsQ74ii9R0OYcOpPTLmwOYjhFIU3mXnHneKwAErY2Ll+STpvxoG6W/CTLAAyzFbrIM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1huavJ-0008IY-L9; Mon, 05 Aug 2019 11:13:05 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 132672742D06; Mon,  5 Aug 2019 12:13:05 +0100 (BST)
Date: Mon, 5 Aug 2019 12:13:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [EXT] Re: [Patch v3 2/2] dt-bindings: spi: spi-fsl-qspi: Add
 bindings of ls1088a and ls1012a
Message-ID: <20190805111304.GC6432@sirena.org.uk>
References: <1560942714-13330-1-git-send-email-Ashish.Kumar@nxp.com>
 <1560942714-13330-3-git-send-email-Ashish.Kumar@nxp.com>
 <20190709200857.GA8477@bogus>
 <CA+EcR20ui8Liot+PtzdU6CJb5WzLDHS0Xc7VR7qGAOpD5=ArNQ@mail.gmail.com>
 <VI1PR04MB401579932CF0E7D4AE80E0C995DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VI1PR04MB401579932CF0E7D4AE80E0C995DA0@VI1PR04MB4015.eurprd04.prod.outlook.com>
X-Cookie: Place stamp here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041308_376059_4BA31595 
X-CRM114-Status: UNSURE (   9.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Han Xu <xhnjupt@gmail.com>, "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
 Kuldeep Singh <kuldeep.singh@nxp.com>,
 "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
 Rob Herring <robh@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5955798333283021734=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5955798333283021734==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="i7F3eY7HS/tUJxUd"
Content-Disposition: inline


--i7F3eY7HS/tUJxUd
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 05, 2019 at 09:07:47AM +0000, Ashish Kumar wrote:

> Could you please send this patch[1] from your spi tree, It applies seamle=
ssly on
> https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git/
>=20
> [1]: http://patchwork.ozlabs.org/patch/1118637/

Please don't send content free pings and please allow a reasonable time
for review.  People get busy, go on holiday, attend conferences and so=20
on so unless there is some reason for urgency (like critical bug fixes)
please allow at least a couple of weeks for review.  If there have been
review comments then people may be waiting for those to be addressed.

Sending content free pings adds to the mail volume (if they are seen at
all) which is often the problem and since they can't be reviewed
directly if something has gone wrong you'll have to resend the patches
anyway, so sending again is generally a better approach though there are
some other maintainers who like them - if in doubt look at how patches
for the subsystem are normally handled.

--i7F3eY7HS/tUJxUd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ID0AACgkQJNaLcl1U
h9CqaAf/ZHR3MbVzooalCiifNEU+1YHfwNNTTBUF8HJWr2BM2HQbpYWCuQcm9iyQ
FtnKDWPx6ouSI1lYCORQJyqkrZo36kPYN33OegMbzeNJRQb3uw94zVyVlOXAFl3h
/gl+o0+hrEQ2Ttnm/Nj9gZFiGxV6IFHE53HPFcpYBmPj6ME1i3XswYFrpxx6PoQK
GqqbirJm/v47fzXXIhKI6c0PFAKS6mPgFp68krzFXFGgPvvePJ+T5YP0lkImtfhK
BL2GSL9tMrf3InZ+/yOauhunSp7pqr1vF04udoLo5eh5sQqlo+/zCTqUqWN3Pqn8
N4keQhb+N29o99Bx2UV7SBd1YOBC+w==
=FyJ3
-----END PGP SIGNATURE-----

--i7F3eY7HS/tUJxUd--


--===============5955798333283021734==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5955798333283021734==--

