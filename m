Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39F176D18C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0f+9Y5DJ4HUlw08SF1jwMWOJGFcHkULJ9Td5MzwYB4Y=; b=g2VRARRzPLvHK+gk6dEfe/OTq
	mgHyrsnaLqH1/7D0AAe8RkaKl8+tGzxlmuVONLvd/RA+xZQlgpbHiy3nZryWArwOQdHXiCNFdM03m
	YSgM5oTR1G5inzic1vmaj0SCACYjzq+1+efaaKImCKtGso13pS2cSx/GKIJRBlg6cOyxCYvpc0MBh
	5A3jcQ9t0ri/mxAkrnA6WQEFsMebCVHthPI/yna4ag076tged/MpUmAt6t4i+NDk1PD8YoTFqF+UE
	czb1gw0h8pb/n12Q7GmrSjPsdga6zZGCebBT2rSqxudXQM8qGFNRQfp/ULR5g00L0vSVcUBwsoDED
	XVrrWsYLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho91r-0005Uz-92; Thu, 18 Jul 2019 16:13:11 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho91X-0005SX-6Z
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:12:53 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id DB1F950921;
 Thu, 18 Jul 2019 18:12:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id ZQRmoVgJSQdC; Thu, 18 Jul 2019 18:12:38 +0200 (CEST)
Date: Fri, 19 Jul 2019 02:12:31 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
Message-ID: <20190718161231.xcno272nvqpln3wj@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
 <CAK8P3a33rGhPDFfRBAQyLTMG_WoEgX_toDgWR2O7rSwxKsZG+w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAK8P3a33rGhPDFfRBAQyLTMG_WoEgX_toDgWR2O7rSwxKsZG+w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_091251_551597_922D8812 
X-CRM114-Status: GOOD (  31.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux <sparclinux@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Jann Horn <jannh@google.com>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 Parisc List <linux-parisc@vger.kernel.org>,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 Linux FS-devel Mailing List <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============5461883089923866021=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5461883089923866021==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cqnjaasdwru53b2s"
Content-Disposition: inline


--cqnjaasdwru53b2s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-18, Arnd Bergmann <arnd@arndb.de> wrote:
> On Sat, Jul 6, 2019 at 5:00 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
>=20
> > diff --git a/arch/alpha/kernel/syscalls/syscall.tbl b/arch/alpha/kernel=
/syscalls/syscall.tbl
> > index 9e7704e44f6d..1703d048c141 100644
> > --- a/arch/alpha/kernel/syscalls/syscall.tbl
> > +++ b/arch/alpha/kernel/syscalls/syscall.tbl
> > @@ -461,6 +461,7 @@
> >  530    common  getegid                         sys_getegid
> >  531    common  geteuid                         sys_geteuid
> >  532    common  getppid                         sys_getppid
> > +533    common  openat2                         sys_openat2
> >  # all other architectures have common numbers for new syscall, alpha
> >  # is the exception.
> >  534    common  pidfd_send_signal               sys_pidfd_send_signal
>=20
> My plan here was to add new syscalls in the same order as everwhere else,
> just with the number 110 higher. In the long run, I hope we can automate
> this.

Alright, I will adjust this.

> > diff --git a/arch/arm/tools/syscall.tbl b/arch/arm/tools/syscall.tbl
> > index aaf479a9e92d..4ad262698396 100644
> > --- a/arch/arm/tools/syscall.tbl
> > +++ b/arch/arm/tools/syscall.tbl
> > @@ -447,3 +447,4 @@
> >  431    common  fsconfig                        sys_fsconfig
> >  432    common  fsmount                         sys_fsmount
> >  433    common  fspick                          sys_fspick
> > +434    common  openat2                         sys_openat2
>=20
> 434 is already used in linux-next, I suggest you use 437 (Palmer
> just submitted fchmodat4, which could become 436).

437 sounds good to me.

> > +/**
> > + * Arguments for how openat2(2) should open the target path. If @extra=
 is zero,
> > + * then openat2(2) is identical to openat(2).
> > + *
> > + * @flags: O_* flags (unknown flags ignored).
> > + * @mode: O_CREAT file mode (ignored otherwise).
> > + * @upgrade_mask: restrict how the O_PATH may be re-opened (ignored ot=
herwise).
> > + * @resolve: RESOLVE_* flags (-EINVAL on unknown flags).
> > + * @reserved: reserved for future extensions, must be zeroed.
> > + */
> > +struct open_how {
> > +       __u32 flags;
> > +       union {
> > +               __u16 mode;
> > +               __u16 upgrade_mask;
> > +       };
> > +       __u16 resolve;
> > +       __u64 reserved[7]; /* must be zeroed */
> > +};
>=20
> We can have system calls with up to six arguments on all architectures, so
> this could still be done more conventionally without the indirection: like
>=20
> long openat2(int dfd, const char __user * filename, int flags, mode_t
> mode_mask, __u16 resolve);
>=20
> In fact, that seems similar enough to the existing openat() that I think
> you could also just add the fifth argument to the existing call when
> a newly defined flag is set, similarly to how we only use the 'mode'
> argument when O_CREAT or O_TMPFILE are set.

I considered doing this (and even had a preliminary version of it), but
I discovered that I was not in favour of this idea -- once I started to
write tests using it -- for a few reasons:

  1. It doesn't really allow for clean extension for a future 6th
	 argument (because you are using up O_* flags to signify "use the
	 next argument", and O_* flags don't give -EINVAL if they're
	 unknown). Now, yes you can do the on-start runtime check that
	 everyone does -- but I've never really liked having to do it.

	 Having reserved padding for later extensions (that is actually
	 checked and gives -EINVAL) matches more modern syscall designs.

  2. I really was hoping that the variadic openat(2) could be done away
     using this union setup (Linus said he didn't like it, and suggested
	 using something like 'struct stat' as an argument for openat(2) --
	 though personally I am not sure I would personally like to use an
	 interface like that).

  3. In order to avoid wasting a syscall argument for mode/mask you need
	 to either have something like your suggested mode_mask (which makes
	 the syscall arguments less consistent) or have some sort of
	 mode-like argument that is treated specially (which is really awful
	 on multiple levels -- this one I also tried and even wrote my
	 original tests using). And in both cases, the shims for
	 open{,at}(2) are somewhat less clean.

All of that being said, I'd be happy to switch to whatever you think
makes the most sense. As long as it's possible to get an O_PATH with
RESOLVE_IN_ROOT set, I'm happy.

> > --- a/include/linux/syscalls.h
> > +++ b/include/linux/syscalls.h
>=20
> This file seems to lack a declaration for the system call, which means it
> will cause a build failure on some architectures, e.g. arch/arc/kernel/sy=
s.c:
>=20
> #define __SYSCALL(nr, call) [nr] =3D (call),
> void *sys_call_table[NR_syscalls] =3D {
>         [0 ... NR_syscalls-1] =3D sys_ni_syscall,
> #include <asm/unistd.h>
> };

Thanks, I will fix this.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--cqnjaasdwru53b2s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXTCaawAKCRCdlLljIbnQ
EiYSAQDEc7/A6jyOk/lCwRhggyIcxNKsYaVUpK2GNk3BWcMP1gD9HsURgy5VJcXW
ndP9aKEsYi+1zcPS6NupxsV7j2xWBwo=
=lnH6
-----END PGP SIGNATURE-----

--cqnjaasdwru53b2s--


--===============5461883089923866021==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5461883089923866021==--

