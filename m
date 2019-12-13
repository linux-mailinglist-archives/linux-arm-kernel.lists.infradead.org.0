Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D083F11E2D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 12:32:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+07qTgWSu0e8/u+/HINaz7YBPDZNuSZ0z2SG6zoNWVM=; b=lYB820by3Rx4JVf6y4T4Qkymb
	/W+OLw3adcSU+ERovsp4LEWVafcmVDX8se/f2lBenTlimXJ6fHxEsgHKFAW7S5RUlimS2uNCDCSmh
	lJR+WjOFf2oUTxTAft1g/ZbB1eU2XtbPQ+90ahLQRKss+XLI9SYq+baEObSvZbyw6dh+nFL2VDOyk
	l6Hd8MxZ1PPfU1RqiPCBNkEyo3pTgQd0HLesf9WhZKAEDuHaWp7U0qaDZ8IOoRD/QjbF22N2s2vDE
	E85R8ikH0yGTIAVJJfYKfDsNQqnLcLS0hvMqIE5ZlDDBkjskk/wQsP49AKzPe99/9qUZvXoghFtcn
	q2X09IN8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifjBk-0007Bz-5y; Fri, 13 Dec 2019 11:32:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifjBc-0007BV-Js
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 11:32:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B4EA11045;
 Fri, 13 Dec 2019 03:32:43 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 30B113F718;
 Fri, 13 Dec 2019 03:32:43 -0800 (PST)
Date: Fri, 13 Dec 2019 11:32:41 +0000
From: Mark Brown <broonie@kernel.org>
To: =?utf-8?B?amVmZl9jaGFuZyjlvLXkuJbkvbMp?= <jeff_chang@richtek.com>
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20191213113241.GA4644@sirena.org.uk>
References: <1576152740-11979-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20191212145330.GC4310@sirena.org.uk>
 <b0f4c1afd1d341b49b87b7b5cda5ea4d@ex1.rt.l>
MIME-Version: 1.0
In-Reply-To: <b0f4c1afd1d341b49b87b7b5cda5ea4d@ex1.rt.l>
X-Cookie: Life exists for no known purpose.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191213_033244_694853_D30EC295 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 Jeff Chang <richtek.jeff.chang@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============2574263652463399982=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2574263652463399982==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AhhlLboLdkugWU4S"
Content-Disposition: inline


--AhhlLboLdkugWU4S
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 13, 2019 at 07:36:15AM +0000, jeff_chang(=E5=BC=B5=E4=B8=96=E4=
=BD=B3) wrote:
> Dear Mark:
>=20
>=20
>=20
>         Thanks for your replying. I consider that there was only one item=
 I should modify. So I kept resending.
>=20
>=20
>=20
>         Please refer my red comment after your comment.

I can't tell what's in red or not, kernel development gets done with
plain text e-mail.  Please fix your mail configuration, it is extremely
difficult to read your messages for this and other reasons.

> The writes to reserved registers should be fine but things like this whic=
h looks like it's configuring the input path should just be left at the chi=
p default, we don't want to be configuring for particular boards since the =
same driver will be used for every board with the chip.
>=20
>=20
>=20
>         The chip default cannot be modified anymore. How can I do if I re=
ally need write these setting in our drivers?

Settings should be done through some combination of userspace
configuration at runtime and device tree or ACPI properties.

--AhhlLboLdkugWU4S
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl3zdtYACgkQJNaLcl1U
h9B8kwf+IpjaEaGa2G/sBNA8Uba5iLxJH77tx+EkitOF1sumwNDj1XNcuYqb9lDl
ak4VjrPpISMuFyn2bA1jcGMDT9Kt7Iu9Ho2H/trihujQasAESaDskolv4ePg0XVV
azTK7X98WsarZRy6EpuWWSCmF1ePPpA60fHtM3rjQbKDhAb+6VVIl6kDEeWvhwtt
aPl5Twi1fjMqgPtqSdCe/aREpmiREG19zoTy/M/INreV7T5KY4ndfV/m6YNnBVss
T0ambE+xjV94LIULzEsa5fno9DKIgGOmrKxunAXswLk8B4Za0Auhv7E3XBvc/CpR
7kTt0mjLMsVXjv75mbnn2BKi7Zdovw==
=PyY0
-----END PGP SIGNATURE-----

--AhhlLboLdkugWU4S--


--===============2574263652463399982==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2574263652463399982==--

