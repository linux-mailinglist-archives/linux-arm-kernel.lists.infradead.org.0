Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B41DEB0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=HG0tiUvFzju3U1aSUv0tHHg1Ep3wIx2wLcdWXzPXfF4=; b=EVwovVSpK6Epe3iBCfHACPUZ/
	eSq6vKw1rPw0Dx6M5nTUrgVEmYTM+0i3vJQeuMRFRGl84LhEPehKFWaSig7ScZ1bfZ6TessMQrsMI
	9GPFO7mr5kTBqNEuMB5/JFCrg6resKVE/f5xjnODBsRkpKSPG8N+UtmYzFtZptA2vQMzF3cu7M71Y
	DVB7GZmsTNOnjihv7LnVXMvR1CWN8E8qrtf+6B4jHHBKbywI5wIaRxYhT6XgqY5MbAfG5ww2II2kY
	U7icG74/pbugtYvzptYQHOKlECFMcOxqIfusc5EfsRo32wsFrrXoOgCMQn9+MVx0T3IYFM/uhvZG5
	H5bDZoZ+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVyn-00040P-Pq; Mon, 21 Oct 2019 11:36:05 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVyZ-0003ww-2b
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:35:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ItaU+MbAHgCye1IVUzSWHuGcjVdE+bPZonoTIyYtvSk=; b=TTDPyWToHHh8T4S3VKE3aoBSF
 9/nETwlA1TAi62o0j35cfOjNsIGpvP2N3gwweRO1tcfqGICQxXQOQWZl3j4InuMXp6RjDj9OVIDhg
 Pdos0yIfN39tLJcWV9IRFWmsc0RYPlOacXAryIlo9g8CHfO/EZqUVJrE4zdsYRNwKAl0k=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMVyM-00042v-H1; Mon, 21 Oct 2019 11:35:38 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 00689274301C; Mon, 21 Oct 2019 12:35:37 +0100 (BST)
Date: Mon, 21 Oct 2019 12:35:37 +0100
From: Mark Brown <broonie@kernel.org>
To: Andy Shevchenko <andriy.shevchenko@intel.com>
Subject: Re: [PATCH] spi: pxa2xx: Set controller->max_transfer_size in dma mode
Message-ID: <20191021113537.GB4691@sirena.co.uk>
References: <20191016195721.3714-1-daniel.vetter@ffwll.ch>
 <20191017064426.30814-1-daniel.vetter@ffwll.ch>
 <20191017070638.GB32742@smile.fi.intel.com>
 <20191021110857.GR32742@smile.fi.intel.com>
MIME-Version: 1.0
In-Reply-To: <20191021110857.GR32742@smile.fi.intel.com>
X-Cookie: Why are you so hard to ignore?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_043551_126999_CDE7B9C8 
X-CRM114-Status: UNSURE (   9.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Daniel Vetter <daniel.vetter@ffwll.ch>,
 Robert Jarzmik <robert.jarzmik@free.fr>,
 Haojian Zhuang <haojian.zhuang@gmail.com>, linux-spi@vger.kernel.org,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 Sam Ravnborg <sam@ravnborg.org>, Daniel Mack <daniel@zonque.org>
Content-Type: multipart/mixed; boundary="===============4671553215526472337=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4671553215526472337==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="rS8CxjVDS/+yyDmU"
Content-Disposition: inline


--rS8CxjVDS/+yyDmU
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Oct 21, 2019 at 02:08:57PM +0300, Andy Shevchenko wrote:

> Mark, can be this applied?

b2662a164f9dc48d

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

--rS8CxjVDS/+yyDmU
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2tmAkACgkQJNaLcl1U
h9Bmiwf+LpkNRvFDHKJlEidZWltSZa/YXEUiHkXF+RPQ50Dg7H7u4mTpMHYE6p4j
GzZoajbCmd20mLDAY/AV+PQc5AmjFdXmMk5/3vqbYPWL92Wmlfx/2pIX+O8NV/dz
MUaCFgYJf8ZStxwwsEKGYSxPzdkVi+e57w7GQZMZP8JKm1VfRjxHCBNV22ZmXD2L
WGxdBr9lIPfs34GplBpk2Gr3Y5dlDbHC03tgsxf1qcDQlRiG9HaX8zEiRF5CsnAh
XK2lkJmT86hCJiqRNP6QnT1SmjqahHwHbUXakBNNmS5nr1JYYZb3hCgSWPrdpbbg
UP2goIpeqbEN0JAhJNMQA9OQGT58kw==
=2kIE
-----END PGP SIGNATURE-----

--rS8CxjVDS/+yyDmU--


--===============4671553215526472337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4671553215526472337==--

