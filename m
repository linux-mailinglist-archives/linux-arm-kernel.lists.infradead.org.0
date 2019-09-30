Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC98C29D1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 00:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TGYy2Gbm/s8IX1ZiP9pRB4m+pCVoEhynC35F0vxsWg8=; b=VR6Lbz8LBm3UoezchdyJrJTE8
	IEBvGOdpJgrOskV3P8ShgV9Y96/QwF4tndQkLAA5JtbEsOB5HZUbmYqmDkyHehzXZmOn6F/MKIzWC
	wvaHaNn+wLzmOWNEYup+9atRKocvbJ6HwWtb/SLP26e44s96tGah3oawAnuCllFkTQMHRxY9jSdIy
	XKSQhqe/foG1HOgL0jMugfKaek/cxfC0jk2l/graD8nQvNM8+e3qC8tvORyuUT9xrAYJWaLCXz6Eh
	OGAGziyCApx9fhwPZaflq9MiEv6VWF7XQYpqN5l/7gvUAwjMGgL/89Jps5V2qeIt88lAlgDgmUfwc
	Z7hNaethw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iF4NW-0004gR-Gw; Mon, 30 Sep 2019 22:42:50 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iF4NL-0004eq-G3
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 22:42:41 +0000
Received: from smtp2.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 83B48A1A1C;
 Tue,  1 Oct 2019 00:42:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.240])
 by spamfilter06.heinlein-hosting.de (spamfilter06.heinlein-hosting.de
 [80.241.56.125]) (amavisd-new, port 10030)
 with ESMTP id i0Vf_5Qcnyhu; Tue,  1 Oct 2019 00:42:25 +0200 (CEST)
Date: Tue, 1 Oct 2019 08:41:59 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH v13 7/9] open: openat2(2) syscall
Message-ID: <20190930224159.gp2hqm57qxlm2eat@yavin.dot.cyphar.com>
References: <20190930183316.10190-8-cyphar@cyphar.com>
 <201910010404.WLqR1mUW%lkp@intel.com>
MIME-Version: 1.0
In-Reply-To: <201910010404.WLqR1mUW%lkp@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_154239_843270_114E7F74 
X-CRM114-Status: GOOD (  21.09  )
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
Content-Type: multipart/mixed; boundary="===============2598754154914059769=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2598754154914059769==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="t4elbyhlilsmpd4b"
Content-Disposition: inline


--t4elbyhlilsmpd4b
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

I forgot to include --base to signify this series depends on the
copy_struct_from_user() one. I'll include it in the next version.

> url:    https://github.com/0day-ci/linux/commits/Aleksa-Sarai/namei-opena=
t2-2-path-resolution-restrictions/20191001-025628
> config: i386-defconfig (attached as .config)
> compiler: gcc-7 (Debian 7.4.0-13) 7.4.0
> reproduce:
>         # save the attached .config to linux build tree
>         make ARCH=3Di386=20
>=20
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>=20
> All errors (new ones prefixed by >>):
>=20
>    fs/open.c: In function '__do_sys_openat2':
> >> fs/open.c:1173:8: error: implicit declaration of function 'copy_struct=
_from_user'; did you mean 'copy_siginfo_from_user'? [-Werror=3Dimplicit-fun=
ction-declaration]
>      err =3D copy_struct_from_user(&tmp, sizeof(tmp), how, usize);
>            ^~~~~~~~~~~~~~~~~~~~~
>            copy_siginfo_from_user
>    cc1: some warnings being treated as errors
>=20
> vim +1173 fs/open.c
>=20
>   1163=09
>   1164	SYSCALL_DEFINE4(openat2, int, dfd, const char __user *, filename,
>   1165			const struct open_how __user *, how, size_t, usize)
>   1166	{
>   1167		int err;
>   1168		struct open_how tmp;
>   1169=09
>   1170		if (unlikely(usize < OPEN_HOW_SIZE_VER0))
>   1171			return -EINVAL;
>   1172=09
> > 1173		err =3D copy_struct_from_user(&tmp, sizeof(tmp), how, usize);
>   1174		if (err)
>   1175			return err;
>   1176=09
>   1177		if (force_o_largefile())
>   1178			tmp.flags |=3D O_LARGEFILE;
>   1179=09
>   1180		return do_sys_open(dfd, filename, &tmp);
>   1181	}
>   1182=09
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

--t4elbyhlilsmpd4b
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXZKEtAAKCRCdlLljIbnQ
EmxJAQDTSUj176CMMvs56b+zPL9VCZGAIFkQ+0fXCW8y6GyasAD/d8NBlZ2zmc9b
DdtZcltEmeWc0Rd4LR1wAUrHajuvTAU=
=sSPC
-----END PGP SIGNATURE-----

--t4elbyhlilsmpd4b--


--===============2598754154914059769==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2598754154914059769==--

