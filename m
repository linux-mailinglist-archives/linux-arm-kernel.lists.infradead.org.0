Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38FA67DE5
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jul 2019 09:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0tHaXdqtoqc+MX65G6COCiCp7598qfbJEK3MEhZI5Ks=; b=lF0OtRAX8G4oF6Rv+n3REEfgO
	S/IQJ4M5UZzdjLfky6u7lbhUTaFyo2yew/HOeAdZ3QbV1gdwecjzgEqxc89PqHdUvXIwIYCeoK+x3
	aPAatbGNUNWsL8x4imwtWEzwB1iCrk93oluNqGhDn5xiEXdN8LGhYa567/x8Tc1y5dfSTI6z3g6lC
	4wuY/vriZTp9oBPvSteaK3yfYNEq1pAfBSk9E9uC4NEDVEfyyDwa5jjP7EdjbUSzZkTtbNMCcJtS+
	Ik+EI7/vt+nXh/nMhAaRNdF+h8a9S2oPFIP9/zI2IZ/kkQkH+6fJ9m+SZQj+WzIT7zzue1j6Zi+sj
	wATmg6vMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmYWa-0007dF-Eg; Sun, 14 Jul 2019 07:02:20 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmYVv-0007c1-PT
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jul 2019 07:01:42 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id DAD124EEE5;
 Sun, 14 Jul 2019 09:01:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id 83Wg7f6TIzf1; Sun, 14 Jul 2019 09:01:20 +0200 (CEST)
Date: Sun, 14 Jul 2019 17:00:29 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190714070029.m53etvm3y4etidxt@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-6-cyphar@cyphar.com>
 <20190712043341.GI17978@ZenIV.linux.org.uk>
 <20190712105745.nruaftgeat6irhzr@yavin>
 <20190712123924.GK17978@ZenIV.linux.org.uk>
 <20190712125552.GL17978@ZenIV.linux.org.uk>
 <20190712132553.GN17978@ZenIV.linux.org.uk>
 <20190712150026.GO17978@ZenIV.linux.org.uk>
 <20190713024153.GA3817@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190713024153.GA3817@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_000140_128611_C7223495 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
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
Content-Type: multipart/mixed; boundary="===============4159050678518553086=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4159050678518553086==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="33fhorotybcq4qkp"
Content-Disposition: inline


--33fhorotybcq4qkp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-13, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Fri, Jul 12, 2019 at 04:00:26PM +0100, Al Viro wrote:
> > On Fri, Jul 12, 2019 at 02:25:53PM +0100, Al Viro wrote:
> >=20
> > > 	if (flags & LOOKUP_BENEATH) {
> > > 		nd->root =3D nd->path;
> > > 		if (!(flags & LOOKUP_RCU))
> > > 			path_get(&nd->root);
> > > 		else
> > > 			nd->root_seq =3D nd->seq;
> >=20
> > BTW, this assignment is needed for LOOKUP_RCU case.  Without it
> > you are pretty much guaranteed that lazy pathwalk will fail,
> > when it comes to complete_walk().
> >=20
> > Speaking of which, what would happen if LOOKUP_ROOT/LOOKUP_BENEATH
> > combination would someday get passed?
>=20
> I don't understand what's going on with ->r_seq in there - your
> call of path_is_under() is after having (re-)sampled rename_lock,
> but if that was the only .. in there, who's going to recheck
> the value?  For that matter, what's to guarantee that the thing
> won't get moved just as you are returning from handle_dots()?
>=20
> IOW, what does LOOKUP_IN_ROOT guarantee for caller (openat2())?

I tried to explain this in the commit message for "namei: aggressively
check for nd->root escape on ".." resolution", but I probably could've
explained it better.

The basic property being guaranteed by LOOKUP_IN_ROOT is that it will
not result in resolution of a path component which was not inside the
root of the dirfd tree at some point during resolution (and that all
absolute symlink and ".." resolution will be done relative to the
dirfd). This may smell slightly of chroot(2), because unfortunately it
is a similar concept -- the reason for this is to allow for a more
efficient way to safely resolve paths inside a rootfs than spawning a
separate process to then pass back the fd to the caller.

We don't want to do a path_is_under() check for every ".." (otherwise
lookups have a quadratic slowdown when doing many ".."s), so I instead
only do a check after a rename or a mount (which are the only operations
which could change what ".." points to). And since we do the
path_is_under() check if m_seq or r_seq need a retry, we can re-take
them[+].

The main reason why I don't re-check path_is_under() after handle_dots()
is that there is no way to be sure that a racing rename didn't happen
after your last path_is_under() check. The rename could happen after the
syscall returns, after all.

So, the main purpose of the check is to make sure that a ".."s after a
rename doesn't result in an escape. If the rename happens after we've
traversed through a ".." that means that the ".." was inside the root in
the first place (a root ".." is handled by follow_dotdot). If the rename
happens after we've gone through handle_dots() and there is no
subsequent ".." then to userspace it looks identical to the rename
occurring after the syscall has returned. If there is a subsequent ".."
after a racing rename then we may have moved into a path that wasn't
path_is_under() and so we have to check it.

The only way I could see you could solve the race completely is if you
had a way for userspace to lock things from being able to be renamed (or
MS_MOVE'd). And that feels like a really bad idea to me.

[+]: You asked why don't I re-take m_seq. The reason is that I don't
	 fully understand all the other m_seq checks being done during
	 resolution, and we aren't definitely doing them all in
	 handle_dots(). So I assumed re-taking it could result in me
	 breaking RCU-walk which obviously would be bad. Since I am the only
	 thing using nd->r_seq, I can re-take it without issue.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--33fhorotybcq4qkp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXSrTCAAKCRCdlLljIbnQ
EpwpAQD9KgKhzC1YZRQyynlFOIyKp8VXEUfhiNokL0RBBx4G5AD7BovFdb8KzxSf
QrrP/0Vq6p6AFs4sMQbjc9M6I/5gzQ8=
=fUib
-----END PGP SIGNATURE-----

--33fhorotybcq4qkp--


--===============4159050678518553086==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4159050678518553086==--

