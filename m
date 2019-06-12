Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DD442214
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:15:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zYQHBXXQoa+4ELkvC6CgX77CZ/LCnwvuanA9d8t/j+g=; b=CPCb5AU5J7GXWAnQNtqd3IAXj
	Y+PaGR6aFF3p+4o34ol8zc3gE0742/0ulYSNm08lXhaFIIkLUnm2XVxWPgQPI+WrOaiEewDBAAG2R
	I1EfVv7eRyTIRquwN8ri43tqQSbgBMdARj2PAlnFl4Bh9TxDkdsoPUNuzXgWvpT5x5vBlmnV/FwFY
	95nd3Q+QFZnkwpEXThDRNg9EYl2dgoRKZNCxCYtTkSOPPP7QFLzbTZ/cULXl+db2SaJ5DXuN0DZ7W
	tY9B4SgEjvjvwBzIe5KTe09ccUjM6i4lWTMsRFQO/QvW1WkFBsDHANiyKzFWsfm9qPMFXNBIeJuqF
	zDbLhXbFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0ID-0000Ct-G2; Wed, 12 Jun 2019 10:15:45 +0000
Received: from sauhun.de ([88.99.104.3] helo=pokefinder.org)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0I2-0000CE-1X
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 10:15:36 +0000
Received: from localhost (p5486CACA.dip0.t-ipconnect.de [84.134.202.202])
 by pokefinder.org (Postfix) with ESMTPSA id E8E6C2C54BC;
 Wed, 12 Jun 2019 12:15:30 +0200 (CEST)
Date: Wed, 12 Jun 2019 12:15:30 +0200
From: Wolfram Sang <wsa@the-dreams.de>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] i2c: acorn: fix i2c warning
Message-ID: <20190612101530.k42zgjzfrxozeynx@ninjato>
References: <E1hajwY-0003Aj-OD@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
In-Reply-To: <E1hajwY-0003Aj-OD@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_031534_234161_7F701DEA 
X-CRM114-Status: UNSURE (   7.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [88.99.104.3 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-i2c@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8439239120433849110=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8439239120433849110==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ujig6z743qexizo2"
Content-Disposition: inline


--ujig6z743qexizo2
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 11, 2019 at 05:48:18PM +0100, Russell King wrote:
> The Acorn i2c driver (for RiscPC) triggers the "i2c adapter has no name"
> warning in the I2C core driver, resulting in the RTC being inaccessible.
> Fix this.
>=20
> Fixes: 2236baa75f70 ("i2c: Sanity checks on adapter registration")
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>

Applied to for-current, thanks!


--ujig6z743qexizo2
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEOZGx6rniZ1Gk92RdFA3kzBSgKbYFAl0A0MIACgkQFA3kzBSg
KbbxABAApo3YraVz4iOF0+J+PKPTnSHZ3u7ed5Qmk8KWZAaCv//9m1z76+Sh7qVL
1U/OaqJvMSfkr/r7zWa4AIkJfmzbXYGVAb1CtJM2aJwjo3rDdUHtWKmQZUx3NyhY
2W0GkABqCVzCRphb8MY3UTexn0d7jg2qGzS/iY5tVfbGEpiFI5wFG5ziuQy8uEP3
iF17F+HfA3sLG99XgBwDHCD/qoV/Q4mxwvPiVXXwUQexUdcn1Bjze5abeZ/BAk4Q
L1sLJilnXDp39/E8e1pk7jw3kIbEDhnAax0yl+zLigShanKj7Qh/ck2klymZniH9
7KGT+fPl7gmSsLv2i5qZUmK0Brc3TCpiSlQVxK3M/uH8oWPr7oPW+54JHyGQsfE3
Hs2XL2fc5e08POZgEiCKcSTtz6dUMKXJGJs8IVbIMpfAp0+Y5abRG+xNHwsidi3x
75b91Z3jbXoqDcmaHNaC3xKaaPBpZbeCHmH8rA86AeSrK7CNNACwE6WfRB7918Am
vMvzvcTPeGLn+8+Uto4meCkO55T5CrBgiQS455mCYlC2r0V1JPyIcrbX6fItmKEO
nCMMztMcJ3PU9b+wP0KfGd0NLWaF23l6PLIvZBfFz9Wu99zl1uJ2I3aHV2/mRjQo
dOzLm0/GZnkmHi0/Dh8jul8b6zRzXW1IWqz0ImzARaDT3GjgzBY=
=UXD5
-----END PGP SIGNATURE-----

--ujig6z743qexizo2--


--===============8439239120433849110==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8439239120433849110==--

