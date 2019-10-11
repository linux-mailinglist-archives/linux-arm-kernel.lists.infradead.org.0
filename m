Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8617D3E1D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 13:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XFG2T4GrJ8fadCIXQP0PMKhPo7PUx3LpZslWx1zsfnk=; b=r6CTfdbNln3UAweHiROKqx8xC
	ixYi3VSGwK4GAaztbSlpDHSTXZ6LNev/pW7IEBBYkS7a4fuJeVQAfPGtZ1gtAM4ZG9YcKwKkDjfgo
	KHzNNgPfgfz7+x4zC4muv0MOseiC462WJdwZFGerNdrANZ1BOFs8AMVgw7qgB1vWAFGWTkPk9y9z/
	Q64JStGbW2fRrH+LjUyt2RXvFsC2GjRjPTr3fEH2Oj7Jix3Iqxsq53QlFSCDyXlXo3QdZtHB/ylNL
	Re8esYs5riA6CmLpmdvDzlhCuXF3PpcEkVYJ7oLEr3TUcb01mKWR55ni4oX/NxATASyVYfRoktHcF
	DmQriOdXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIsvK-0005Mm-93; Fri, 11 Oct 2019 11:17:30 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIsv9-0005MO-AR
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 11:17:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7VSBh4ISqXPnvwaoZKjQVtQcI64OsYoe/LrqFf+Gy4s=; b=PlFCqNXKhuzd9JM0mHe3Y3Dsp
 SMYMwoqk7qbnKmS0g0VjwSdJTJvYaATsLE52XPWroGQKxx/zwARF7O/HUNgbmWDbraeGgkmzeRwqO
 BJ4o5nA/XFMkXJgNvIZPsugvpkxvmX4ayqttrAPw8MNGsWEt8GWXpov5sg4okbz3+x3kI=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iIsv7-0005Wq-3P; Fri, 11 Oct 2019 11:17:17 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id CF33DD0019E; Fri, 11 Oct 2019 12:17:15 +0100 (BST)
Date: Fri, 11 Oct 2019 12:17:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH v2 1/2] arm64: Add initial support for E0PD
Message-ID: <20191011111715.GH4741@sirena.org.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-2-broonie@kernel.org>
 <20191010161317.GD24793@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20191010161317.GD24793@lakrids.cambridge.arm.com>
X-Cookie: Void where prohibited by law.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_041719_363680_507B4793 
X-CRM114-Status: GOOD (  14.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============5382076003908929761=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5382076003908929761==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tT3UgwmDxwvOMqfu"
Content-Disposition: inline


--tT3UgwmDxwvOMqfu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Oct 10, 2019 at 05:13:17PM +0100, Mark Rutland wrote:

> So if all the boot-time CPUs have E0PD, we can spawn a VM that starts
> using E0PD, but we might (silently) later migrate it to a CPU without
> E0PD, breaking the security guarantee.

> I think we want this to be STRICT, so that we at least warn in such a
> case.

> More generally than this patch, I suspect we probably want to abort the
> hotplug if we online a CPU that doesn't provide the same gaurantees as
> the sys_val for the field.

Right, if we make it STRICT we at least avoid that issue with KVM.

> > +#ifdef CONFIG_ARM64_E0PD
> > +	{
> > +		.desc = "E0PD",
> > +		.capability = ARM64_HAS_E0PD,
> > +		.type = ARM64_CPUCAP_WEAK_LOCAL_CPU_FEATURE,

> I suspect it would be better to treat this as a system-wide capability,
> as with KPTI, which will make it much easier to reason about.

> That would rule out having E0PD on a subset of CPUs, with or without
> KPTI. With KPTI it's not really necessary, and without KPTI we don't
> have a consistent guarantee, so that sounds reasonable to me.

It does - the main motivation for doing it as a local feature was
to avoid the regression with systems with late CPUs that lack the
capability which Will was concerned about but I'm not sure how
realistic such systems actually are.

--tT3UgwmDxwvOMqfu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2gZLgACgkQJNaLcl1U
h9CJjQf5Afs2vbDMVPX0d+bZvchflktx66OYoASKJXEa28URgAOckQeafTX4iFsp
POA/T+MwgsxwpjyhXhUlKc3UPRbhsYQGRBY6Z6p1g54+O31LkKk8fwanIXMz+Cxa
dSTrs1t1kGIzxzmLRNt8HtH+W6pIT5Oxo8QamDselzWfQAL5/LvjmYsg6HoAxQMg
zS+bpn/FTFbGryRchFHRAK8oT3NF9Vsdpul4993UO1qJBCxuHgQe2eCP+ZYP8qHJ
yK+ELyKEua1Wf5NZCxgkYKTncrCVq8q/B64zQEQ9LKX0P7HffFKc4/J+pmMG8ire
BEkurkvAQ//DsXf87NDvgND2/Lj09g==
=FVu8
-----END PGP SIGNATURE-----

--tT3UgwmDxwvOMqfu--


--===============5382076003908929761==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5382076003908929761==--

