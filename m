Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7347D13444A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 14:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uPRGvAzBde+3A1MRMZ4al0TzO6pdFDG1JDHcr5rurZU=; b=upb/Sa/8kr78/JO/QJdsZedgM
	gu0kkA9tmOAJj/X9TztbepyapsfnKnmd4T26GASkLXNdrEjJ5T0CpVOBJtBog/nPJmUWgDFQowQ0P
	byL9thQTKYTcQ064vcoog2EfRjIy1ZZOZ8MNLpQOS1oytJQD5k7EdHb9X7eqi5f21EW2EOPF918CJ
	gSXI+U9RAsUjIUZKqIehTS2GQSHk7htpFZ6ekvoZCNMNs5IogMGJP2dzMJ70/+U6XmnhGcy5udbop
	XalIxA8h9kyPpXwmw+DzCZQr/Snn8a+knSd5VlvYVYalZw1U5LbkisnDPcpshjQ5TmGKSU5m7rKF3
	cGmq8MRzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipBjr-00025m-U6; Wed, 08 Jan 2020 13:51:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipBjh-000254-VN
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 13:51:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1C6D231B;
 Wed,  8 Jan 2020 05:51:01 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 995913F703;
 Wed,  8 Jan 2020 05:51:00 -0800 (PST)
Date: Wed, 8 Jan 2020 13:50:59 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64: mm: Use modern annotations for assembly
 functions
Message-ID: <20200108135059.GC3817@sirena.org.uk>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-4-broonie@kernel.org>
 <20200107144357.GA29001@willie-the-truck>
 <20200107164234.GE4877@sirena.org.uk>
 <20200108121717.GA16398@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200108121717.GA16398@willie-the-truck>
X-Cookie: Trouble always comes at the wrong time.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_055102_050938_DC9F180C 
X-CRM114-Status: GOOD (  13.48  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0959850533766837100=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0959850533766837100==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XMCwj5IQnwKtuyBG"
Content-Disposition: inline


--XMCwj5IQnwKtuyBG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jan 08, 2020 at 12:17:17PM +0000, Will Deacon wrote:
> On Tue, Jan 07, 2020 at 04:42:34PM +0000, Mark Brown wrote:

> > We can eventually, there's more stuff coming (very soon) for kernel/ and
> > kvm/ - once those are in I've got a patch sitting ready to remove
> > ENDPIPROC.  That's basically the only patch for any of this stuff with
> > any interdependencies so I'm sending stuff as it's ready.

> Hmm, but with this series applied I don't see any remaining users of
> ENDPIPROC. Or are you saying that there are new users in the pipeline?

Ah, you're right - I seem to have confused myself about what bit went
where in the series.  I've got the patch deleting them, I can send that
if these get applied or include it in the next posting.

--XMCwj5IQnwKtuyBG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4V3kIACgkQJNaLcl1U
h9Dh5Af+NS9FiZv5k9LBnMPmWHPAnhDDHjLgL1VEuiKQhhlzd2JpKDxnynpjL0at
Q83trloIK/eUKn2qIRnbEDaaC4fkuoL5tDDTnafWbssuUpsy9LKQN8LSsEZnp1KT
QYLgfi1gXeE9TRn4Okht9702TvH4IwbXDhD/ASr+xYwq2ZPDEl1XsNTy1ZRckgjn
f/o5qNuSWTapBpOF/56IxtfRwy29F3BzAD0OT5XwTeZwmL0BchDrxZF4FTVyyUXW
x3aKGTlfawypcoD9aB7QbO+W7o+sSWo/THovWz00FQ8eq14S/WeLaTcPKJti0aJp
zPQVST8uZv4nQrgPLBtSizPgnt7jCg==
=WrhF
-----END PGP SIGNATURE-----

--XMCwj5IQnwKtuyBG--


--===============0959850533766837100==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0959850533766837100==--

