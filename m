Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEB59166784
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 20:51:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vttw01FdM6qJKcN8w5GaqwOAZYGU+ulutt7CuyY2P50=; b=A9ly86uWXbV+ZGrBHluN2xz2E
	CiNnqP58fDd/LDp2HweOT0fHzokqki3seu0R3csEq+C+KfRq7r/WtetvCHQe4nXmKCl+XLBc4JpjU
	aox4fKPQb4pkIpj8rRUf0y9hiGZSguigFkxBSQo/jRliF47193C4JHNtiy7jql6YS8mRIAkdpLZ55
	G1m3snaW/LDgl88Ozh4rb5HSyXEJnVn/TsRdpuJ7x9nG7EdlGhLHVH0X6Kozclptqb8YWz9ypHxsg
	91L8oHxzYvVfKLzjd7PYSriPfZdE5QsLGlrcOddlhx3hrGaYbdsomSz8dNbxwjsqqODpuRt+wz2zs
	BwWilk/aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rrI-000719-LX; Thu, 20 Feb 2020 19:51:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rr6-000705-HR; Thu, 20 Feb 2020 19:51:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D90DF30E;
 Thu, 20 Feb 2020 11:51:24 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4EF083F68F;
 Thu, 20 Feb 2020 11:51:24 -0800 (PST)
Date: Thu, 20 Feb 2020 19:51:22 +0000
From: Mark Brown <broonie@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH 0/2] rewrite mtk-quadspi spi-nor driver with spi-mem
Message-ID: <20200220195122.GL3926@sirena.org.uk>
References: <20200215065826.739102-1-gch981213@gmail.com>
 <20200218125557.GD4232@sirena.org.uk>
 <CAJsYDVL03KJv7eewGekBPCfpbOuTX0tJ6qZaydvJnBDzZ5vEwg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJsYDVL03KJv7eewGekBPCfpbOuTX0tJ6qZaydvJnBDzZ5vEwg@mail.gmail.com>
X-Cookie: You are number 6!  Who is number one?
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_115128_644900_C06B4E4C 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5876605383312021416=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5876605383312021416==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kaF1vgn83Aa7CiXN"
Content-Disposition: inline


--kaF1vgn83Aa7CiXN
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Feb 20, 2020 at 07:58:06AM +0800, Chuanhong Guo wrote:
> On Tue, Feb 18, 2020 at 8:55 PM Mark Brown <broonie@kernel.org> wrote:

> > This is an ABI break so you shouldn't be doing this, if the existing
> > binding works it should continue to work.

> The missing spi-max-frequency is the only part preventing old
> device tree to work with this driver.
> If the goal is to make existing dt binding work, I could patch dt using
> of_add_property in v2. I saw similar device tree patching for legacy
> bindings in pinctrl-single driver.

That's fine I think, so long as old DTs continue to work.

--kaF1vgn83Aa7CiXN
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5O4zkACgkQJNaLcl1U
h9CnhQf/csTFVBvPtYuq5Xz1OdgQcpPuRzKFr7JAXvgpfAUv5qPV/34M4juJxze6
ei2b2s9UlxK2Naa8GFKqAEKOK79jnk5HrI7QkELb2UpQPSJQKubjc8iHzDsQ8rgC
V7Qf/2Lv2J/NW4R2XzC0ZXMeSnEMBQepx/pUCQnwXOqReWiy/l2X7pLEJsI4J4pR
ba9BzEWWAXYoP4SYj/cVlqhWrBh807h6owmwTlV86VrwRRh2cxosTUZVMx6nRNq6
MBFLZ/vayfFd9LF7BQ5r2isKv+BUrZZ8bd06Gt8vZrrLBoH4YiGhXDLL3CGWvFhk
6M/bBGLDrkTKwSBb6zMaLOsygszigQ==
=rZ8a
-----END PGP SIGNATURE-----

--kaF1vgn83Aa7CiXN--


--===============5876605383312021416==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5876605383312021416==--

