Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9436AFA90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 12:38:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bjWWkl+0H29TaFQqwhqLRGg/rvJELnd5N4FdImkqTF4=; b=S+ChfS3zyksf1ZaJMFSbzONWf
	MxB92PN3bIHjWS32FjviMjwia4wozpKXzIy/ggbY/53/KsLF+PFEkyCQVkYVlpBCyvqDaAHWkn6Ei
	EZ9Mma3T04iy9jM0MdIUeAPLSebbgCibRIJs504vIklLBPEvqPA0GXhLVUB0z5nctnQZKjzC5wgMT
	sIOoZvHUN5yLbbsr5Cvfs2TFtWlo6ikHYQAZZaN2zwR64BBRGQBCycbSUZkT3bo6pxvQp6ylx+5Hx
	S2GC+5C9o5Ffy9HJcim78A/M3HJM4rU0pNaFKnGHk/9/GSlNubH3iavUwafHJ+aI7Ocjx2oKNojRt
	bcZZrlm8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i800p-0000b8-CI; Wed, 11 Sep 2019 10:38:11 +0000
Received: from mx2a.mailbox.org ([80.241.60.219])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i800X-0000ag-Bl
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 10:37:56 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id AC930A2C82;
 Wed, 11 Sep 2019 12:37:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id ATeziMSY9H4D; Wed, 11 Sep 2019 12:37:41 +0200 (CEST)
Date: Wed, 11 Sep 2019 20:37:30 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190911103730.72unmfp7lsvvafxo@yavin>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905073205.GY2332@hirez.programming.kicks-ass.net>
 <20190905092622.tlb6nn3uisssdfbu@yavin.dot.cyphar.com>
 <20190905094305.GJ2349@hirez.programming.kicks-ass.net>
 <20190905105749.GW2386@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
In-Reply-To: <20190905105749.GW2386@hirez.programming.kicks-ass.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_033754_544957_99E00E9E 
X-CRM114-Status: GOOD (  28.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.219 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
 patrick.bellasi@arm.com, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============3127660236630967693=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3127660236630967693==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="xpghzs3x7rsccuuz"
Content-Disposition: inline


--xpghzs3x7rsccuuz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-05, Peter Zijlstra <peterz@infradead.org> wrote:
> On Thu, Sep 05, 2019 at 11:43:05AM +0200, Peter Zijlstra wrote:
> > On Thu, Sep 05, 2019 at 07:26:22PM +1000, Aleksa Sarai wrote:
> > > On 2019-09-05, Peter Zijlstra <peterz@infradead.org> wrote:
> > > > On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:
> > > > > +/**
> > > > > + * copy_struct_to_user: copy a struct to user space
> > > > > + * @dst:   Destination address, in user space.
> > > > > + * @usize: Size of @dst struct.
> > > > > + * @src:   Source address, in kernel space.
> > > > > + * @ksize: Size of @src struct.
> > > > > + *
> > > > > + * Copies a struct from kernel space to user space, in a way tha=
t guarantees
> > > > > + * backwards-compatibility for struct syscall arguments (as long=
 as future
> > > > > + * struct extensions are made such that all new fields are *appe=
nded* to the
> > > > > + * old struct, and zeroed-out new fields have the same meaning a=
s the old
> > > > > + * struct).
> > > > > + *
> > > > > + * @ksize is just sizeof(*dst), and @usize should've been passed=
 by user space.
> > > > > + * The recommended usage is something like the following:
> > > > > + *
> > > > > + *   SYSCALL_DEFINE2(foobar, struct foo __user *, uarg, size_t, =
usize)
> > > > > + *   {
> > > > > + *      int err;
> > > > > + *      struct foo karg =3D {};
> > > > > + *
> > > > > + *      // do something with karg
> > > > > + *
> > > > > + *      err =3D copy_struct_to_user(uarg, usize, &karg, sizeof(k=
arg));
> > > > > + *      if (err)
> > > > > + *        return err;
> > > > > + *
> > > > > + *      // ...
> > > > > + *   }
> > > > > + *
> > > > > + * There are three cases to consider:
> > > > > + *  * If @usize =3D=3D @ksize, then it's copied verbatim.
> > > > > + *  * If @usize < @ksize, then kernel space is "returning" a new=
er struct to an
> > > > > + *    older user space. In order to avoid user space getting inc=
omplete
> > > > > + *    information (new fields might be important), all trailing =
bytes in @src
> > > > > + *    (@ksize - @usize) must be zerored
> > > >=20
> > > > s/zerored/zero/, right?
> > >=20
> > > It should've been "zeroed".
> >=20
> > That reads wrong to me; that way it reads like this function must take
> > that action and zero out the 'rest'; which is just wrong.
> >=20
> > This function must verify those bytes are zero, not make them zero.
> >=20
> > > > >                                          , otherwise -EFBIG is re=
turned.
> > > >=20
> > > > 'Funny' that, copy_struct_from_user() below seems to use E2BIG.
> > >=20
> > > This is a copy of the semantics that sched_[sg]etattr(2) uses -- E2BI=
G for
> > > a "too big" struct passed to the kernel, and EFBIG for a "too big"
> > > struct passed to user-space. I would personally have preferred EMSGSI=
ZE
> > > instead of EFBIG, but felt using the existing error codes would be le=
ss
> > > confusing.
> >=20
> > Sadly a recent commit:
> >=20
> >   1251201c0d34 ("sched/core: Fix uclamp ABI bug, clean up and robustify=
 sched_read_attr() ABI logic and code")
> >=20
> > Made the situation even 'worse'.
>=20
> And thinking more about things; I'm not convinced the above patch is
> actually right.
>=20
> Do we really want to simply truncate all the attributes of the task?
>=20
> And should we not at least set sched_flags when there are non-default
> clamp values applied?
>=20
> See; that is I think the primary bug that had chrt failing; we tried to
> publish the default clamp values as !0.

I just saw this patch in -rc8 -- should I even attempt to port
sched_getattr(2) to copy_struct_to_user()? I agree that publishing a
default non-zero value is a mistake -- once you do that, old user space
will either get confused or lose information.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--xpghzs3x7rsccuuz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXXjOZwAKCRCdlLljIbnQ
EgeZAP9UC+Kf1AuY3XgSz6a5avhF1Eskr6DzrSR4wx0T62dnoQD9GcCXU0oVrERB
0xz5K9MrU1nBr6ERqmBwygo/DVsTwAk=
=oep8
-----END PGP SIGNATURE-----

--xpghzs3x7rsccuuz--


--===============3127660236630967693==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3127660236630967693==--

