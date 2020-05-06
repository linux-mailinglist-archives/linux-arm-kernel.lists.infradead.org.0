Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1131C7077
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:39:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uBHp7qcexcsRGMoF9u0I8yUEDvrwtm7wt4q7qW+5ooU=; b=UeScnWgjVlktLHS0dGogN7VpW
	CcRDW1SJJInxYDYLgLESpnQ3lVVEnRkhUoy5Ca2mNVSSejC0AUDZt6aatQLb9bi0ZaVCimDfXD/GU
	Kew7doF5Fkw3rYMSWRY4jXqcT1aQ8+BhBPPvPWw1S8gw8QLCwSLCKMERgSBu8NvZB7Nh4QnhQaUOz
	zfneNbU8kBIZE2HqrtJCp8k+hBceEdBKVPZzMkQFOimmWBZwF7j7ECBnA+cT0JqZSpxE2ePo8lxNO
	9PxKk28HKs9Dj4D/p46R/OxOpzSDYSBfj0d87MSHu+VJNXQmTUnkPjYyrLdeKiLAZsUCeuQ3O2KZO
	Fif2yWeBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJKL-0004Nv-3M; Wed, 06 May 2020 12:39:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJKE-0004NS-7u
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 12:38:59 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C327206D5;
 Wed,  6 May 2020 12:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588768737;
 bh=ukiGGrWBqKFY/nAOHdYryk0yKawIUW6Vo/YEHL0SIMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OtpYiJ1s1EUvkY1nC40qo4AFvIPU8huZELnfqnhGcCO4+F3UaIwbGGBwBNU0y77xZ
 bu7dvtTsRPeBg7rkWCV92K2vQsANesbLhI45fYJwI8XaYrztymi89R/LonE4D4N5tD
 Gc/hNvh0G3XAy/n/Y70gWh2e8HiDlTtJ/vvkyVRY=
Date: Wed, 6 May 2020 13:38:55 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 07/10] arm64: asm: Provide a mechanism for generating
 ELF note for BTI
Message-ID: <20200506123855.GC5299@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-8-broonie@kernel.org>
 <20200505145858.GB24239@willie-the-truck>
 <20200505170629.GH5377@sirena.org.uk>
 <20200506112632.GD8043@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200506112632.GD8043@willie-the-truck>
X-Cookie: Not recommended for children.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_053858_298707_AA30EFAD 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org, Kees Cook <keescook@chromium.org>
Content-Type: multipart/mixed; boundary="===============8439641724867233120=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8439641724867233120==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="vEao7xgI/oilGqZ+"
Content-Disposition: inline


--vEao7xgI/oilGqZ+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 06, 2020 at 12:26:33PM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 06:06:29PM +0100, Mark Brown wrote:

> > I was unsure about that - it'd be a bit annoying to have to have all the
> > callers of the macro list things like BTI where=20

> It just feels inevitable that we'll need to do this at some point!
> Do you know what is supposed to happen if an object has multiple instances
> of this property identifying different features? For example, could we
> do something like:

Regardless of what is supposed to happen my strong suspicion is that
we'll have some more.

> If we have to merge this stuff in a single .long, then I think we'll
> probably have to put up with passing in the features as an optional macro
> argument, which defaults to "all features" if it's omitted. So on top of
> your patches, we could do:

> +#define GNU_PROPERTY_AARCH64_FEATURE_1_ALL				\
> +				(GNU_PROPERTY_AARCH64_FEATURE_1_BTI |	\
> +				 GNU_PROPERTY_AARCH64_FEATURE_1_PAC)
> +
> +.macro emit_aarch64_feature_1_and, feat=3DGNU_PROPERTY_AARCH64_FEATURE_1=
_ALL

Right, I was just expecting to have the ifdefs selecting the flags to
emit in the middle of the asm macro definiton rather than separately - I
didn't see a huge win in defining a macro with the only user being
another macro.  I can do something along those lines though.

> -.macro emit_aarch64_feature_1_and
> +.macro emit_aarch64_feature_1_and, feat=3D0
>  .endm

That will result in us emitting the note with no flags set which
*should* be totally fine but is a bit unusual and feels like tempting
fate.

--vEao7xgI/oilGqZ+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6yr94ACgkQJNaLcl1U
h9Dt8wf/fLqu/8bUcLIxdev2RqJ5Re6mTTQjiM+6iHquGDOLxAYlFj6ufiRvEwXy
rRqVkaa9xGdU7KGyIiN44f65Wn9PfO5SFRm9bY1x4apV85maD5ZNxqZ/CwM8hhxT
SJhy+M0zuIXBhn+7DabLzXX/hejRxxEUfkGEacPzmVzFbQHlfLiFFK3ZBDCRxjYa
sygh48lRj2uRG7qMerdg+7RLHXWGbm37zpCluYT7Bsa37Czo4hgUUfJ8i7BwfiZP
qyLHBI97+kZoDx5EQ7EMVMDTbfbY6TgOUWYZNWKkS09G67dTpEoxUPE8YE+m2wes
RMCsAJUtNocSs3Wz7dRIt+KGB2Y/aA==
=Mvvu
-----END PGP SIGNATURE-----

--vEao7xgI/oilGqZ+--


--===============8439641724867233120==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8439641724867233120==--

