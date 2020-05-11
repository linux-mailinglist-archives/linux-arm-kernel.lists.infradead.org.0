Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5861CDDBA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:53:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mpJdR76HHb1hdDDAa5h43OQz5LsMT2qdDEaupdH5qzk=; b=U1wfD+XMlVpHlcrXPV0lacnw+
	hPieIKeGpdwVOJoTF5FsB7XznPYDiefOyAm+5lHTG6KxQyLXqoKe8gqsHv6mjAOJWZQMDFD5eyx3m
	PvovqQPFDgATAzW+Bh3yPs9xdGgDamuML5+udvlcwcz+FAq92KwO1/5FrzA0+4u1InGZhpRnN6Uw7
	C9WNw6VMRUSDBIAm7cTY2MWP+5infGsjy7JOg+NNn3ARDoytlL7ND76pD/BOvZwXDi99nFSCj9Hmq
	D6TxRaTYpVFxCOVpaR7ywSJFW8yeq5DTKwEL4AnlyiQgK84IM5e50NXtqkzHvApUYMu1BN/05AyPz
	9X3LdyBDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9oE-0000Zz-IQ; Mon, 11 May 2020 14:53:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9o5-0000ZF-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:53:26 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 357E020736;
 Mon, 11 May 2020 14:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589208804;
 bh=AYhDvod9nbCHA/bULmju1oTd3bMlLvpXFTEjrTYtibM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BQXPdOqRsCKFPkcM8uaWvpoPeWFeD16/uCo96bJsLuWVqFcVoC3Lvd/YKAajzEKpH
 7L14ijj8OlDNIuJXcIfuVyzQ8zOvMbHeJ4r0AaGTJYu5cPF4l6DLdEVAaJO7VRlhTT
 zGz5p3udlLnloZkIsN3n71pCtGKjoWOnydSQzGvI=
Date: Mon, 11 May 2020 15:53:22 +0100
From: Mark Brown <broonie@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] spi: sun6i: Add support for GPIO chip select lines
Message-ID: <20200511145321.GH8216@sirena.org.uk>
References: <20200511045330.690507-1-alistair@alistair23.me>
 <158919630591.8372.404655401498379497.b4-ty@kernel.org>
 <20200511124245.j5pdnpsuhixzvs32@gilmour.lan>
MIME-Version: 1.0
In-Reply-To: <20200511124245.j5pdnpsuhixzvs32@gilmour.lan>
X-Cookie: TANSTAAFL
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_075325_204957_DB95C2AE 
X-CRM114-Status: UNSURE (   9.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Alistair Francis <alistair@alistair23.me>, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, wens@csie.org, alistair23@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7893135873814737915=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7893135873814737915==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="f5QefDQHtn8hx44O"
Content-Disposition: inline


--f5QefDQHtn8hx44O
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 11, 2020 at 02:42:45PM +0200, Maxime Ripard wrote:
> On Mon, May 11, 2020 at 12:25:35PM +0100, Mark Brown wrote:

> >    local tree asoc/for-5.7

> Are you sure this is the proper tree?

b4 seems to have grown a bug :/

--f5QefDQHtn8hx44O
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl65ZuEACgkQJNaLcl1U
h9DG2Af/d3GLvqRVx3OU87X/ee8QKnzpdk92r1kOKIfbzpKT2ig5TTitLAuzMqu/
Bt3yc9nVe97aZaCDrK18VjO2zhwhKsC6ztew3GExiDmD5tVaqEmrO3kQE38znATY
NBNjvhRRU0bQNQn+eVL/Zd0sm53wP3Zh4x/wNSaes0grabov7f5AyaRB27zCz57y
1/TCKj8WkUiO5Pjmr121NJOSjwtCA/RwIMZt+l7IGkMFR76ytYtuPNFTjI9Wdgp9
3DGFhF4lE2cIJJt44YPU0rnWCD9vReZw13awY1jmdIqUMkZPBHi9Jw2bWWOSQ02a
tofRzH/OWkFf2/2+TQ0mUWTVlPUWUw==
=+1Zk
-----END PGP SIGNATURE-----

--f5QefDQHtn8hx44O--


--===============7893135873814737915==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7893135873814737915==--

