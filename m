Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD0BA1CB53B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 May 2020 18:54:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=18Z9AArS9mp68+9kQN/WxPDKrMoZZEJTgjN2mrtnF6M=; b=Yi6OPvtzARdqA0CHrGmIJZzdf
	J/b6q5Dy2pcwoYnczezZuIc6JlikY9PRcEiwxZsdvG8PkeChmiGxWhneBV6ZH6OrueHZRdegEHs3v
	sjJQKo9IXRCosd2kPGIGFUZEmi6f6QKHy5vN5Qz6c+OJlZkroGDbR5KISYgq4Y5Ka/mhgfOdndGT4
	sOqpGbv+6TfqD9awee7grbc+xeIPPNioELuh4D4wE5E2jK7URteDo3kS6lVh+PR10SNZX26h1vRi1
	dWKCuvWrIaSeaeCyejYSnCD/9i0kJ85Cr/i6llBE9HbbhD2h+Q8VqufeJmJY9aC8n7i0kCPBRq2sr
	83B7C3vXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX6G8-0001ry-GP; Fri, 08 May 2020 16:54:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX6Fy-0001rN-C0
 for linux-arm-kernel@lists.infradead.org; Fri, 08 May 2020 16:53:54 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B944921841;
 Fri,  8 May 2020 16:53:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588956827;
 bh=erYXbdvkzJXuscVzg66mQuxq568k4AdHoc1hv57aH6Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iItCeARgKXLwJqNPN8RvOa+A1Sw/UApPujiw3CJgYhZ/nXDIwnYxUa925JNTk7tcU
 r73NMTmJa+NIE2cJSzqKYzFuyKJMJxYkQEiIkx8B6LAsb0FFifF3uezVZ5QGq6kXSM
 q/2/hYnawgmOz+xBixY6uOfSPemCGWbcGDX3ak40=
Date: Fri, 8 May 2020 17:53:44 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v3 00/11] arm64: BTI kernel and vDSO support
Message-ID: <20200508165344.GA1652@sirena.org.uk>
References: <20200506195138.22086-1-broonie@kernel.org>
 <20200507143332.GB1422@willie-the-truck>
 <20200507143547.GC1422@willie-the-truck>
 <20200507145901.GA1938@willie-the-truck>
 <20200507150905.GB6183@sirena.org.uk>
 <20200507151848.GA2294@willie-the-truck>
 <20200507154854.GC6183@sirena.org.uk>
 <20200507155523.GB2648@willie-the-truck>
 <20200507163045.GD6183@sirena.org.uk>
 <20200507163658.GC2648@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200507163658.GC2648@willie-the-truck>
X-Cookie: C for yourself.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_095350_431032_944DDADE 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============1481085888882824785=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1481085888882824785==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="x+6KMIRAuhnl3hBn"
Content-Disposition: inline


--x+6KMIRAuhnl3hBn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, May 07, 2020 at 05:36:58PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 05:30:45PM +0100, Mark Brown wrote:

> > It does seem it's a straight compiler issue, if the compiler is emitting
> > runtime then the compiler ought to be ensuring that it agrees with the
> > build options the compiler was given and I can't think how this would be
> > fixable or avoidable outside of the compiler other than "don't do that"
> > which is what my Kconfig bodge did.  I'm talking to the toolchain people
> > internally about this.

> Thanks. I'll apply your 'depends on ...' line locally and push that out
> if I don't run into any more issues.

Thanks.  The issue should be fixed by clang upstream with:

	https://reviews.llvm.org/D75181

Once that is sorted out and lands I'll send followup patches opening up
the dependencies to match.

--x+6KMIRAuhnl3hBn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl61jpcACgkQJNaLcl1U
h9AFvwf/bhnCuzgjYHs2AoLHoNwQkIs/f+0apHtzsYFT0hUJpmYCI/bXfyE07pkU
VfZ8XW0gRWbIUCyvfrTszdAmaNk8MlGYzaa6IJ5V2Ltf4P/MK8hKZ9gd+qLkKhhn
ljYg23JTXut9KbZgYkduIJs+j8zwOh4okHHrXuuKUW0oy+4qWi07vKcGMtarkmRq
PRLfsJFta/y/0DIPXA1dskIcblSHypVWNuKeD77KqOYkaoWgXGRi9JfND7mHG7R6
GNER4wl2P7oHmk6ZwJbi9foL4GCzpmts3KMMSF3TLm5hLvkPOrb6L/0Bvcp/tcIo
aDS+rCICBJyBcL2gudweSE7x5GcIig==
=Cgol
-----END PGP SIGNATURE-----

--x+6KMIRAuhnl3hBn--


--===============1481085888882824785==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1481085888882824785==--

