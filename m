Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3189467E9B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 12:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C9/Sj/N1qnTZr+5DSi4ToZUrepsR7+nvM96yp9Idws0=; b=iPlMp008PxvtShP8/OtCj8c03
	oDT/M9MuyglvPNn9p2FOw8cUOeUG8BnJ/wPT3j7tAmVOFbb7xNReudthg6TgSAzUXLmFZHmg12EvP
	g9QJKBk9l2wqKldI1MMbt4YXSeoBXygsushlGUDTTcTBvchC4WAbAN9kJF16h3tHbaSqhJ2REYWwh
	lDtQN6M+QTlt2Hh1VYp0WmczchorB4+dSu7UDNZ7Q6N8ztB7MwKSLIkBu0UM5b/176/B6htSVwlCp
	clAIAOWsfzOtTdzk0iXds6Sm2hiAzTPq2c55IrYoaXTyprAVSmb2qzr/J79JjHW85fMkdvrDNKExz
	gLY8NBjMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmbnJ-0006CU-AR; Sun, 14 Jul 2019 10:31:49 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmbn2-0006Am-0M
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 10:31:34 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 9FD654DF84;
 Sun, 14 Jul 2019 12:31:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id JHLEpiHFM8dg; Sun, 14 Jul 2019 12:31:19 +0200 (CEST)
Date: Sun, 14 Jul 2019 20:31:04 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190714100825.umyql5op6cxhmpqa@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-6-cyphar@cyphar.com>
 <20190712043341.GI17978@ZenIV.linux.org.uk>
 <20190712105745.nruaftgeat6irhzr@yavin>
 <20190712123924.GK17978@ZenIV.linux.org.uk>
 <20190712125552.GL17978@ZenIV.linux.org.uk>
 <20190712132553.GN17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190712132553.GN17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_033132_359552_6CC2FF09 
X-CRM114-Status: GOOD (  27.33  )
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 linux-arm-kernel@lists.infradead.org, linux-mips@vger.kernel.org,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============5487865197931487909=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5487865197931487909==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="kaevdj3q3yxfna5u"
Content-Disposition: inline


--kaevdj3q3yxfna5u
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-12, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Fri, Jul 12, 2019 at 01:55:52PM +0100, Al Viro wrote:
> > On Fri, Jul 12, 2019 at 01:39:24PM +0100, Al Viro wrote:
> > > On Fri, Jul 12, 2019 at 08:57:45PM +1000, Aleksa Sarai wrote:
> > >=20
> > > > > > @@ -2350,9 +2400,11 @@ static const char *path_init(struct name=
idata *nd, unsigned flags)
> > > > > >  			s =3D ERR_PTR(error);
> > > > > >  		return s;
> > > > > >  	}
> > > > > > -	error =3D dirfd_path_init(nd);
> > > > > > -	if (unlikely(error))
> > > > > > -		return ERR_PTR(error);
> > > > > > +	if (likely(!nd->path.mnt)) {
> > > > >=20
> > > > > Is that a weird way of saying "if we hadn't already called dirfd_=
path_init()"?
> > > >=20
> > > > Yes. I did it to be more consistent with the other "have we got the
> > > > root" checks elsewhere. Is there another way you'd prefer I do it?
> > >=20
> > > "Have we got the root" checks are inevitable evil; here you are makin=
g the
> > > control flow in a single function hard to follow.
> > >=20
> > > I *think* what you are doing is
> > > 	absolute pathname, no LOOKUP_BENEATH:
> > > 		set_root
> > > 		error =3D nd_jump_root(nd)
> > > 	else
> > > 		error =3D dirfd_path_init(nd)
> > > 	return unlikely(error) ? ERR_PTR(error) : s;
> > > which should be a lot easier to follow (not to mention shorter), but =
I might
> > > be missing something in all of that.
> >=20
> > PS: if that's what's going on, I would be tempted to turn the entire
> > path_init() part into this:
> > 	if (flags & LOOKUP_BENEATH)
> > 		while (*s =3D=3D '/')
> > 			s++;
> > in the very beginning (plus the handling of nd_jump_root() prototype
> > change, but that belongs with nd_jump_root() change itself, obviously).
> > Again, I might be missing something here...
>=20
> Argh... I am, at that - you have setting path->root (and grabbing it)
> in LOOKUP_BENEATH cases and you do it after dirfd_path_init().  So
> how about
> 	if (flags & LOOKUP_BENEATH)
> 		while (*s =3D=3D '/')
> 			s++;

I can do this for LOOKUP_IN_ROOT, but currently the semantics for
LOOKUP_BENEATH is that absolute paths will return -EXDEV
indiscriminately (nd_jump_root() errors out with LOOKUP_BENEATH). To be
honest, the check could actually just be:

  if (flags & LOOKUP_BENEATH)
    if (*s =3D=3D '/')
	  return ERR_PTR(-EXDEV);

(Though we'd still need -EXDEV in nd_jump_root() for obvious reasons.)

The logic being that an absolute path means that the resolution starts
out without being "beneath" the starting point -- thus violating the
contract of LOOKUP_BENEATH. And since the "handle absolute paths like
they're scoped to the root" is only implemented for LOOKUP_IN_ROOT, I'd
think it's a bit odd to have LOOKUP_BENEATH do it too for absolute
paths.

I'll be honest, this patchset is more confusing to both of us because of
LOOKUP_BENEATH -- I've only kept it since it was part of the original
patchset (O_BENEATH). Personally I think more people will be far more
interested in LOOKUP_IN_ROOT. Does anyone mind if I drop the
LOOKUP_BENEATH parts of this series, and only keep LOOKUP_NO_* and
LOOKUP_IN_ROOT?

I make a change as you outlined for LOOKUP_IN_ROOT, though.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--kaevdj3q3yxfna5u
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXSsEZQAKCRCdlLljIbnQ
EnUcAP0UIrWhoFUdmcGKVnbHflUGk+2uDxtG83hk6KmhY14aGgD/bIuyNZSByUo2
62tn/pqpuWfU42XocRvuCvKllOoWpgc=
=3x3j
-----END PGP SIGNATURE-----

--kaevdj3q3yxfna5u--


--===============5487865197931487909==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5487865197931487909==--

