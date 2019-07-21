Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430E66F419
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 21 Jul 2019 18:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kZux6qkl7XtG0p+rKamt9Ocl/8N/wA1qh4yDhHUun3g=; b=CRgvwSJHNns2gyuzrUqGxGIGr
	HefgmoaIl7VKxobqkxuqCKTqpZtQHyv+W2V6GITgUlVgzyBzMWK3tSkNyri4hYEZqdCy6SltsT6oj
	lq28EIL3ZI64DSlOPutzRHkfVnTL1a7+K+Oepeuh1lv1T0mLs1dnhqTOh1GjgLqTKLU5FJMO/OQgT
	ePlFhR77FtDpm85FOijPPFiS1Z2ORa9jZ2SfE/ybw+bHIYJZm/JnL7KH8CGotv+wd0miCkVq2eH30
	Oq2A3aThqLK2ir6P1W46CMOqz+WaBFYnR8Srt8eI4JRe1Gp3tRsOKOwgNMu1PQ+L4XWJ0Zf5oA6DI
	StGsepN0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpEaC-0006SO-Su; Sun, 21 Jul 2019 16:21:10 +0000
Received: from atrey.karlin.mff.cuni.cz ([195.113.26.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpEZz-0006RP-BK
 for linux-arm-kernel@lists.infradead.org; Sun, 21 Jul 2019 16:20:57 +0000
Received: by atrey.karlin.mff.cuni.cz (Postfix, from userid 512)
 id 284CC8031A; Sun, 21 Jul 2019 18:20:31 +0200 (CEST)
Date: Sun, 21 Jul 2019 18:20:41 +0200
From: Pavel Machek <pavel@denx.de>
To: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: USB Modem support for Droid 4
Message-ID: <20190721162041.GA10770@amd>
References: <20190718201713.GA25103@amd>
 <20190719102748.GA14546@kroah.com>
MIME-Version: 1.0
In-Reply-To: <20190719102748.GA14546@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_092055_543958_9259227D 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.113.26.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mpartap@gmx.net, tony@atomide.com, Pavel Machek <pavel@denx.de>,
 merlijn@wizzup.org, linux-usb@vger.kernel.org,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, johan@kernel.org, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0499206395043886044=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0499206395043886044==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri 2019-07-19 19:27:48, Greg KH wrote:
> On Thu, Jul 18, 2019 at 10:17:13PM +0200, Pavel Machek wrote:
> > From: Tony Lindgren <tony@atomide.com>
> >=20
> > Droid starts to have useful support in linux-next. Modem is tricky to
> > play with, but this is enough to get basic support.
> >=20
> > Signed-off-by: Pavel Machek <pavel@ucw.cz>
>=20
> No signed-off-by from Tony?
>=20
> And no [PATCH] in the subject?

I was relaying patch. You'll get better one directly from Tony,
"soon". :-)

Best regards,							Pavel
--=20
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany

--0OAP2g/MAC+5xKAE
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl00kNkACgkQMOfwapXb+vIgTQCgpJ9Kbk6HEqIkXfdxzMixzN84
EEAAnjKV5UDsIV/DGiDl9pgRUZD/3CbW
=EXnG
-----END PGP SIGNATURE-----

--0OAP2g/MAC+5xKAE--


--===============0499206395043886044==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0499206395043886044==--

