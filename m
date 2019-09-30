Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72DB3C2A64
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 01:10:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZsP4CkMkttoO/TV9eUkpHhtUm4GNOKQ84H999bo/SKo=; b=ItBxr8yuPoM395rqYGocMzeg5
	yeFafv/kkxcbppo2+BYjs5Hfyk05KDMJIXQ5OCWRyO5fz4/r3FZyABHQMymrUfTHIY2S/S8/bDvw6
	DWnXuCfEJFekyasQLR/slMMmWKDVzbm2lA6UxoJEKn4QEXRR0IeID36TQkeisfd57J0Y/58VWs7gv
	+Dfw8nixxh4a7q6e0KBnmWSYwH2DjYqdYe478KkH6RsMGgl5d4iZ3vfzhyHdmRr0NFxUvr+gL9LHk
	Nm4SAc0KqKSFiSou3DuqLk0Gt+1RiqETrmxZxkYFYajtKNfTYvKX8dczwOoBI3YVu5eVlrE354L+Z
	KLfiw6BIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4o1-0006Gp-Q4; Mon, 30 Sep 2019 23:10:13 +0000
Received: from mx2a.mailbox.org ([2001:67c:2050:104:0:2:25:2]
 helo=mx2.mailbox.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4ng-0006FR-7Y
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 23:09:54 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 19DECA198E;
 Tue,  1 Oct 2019 01:09:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173])
 (amavisd-new, port 10030)
 with ESMTP id ZCXN6-VgIlDY; Tue,  1 Oct 2019 01:09:38 +0200 (CEST)
Date: Tue, 1 Oct 2019 09:09:14 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v13 3/9] open: O_EMPTYPATH: procfs-less file descriptor
 re-opening
Message-ID: <20190930230914.qu3lg2rhlesf5myt@yavin.dot.cyphar.com>
References: <20190930183316.10190-4-cyphar@cyphar.com>
 <201910010638.xzk5h4Bt%lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <201910010638.xzk5h4Bt%lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_160952_571217_144F7E05 
X-CRM114-Status: GOOD (  22.11  )
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
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-mips@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Christian Brauner <christian@brauner.io>,
 Eric Biederman <ebiederm@xmission.com>, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Oleg Nesterov <oleg@redhat.com>,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 linux-arm-kernel@lists.infradead.org, "J. Bruce Fields" <bfields@fieldses.org>,
 libc-alpha@sourceware.org, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 kbuild-all@01.org, linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============7828811518698311550=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7828811518698311550==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="snekp2kducyfirik"
Content-Disposition: inline


--snekp2kducyfirik
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-10-01, kbuild test robot <lkp@intel.com> wrote:
> Hi Aleksa,
>=20
> Thank you for the patch! Yet something to improve:
>=20
> [auto build test ERROR on linus/master]
> [cannot apply to v5.4-rc1 next-20190930]
> [if your patch is applied to the wrong git tree, please drop us a note to=
 help
> improve the system. BTW, we also suggest to use '--base' option to specif=
y the
> base tree in git format-patch, please see https://stackoverflow.com/a/374=
06982]
>=20
> url:    https://github.com/0day-ci/linux/commits/Aleksa-Sarai/namei-opena=
t2-2-path-resolution-restrictions/20191001-025628
> config: sparc-allyesconfig (attached as .config)
> compiler: sparc64-linux-gcc (GCC) 7.4.0
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbi=
n/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # save the attached .config to linux build tree
>         GCC_VERSION=3D7.4.0 make.cross ARCH=3Dsparc=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All error/warnings (new ones prefixed by >>):
>=20
>    In file included from include/linux/kernel.h:11:0,
>                     from include/linux/list.h:9,
>                     from include/linux/wait.h:7,
>                     from include/linux/wait_bit.h:8,
>                     from include/linux/fs.h:6,
>                     from include/uapi/linux/aio_abi.h:31,
>                     from include/linux/syscalls.h:74,
>                     from fs/fcntl.c:8:
>    fs/fcntl.c: In function 'fcntl_init':
> >> include/linux/compiler.h:350:38: error: call to '__compiletime_assert_=
1037' declared with attribute error: BUILD_BUG_ON failed: 22 - 1 !=3D HWEIG=
HT32( (VALID_OPEN_FLAGS & ~(O_NONBLOCK | O_NDELAY)) | __FMODE_EXEC | __FMOD=
E_NONOTIFY)
>      _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
>                                          ^
>    include/linux/compiler.h:331:4: note: in definition of macro '__compil=
etime_assert'
>        prefix ## suffix();    \
>        ^~~~~~
>    include/linux/compiler.h:350:2: note: in expansion of macro '_compilet=
ime_assert'
>      _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
>      ^~~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:39:37: note: in expansion of macro 'compilet=
ime_assert'
>     #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
>                                         ^~~~~~~~~~~~~~~~~~
>    include/linux/build_bug.h:50:2: note: in expansion of macro 'BUILD_BUG=
_ON_MSG'
>      BUILD_BUG_ON_MSG(condition, "BUILD_BUG_ON failed: " #condition)
>      ^~~~~~~~~~~~~~~~
> >> fs/fcntl.c:1034:2: note: in expansion of macro 'BUILD_BUG_ON'
>      BUILD_BUG_ON(22 - 1 /* for O_RDONLY being 0 */ !=3D
>      ^~~~~~~~~~~~

This is because 0x4000000 is used by FMODE_NONOTIFY. The fix is simple,
and I'll include it in the next version.

> vim +/__compiletime_assert_1037 +350 include/linux/compiler.h
>=20
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  336 =20
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  337  #define _compiletime_assert=
(condition, msg, prefix, suffix) \
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  338  	__compiletime_assert(condi=
tion, msg, prefix, suffix)
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  339 =20
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  340  /**
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  341   * compiletime_assert - bre=
ak build and emit msg if condition is false
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  342   * @condition: a compile-ti=
me constant condition to check
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  343   * @msg:       a message to=
 emit if condition is false
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  344   *
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  345   * In tradition of POSIX as=
sert, this macro will break the build if the
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  346   * supplied condition is *f=
alse*, emitting the supplied error message if the
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  347   * compiler has support to =
do so.
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  348   */
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  349  #define compiletime_assert(=
condition, msg) \
> 9a8ab1c39970a4 Daniel Santos 2013-02-21 @350  	_compiletime_assert(condit=
ion, msg, __compiletime_assert_, __LINE__)
> 9a8ab1c39970a4 Daniel Santos 2013-02-21  351 =20
>=20
> :::::: The code at line 350 was first introduced by commit
> :::::: 9a8ab1c39970a4938a72d94e6fd13be88a797590 bug.h, compiler.h: introd=
uce compiletime_assert & BUILD_BUG_ON_MSG
>=20
> :::::: TO: Daniel Santos <daniel.santos@pobox.com>
> :::::: CC: Linus Torvalds <torvalds@linux-foundation.org>
>=20
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Ce=
nter
> https://lists.01.org/pipermail/kbuild-all                   Intel Corpora=
tion

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--snekp2kducyfirik
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXZKLFwAKCRCdlLljIbnQ
EiFeAP47RjOd95gOdKvsH6iKIsB52GsvABLqpjPMoDsJYICxvQEAqOPS7WukWlsO
68N9mURzwjixbUVZ+5gtkgEiuWzwXA0=
=RuGe
-----END PGP SIGNATURE-----

--snekp2kducyfirik--


--===============7828811518698311550==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7828811518698311550==--

