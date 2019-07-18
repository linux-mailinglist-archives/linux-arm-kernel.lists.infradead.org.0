Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D90756C6B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 05:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rjDMZK9KINtu4lVXKlfcZQkqj1wtzn6jbQOBMsJ/ACc=; b=GSjbknlFm3CJiSncW0YITl4Yc
	waLnkmSWtyAfsfNkDUnceoPNpkIJXN4dlML9cekyDOYGerdVKzSvUaB0cm8u/tsaRbeW4ZPrc2x6E
	XsfUlL/Fe3vDuYGd0I4C3nYrfF/dSlyhXuxJtKlFPM4/uqZC3bIV9iG+itM9QxT+7LNlpLIFp+SDK
	tZkKgLQpEr0rvvAt0xrCTXJRN1jxVDh/ROhioRth1oEqd7YYsdCQqNNBZmLTG4Lc3ROUDeXUiAs+S
	fYk3Eqp7oQ3ZpXBcdv0k3pIO5lnkNCZGroig69ZNektdyJuK6Aeyklv/BLNpnneQkouZ6wr96SzWz
	Z6i21rW1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnwwS-0000tM-K8; Thu, 18 Jul 2019 03:18:48 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnwwC-0000qn-1s
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 03:18:34 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id F35D54FE71;
 Thu, 18 Jul 2019 05:18:23 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by hefe.heinlein-support.de (hefe.heinlein-support.de [91.198.250.172])
 (amavisd-new, port 10030)
 with ESMTP id nZ38r1RPFd3K; Thu, 18 Jul 2019 05:18:14 +0200 (CEST)
Date: Thu, 18 Jul 2019 13:17:29 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 05/10] namei: O_BENEATH-style path resolution flags
Message-ID: <20190718031729.scehpjydhuxgxqjy@yavin>
References: <20190706145737.5299-6-cyphar@cyphar.com>
 <20190712043341.GI17978@ZenIV.linux.org.uk>
 <20190712105745.nruaftgeat6irhzr@yavin>
 <20190712123924.GK17978@ZenIV.linux.org.uk>
 <20190712125552.GL17978@ZenIV.linux.org.uk>
 <20190712132553.GN17978@ZenIV.linux.org.uk>
 <20190712150026.GO17978@ZenIV.linux.org.uk>
 <20190713024153.GA3817@ZenIV.linux.org.uk>
 <20190714070029.m53etvm3y4etidxt@yavin>
 <20190714143623.GR17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190714143623.GR17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_201832_398609_B9FA81C8 
X-CRM114-Status: GOOD (  18.47  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============2295385977024344279=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2295385977024344279==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="z4aw3kgjubxi6rqg"
Content-Disposition: inline


--z4aw3kgjubxi6rqg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-14, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sun, Jul 14, 2019 at 05:00:29PM +1000, Aleksa Sarai wrote:
> > The basic property being guaranteed by LOOKUP_IN_ROOT is that it will
> > not result in resolution of a path component which was not inside the
> > root of the dirfd tree at some point during resolution (and that all
> > absolute symlink and ".." resolution will be done relative to the
> > dirfd). This may smell slightly of chroot(2), because unfortunately it
> > is a similar concept -- the reason for this is to allow for a more
> > efficient way to safely resolve paths inside a rootfs than spawning a
> > separate process to then pass back the fd to the caller.
>=20
> IDGI...  If attacker can modify your subtree, you have already lost -
> after all, they can make anything appear inside that tree just before
> your syscall is made and bring it back out immediately afterwards.
> And if they can't, what is the race you are trying to protect against?
> Confused...

I'll be honest, this code mostly exists because Jann Horn said that it
was necessary in order for this interface to be safe against those kinds
of attacks. Though, it's also entirely possible I just am
mis-remembering the attack scenario he described when I posted v1 of
this series last year.

The use-case I need this functionality for (as do other container
runtimes) is one where you are trying to safely interact with a
directory tree that is a (malicious) container's root filesystem -- so
the container won't be able to move the directory tree root, nor can
they move things outside the rootfs into it (or the reverse). Users
dealing with FTP, web, or file servers probably have similar
requirements.

There is an obvious race condition if you allow the attacker to move the
root (I give an example and test-case of it in the last patch in the
series), and given that it is fairly trivial to defend against I don't
see the downside in including it? But it's obviously your call -- and
maybe Jann Horn can explain the reasoning behind this much better than I
can.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--z4aw3kgjubxi6rqg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXS/kxgAKCRCdlLljIbnQ
Eo0/AQD7a5jDbww9O+NZeirpVja2r3Y2CFcg1rTXSOeRjy321gEAoJhiO3HmSR50
nG/Ogapy7jTKDSyCcC7BfUZDZSz67go=
=wzlY
-----END PGP SIGNATURE-----

--z4aw3kgjubxi6rqg--


--===============2295385977024344279==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2295385977024344279==--

