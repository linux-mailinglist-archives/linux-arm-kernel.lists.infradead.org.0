Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BB36D41AF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 15:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lQvH8RZ6/ZproYJ7K+hSSRvKbffeRh3HoM5HFIPfrVE=; b=rMHPfMisPSTmPwmYO75zrh2a2
	iD3GbhQJLm0qhMTFXNH5iBxMEX13Ez7toBlnCK3bbkP8MD6to7tSkzQgr6C0im3HXUf29kC1/ryAn
	MhtfUsmHMoWc5m7uR7RxvGb2qXMll3mJ7gTcqxh2q6BYyqDczP2AzZwskcokRdi2y2UPC1fqLLlmg
	FrOUs/0OO3k8js2cIiO95WSP44b/KO9XOgPSUTWZc6xUqXIJO9ogvSGn3AnEU2aVcdBfpyRzP1u3I
	grOFS8vsY/PSSk3sZZQsMGstf3Rog6qqSixCx6MaDDgVjwyRxtFHmkoc6SAQRlfxFq4LfxMSP2CuR
	e1WY+G5SA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIvG7-0002lK-Ij; Fri, 11 Oct 2019 13:47:07 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIvG0-0002ko-Ca
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 13:47:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ssipnciy5BWOnB8+GsrXMhGdvQLP40vXK/KUi8wveJQ=; b=JuBmJcQ9V5mPu1ool8nCXMO8Z
 KX4xN4sNtepfGf/uLdvovJXA7tIT2Sq1jV+mAK75rnK7rvF5yFMOK3smCzBrfkqJdEH/YBEVOkAaP
 3pFqWHKsJLTIJMLFK/H1vWnN84QiHcOpJLmTIMLWLClQd/qiArngRGPDdc4mcfDdAB08o=;
Received: from fw-tnat-cam7.arm.com ([217.140.106.55]
 helo=fitzroy.sirena.org.uk) by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1iIvFw-0005s3-Lb; Fri, 11 Oct 2019 13:46:56 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 70485D0019E; Fri, 11 Oct 2019 14:46:55 +0100 (BST)
Date: Fri, 11 Oct 2019 14:46:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: Add initial support for E0PD
Message-ID: <20191011134655.GI4741@sirena.org.uk>
References: <20190814183103.33707-1-broonie@kernel.org>
 <20190814183103.33707-2-broonie@kernel.org>
 <20191010161317.GD24793@lakrids.cambridge.arm.com>
 <20191011111715.GH4741@sirena.org.uk>
 <20191011114013.ovvs36rrolkn2hzv@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20191011114013.ovvs36rrolkn2hzv@willie-the-truck>
X-Cookie: Void where prohibited by law.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_064700_442365_C3472B4F 
X-CRM114-Status: GOOD (  13.78  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: multipart/mixed; boundary="===============3517198089253659939=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3517198089253659939==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="YrQNB5Deg1WGKZi3"
Content-Disposition: inline


--YrQNB5Deg1WGKZi3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 11, 2019 at 12:40:13PM +0100, Will Deacon wrote:
> On Fri, Oct 11, 2019 at 12:17:15PM +0100, Mark Brown wrote:

> > It does - the main motivation for doing it as a local feature was
> > to avoid the regression with systems with late CPUs that lack the
> > capability which Will was concerned about but I'm not sure how
> > realistic such systems actually are.

> I think we need to handle the case where not all CPUs support ExPD :(

> It's not like E0PD is something critical like support for a particular page
> size, so I think it's a tough sell for SoC integrators to ensure that it's
> matched up.

That's fine, we handle them by falling back to KPTI if we detect
any non-E0PD CPUs.  The only difference in the end result between
doing this by making it a system wide capability and doing it as
a weak local capability is what happens if the first CPU that
appears without E0PD is a late CPU then instead of accepting the
CPU and enabling KPTI we will reject the CPU.

--YrQNB5Deg1WGKZi3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2gh84ACgkQJNaLcl1U
h9Ca9wf/WxHTH4xdIObomAb5ewDIX93+YF+YLWxTZCWjegnoDAjB2WB7kzgsrWEr
2YHQ2rj2q45Fg4jF4Vh8BbYrcZ86ki9ymAFGKk6WvftRvoPjjVP4xQuSpWxZkLRA
xb3LVa9y4bOYGQnOu885IUwpy6TmIyKO6ApDqaHbd12RN9Vg7S5jPRMEEXTBhqof
ChzFKNW3FZ0srBHzEopQ/JrLjH9DvRMI8pWZm++N2Tk1fETyY9SrutLRODTjty3z
/fUHHHX5c0zqRzyCh0DvCxZHwy3pJ4jnljMPPpuHjC/jFhzF2dU3DO5tpdHPL+Wg
CCIHvAqaCQBWDzf2dusFPfEbUr/FmQ==
=Swfk
-----END PGP SIGNATURE-----

--YrQNB5Deg1WGKZi3--


--===============3517198089253659939==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3517198089253659939==--

