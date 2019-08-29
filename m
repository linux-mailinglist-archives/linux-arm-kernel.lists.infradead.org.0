Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD417A1B41
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 15:19:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sxHQx/DkfZHzAHFniChaLRqOFSPvLrLJKEawlmw7mDA=; b=H2xDJX7r29RyTlyOtsmOmxg19
	NknfOW29oHPvjhX7aSNNJ65V76Za33H68mZhCAoYQIi+yZqJy3Uvxd8DMjTN29HcIYhxUiFUKomqG
	PQ8DXDcnI3AXBCW7C+gcQeNKOijSaqB3lls4ncbpNDa+a8BbBL1DWxlQcDrK6gP9KThjmFEtrxvRG
	gVRVVO8t7IarMo9R/2x8zkNLB4mNWMtzYusbbQC1UbatmRIaRPrO5UKQujJueCWs14p9iEbEystuC
	myJBy/ds4Iy3i6TTE+XbGjXN/PjoS+Xwz3I8VT266+jdZXhHZnmBSgAEwyPgBt33bwnV/joGgJNJq
	ru5PX5Q3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3KLB-0005Tm-Sb; Thu, 29 Aug 2019 13:19:54 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3KKz-0005Sv-6B
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 13:19:43 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id C76B2A10EE;
 Thu, 29 Aug 2019 15:19:33 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id YERUiiJJutp0; Thu, 29 Aug 2019 15:19:27 +0200 (CEST)
Date: Thu, 29 Aug 2019 23:19:04 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH RESEND v11 7/8] open: openat2(2) syscall
Message-ID: <20190829131904.bkbalbtqt6j3gwcp@yavin>
References: <20190820033406.29796-1-cyphar@cyphar.com>
 <20190820033406.29796-8-cyphar@cyphar.com>
 <CAKOZuesfxRBJe314rkTKXtjXdz6ki3uAUBYVbu5Q2rd3=ADphQ@mail.gmail.com>
 <20190829121527.u2uvdyeatme5cgkb@yavin>
 <899401fa-ff0a-2ce9-8826-09904efab2d2@rasmusvillemoes.dk>
MIME-Version: 1.0
In-Reply-To: <899401fa-ff0a-2ce9-8826-09904efab2d2@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_061941_538327_D39C4C2A 
X-CRM114-Status: GOOD (  25.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
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
 Daniel Colascione <dancol@google.com>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Tycho Andersen <tycho@tycho.ws>, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 linuxppc-dev@lists.ozlabs.org, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, Linux FS Devel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============0422691359096373979=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0422691359096373979==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="itirvnprc6jjrbl3"
Content-Disposition: inline


--itirvnprc6jjrbl3
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-08-29, Rasmus Villemoes <linux@rasmusvillemoes.dk> wrote:
> On 29/08/2019 14.15, Aleksa Sarai wrote:
> > On 2019-08-24, Daniel Colascione <dancol@google.com> wrote:
>=20
> >> Why pad the structure when new functionality (perhaps accommodated via
> >> a larger structure) could be signaled by passing a new flag? Adding
> >> reserved fields to a structure with a size embedded in the ABI makes a
> >> lot of sense --- e.g., pthread_mutex_t can't grow. But this structure
> >> can grow, so the reservation seems needless to me.
> >=20
> > Quite a few folks have said that ->reserved is either unnecessary or
> > too big. I will be changing this, though I am not clear what the best
> > way of extending the structure is. If anyone has a strong opinion on
> > this (or an alternative to the ones listed below), please chime in. I
> > don't have any really strong attachment to this aspect of the API.
> >=20
> > There appear to be a few ways we can do it (that all have precedence
> > with other syscalls):
> >=20
> >  1. Use O_* flags to indicate extensions.
> >  2. A separate "version" field that is incremented when we change.
> >  3. Add a size_t argument to openat2(2).
> >  4. Reserve space (as in this patchset).
> >=20
> > (My personal preference would be (3), followed closely by (2).)
>=20
> 3, definitely, and instead of having to invent a new scheme for every
> new syscall, make that the default pattern by providing a helper

Sure (though hopefully I don't need to immediately go and refactor all
the existing size_t syscalls). I will be presenting about this patchset
at the containers microconference at LPC (in a few weeks), so I'll hold
of on any API-related rewrites until after that.

> int __copy_abi_struct(void *kernel, size_t ksize, const void __user
> *user, size_t usize)
> {
> 	size_t copy =3D min(ksize, usize);
>=20
> 	if (copy_from_user(kernel, user, copy))
> 		return -EFAULT;
>=20
> 	if (usize > ksize) {
> 		/* maybe a separate "return user_is_zero(user + ksize, usize -
> ksize);" helper */
> 		char c;
> 		user +=3D ksize;
> 		usize -=3D ksize;
> 		while (usize--) {
> 			if (get_user(c, user++))
> 				return -EFAULT;
> 			if (c)
> 				return -EINVAL;

This part would probably be better done with memchr_inv() and
copy_from_user() (and probably should put an upper limit on usize), but
I get what you mean.

> 		}
> 	} else if (ksize > usize) {
> 		memset(kernel + usize, 0, ksize - usize);
> 	}
> 	return 0;
> }
> #define copy_abi_struct(kernel, user, usize)	\
> 	__copy_abi_struct(kernel, sizeof(*kernel), user, usize)
>
> > Both (1) and (2) have the problem that the "struct version" is inside
> > the struct so we'd need to copy_from_user() twice. This isn't the end of
> > the world, it just feels a bit less clean than is ideal. (3) fixes that
> > problem, at the cost of making the API slightly more cumbersome to use
> > directly (though again glibc could wrap that away).
>=20
> I don't see how 3 is cumbersome to use directly. Userspace code does
> struct openat_of_the_day args =3D {.field1 =3D x, .field3 =3D y} and pass=
es
> &args, sizeof(args). What does glibc need to do beyond its usual munging
> of the userspace ABI registers to the syscall ABI registers?

I'd argue that

    ret =3D openat2(AT_FDCWD, "foo", &how, sizeof(how)); // (3)

is slightly less pretty than

    ret =3D openat2(AT_FDCWD, "foo", &how); // (1), (2), (4)

But it's not really that bad. Forget I said anything.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--itirvnprc6jjrbl3
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXWfQxQAKCRCdlLljIbnQ
EoMSAP9J0uy3xcD3flC3cANph5LKQ2g0JWnMb61ew5LWDORVogD/UGWciY+tdPiy
YNHs2UcBt9SEH1MNpEIgf2GN6RoyaQI=
=ne2z
-----END PGP SIGNATURE-----

--itirvnprc6jjrbl3--


--===============0422691359096373979==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0422691359096373979==--

