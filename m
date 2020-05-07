Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312501C93B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 17:08:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xu+OqlEfAqXn6b1nV9ptlG+mb6h2kCfdLmbJEGNRZWg=; b=atp/G3g84aql2ccNn+EuvZ3fZ
	7WtO6sZlxw0QMBHRsQL2q8krpTK93fS5OwrNsrdEi6UnD0EHuxJMeAkSaK5/6GJCD3+Z4m6Y+tnAU
	6FD1ca98e5iUDDjU9GPVXh61PRDvzyQcv/Z1480Wl483egphHbr5DS+DSapoQOse3qf2qnIYBhePI
	YBVzwzbF8KxSp4OQBsQu4La13cFGf+e+j1so9mq1HkXLHBCALVlyjl2c+6wSmziVC9rG74spwZKAH
	zboDpwG+hTbZ68PA+3uvC2t2OfQVjzIlZw8zDhMVD3bHZ/kdMYI6/o/Tcl31fGHJEgHAZO426U/p0
	zsjb7kO9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWi8K-0004PQ-9w; Thu, 07 May 2020 15:08:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWi7J-0004J7-6A
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 15:07:18 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF3D52083B;
 Thu,  7 May 2020 15:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588864036;
 bh=0KSuXtisez4FmxZnZPinK1jyZ7q+uauXU1NDAwq9+ic=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tQeKVedTaYJbvCstjp02l9Jq1wkc5xIvLHMxxd+udhdS4+NTsNj3yO0DfYaBYYxFt
 3LoM1vFXSQpLnkxfwbQSfwkeCLm0Xj+pcBLc9lBXq/Xbz540QGkjxjjoqht2rXE2qf
 tSNL/0gM83A/i6Sw3lFdGbmbbbqeC2D5/c+iHqGI=
Date: Thu, 7 May 2020 16:07:13 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200507150713.GA6183@sirena.org.uk>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200507143547.GC1422@willie-the-truck>
X-Cookie: 1 + 1 = 3, for large values of 1.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_080717_250555_A23FD9C5 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Daniel Borkmann <daniel@iogearbox.net>,
 Jean-Philippe Brucker <jean-philippe.brucker@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8841076602939921040=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8841076602939921040==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 07, 2020 at 03:35:47PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 03:33:32PM +0100, Will Deacon wrote:

> > Bugger, I'm still getting warnings (clang 11.0.1), but from an allmodconfig
> > build now:

> >   warning: some functions compiled with BTI and some compiled without BTI
> >   warning: not setting BTI in feature flags

> > (repeated many, many times).

> > I'll try to get you some more info.

Where are you getting this clang from?  When I test using clang 11 from
the LLVM apt repos right now it seems fine, and clang 11 doesn't seem to
have been released yet so I'm guessing this is some kind of snapshot.

> Quick look at the log suggests that these are caused by HDRTEST, whatever
> that is.

AFAICT that's something that's supposed to be checking for include
guards and not doing anything fancy...  I can't think what could cause
this on a per-function basis.

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl60JCAACgkQJNaLcl1U
h9Dvowf+I+U4pcQnYnmNHOmPe/w6MMdKl+eVz7n/WXcEjLWLGmtIHyYdD58eWx6d
J75DPJTAAaud5LeaVaB77OaY23Sx8n/q8RQ5FoUGc3ekQJVYkrYi+362HmI/UNcz
vo/hQ6YklaZEpM3dRsVlbxEJU5VRCMMaD1zzRpEOHuA2y0fGyeGXD7w2h8UWfJZQ
yN6LqBQoYVw524WoZ0kwn5nc4SvPbjiZg0Rky3ZChfwa5TyCyElLl7gaD1N3IEd+
bHiMVVRSktwkjD9zw2GY3CQVy+KHwFQIGAbHF0T5KrXC5cu48YXVARB3ThFW1++4
ZM56LEnOcEN1sUcsB8rAUuVjLswjoQ==
=rwDI
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--


--===============8841076602939921040==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8841076602939921040==--

