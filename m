Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77ECB69B8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 21:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VSOLciAgbjA4GSgk9O1itWKtFrm1o8C+xpunb+SNAXM=; b=GoY750BMiewJxqa8RY6rxiDmb
	t5uDc+fPwTdBeOkmHpqdLFbstGnV0pwFAv5cp2r51cT6gZxvNXM/PJLVxyuXk1jNik7N5aGBtruLf
	q0pWaquZlYTDETO5iNWJvLdbMYQog8YD1+bNfCCGvqukG0DCeaYoQt2rG+mGk0XrqIAMlQjcREsKN
	iXyw/MXGWQFrlYw+8qQHaEzNjlwzYdcxr5MQDKjEWHJBbnLsfMucD/uyeK6kruxbss3/trWJNWnvY
	r2iCUD8Y77DOiwUgcyo0YQ+jY59K3Dzphy2ZPSC2Sf/IX5eiC1m3jcEe7RT+pEyVdXQAZAGvtgGT/
	zCS2M3LEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn6oT-0001V2-Id; Mon, 15 Jul 2019 19:39:05 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn6oH-0001UT-K6
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 19:38:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uEtSh3X6xQ1lITiuNz9x5IdXNtqfNQ17vMJkyrNs1LY=; b=xhH0p1EXjiOkPBx2ciKgSWD71
 u82dCi2hbyODuxO1uD0AIUppV8S/kASktp6GzA0pvZVBIBRjSO0Y0JF7eT/71rL66NWAZSpUCPURZ
 Fn4rq67eYTNi5AjqGx17ZndeOaQtXV3j/YS/R78oQwOof/eNXxXEHD+jPULJP+irjSSCI=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hn6o6-0002Mz-PI; Mon, 15 Jul 2019 19:38:42 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3C51B2742A1F; Mon, 15 Jul 2019 20:38:42 +0100 (BST)
Date: Mon, 15 Jul 2019 20:38:42 +0100
From: Mark Brown <broonie@kernel.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v4 0/7] Allwinner H6 SPDIF support
Message-ID: <20190715193842.GC4503@sirena.org.uk>
References: <20190527200627.8635-1-peron.clem@gmail.com>
 <CAJiuCcfUhBxEr=o7VVpPROQZadQh7z1QC0SkWSYt-53Sj3H2qw@mail.gmail.com>
 <CAJiuCcc3_1jZWV7G3+fFQYRZ8b6qcAbnH+K6pkRvww6_D=OMAw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCcc3_1jZWV7G3+fFQYRZ8b6qcAbnH+K6pkRvww6_D=OMAw@mail.gmail.com>
X-Cookie: Fremen add life to spice!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_123853_663767_EA67E060 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Linux-ALSA <alsa-devel@alsa-project.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Takashi Iwai <tiwai@suse.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Jagan Teki <jagan@amarulasolutions.com>,
 Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4303214087418457950=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4303214087418457950==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="aT9PWwzfKXlsBJM1"
Content-Disposition: inline


--aT9PWwzfKXlsBJM1
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 15, 2019 at 09:21:01PM +0200, Cl=E9ment P=E9ron wrote:
> Hi,
>=20
> I'm missing ACK from ASoC Maintainers patch 2-3-4.
>=20
> It's really small paches, if you could have a look at it.

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

--aT9PWwzfKXlsBJM1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0s1kEACgkQJNaLcl1U
h9Cw6Af+Lg1FCdunvHuQWgM9lkfW1yDRebhjo8R5qhgUtQE295gHjgjdqQ8xh6eM
ZK1py52Bhvt7DJsJFZfrEBSzhkvLbYMENjj17tSpW3A6H7wHzkyGUOKq3FRIzG6m
WciJzBWDsDtHEO6OUcrPDjvDJWOPeF8h2O+TOgsqOAGMDUPYG3l1iBozqVsFhwGA
b79wc9pIIKvVsp71cE9ZF/m9Y9JTsIyf6Omq4m0zx7KD7nEP0oqnmtg+8AI+lkrC
VEvioUOv9swbYdTsuPP+lwPqI/Wun1n4XDmppLD81iaZn8oHhW0FlU35PjoPRgGK
oPWiRnOfQWTiKTZ5PFdwsicKK9ZQYg==
=tPgX
-----END PGP SIGNATURE-----

--aT9PWwzfKXlsBJM1--


--===============4303214087418457950==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4303214087418457950==--

