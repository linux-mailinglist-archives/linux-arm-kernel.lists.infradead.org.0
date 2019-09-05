Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F662AA997
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 19:01:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qU/DWwIwGZDL9qd9bhb1hS1DXCIqdBMBrCtDuj7f3sg=; b=K3J6RtysydTVapd8y3RhIIAWM
	UzPkn5np+6ox+6GC9DZust85U/Q1N1uIBvG9oIUP22n3ICWr/Gxi8AI5sEUdLHSIqhvFANlnOqIxK
	yFDcfBlM/1y3uFd8huEiEhgrKQVVcoW+hMzRBJZgoHte2gXCSPKkGXlgydtKbr9kZ4Wf75AeyiBCZ
	BtG4CUiQ5Qf7Sqq+zNugroMdNAKAkKi5CDa8ACx1r5JMBmLLnC9He4jAfiF/SzckzqM7tErxQk1Gq
	UUsoVzpRrH5wRCzKa5t+4dSAbFABcQQCYpzyCW798ndYX8s2aOBMew5U+PNRmG0EklQE0uTFBZ05m
	lgB0Kf8uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5v8q-00049P-4x; Thu, 05 Sep 2019 17:01:52 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5v8g-00048F-V6
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 17:01:45 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id A0FCBA01CE;
 Thu,  5 Sep 2019 19:01:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id l96lis2EinZ8; Thu,  5 Sep 2019 19:01:30 +0200 (CEST)
Date: Fri, 6 Sep 2019 03:01:06 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190905170106.7j4nmgwnvkcwn6md@yavin.dot.cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905073205.GY2332@hirez.programming.kicks-ass.net>
 <20190905092622.tlb6nn3uisssdfbu@yavin.dot.cyphar.com>
 <20190905094305.GJ2349@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
In-Reply-To: <20190905094305.GJ2349@hirez.programming.kicks-ass.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_100143_310992_02C88678 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============9108544654706145243=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9108544654706145243==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kmvm5dxbzyhfjvqj"
Content-Disposition: inline


--kmvm5dxbzyhfjvqj
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-05, Peter Zijlstra <peterz@infradead.org> wrote:
> On Thu, Sep 05, 2019 at 07:26:22PM +1000, Aleksa Sarai wrote:
> > On 2019-09-05, Peter Zijlstra <peterz@infradead.org> wrote:
> > > On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:
> > > > +
> > > > +		while (rest > 0) {
> > > > +			size_t bufsize =3D min(rest, sizeof(buffer));
> > > > +
> > > > +			if (__copy_from_user(buffer, addr, bufsize))
> > > > +				return -EFAULT;
> > > > +			if (memchr_inv(buffer, 0, bufsize))
> > > > +				return -E2BIG;
> > > > +
> > > > +			addr +=3D bufsize;
> > > > +			rest -=3D bufsize;
> > > > +		}
> > >=20
> > > The perf implementation uses get_user(); but if that is too slow, sur=
ely
> > > we can do something with uaccess_try() here?
> >=20
> > Is there a non-x86-specific way to do that (unless I'm mistaken only x86
> > has uaccess_try() or the other *_try() wrappers)? The main "performance
> > improvement" (if you can even call it that) is that we use memchr_inv()
> > which finds non-matching characters more efficiently than just doing a
> > loop.
>=20
> Oh, you're right, that's x86 only :/

Though, I just had an idea -- am I wrong to think that the following
would work just as well (without the need for an intermediate buffer)?

   if (memchr_inv((const char __force *) src + size, 0, rest))
     return -E2BIG;

Or is this type of thing very much frowned upon? What if it was a
separate memchr_inv_user() instead -- I feel as though there's not a
strong argument for needing to use a buffer when we're single-passing
the __user buffer and doing a basic boolean check.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--kmvm5dxbzyhfjvqj
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXXE/TgAKCRCdlLljIbnQ
Eo4lAP4vz7qxi6aZbZTeed0ZbnEtPkuMnCkFo0v18rHfgnM6xgD/bV/SICkzrufH
DwNHgRAu5z8daivqeybakfQqvQMhpA4=
=SteT
-----END PGP SIGNATURE-----

--kmvm5dxbzyhfjvqj--


--===============9108544654706145243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9108544654706145243==--

