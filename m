Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CEF16FD5B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:20:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WX4rAayMC2WCbpS6s1gUSf0qSHjr3fVYQeUGKzdrT18=; b=WAtBoH9A/mvCbL8FVt8jjQ2do
	27zm2xGBfzrzbg7e7Ry0EbPSVKLr526E3rrmoOb1AnAdrgB+TndibGlXBHX6MtAX4ImlJEfqUXqGj
	B4qLwDoB0RVvTkNOAKrA4PvGkRjtp9kE6E6+BbVkDJ7DpiUUPUrVJ0i+Zw6BgMlGHqqmOHT/Nms5s
	YGkGr8T6TKt2pSZTfJ18YYc39w12Mi6pf27NBABGcQ9tP63PXcbak350DCToks3uCvYBNqoqR+wxW
	ud9yiJjaCU3QUodOFzg/3qA2cnZAGO/tDUD26UCoe1OiqqUwyngFkX/I94TWyuO5MYxvZzFno9tcK
	0Q1ROuEsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uk4-0006Mn-NV; Wed, 26 Feb 2020 11:20:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ujv-0006Lu-H4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:20:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D624C1FB;
 Wed, 26 Feb 2020 03:20:28 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5A7393FA00;
 Wed, 26 Feb 2020 03:20:28 -0800 (PST)
Date: Wed, 26 Feb 2020 11:20:27 +0000
From: Mark Brown <broonie@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v6 01/11] ELF: UAPI and Kconfig additions for ELF program
 properties
Message-ID: <20200226112027.GA4136@sirena.org.uk>
References: <20200212192906.53366-1-broonie@kernel.org>
 <20200212192906.53366-2-broonie@kernel.org>
 <202002252147.7BFF9EE@keescook>
MIME-Version: 1.0
In-Reply-To: <202002252147.7BFF9EE@keescook>
X-Cookie: May all your PUSHes be POPped.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_032031_607753_48947DBA 
X-CRM114-Status: GOOD (  11.22  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Dave Martin <Dave.Martin@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: multipart/mixed; boundary="===============5846248220406676064=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5846248220406676064==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="liOOAslEiF7prFVr"
Content-Disposition: inline


--liOOAslEiF7prFVr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Feb 25, 2020 at 09:49:35PM -0800, Kees Cook wrote:

> Both BTI and SHSTK depend on this. If BTI doesn't land soon, can this
> and patch 2 land separately? I don't like seeing the older version in
> the SHSTK series -- I worry there will be confusion and the BTI version
> (which is more up to date) will get missed.

Please.

> What's left to land BTI support?

As far as I'm aware it's basically good to go, there's been no really
substantial feedback in the months I've been pushing it, just fairly
trivial stuff and rebases - it's going to need another resend for your
comment just now about moving a hunk forward to a different patch for
example.

--liOOAslEiF7prFVr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl5WVHcACgkQJNaLcl1U
h9AcDwf9GZxAN5rdZOpKz4dNmbfGRCoB9nc9O6lSiDkP2JOEtG8pbkeX6TMI39Hm
+x/8gudWU6oq2Yg4KpIdz4QyZ8guZTRdoEsg9e7NJJaYC/JppbOBEsk8tR8qGRDQ
2ryYp2atIxhfcBQ+KuDEPP9/qMOhCNrDZHwfNe1jI+LtTc3aZ94XgbloqFvno9+B
2fpH28bHWi8iL+Kk5K7wN78O1dyb+8EkWz/2WXjo2hz5mfEJsAnIR2QnaY2HoJSO
9t6fLU/TJ21XcOExtnjTB19nWEScEcIltEWCGjWlAGJRxSQyWnlXZaPc4cDjyN+x
iGx9ujR4FphdpqhQNmWrZOccbdTqwQ==
=QAgA
-----END PGP SIGNATURE-----

--liOOAslEiF7prFVr--


--===============5846248220406676064==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5846248220406676064==--

