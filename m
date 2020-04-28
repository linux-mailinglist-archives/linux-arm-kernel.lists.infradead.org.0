Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191761BC444
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 17:58:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mh43IB0IfBIqiSNykD7U4YVHFkCWM+xJMjn8DUml3Lo=; b=eo5TkcNvWGzgzX3PPCK8N1MPQ
	mV/sN0PKz1vgWnp3X45M0B3pGtNRxo70B0GqZAv24FwCsXhsNs0DSDaJYcrTDsdHj8wxlAdRJdP5h
	91Z08mJX8Dzp/RekthgY9yZnYyaZ6MougHALmRkKa908fFG07eUazULCe1RexCzBcBFxlQS65ca1W
	fpExFgUMxuJpF3kYFbHL1HNxRk8Td6KmrexBhnC4wSJ3Vr4p+YP1iZp/aj6XC92AHJ0AEFA0Jo4/m
	Nlam3FXl4xEULoR5Yvsg3UCqxVWimVVrm6mZMK/jV6gaEE7M/6H/DcNTd3BqJPT5x0mHKl64+tK/K
	0GUKD9ykA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTSd7-0004Cb-Ab; Tue, 28 Apr 2020 15:58:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTSch-0003xP-25
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 15:58:16 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1E97F20661;
 Tue, 28 Apr 2020 15:58:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588089494;
 bh=9TW1ekAy/plmUmvDsp58sZbU5BRtwtBDznTog9YdzDs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vggH6IunjsexihMHuZ1LkEoFGXuw/IsSxeF2VISAqmeWQP8cRjRMT7X2QWbDImWmx
 OkPGHCXNhAH5LR5or/+ahqXHmRVJV5D9ITw0a745tCajzLCI147NRzZ6E9/fKW6Ldi
 W1x0zIwY+AggNwLUsuJzGxqokq3OUMBXC0Ow9y10=
Date: Tue, 28 Apr 2020 16:58:12 +0100
From: Mark Brown <broonie@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200428155808.GJ5677@sirena.org.uk>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200422154436.GJ4898@sirena.org.uk> <20200422162954.GF3585@gaia>
 <20200428132804.GF6791@willie-the-truck>
 <20200428151205.GH5677@sirena.org.uk>
 <20200428151815.GB12697@willie-the-truck>
MIME-Version: 1.0
In-Reply-To: <20200428151815.GB12697@willie-the-truck>
X-Cookie: Eschew obfuscation.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_085815_141587_58E0D64D 
X-CRM114-Status: GOOD (  13.19  )
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
Content-Type: multipart/mixed; boundary="===============2665257472575098231=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2665257472575098231==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GvznHscUikHnwW2p"
Content-Disposition: inline


--GvznHscUikHnwW2p
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Apr 28, 2020 at 04:18:16PM +0100, Will Deacon wrote:
> On Tue, Apr 28, 2020 at 04:12:05PM +0100, Mark Brown wrote:

> > It's probably easier for me if you just use the existing branch, I've
> > already got a branch based on a merge down.

> Okey doke, I'll funnel that in the direction of linux-next then. It does
> mean that any subsequent patches for 5.8 that depend on BTI will need to
> be based on this branch, so as long as you're ok with that then it's fine
> by me (since I won't be able to apply patches if they refer to changes
> introduced in the recent merge window).

That's not a problem, that's what I've got already and if I try to send
everything based off -rc3 directly the series would get unmanagably
large.  Actually unless you think it's a bad idea I think what I'll do
is go and send out a couple of the preparatory changes (the insn updates
and the last bit of annotation conversions) separately for that branch
while I finalize the revisions of the main BTI kernel bit, hopefully
that'll make the review a bit more approachable.

--GvznHscUikHnwW2p
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl6oUo8ACgkQJNaLcl1U
h9ANJwf/WRlo08Mn6rULa8b3pqa1bQzdRN/zAGUfNf93UHKMH2yvxQZ6GTGie8us
Kw24VCNz5n7f6AjcO0v+vH6pAJxlD2DHraSawXDaEKZJ2YMnFSryzWFrWJr12klT
DRRRi3+D2+GBFPflADAl2YaCfEV9D2USZGPG6OB/gkF43dmK1VIAon0ixx8WL7dw
GtmV9U8DZlC9FrJd7gh9jbJGYiIgZ7hcMR2eyuzH5Z2gW4WPwWOkfd+pc9eBuyNl
vbBauk5tAYnPssGMtNUG7M9gakg5U1GsRBY7E1QUJ97iMAUqiKN2Z1mharmqU6cs
sswMEKQMo98MespYoImEM/wHQ5GqJw==
=KIkv
-----END PGP SIGNATURE-----

--GvznHscUikHnwW2p--


--===============2665257472575098231==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2665257472575098231==--

