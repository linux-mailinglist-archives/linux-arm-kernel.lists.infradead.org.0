Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9D6E2AC4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 09:06:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KkntdXR1VMBl2WTDFZQQSwyBIz+nyK5JPjavh4YA6ow=; b=SKano7XeFApyevGlV9uQQTeZe
	wLbIp4tjDWvy0gM/1vq8g18TM+XY+yU5GaLOF8vr6kz8uYlcP/J/ox1GmC143aYsaKmNw4ZRzjZIq
	qXQmBZv+AhQtY5gtx9/s54RQ73uktrpKY3QC4SzC0rVPLYSJH6eX6W9JaneE74tQ6sxTbQmbR+NdA
	IGPx16VzSFxEY3bhXSjkLX6EQw16wMqQUk7HezUzi1p2ke97Rfw/svihefQ25MNR66tWkp3K3iHJr
	kmJOerYZsW9ugGe+rYUSlGciomodD0QcaPwwD6tmwHQ2blC/f8s2cycUieaaQAt30FOAMbdC8u2qe
	nqPr0ipIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNXCw-0007Ta-9L; Thu, 24 Oct 2019 07:06:54 +0000
Received: from mout-p-102.mailbox.org ([80.241.56.152])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNXCj-0007QU-46
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 07:06:43 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-102.mailbox.org (Postfix) with ESMTPS id 46zJFS55d2zKmhs;
 Thu, 24 Oct 2019 09:06:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id DAIjq9oYK49d; Thu, 24 Oct 2019 09:06:30 +0200 (CEST)
Date: Thu, 24 Oct 2019 18:06:04 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [PATCH v14 2/6] namei: LOOKUP_IN_ROOT: chroot-like path resolution
Message-ID: <20191024070604.howuh6x6qrzd5jsm@yavin.dot.cyphar.com>
References: <20191010054140.8483-1-cyphar@cyphar.com>
 <20191010054140.8483-3-cyphar@cyphar.com>
 <CAHk-=wh8L50f31vW8BwRUXhLiq3eoCQ3tg8ER4Yp2dzuU1w5rQ@mail.gmail.com>
 <20191012040815.gnc43cfmo5mnv67u@yavin.dot.cyphar.com>
 <20191012041541.milbmfbjpj5bcl5a@yavin.dot.cyphar.com>
MIME-Version: 1.0
In-Reply-To: <20191012041541.milbmfbjpj5bcl5a@yavin.dot.cyphar.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_000641_472337_567A24DF 
X-CRM114-Status: GOOD (  31.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: linux-ia64@vger.kernel.org, Linux-sh list <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch <linux-arch@vger.kernel.org>,
 linux-s390 <linux-s390@vger.kernel.org>, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k <linux-m68k@lists.linux-m68k.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>,
 GNU C Library <libc-alpha@sourceware.org>, linux-parisc@vger.kernel.org,
 Linux API <linux-api@vger.kernel.org>, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, alpha <linux-alpha@vger.kernel.org>,
 linux-fsdevel <linux-fsdevel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 Linux Containers <containers@lists.linux-foundation.org>
Content-Type: multipart/mixed; boundary="===============3016316266427583375=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3016316266427583375==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i56sxfhksaspu3tw"
Content-Disposition: inline


--i56sxfhksaspu3tw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-10-12, Aleksa Sarai <cyphar@cyphar.com> wrote:
> On 2019-10-12, Aleksa Sarai <cyphar@cyphar.com> wrote:
> > On 2019-10-10, Linus Torvalds <torvalds@linux-foundation.org> wrote:
> > > On Wed, Oct 9, 2019 at 10:42 PM Aleksa Sarai <cyphar@cyphar.com> wrot=
e:
> > > >
> > > > --- a/fs/namei.c
> > > > +++ b/fs/namei.c
> > > > @@ -2277,6 +2277,11 @@ static const char *path_init(struct nameidat=
a *nd, unsigned flags)
> > > >
> > > >         nd->m_seq =3D read_seqbegin(&mount_lock);
> > > >
> > > > +       /* LOOKUP_IN_ROOT treats absolute paths as being relative-t=
o-dirfd. */
> > > > +       if (flags & LOOKUP_IN_ROOT)
> > > > +               while (*s =3D=3D '/')
> > > > +                       s++;
> > > > +
> > > >         /* Figure out the starting path and root (if needed). */
> > > >         if (*s =3D=3D '/') {
> > > >                 error =3D nd_jump_root(nd);
> > >=20
> > > Hmm. Wouldn't this make more sense all inside the if (*s =3D- '/') te=
st?
> > > That way if would be where we check for "should we start at the root",
> > > which seems to make more sense conceptually.
> >=20
> > I don't really agree (though I do think that both options are pretty
> > ugly). Doing it before the block makes it clear that absolute paths are
> > just treated relative-to-dirfd -- doing it inside the block makes it
> > look more like "/" is a special-case for nd_jump_root(). And while that
>=20
> Sorry, I meant "special-case for LOOKUP_IN_ROOT".
>=20
> > is somewhat true, this is just a side-effect of making the code more
> > clean -- my earlier versions reworked the dirfd handling to always grab
> > nd->root first if LOOKUP_IS_SCOPED. I switched to this method based on
> > Al's review.
> >=20
> > In fairness, I do agree that the lonely while loop looks ugly.
>=20
> And with the old way I did it (where we grabbed nd->root first) the
> semantics were slightly more clear -- stripping leading "/"s doesn't
> really look as "clearly obvious" as grabbing nd->root beforehand and
> treating "/"s normally. But the code was also needlessly more complex.
>=20
> > > That test for '/' currently has a "} else if (..)", but that's
> > > pointless since it ends with a "return" anyway. So the "else" logic is
> > > just noise.
> >=20
> > This depends on the fact that LOOKUP_BENEATH always triggers -EXDEV for
> > nd_jump_root() -- if we ever add another "scoped lookup" flag then the
> > logic will have to be further reworked.
> >=20
> > (It should be noted that the new version doesn't always end with a
> > "return", but you could change it to act that way given the above
> > assumption.)
> >=20
> > > And if you get rid of the unnecessary else, moving the LOOKUP_IN_ROOT
> > > inside the if-statement works fine.
> > >=20
> > > So this could be something like
> > >=20
> > >     --- a/fs/namei.c
> > >     +++ b/fs/namei.c
> > >     @@ -2194,11 +2196,19 @@ static const char *path_init(struct
> > > nameidata *nd, unsigned flags)
> > >=20
> > >         nd->m_seq =3D read_seqbegin(&mount_lock);
> > >         if (*s =3D=3D '/') {
> > >     -           set_root(nd);
> > >     -           if (likely(!nd_jump_root(nd)))
> > >     -                   return s;
> > >     -           return ERR_PTR(-ECHILD);
> > >     -   } else if (nd->dfd =3D=3D AT_FDCWD) {
> > >     +           /* LOOKUP_IN_ROOT treats absolute paths as being
> > > relative-to-dirfd. */
> > >     +           if (!(flags & LOOKUP_IN_ROOT)) {
> > >     +                   set_root(nd);
> > >     +                   if (likely(!nd_jump_root(nd)))
> > >     +                           return s;
> > >     +                   return ERR_PTR(-ECHILD);
> > >     +           }
> > >     +
> > >     +           /* Skip initial '/' for LOOKUP_IN_ROOT */
> > >     +           do { s++; } while (*s =3D=3D '/');
> > >     +   }
> > >     +
> > >     +   if (nd->dfd =3D=3D AT_FDCWD) {
> > >                 if (flags & LOOKUP_RCU) {
> > >                         struct fs_struct *fs =3D current->fs;
> > >                         unsigned seq;
> > >=20
> > > instead. The patch ends up slightly bigger (due to the re-indentation)
> > > but now it handles all the "start at root" in the same place. Doesn't
> > > that make sense?
> >=20
> > It is correct (though I'd need to clean it up a bit to handle
> > nd_jump_root() correctly), and if you really would like me to change it
> > I will -- but I just don't agree that it's cleaner.

Linus, did you still want me to make your proposed change?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--i56sxfhksaspu3tw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXbFNWQAKCRCdlLljIbnQ
Ert5AP0aC5CrGCVvHOpelKBjUDOS5duq76VaVyiiUWcy3eeeFwD/aQEQPqkGREqr
5Lo0df+nvE9H+89b7vJGbcaEZNxkTQc=
=rtfF
-----END PGP SIGNATURE-----

--i56sxfhksaspu3tw--


--===============3016316266427583375==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3016316266427583375==--

