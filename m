Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85EF020A3B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=x2404Lft6upQKnfUWmYfELZE3bMCO4MC6hV9zgJfz6Q=; b=J1OIn/zAETv5HdIGruyYmuB9q
	Oh5Fc+Zw7nURG9gXkhguU/JWLyrvU9OVtuph2lodNvwNi+zXDHO2M7XyHVgoGstROxtVl/fe61SAD
	bwhuO1YPovrdPlOQZ9UZmmiPX/seypUuWXNm0dXaqwlldI91+HvdjYLHYWWXT2ZjWPdjPjTAf4SGN
	NFOBLA8xHyQNJDqB9jyJpLAIE2Pfu+i0iEA6JRmEY0VFibWINWEQYV7lIwm06iURN0t8WLudC3jay
	QuKc7GnOVY4uZR/q7qpJV7Ob+2oW4/NqZ5KjXClGBUZgey09+OygZKuf0O7m3CwRTSpGhvcXuK8OH
	R2P4DjSdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHm1-000540-6M; Thu, 16 May 2019 14:54:21 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHls-00052n-F0
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:54:14 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id D2A514E9C7;
 Thu, 16 May 2019 16:54:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter02.heinlein-hosting.de (spamfilter02.heinlein-hosting.de
 [80.241.56.116]) (amavisd-new, port 10030)
 with ESMTP id sn3AhIsEBiJY; Thu, 16 May 2019 16:54:00 +0200 (CEST)
Date: Fri, 17 May 2019 00:53:41 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190516145341.xx7bpyakezvpqujj@yavin>
References: <20190515100400.3450-1-christian@brauner.io>
 <CAKOZuesPF+ftwqsNDMBy1LpwJgWTNuQm9-E=C90sSTBYEEsDww@mail.gmail.com>
 <20190516130813.i66ujfzftbgpqhnh@brauner.io>
MIME-Version: 1.0
In-Reply-To: <20190516130813.i66ujfzftbgpqhnh@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075412_809954_31CC5403 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-kernel <linux-kernel@vger.kernel.org>,
 David Howells <dhowells@redhat.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 sparclinux@vger.kernel.org, Linux API <linux-api@vger.kernel.org>,
 elena.reshetova@intel.com, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Daniel Colascione <dancol@google.com>,
 linux-xtensa@linux-xtensa.org, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 linux-mips@vger.kernel.org, Andy Lutomirski <luto@amacapital.net>,
 "Eric W. Biederman" <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============3285463276536014260=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3285463276536014260==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rl3rpkoiju4ooj2k"
Content-Disposition: inline


--rl3rpkoiju4ooj2k
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-05-16, Christian Brauner <christian@brauner.io> wrote:
> On Wed, May 15, 2019 at 10:45:06AM -0700, Daniel Colascione wrote:
> > On Wed, May 15, 2019 at 3:04 AM Christian Brauner <christian@brauner.io=
> wrote:
> > > +       if (pid <=3D 0)
> > > +               return -EINVAL;
> >=20
> > WDYT of defining pid =3D=3D 0 to mean "open myself"?
>=20
> I'm torn. It be a nice shortcut of course but pid being 0 is usually an
> indicator for child processes. So unless the getpid() before
> pidfd_open() is an issue I'd say let's leave it as is. If you really
> want the shortcut might -1 be better?

I'd suggest not using negative numbers, and instead reserving them for
PIDTYPE_TGID if we ever want to have that in the future. IMHO, doing

  pfd =3D pidfd_open(getpid(), 0);

is not the end of the world.


--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--rl3rpkoiju4ooj2k
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlzdeXUACgkQSnvnv3De
m58cOhAArH3Suh66uovI36Cs+UiaKF7pQq8Uj5fLxF9TEp/xA0aglqcZbJKrUIKr
DIaXBIm1GOitsaCBH/+k2puVlhgNpCPaskXKCWTACjS5l6z7NBQ3o4ZDgmy9sS6/
MgIMUnFpdpX+4qRBZPsvsfknvtBO9eI8cVfZIzo4NZnUzs5zRU6qToEKWCjQNscK
RzO+BsCNNkQXXlHBkNrdX4ue058LJyEAYop8gqPAMorepNpbcydpkRq1YWGbd4iS
3F5ZTCHdstprw5ZmFcLUaedwf4O1X9B+eulR82Y2PHSVoOHgidE3KcdouxMEXQlh
8KOVL1cpD2h+AdGu9znbvhKLP87kDoSbTSznKZ3dlFdk6YQQbOMvofXAay/zXRnJ
6GXTZ6r8KDhtoJTNdYRoBQUf+pgzLKLwPdnkzLfu3CFPMy6YpaBMFFt7DwTNG6Du
Q1nI8HIBPe0Sf7VNyv5qaixRR5rfKnqv80FPdQZD0MGsXTU7z7Iv9rZ7/g+/4ZdH
yLhuLIARtcqLd2LSNmHQFuBbuDxODQbtqS/89FmshKn+WHowS3/406NNYsvvdwTY
NGeva57n7Ke7NmdsO1uVsxPmTUHaxp55Vx0BTIQN4+in7mlYdf6I4qD0cVE1TGJQ
3AF3dH8bQrznZvmJUjXZY8dWRD4StRbAp822rBOY4+QyhbySjoY=
=SYyW
-----END PGP SIGNATURE-----

--rl3rpkoiju4ooj2k--


--===============3285463276536014260==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3285463276536014260==--

