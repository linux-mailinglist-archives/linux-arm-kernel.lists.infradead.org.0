Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 725C0A19DA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 14:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CrXgEVAFmRQ+xhWSoU0k4UiaD/AAlyjP73ZEinU86DI=; b=sM57ACFLUH9s+JXidJkxXm0VK
	L7S1YJrYBL7CneA2GrqPEGgG5GDmBK6AdjdjnzhqLq+hDHkPsdJhtzLi9QprHKP2ZjVP4w1GjbpHm
	7sHs9mthr7pdlhuoiI8JyERH8RTbsR7jEDglUbIR7zv5XSXdjurp+x4nR7pu6B0FuoYxliI2J4KkN
	WVSsIpCr11zkj8O55qGE/dyMKcyirgMWCgygiwI05idddx6k5M9gjNTgQA8mQgIPxaNGmwoV1SwIo
	zHZlc69eLkup+CB4Y4kU805cJFs7z4UYlr4tM2DmNpIglFpea2Z4RHSFPU/B/g7Gbkl1S9J95+yYf
	AdsQurB3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3JLg-0000mV-Ej; Thu, 29 Aug 2019 12:16:20 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3JLW-0000ll-Cp
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 12:16:12 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 2ACB4A1069;
 Thu, 29 Aug 2019 14:16:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id WXJzDwa0kR9t; Thu, 29 Aug 2019 14:15:51 +0200 (CEST)
Date: Thu, 29 Aug 2019 22:15:27 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Daniel Colascione <dancol@google.com>
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
Message-ID: <20190829121527.u2uvdyeatme5cgkb@yavin>
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com>
 <CAKOZuesfxRBJe314rkTKXtjXdz6ki3uAUBYVbu5Q2rd3=ADphQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAKOZuesfxRBJe314rkTKXtjXdz6ki3uAUBYVbu5Q2rd3=ADphQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_051610_740333_D9AEFA96 
X-CRM114-Status: GOOD (  31.73  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:2:25:2 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============2678391275293013118=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2678391275293013118==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ys4y6f5eyfdosi3x"
Content-Disposition: inline


--ys4y6f5eyfdosi3x
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-08-24, Daniel Colascione <dancol@google.com> wrote:
> On Mon, Aug 19, 2019 at 8:37 PM Aleksa Sarai <cyphar@cyphar.com> wrote:
> >
> > The most obvious syscall to add support for the new LOOKUP_* scoping
> > flags would be openat(2). However, there are a few reasons why this is
> > not the best course of action:
> >
> >  * The new LOOKUP_* flags are intended to be security features, and
> >    openat(2) will silently ignore all unknown flags. This means that
> >    users would need to avoid foot-gunning themselves constantly when
> >    using this interface if it were part of openat(2). This can be fixed
> >    by having userspace libraries handle this for users[1], but should be
> >    avoided if possible.
> >
> >  * Resolution scoping feels like a different operation to the existing
> >    O_* flags. And since openat(2) has limited flag space, it seems to be
> >    quite wasteful to clutter it with 5 flags that are all
> >    resolution-related. Arguably O_NOFOLLOW is also a resolution flag but
> >    its entire purpose is to error out if you encounter a trailing
> >    symlink -- not to scope resolution.
> >
> >  * Other systems would be able to reimplement this syscall allowing for
> >    cross-OS standardisation rather than being hidden amongst O_* flags
> >    which may result in it not being used by all the parties that might
> >    want to use it (file servers, web servers, container runtimes, etc).
> >
> >  * It gives us the opportunity to iterate on the O_PATH interface. In
> >    particular, the new @how->upgrade_mask field for fd re-opening is
> >    only possible because we have a clean slate without needing to re-use
> >    the ACC_MODE flag design nor the existing openat(2) @mode semantics.
> >
> > To this end, we introduce the openat2(2) syscall. It provides all of the
> > features of openat(2) through the @how->flags argument, but also
> > also provides a new @how->resolve argument which exposes RESOLVE_* flags
> > that map to our new LOOKUP_* flags. It also eliminates the long-standing
> > ugliness of variadic-open(2) by embedding it in a struct.
> >
> > In order to allow for userspace to lock down their usage of file
> > descriptor re-opening, openat2(2) has the ability for users to disallow
> > certain re-opening modes through @how->upgrade_mask. At the moment,
> > there is no UPGRADE_NOEXEC. The open_how struct is padded to 64 bytes
> > for future extensions (all of the reserved bits must be zeroed).
>=20
> Why pad the structure when new functionality (perhaps accommodated via
> a larger structure) could be signaled by passing a new flag? Adding
> reserved fields to a structure with a size embedded in the ABI makes a
> lot of sense --- e.g., pthread_mutex_t can't grow. But this structure
> can grow, so the reservation seems needless to me.

Quite a few folks have said that ->reserved is either unnecessary or
too big. I will be changing this, though I am not clear what the best
way of extending the structure is. If anyone has a strong opinion on
this (or an alternative to the ones listed below), please chime in. I
don't have any really strong attachment to this aspect of the API.

There appear to be a few ways we can do it (that all have precedence
with other syscalls):

 1. Use O_* flags to indicate extensions.
 2. A separate "version" field that is incremented when we change.
 3. Add a size_t argument to openat2(2).
 4. Reserve space (as in this patchset).

(My personal preference would be (3), followed closely by (2).)

The main problem with (1) is that it pollutes the open(2) and openat(2)
syscalls with new O_* flags, which is probably not a good API decision
(syscall flags are already "bad" enough, let's not throw a bunch of
no-ops into the mix).

(2) is mostly fine except for a slight issue of ergonomics (glibc would
have to auto-fill the version field or make wrappers in order to make it
easier to use sanely). But this does have the benefit that we could
re-arrange fields (not that this is something we'd want to do anyway).

Both (1) and (2) have the problem that the "struct version" is inside
the struct so we'd need to copy_from_user() twice. This isn't the end of
the world, it just feels a bit less clean than is ideal. (3) fixes that
problem, at the cost of making the API slightly more cumbersome to use
directly (though again glibc could wrap that away).

And the downsides of (4) are pretty well discussed already.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--ys4y6f5eyfdosi3x
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXWfB2wAKCRCdlLljIbnQ
EljcAQC+BitddeHjv2a9yspU0gLaZB6nn8UBahZIqiE8+4xUoAEAuibGdlSM4ag8
ZYal7PGiNelUZH1S6GPHj1bvVNNGOQ0=
=OczH
-----END PGP SIGNATURE-----

--ys4y6f5eyfdosi3x--


--===============2678391275293013118==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2678391275293013118==--

