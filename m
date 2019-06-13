Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06A0044BEA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 21:14:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UGg0ExNmHXxLdoVRMJgPCku9hW6Pw3kHhpvX2RWmh74=; b=Uk/8Hjw5JSGzyRoYHRwuB5E3i
	35uAGg9I6RqIkoAojX5Lnaq7xZeMzPuwFxNDsNkHDETwWn3vmiK9J4Xia0YqlZL1ZValzIQUwZ4YZ
	VMX0kGeNDsF0h0rie5L9sCjwO+mVQPk2PMLWfbOWAFNsgeqcOGzwnmZ8Z/wG9MYzNDtfGxf+0kW7E
	5yo5dqdgqx+i0jmAZHNbCj3jU/VxiOfUQnOuNGN65K6yB4CGAFus+q8uKSQVZiesnY6dah/aUpHwd
	SFCUTwVPiPXnZl0mQliImTL5jkVVvccVUJe0kWHY5pdtme/RhRGWHpjo2rTIenv4gX9/zf2VTBA/N
	OoZF2IMgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbVBT-0001hi-UR; Thu, 13 Jun 2019 19:14:52 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbVBG-0001h5-4U
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 19:14:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=XusiFTXNYQTgic9TVHl9vDobQTLjL/8WBaiJ9jHmCUY=; b=Jt3+wogChSwIBpsEwq/iDzoKv
 UGb+V9EAy3x9o4QtWBFBYxZ1lzCA+zR8vcoMGFNFWfnLFb3c6DUQNS0IRCjnaOkRhbKrpd+xG1MwB
 DzR+rXkwR9uyYk3Zju8wvpoEdyoTavBewahwpXVKwnkv6P84t5Zbmdaa46Do5g6tsWFqI=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hbVBE-0005UD-40; Thu, 13 Jun 2019 19:14:36 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id 8E4B4440046; Thu, 13 Jun 2019 20:14:35 +0100 (BST)
Date: Thu, 13 Jun 2019 20:14:35 +0100
From: Mark Brown <broonie@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v2] spi/acpi: enumerate all SPI slaves in the namespace
Message-ID: <20190613191435.GY5316@sirena.org.uk>
References: <20190530111634.32209-1-ard.biesheuvel@linaro.org>
 <20190603110832.GA2781@lahna.fi.intel.com>
 <CAKv+Gu8rTernjct93rsWo0X3FTp6bsV=0JvNGQr8C8OaqB1S7A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu8rTernjct93rsWo0X3FTp6bsV=0JvNGQr8C8OaqB1S7A@mail.gmail.com>
X-Cookie: Editing is a rewording activity.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_121438_317947_EB07D962 
X-CRM114-Status: GOOD (  12.34  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-spi@vger.kernel.org,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Lukas Wunner <lukas@wunner.de>,
 Jarkko Nikula <jarkko.nikula@linux.intel.com>,
 Masahisa Kojima <masahisa.kojima@linaro.org>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4988661656290101599=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4988661656290101599==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="g3IWFuR7/O9KKcN6"
Content-Disposition: inline


--g3IWFuR7/O9KKcN6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 03, 2019 at 05:56:00PM +0200, Ard Biesheuvel wrote:
> On Mon, 3 Jun 2019 at 13:08, Mika Westerberg
> > On Thu, May 30, 2019 at 01:16:34PM +0200, Ard Biesheuvel wrote:

> > > -     status = acpi_walk_namespace(ACPI_TYPE_DEVICE, handle, 1,
> > > +     status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT,

> > Would it be simpler to differentiate here between Apple and non-Apple
> > systems? Then we don't need all that special code and the above becomes:

> >         depth = x86_apple_system ? 1 : SPI_ACPI_ENUMERATE_MAX_DEPTH;
> >         status = acpi_walk_namespace(ACPI_TYPE_DEVICE, ACPI_ROOT_OBJECT, depth,
> >         ..

> > Probably requires a comment explaining why we do it like that, though.

> Yes, but note that both the root and the depth are different in this case.

> I'll play around with this idea, to see if it simplifies things.

Given that this works and got some testing I've applied this now, if
there's a simplification it can always be done incrementally.

--g3IWFuR7/O9KKcN6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0CoJoACgkQJNaLcl1U
h9CsSgf/ct5qv0UqPxaWfJKOm8GT3NBa0M/seyJphcRzfO/WQrlDOz8HC4iGV6AE
v3NZWqcmzuQPtu477cXwOc5NqHqzUVHOOrWk+D7Pe5/urIS37xh8wSeY9mINlwim
YZzzpPQCXVEcO8GeijfooBSsSSpuuCq6EmOowOLuO58WlY1yx0h9BvgCwWWO0Dlx
B76uCITIixiZRoWME5PuucBDTMjFp7RrtCNvVt6xjBFHCrFEIC7UKCK931AbicTM
G2tXuMYjxteIWeZ4jYLDHGu/OFzQg7bTOcdQrhU8sybBsdek+FhBYdVTukS55Hxd
MMfuw861PELtqd3OW7oxpUQpQ/AcMg==
=Gd1/
-----END PGP SIGNATURE-----

--g3IWFuR7/O9KKcN6--


--===============4988661656290101599==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4988661656290101599==--

