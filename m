Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80B1B1C5EE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 19:32:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7pobhaz1sKZsXlV0aas9qi+00WzSOV61b12R1LgSUAE=; b=GDUS9m+4gHOiyqAwk9iHeCD8V
	KiuN+jkFiQQPiZb12N88tziCtLxVM70eXhQF3fUxiH/UoNXNx/na81oU7vjX25SiWoQ5ou3/2Gpuz
	uY92E9ziwRUTW/JkvtNkKrME4l8Je9nCbULmYVpfsUJIzBRKDDtqhnVuPwVRkfPipRReMQS26sv8L
	IKhld7iIVLssRtujO6gI/FUknkyXK2qq2JIqJWfXW5gJKYMZmQUCyCeTdd66U2hwpqAy78zjTOeBr
	QFo4tbVr4DO/iXM8RLVjYcEPxynvEW4VwXMvaVDE0jDwJndGeiChcPeRamt42YCn+W6muNGPJ3APF
	RQwVsXx7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1QM-00044J-0E; Tue, 05 May 2020 17:32:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1Px-0003pR-QG
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 17:31:43 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BBFD3206CC;
 Tue,  5 May 2020 17:31:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588699901;
 bh=3uCi74qvWZAQ96s70YbJb3+o0bjLalP5A6FFuKtNtus=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iAy63rXJ5M+JGYmEqA7S1DdVk9XII5ka0b/JXAGwePC6Zkh+9moTdbirnqhAHXzo+
 88LhGwpwR0VLDGegxPUrc6/v+u7EpHnMPb6jHBQyU0+CLJ8ZZUn50G5O+9MLP8yTsB
 O+hOI7elMFQvcqw2ri66fwk9UcxFj90+BtqfdBSY=
Date: Tue, 5 May 2020 18:31:38 +0100
From: Mark Brown <broonie@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 01/10] arm64: bti: Support building kernel C code
 using BTI
Message-ID: <20200505173138.GJ5377@sirena.org.uk>
References: <20200429211641.9279-1-broonie@kernel.org>
 <20200429211641.9279-2-broonie@kernel.org>
 <20200505165045.GQ30377@arm.com>
MIME-Version: 1.0
In-Reply-To: <20200505165045.GQ30377@arm.com>
X-Cookie: Poverty begins at home.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_103141_889607_229870BB 
X-CRM114-Status: GOOD (  13.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5929496829276791360=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5929496829276791360==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="apbmkPN6Hu/1dI3g"
Content-Disposition: inline


--apbmkPN6Hu/1dI3g
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, May 05, 2020 at 05:50:45PM +0100, Dave Martin wrote:
> On Wed, Apr 29, 2020 at 10:16:32PM +0100, Mark Brown wrote:

> > +ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> > +branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) :=3D -mbran=
ch-protection=3Dpac-ret+leaf+bti
> > +else
> >  branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) :=3D -mbranch-p=
rotection=3Dpac-ret+leaf
> > +endif

> Is it worth a comment to explain how this differs from
> -mbranch-protection=3Dstandard, and why we're not using that here?

There was some open discussion in a separate thread about the use of
+leaf:

   https://lore.kernel.org/linux-arm-kernel/1588149371-20310-1-git-send-ema=
il-amit.kachhap@arm.com/

which currently settled on leaving it in but I do agree, it probably
would be useful to document the choices we're making here.  CCing Amit
as some of the discussion was off-list so I don't know all the details
there.

As with the recent change to explicitly default to branch-protection=3Dnone=
=20
there's probably a case for simply being explicit about whatever we're
doing rather than relying on compiler defaults in case there are any bad
interactions with code generated for an extension that isn't fully
supported in the kernel in the future.

--apbmkPN6Hu/1dI3g
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6xovkACgkQJNaLcl1U
h9CahQf/enHchoggmyIznVbXo8BOG8hDSrL92knbNZgmR+yBli+fjiHrzjp7EH/n
/Ic8NlTj/m0jk7Kd6uIPH/j+aLqMCAmpg8bJdpFqu2ZDenIFJPVdUgIk1lN5LsoY
sLs26vPHx/GY2jIRCcZcNxuKjC/Pn8R+lDL6nU8oS1q4R0wTSHxeqFniw/T1tLyl
uDqbH69CIdeXlZ3OSROKPAEESxaTO/rihjKc4g3d7HNqlvmCspgWhjP07oQQvgra
fLFtpl9CNpYLBmf2pfBR80IWTP8Ati2lQQu2UOBghcyhw7IN8o3oP9llqZaFKhLJ
1U7TVLwPetTgpGCwbDKUoxSiMHj4QA==
=UZFy
-----END PGP SIGNATURE-----

--apbmkPN6Hu/1dI3g--


--===============5929496829276791360==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5929496829276791360==--

