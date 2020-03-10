Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807BA17F7D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:42:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qfqmlPGdvJK7Fgo+g6DcSehs+f/Ideguik6j573VIp8=; b=L+JO5JAT6Fb+R4o7VnWODBHbn
	mszYW0GfvjF4V6UVX2uIUqqY7nE6N/7foqY83n+UPFK1aKwHzN3N3fwIhT/tgZR5EOfKX3xySxFQq
	RKo3wG/klRqUf8sNrBiEPwnFVekGdz7reavIJh/NYDBCFZPShNsL7o9gmiK8OdM84NNFBdWYJDJzM
	JJFzybJ95CMlQHlnEI67BS5kK/ROESq0Z8V27tdWRchfzVVg+zUyY+a/C5TyCkdL7HdvzpA0qttA2
	3htcZ/3rJQRY/1JsEGJdkO5yF9EhRWg9x9cdBRvs7JjToyTq4xsB+wN3OjtVhUrsJXMiMSjHu3l5w
	EAzzpnTAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBeDY-0008C0-3K; Tue, 10 Mar 2020 12:42:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBeDO-0008At-Qv
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:42:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 177C130E;
 Tue, 10 Mar 2020 05:42:28 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D64B3F67D;
 Tue, 10 Mar 2020 05:42:27 -0700 (PDT)
Date: Tue, 10 Mar 2020 12:42:26 +0000
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v8 00/11] arm64: Branch Target Identification support
Message-ID: <20200310124226.GC4106@sirena.org.uk>
References: <20200227174417.23722-1-broonie@kernel.org>
 <20200306102729.GC2503422@arrakis.emea.arm.com>
 <20200309210505.GM4101@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <20200309210505.GM4101@sirena.org.uk>
X-Cookie: In space, no one can hear you fart.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_054230_921690_7EBC24C4 
X-CRM114-Status: GOOD (  12.48  )
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
Content-Type: multipart/mixed; boundary="===============7862888218451467479=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7862888218451467479==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="XMCwj5IQnwKtuyBG"
Content-Disposition: inline


--XMCwj5IQnwKtuyBG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Mar 09, 2020 at 09:05:05PM +0000, Mark Brown wrote:
> On Fri, Mar 06, 2020 at 10:27:29AM +0000, Catalin Marinas wrote:

> > Does this series affect uprobes in any way? I.e. can you probe a landing
> > pad?

> You can't probe a landing pad, uprobes on landing pads will be silently
> ignored so the program isn't disrupted, you just don't get the expected
> trace from those uprobes.  This isn't new with the BTI support since
> the landing pads are generally pointer auth instructions, these already
> can't be probed regardless of what's going on with this series.  It's
> already on the list to get sorted.

Sorry, I realized thanks to Amit's off-list prompting that I was testing
that I was verifying with the wrong kernel binary here (user error since
it took me a while to sort out uprobes) so this isn't quite right - you
can probe the landing pads with or without this series.

--XMCwj5IQnwKtuyBG
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5nizEACgkQJNaLcl1U
h9CwvAf/ZRKRyzQ70X79x8NhEkUSVp2jprVe6r4y/8/g449xGTTicMDIWQKGeikg
Z2v/GrsJ7+EAW4fiTl3dz+srzmuQCLS+67Dk/PwL4G4l8eJKQlBVj8BpiAASUml6
mx3mbdZSIfcRKgz3BbzAsmW6p186TYm1Eh0MAQJhN11goYRuZjs0MNTDwZ0RuvSZ
76rUJVdjbiFhjam1Et05p4G8HDQFKU0QArmyibQtCz1kU9+7affCfVyXFj3bnXx4
qepGxIs1ld2UGb4lZ1BdlDxDpQoaQ+nVPxPRic0loZbovKlASlaSyKuRFl49jYg1
8wHzzFxXeERLY2RJGZxzvae6Fq1zzA==
=fbe8
-----END PGP SIGNATURE-----

--XMCwj5IQnwKtuyBG--


--===============7862888218451467479==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7862888218451467479==--

