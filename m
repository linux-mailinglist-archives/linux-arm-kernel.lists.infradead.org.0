Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A93812E0A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 23:03:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jg1ChZykVo7p1on1ADTpjR25W0cWF/RfPuWSJ7oRAq4=; b=FwXagecl2T8dyc+Ec2fTOsZbR
	ro6Fv63wtBemVh5tsiHTGkizY/1MSonm9/7T1TGMhj4WAXukpfzqUm4Q8RA/gcaNj0BqiBmtzvtlc
	hzXRGeVB8GrQLq+Ps35HJ03gqybfLIKFV3R4f+Njh7DTzPix5gDqfZdRgYQIdOTHBie12R2e48/wM
	dSp2vX3uxe8GtVBzeNIrIXTljkQ4x7CUyYURWxFIrhNlXs6DAQRhA8UyDhh5b9xBPYagfeSmTigdn
	B2KVzsiG7TAgfTv7KlrVkjThmDgneHQ4gA8vwObmAxg6O/1DegQ6UFetuGHbdWy9bQd1Djogx9aot
	NsKVcxSlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imm50-0004Jv-Gc; Wed, 01 Jan 2020 22:03:02 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imm4t-0004JI-HB
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 22:02:57 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 5172B1C25F4; Wed,  1 Jan 2020 23:02:53 +0100 (CET)
Date: Wed, 1 Jan 2020 23:02:37 +0100
From: Pavel Machek <pavel@ucw.cz>
To: Tony Lindgren <tony@atomide.com>
Subject: Re: Droid 4 on 5.5-rc3
Message-ID: <20200101220237.GA13059@amd>
References: <20191228162929.GA29269@duo.ucw.cz>
 <20191228193622.GA13047@duo.ucw.cz>
 <20191230173507.GM35479@atomide.com>
MIME-Version: 1.0
In-Reply-To: <20191230173507.GM35479@atomide.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_140255_721981_2C8881D9 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.255.230.98 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mpartap@gmx.net, merlijn@wizzup.org, martin_rysavy@centrum.cz,
 kernel list <linux-kernel@vger.kernel.org>, sre@kernel.org,
 nekit1000@gmail.com, linux-omap@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============3706446887482005289=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3706446887482005289==
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="mP3DRpeJDSE+ciuQ"
Content-Disposition: inline


--mP3DRpeJDSE+ciuQ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon 2019-12-30 09:35:07, Tony Lindgren wrote:
> * Pavel Machek <pavel@ucw.cz> [191228 19:37]:
> > Hi!
> >=20
> > > 5.4-based kernel works ok on my droid 4.
> > >=20
> > > 5.5-rc3 based kernel has problems; it reboots when I try to kexec it.
> > >=20
> > > Vanilla 5.5-rc3 reboots, too.
> > >=20
> > > If you have any ideas, let me know.
> >=20
> > I managed to get partial serial dump. This should be 5.5-rc3: And then
> > a bit better serial dump (below). But it is silent for few seconds,
> > and then it restarts...
>=20
> If spi or regulators have problems, nothing will really work..

Hmmm. I'm too lazy to think. 5.4 is okay, 5.5-rc3 is broken... Let me
try 5.5-rc1 and then bisect. Unfortunately getting serial output is
tricky, too, since I need the USB for kexec...

If you know that there's known bug somewhere in 5.5-rc1, tell
me. Bisect can only locate one bug....

Best regards,
									Pavel

--=20
(english) http://www.livejournal.com/~pavelmachek
(cesky, pictures) http://atrey.karlin.mff.cuni.cz/~pavel/picture/horses/blo=
g.html

--mP3DRpeJDSE+ciuQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl4NFv0ACgkQMOfwapXb+vIF3wCcDMrs0bs+1JWU3nnm2hPedrZ9
I+0AoK0newXf9VEBn/TY7kJrz1pSg+qu
=8xnV
-----END PGP SIGNATURE-----

--mP3DRpeJDSE+ciuQ--


--===============3706446887482005289==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3706446887482005289==--

