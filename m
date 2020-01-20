Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5459B1430C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 18:26:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YY+xVBcddOsxWYJeKus78D6PbWGnFcv6OKqafypVAtE=; b=G6ct6M/GmR6o5wae9jgxJKEO2
	1hiQbI2nQlur751tUwKGiVsQSmWOs5liiHvXSDu5zKjTmIZOM6hy0xuBHnb5wZLPwMm+rY5xbp+bZ
	HN09knvNxyw+IsF1mAFKKl+Eh74OzsOTZvkHWx6KKPm76FmOw0ubhHTUZfXFtPN6t1Ks8MhpeNPef
	Zfw67Te6Lx4G+LGuWj1Gs1B/HJUkHMdwzFyiUvHYBuwlYaWEUplpWWEhLeavGtan2deScbC+VRuHV
	StyJwCSVQEhO+2M8bzaMIGvbbi/qE688aYLy6bQg+0ty2KRiWgiT9vOiVs4n4BCM1ErkwXtKrpWYV
	Kk6MIpYCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itap2-00089c-QP; Mon, 20 Jan 2020 17:26:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itaoo-00089C-4f
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 17:26:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 516D331B;
 Mon, 20 Jan 2020 09:26:29 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C1A193F68E;
 Mon, 20 Jan 2020 09:26:28 -0800 (PST)
Date: Mon, 20 Jan 2020 17:26:27 +0000
From: Mark Brown <broonie@kernel.org>
To: "Theodore Y. Ts'o" <tytso@mit.edu>
Subject: Re: [PATCH v2 00/10] Impveovements for random.h/archrandom.h
Message-ID: <20200120172627.GH6852@sirena.org.uk>
References: <20200110145422.49141-1-broonie@kernel.org>
 <20200110155153.GG19453@zn.tnic> <20200110170559.GA304349@mit.edu>
MIME-Version: 1.0
In-Reply-To: <20200110170559.GA304349@mit.edu>
X-Cookie: I invented skydiving in 1989!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_092630_227142_F26D0364 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 herbert@gondor.apana.org.au, x86@kernel.org,
 Richard Henderson <richard.henderson@linaro.org>,
 Borislav Petkov <bp@alien8.de>, linux-crypto@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2594348404831127172=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2594348404831127172==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="AzNpbZlgThVzWita"
Content-Disposition: inline


--AzNpbZlgThVzWita
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 10, 2020 at 12:05:59PM -0500, Theodore Y. Ts'o wrote:
> On Fri, Jan 10, 2020 at 04:51:53PM +0100, Borislav Petkov wrote:
> > On Fri, Jan 10, 2020 at 02:54:12PM +0000, Mark Brown wrote:

> > > This is a resend of a series from Richard Henderson last posted back in
> > > November:

> > >    https://lore.kernel.org/linux-arm-kernel/20191106141308.30535-1-rth@twiddle.net/

> > > Back then Borislav said they looked good and asked if he should take
> > > them through the tip tree but things seem to have got lost since then.

> > Or, alternatively, akpm could take them. In any case, if someone else
> > ends up doing that, for the x86 bits:

> Or I can take them through the random.git tree, since we have a lot of
> changes this cycle going to Linus anyway.  Any objections?

I think the important thing here is that *someone* takes the patches.
We've now got Ted and Borislav both saying they're OK applying the
patches, an additional proposal that Andrew takes the patches, nobody
saying anything negative about applying the patches and yet the patches
are not applied.  The random tree sounds like a sensible enough tree to
take this so if Ted picks them up perhaps that's most sensible?

--AzNpbZlgThVzWita
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4l4sIACgkQJNaLcl1U
h9BxEgf/RJIHZB+Cajrjtj2rRTGbAHO9kok/m6BSU0ERJzN1CQsdp4P19aWYHYmF
XEM/Gca6c0PICes5FwW+XWozKxRdmcpBI36CaxYgqnkdOu9ydFaCC9vVNC33ot3d
I0mGi3O7IvbFWglmZQhpD235hFGJYleeR2C9k3ZD4kJpp6aNTdWKVy/0qtVtOjk/
PgAxQ2xBYwxIkofP/3sE8U/AbP0e+HlQglHv4zDNAeoU366QXcO0cQ1Xzf/5vra4
oswWcyowcg9oEm6rFpmF5/1XMnB7dJEVX8OYOsrXHoS5TZuq81GZxke7Y6TynjS7
ZBwLT8sRsdbZeyoNDJhcjqY4VrojIg==
=jrbn
-----END PGP SIGNATURE-----

--AzNpbZlgThVzWita--


--===============2594348404831127172==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2594348404831127172==--

