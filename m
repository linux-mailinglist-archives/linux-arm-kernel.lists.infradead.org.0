Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B936132D62
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 18:47:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0MqPu7orJ0ZJD3JWw6YlCGHjLND8WG1UjnhUsKMvZoo=; b=osBDIRx9vPYhiTtcnCrp/m8lW
	cK/qta2MbdrPvA/rmMfSg8dork9rICVsW9fVLGg3xwg2IRdUgN9/JjWIZMcYCeO/VV286Sk6wSPUW
	83FXEIqiViBbjgmAwosMfqDtz8x+KLdM2tGAlzXAom22Qv7dmmbu4tUGhBUT/W6XhsC0lY0Ykzk9f
	oTDYnwYc7DLFSxtWY4tMpnQzYIaqIxnvuNWDs72cpnNFOJPsUx/zjXsIvoJUujo+Q6I6bj/ao9z2F
	AAObL0y2t6ZrU7cFXv0VMRs5uj7bh1udpv+QR+sFUlXt4ZBWYg/6RYFXrtReUR6/qH0zpZsGeI6uL
	HYeoog15Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iosxO-0006OY-8o; Tue, 07 Jan 2020 17:47:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iosxH-0006Nv-5K
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 17:47:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1EF3A328;
 Tue,  7 Jan 2020 09:47:43 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9A4B63F534;
 Tue,  7 Jan 2020 09:47:42 -0800 (PST)
Date: Tue, 7 Jan 2020 17:47:41 +0000
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 2/3] arm64: lib: Use modern annotations for assembly
 functions
Message-ID: <20200107174741.GG4877@sirena.org.uk>
References: <20200106195818.56351-1-broonie@kernel.org>
 <20200106195818.56351-3-broonie@kernel.org>
 <20200107144445.GC29001@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200107144445.GC29001@willie-the-truck>
X-Cookie: Will Rogers never met you.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_094747_242180_52537651 
X-CRM114-Status: GOOD (  20.44  )
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
 linux-arm-kernel@lists.infradead.org, jslaby@suse.com
Content-Type: multipart/mixed; boundary="===============0847093985647803636=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0847093985647803636==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y+xroYBkGM9OatJL"
Content-Disposition: inline


--Y+xroYBkGM9OatJL
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jan 07, 2020 at 02:44:46PM +0000, Will Deacon wrote:
> On Mon, Jan 06, 2020 at 07:58:17PM +0000, Mark Brown wrote:

> > -ENTRY(clear_page)
> > +SYM_FUNC_START(clear_page)
> >  	mrs	x1, dczid_el0
> >  	and	w1, w1, #0xf
> >  	mov	x2, #4

> Since this doesn't change behaviour, I think the patch is fine, however
> on reading Documentation/asm-annotations.rst it's not completely clear to
> me when SYM_FUNC_START() should be used. In this case, for example, we are
> *not* pushing a stackframe and that would appear to be at odds with the
> documentation.

> Jiri -- is it ok to omit the stack frame for leaf functions annotated with
> SYM_FUNC_START? I'm guessing it should be, since the link register isn't
> going to be clobbered. Could we update the documentation to reflect that?

Yeah, the documentation isn't great on that.  I was going on the basis
of both trying to minimize changes to the generated output as part of
the bulk change and looking at it from the point of view of the caller -
if as in this case the caller thinks it's a regular C function it seems
sensible to annotate it as such.

> > --- a/arch/arm64/lib/memcpy.S
> > +++ b/arch/arm64/lib/memcpy.S
> > @@ -57,11 +57,11 @@
> >  	.endm
> > =20
> >  	.weak memcpy

> Hmm, any idea why we use .weak explicitly here? Maybe better off using
> the proper macros now? (same applies to many of the other lib/ functions
> you're touching)

Nope, there's a whole bunch of stuff where what we're currently doing is
a bit interesting and I'm a bit worried that we might be relying on some
of it.  My theory here was to do the bulk of the changes as a 1:1
replacement so the generated output is as close as possible for any big
changes and then do anything more detailed that isn't actually *needed*
on top of that.  It's looking like there'll also be some stuff that
definitely changes the output going in as well, I was going to do those
as individual patches so that it's easier to find any breakages that get
introduced and so the big, repetitive changes don't have other stuff
mixed in.

--Y+xroYBkGM9OatJL
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4UxDwACgkQJNaLcl1U
h9Awigf9HWFZ43nt9Kw7ijRMi+bx+iijYI/TNH08mOkeDlSvf2lilv9WPLop9VEX
gtezchGJQNMHWntxM+6g0J60skBfkftjVgm+5sPni/WivURGQns9oYNqsmlWcJ4c
Z/MvPIabeQ+mY/VlEZHbj0BmGWOOWnHUjPLkDM+c8uGz5u1flYL2G6MhY8DEqAG5
wOneKPlkoTI6kkfMyd8Xx0mPFpsQeM3OPvtauiZkVY239VSVUk6zkedlNWPljYJa
O0CxWMnT97PQPnC47rBWJvURo5hc0K3lLw/UjrFTs8g3xhqnt70oYoAduHga3rhb
9BJwOhN0CCP15xa03EBpK+kZYD3qrw==
=uZp6
-----END PGP SIGNATURE-----

--Y+xroYBkGM9OatJL--


--===============0847093985647803636==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0847093985647803636==--

