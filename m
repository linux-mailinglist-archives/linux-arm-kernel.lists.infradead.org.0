Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3491BC265
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:12:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NxGE2q5/6TE5FjEi/CzCVbsq5GlR61R+yep7q5L5ius=; b=S2Qa8S7jfPcackARJHLYPsaaD
	u2j/2ULaT7uLD+uj9JHptNVQ2vgAXOOtMP1SjlOlM76Sgj9z4c2MhW7VnbflcbKpAnZg7tN9RvYph
	ny2Cl9nuILt9hgMF70y4JXYqaaUp9dXGn57suzCxenJntp/37THe4jSzXoWZdzWXwjlOpR9A0zAQH
	FHvQdBE2o022xxZJrjSDcQ0O+Zdc1ssJdkK+CyxjKqrGSQTMmojK+HGNhe13kyEuANa6dLSIFawHS
	be1Ql3k4jsAbG0RbffU4zbFAYgfuDMQDdeEMj6smrrkzn20a47hUiS/l5vr6wGtp5A/k0G+po8FtK
	MQ6NO7Hcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTRuH-0004CY-Kq; Tue, 28 Apr 2020 15:12:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTRu6-0004C1-9U
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:12:11 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 049E7205C9;
 Tue, 28 Apr 2020 15:12:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588086729;
 bh=PJ/qMNLFQ2CsTZ2XN0GuSpf86VzQThU8sWc8F6sRTLM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=n2THRNj3qyZifwEXSByrZsc0WQR9DbWB9IiGccQAlL8ahCo1Gdwrb744NgoWD6ZIv
 +3yWVI1XFvklZZUTVZIVMHW8qTQhleom5KMiwpkoz5sDER5um5IAfZh2+FiVeeV6Qv
 hXn8EtGtR4yjLKyT5+YzZBnoLxYdJlwM7SgUbPJ4=
Date: Tue, 28 Apr 2020 16:12:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200428151205.GH5677@sirena.org.uk>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200422154436.GJ4898@sirena.org.uk> <20200422162954.GF3585@gaia>
 <20200428132804.GF6791@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200428132804.GF6791@willie-the-truck>
X-Cookie: Eschew obfuscation.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_081210_348861_07707E5E 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Andrew Jones <drjones@redhat.com>,
 Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============8697417166490691461=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8697417166490691461==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Bg2esWel0ueIH/G/"
Content-Disposition: inline


--Bg2esWel0ueIH/G/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 28, 2020 at 02:28:05PM +0100, Will Deacon wrote:

> I'm happy either way, but it would be nice to base other BTI patches on
> top of this branch. Mark -- is it easier for you to refresh the series
> against v5.7-rc3, or leave it like it is? Please just let me know either
> way.

It's probably easier for me if you just use the existing branch, I've
already got a branch based on a merge down.

--Bg2esWel0ueIH/G/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6oR8QACgkQJNaLcl1U
h9DRUQf/dlpsgh2tPKIHik+DY7EQMgJJUmD7ZJRWxntS4/wM6bMOxOT617T0Cljr
ERZBQ8cyC6N3d2HdeY1TyjMenKaCWrMVps1bPjuZqZYMEGEBXWi3TwoW8hPojTw4
l3lh7Z5Eg3da+YBS1sOzymIlfcPg7JRA7f7Z9KtbSs1srWTTetHurhtK59xD9l0p
B6QNwoJBKybECHjkIsNK8xOc03nY4vmXcrbHLWs0POF8gJRVaLLrJxgozJ6q4Nj7
9VEgiQWIkvLH7daFvPPyagp1WWdrxt6noTK2hkNvB5q46VxasUOoybeKB7IX6/jb
Sj4vxb1g49Kcf1pjRwRSz1rGe/E0Dw==
=09DA
-----END PGP SIGNATURE-----

--Bg2esWel0ueIH/G/--


--===============8697417166490691461==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8697417166490691461==--

