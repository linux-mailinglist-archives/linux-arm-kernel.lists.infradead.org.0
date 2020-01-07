Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76664132B3F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 17:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X00wCxlgzuV1ptI6jZ9gKN3WyM+VEFnrgbXp04gd9m4=; b=ufvCechBEyo4uGHj9vw7WHeCb
	BAHp2zO7QqRraAqi0hVd0Qi9FW+etn3Kb3xswmQBvhg3eFYypd10l2iU6FU2tfl4c9Sh+Du7NGDLe
	mrjLwMvJ1MYaX53rsc/H2pEWXBRy9Mugsbw+Xi7QqmI3cZl77R7dllWACp2LYMZv3OFE258Lm0uY0
	ueer1qRkSZy3pJwpUysPY7kvIeoh4vAyCtHo0CikcEOQWmJaIKARrHZuy3Atsfv59VOg52bM/fubk
	472ewjFViCWqjASKpqxvCTO4LLf66pxAfcT2WzdsEeWfN5/ZyD0ssILTyttLtu8r/F76Hq+Ti4Ug2
	oXhJp/PUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iorwN-00069u-Bw; Tue, 07 Jan 2020 16:42:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iorwF-00069O-Rn
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 16:42:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E6A26328;
 Tue,  7 Jan 2020 08:42:36 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6C1E03F703;
 Tue,  7 Jan 2020 08:42:36 -0800 (PST)
Date: Tue, 7 Jan 2020 16:42:34 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 3/3] arm64: mm: Use modern annotations for assembly
 functions
Message-ID: <20200107164234.GE4877@sirena.org.uk>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-4-broonie@kernel.org>
 <20200107144357.GA29001@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200107144357.GA29001@willie-the-truck>
X-Cookie: Will Rogers never met you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_084239_944504_E90C58A9 
X-CRM114-Status: GOOD (  11.35  )
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
Content-Type: multipart/mixed; boundary="===============9031186591995480483=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9031186591995480483==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="VdOwlNaOFKGAtAAV"
Content-Disposition: inline


--VdOwlNaOFKGAtAAV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jan 07, 2020 at 02:43:58PM +0000, Will Deacon wrote:
> On Mon, Jan 06, 2020 at 07:58:18PM +0000, Mark Brown wrote:
> > In an effort to clarify and simplify the annotation of assembly functions
> > in the kernel new macros have been introduced. These replace ENTRY and
> > ENDPROC and also add a new annotation for static functions which previously

> Can we remove ENDPIPROC after this patch?

We can eventually, there's more stuff coming (very soon) for kernel/ and
kvm/ - once those are in I've got a patch sitting ready to remove
ENDPIPROC.  That's basically the only patch for any of this stuff with
any interdependencies so I'm sending stuff as it's ready.

--VdOwlNaOFKGAtAAV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4UtPoACgkQJNaLcl1U
h9CI7Qf/aDeXC609ltU/CH8h3JGjzAHpfWT6J1qUtML2bXHGN1pfnVt2MjoMuujZ
aObgBAVZet9wc3VPD2AcEi6zBZEjfaCgbPcMChSY4yQ22BvAiXkaCXS3KFSkHqU1
KZOPiS3K7qliSRly0ACxqpVrzYJqeG9X5yaZy/pgg6jXy6uNXZPPCTGDbI/uUTi/
TByXRbqxl3otGDds1opdnNSq1e6jfkL2ehOLETiyoMePutqCPyy5MKEEYbH/eWCY
nqSpTDOUUJ3TWXBIzxif3UJIkg+p2yaGnnpF4pxhVzpq9YFlKCFtIuT5z3Szbxlg
QtMF20NY6kcZw7cWqal9JO7iGvLkiQ==
=nKGg
-----END PGP SIGNATURE-----

--VdOwlNaOFKGAtAAV--


--===============9031186591995480483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9031186591995480483==--

