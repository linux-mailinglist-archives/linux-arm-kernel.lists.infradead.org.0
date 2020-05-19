Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9CE91D9671
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 14:39:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dir1Zlsm+Vd2gNFx1A7L1sWvgAsG3k/krnM7no+xYkU=; b=AByPPRDwtGmwMbmAaHWQF2cN2
	4qJH79z4lFnvkAQ8adsWUeV5JuTTHgvdfgO0xr86od8KjLT3TayAQAMJF7IR1W4Lz81RyatZL9Zpb
	UCPiQeNhW16c3uKPIomjrATKGowoNMsoRg4lz61YZFOpQ56y7xCzid/vehTE1/+hMRlxnrJSfwoQA
	PMdIZInvZitoY+mjjBh2KT19zAH3vK+j4a/LwDjUwKxls+z2Ot4PZS9cKqcjNPrrfwjZCbvM+C7sF
	FQFcahnlInoFMbr2iA5blW9geTlQtHV28VS3T3P+KZrz4Yt+NscmlyZlfixUYM1aDD6Mh/jnv0+i7
	U5AHsu+gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb1WJ-0003C0-Nq; Tue, 19 May 2020 12:38:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb1WB-0003Ba-BV
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 12:38:48 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 008C320657;
 Tue, 19 May 2020 12:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589891926;
 bh=DqSfK4bzW4R+T73RC6j0zM2LxI4opJhVfzLxhsu1B7A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=U4B3B1ck7hwwLoGNOivpCPx1yY6m5XgAyV3S2iNz4Ux/Zp6U1GFgePJGHJEKclOLm
 vAZ6BDoBJMa8pAUlI2Hy7OuEkKoKHaC+Pyx/SWH4PuTLV0Ot4w1wBhq/HxvGK6dj3G
 zJ1Prm9PPVzjYzo6gjCQlajkH33KJTpvlbf50zNY=
Date: Tue, 19 May 2020 13:38:43 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519123843.GJ4611@sirena.org.uk>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20200519121818.14511-2-will@kernel.org>
X-Cookie: Do not write below this line.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_053847_414396_B126E5CB 
X-CRM114-Status: GOOD (  12.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Dave Martin <dave.martin@arm.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: multipart/mixed; boundary="===============0358363596292815481=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0358363596292815481==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="wHh0aNzodMFDTGdO"
Content-Disposition: inline


--wHh0aNzodMFDTGdO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 19, 2020 at 01:18:16PM +0100, Will Deacon wrote:

> Fixes: 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building the kernel with BTI")

I'd say it's the annotation conversion not this, and also that the
bikeshed would be most fetching in orange.

c91db232da484851 (arm64: vdso: Convert to modern assembler annotations)

> -SYM_FUNC_START(__kernel_rt_sigreturn)
> +/*
> + * GDB relies on being able to identify the sigreturn instruction sequence to
> + * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
> + * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
> + * this function is only ever called from a RET and so omitting the landing pad
> + * is perfectly fine.
> + */
> +SYM_START(__kernel_rt_sigreturn, SYM_L_GLOBAL, SYM_A_ALIGN)

Shouldn't this be a SYM_CODE_START()?  It's the same thing as above
currently and we'll break an awful lot more if we change what it does in
a way that affects the code, plus the use of CODE basically says the
above - it's a "this is non-standard and we know exactly what we're
doing, don't mess with it" annotation.  If not then it'd be good to
cover that in the comment since otherwise this seems like it's asking
for a cleanup, we shouldn't really have raw SYM_START() in code.

I guess we also ought to annotate the 32 bit sigreturns as CODE too,
though it's academic there without BTI.

--wHh0aNzodMFDTGdO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7D01IACgkQJNaLcl1U
h9Bm5gf+Ne4F0vCaUjKfF866SmUOED9htBRCqMHAUWzdmKjFOmm7LPegnQMNp08F
VFPixSrpeRLqgWqLbJo32vtWQmzCio/+U0NEarl2eukpeMW+rCzOTtSDKNPAHK1d
598gs6Qn9RP0+UF75bhYKF91d8/r61Swvr4xsGqkRKGMPeLQ61fC2wKdbZuThrx+
ZVL0oCeYOPJjY04EL9uRjOdf29rSyOA6tagFgZ8MAKgitlu93gCCskO6WQJNhGBh
xbhDxA1lXCsImf0WE0nqbXrR1TAT3gKs8maSfDu+KdZuiNSMsFeYl4Oc4JtI/zGc
R6+ktFFk5kmbhBLchpFeNmKZHcLiNQ==
=yw3A
-----END PGP SIGNATURE-----

--wHh0aNzodMFDTGdO--


--===============0358363596292815481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0358363596292815481==--

