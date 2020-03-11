Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95125181F5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 18:26:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pk1aG/nqOawsc77wK4jFqpO9v4E2t7L5lNvWFyRCnmE=; b=W6Jg1d/jvVU/YeqQ89+7wRiUe
	f/FtVDDrU2F+CEpZ2rjFy5u7NSOp8PFkBBtM8I8KtIrbGgw7GvNyNpQdQbLbjOnDOKNxpFR5+G6I8
	Y0OFIfC0BvGxdJC6zDyS2FKXb7bHyVHNDKGHukx6Ij6Nc8z7JKkOqBhbzSi1aGnBNPUe8KJBroq48
	N0XnG0a+SpBWHa3NaWc+xBIs7eHcRxwCQxk0aOtpBBa2j2Heo34CTt0Lwq4E4+7bhLBMP2Vk2JCRM
	Et029h5R9/+q1w7bt1SfQ7ltAlCb1KTYluvE6L8IwbwOkj9yVfOX80XLZG6FrNw0CfIIisRW6rwsQ
	q7oyJ/rwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC57R-000524-MS; Wed, 11 Mar 2020 17:26:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC57H-00051g-Fb
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 17:26:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 64C8A1FB;
 Wed, 11 Mar 2020 10:25:58 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DB7193F6CF;
 Wed, 11 Mar 2020 10:25:57 -0700 (PDT)
Date: Wed, 11 Mar 2020 17:25:56 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200311172556.GJ5411@sirena.org.uk>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200306102729.GC2503422@arrakis.emea.arm.com>
 <20200309210505.GM4101@sirena.org.uk>
 <20200310124226.GC4106@sirena.org.uk>
 <20200311162858.GK3216816@arrakis.emea.arm.com>
MIME-Version: 1.0
In-Reply-To: <20200311162858.GK3216816@arrakis.emea.arm.com>
X-Cookie: I'm a Lisp variable -- bind me!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_102559_609749_6851BA5F 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============1410787983154809805=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1410787983154809805==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Xssso5lpTBgMxDfe"
Content-Disposition: inline


--Xssso5lpTBgMxDfe
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Mar 11, 2020 at 04:28:58PM +0000, Catalin Marinas wrote:
> On Tue, Mar 10, 2020 at 12:42:26PM +0000, Mark Brown wrote:

> > Sorry, I realized thanks to Amit's off-list prompting that I was testing
> > that I was verifying with the wrong kernel binary here (user error since
> > it took me a while to sort out uprobes) so this isn't quite right - you
> > can probe the landing pads with or without this series.

> Can we not change aarch64_insn_is_nop() to actually return true only for
> NOP and ignore everything else in the hint space? We tend to re-use the
> hint instructions for new things in the architecture, so I'd rather
> white-list what we know we can safely probe than black-listing only some
> of the hint instructions.

That's literally the patch I am sitting on which made the difference
with the testing on the wrong binary.

> I haven't assessed the effort of doing the above (probably not a lot)
> but as a short-term workaround we could add the BTI and PAC hint
> instructions to the aarch64_insn_is_nop() (though my preferred option is
> the white-list one).

The only thing I've seen in testing with just NOPs whitelisted is an
inability to probe the PAC instructions which isn't the best user
experience, especially since the effect is that the probes get silently
ignored.  This isn't extensive userspace testing though.  Adding
whitelisting of the BTI and PAC hints would definitely be a safer as a
first step though.  I can post either version?

--Xssso5lpTBgMxDfe
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5pHyMACgkQJNaLcl1U
h9DzqAf+N5eQpuCTzUhAIY7PldVhZpWztsdMphseLhvdpMuxuYytqZg+qcir93sK
xhkpSByIe6/jwCgyGKMTcBSb4B3d0P+0Ag1Xt0MHNvMNmGYqgHbsdAlVcQVY/Aog
cDRqEVNOu1JUpxOJzB7fU8alfxrcw1lv30oJ/35I0tb6KYPOYm5ZjiLy9BA8bfhA
gaCPy6o6J2jAa7Ps0RGWz5hHAWcs66gVPb83kcKf233tIFuUdC3QQm249riue23f
mQnmjz5T7fu8WKI4vC9YwX91jUtHvOr/cJrw3B6UMJlCCzQS+Kl4OtwNm+gK6v55
Q0temUNAKiyce6V2f8Akx5iUtQ3hjQ==
=WXTz
-----END PGP SIGNATURE-----

--Xssso5lpTBgMxDfe--


--===============1410787983154809805==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1410787983154809805==--

