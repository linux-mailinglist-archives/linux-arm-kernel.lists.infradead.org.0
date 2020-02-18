Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D45162757
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 14:46:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZsbXJ5o9+P5W8kydLp/xIYTkP6wXRpWqBDIsmIHPAOQ=; b=R+th5nRa+7BOdCI4DfzKwWAxj
	K9t7BFbGkddRTupRhXHDGiXjuf6NiHT0cn/wq2A/DS/TtMAxRrhoxe5QOqnBNtgntYvNpq7PUcrew
	W+aMDHx98zkziTuCTlNMzYylXNwpGWgsIv1U1UG/0BeGDFXriWyWPxcfu51D99ro+uE68wcDunWBr
	ffAekOq/3X5Xh4yKOAGVY6ab5N63JrxYsLDqg4yeop37ctlb9GJsUJBhTjcVpvy2Q/hYqdO30bAl6
	0O6WonAhQeFYhfDAnLSHTkxMIuxeruVjUfmbxu18+CmEQKYFzhu3AmONf9qoiECNUnvCmkfmkOxxF
	rK5C3nIGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j43CM-0004Nk-Ht; Tue, 18 Feb 2020 13:46:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43CC-0004J7-Dv
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 13:45:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1D2B21FB;
 Tue, 18 Feb 2020 05:45:51 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 93CAA3F6CF;
 Tue, 18 Feb 2020 05:45:50 -0800 (PST)
Date: Tue, 18 Feb 2020 13:45:49 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] arm64: kvm: Modernize annotation for __bp_harden_hyp_vecs
Message-ID: <20200218134549.GG4232@sirena.org.uk>
References: <20200218124456.10615-1-broonie@kernel.org>
 <49f7de5f1d86e7edcc34edb55d5011be@kernel.org>
 <20200218130619.GE4232@sirena.org.uk>
 <20200218131436.GE20212@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200218131436.GE20212@willie-the-truck>
X-Cookie: No alcohol, dogs or horses.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_054552_517356_E69385D2 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, Marc Zyngier <maz@kernel.org>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2796133786791824134=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2796133786791824134==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="xjyYRNSh/RebjC6o"
Content-Disposition: inline


--xjyYRNSh/RebjC6o
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 18, 2020 at 01:14:37PM +0000, Will Deacon wrote:
> On Tue, Feb 18, 2020 at 01:06:19PM +0000, Mark Brown wrote:

> > OK, I can do that for the KVM stuff - I've been actively trying to keep
> > the patches separate where there's no dependencies between them as it
> > avoids things getting caught up in review for more complicated stuff or
> > cases where someone decides they want extra cleanup while we're at it
> > which is especially useful when only some of the series is needed for
> > building on top of as is the case here.

> I get what you're saying, but I still it find it much easier to get a
> series of independent but functionally-related patches with a cover letter.
> I usually end up cherry-picking the ones that are ready to go, so then
> there's no need to respin those.

I see - I'd not seen that happening with the arch/arm64 stuff, more the
opposite, so I was working on that basis.

--xjyYRNSh/RebjC6o
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5L6owACgkQJNaLcl1U
h9BP8wf9ERM0KFYfeZGYds7VE6HIIEp0LpNTUPTZHOnKSFsozVEHdLLxG3JmxL7D
SWKHdAPHvPqeRNTzG1IiGQluuKtXTmtJQOfN+iOt3EVF9oUK58foxw35s5GyROQJ
9o/J/jLAKqpkXqKl0d0wIO8EdDqnwnkjHO/eJRWTPQS5RCSPPDBsC02Oag8jrA5y
lhBblLjm5B46hNl0iuFIA04emH7XFCI8vBG1KStDkeuLn8+2IxMa17//BjZPx7oT
IHZ0ZMujmSleMbBeDbAzPnvev82fDvpuMJI5PCIx//BSwt9FFdRMe4zUD7RZCDxu
6DcbCbwJ7x+tB/Sx+11kDPA+kjrPLA==
=uX0C
-----END PGP SIGNATURE-----

--xjyYRNSh/RebjC6o--


--===============2796133786791824134==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2796133786791824134==--

