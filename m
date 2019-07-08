Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E95161A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jul 2019 07:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0onisIBR6gizR3emOLvCNm39WZLxMvWje5HN6gpF/a8=; b=LGdSuUUEv/YzFIWPfSe7gKiTW
	n9P8nn7roaqQ8uN+FU/0gsPubaZYZOOMSV3RmUML8skKj6x9YZdHk6aNI4Akyq5HJ2ZswNn/lqjKn
	rrtdXhxs6dqJZFLRyQVIyAZp/YhS6HMPHYom6Sk2o4MtLNtXP8EpIV96Vm2jf/oLNX+JzAA3HraTF
	SEVY4AJjyefzAkGgpHSUNVY1VbKkc9lJSBlH0QoDz+hXMGovpGY/9E2XHQx1scY3sGrEiY4IjBSOR
	umbGVINvDt/ANC7N3gtMkXJ65vu4o5dOSIHENWDyHAKOC1LfTftcJOLD75+x3/FI4jhBTckU3OSL9
	lFZ5Ri9kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkMVh-0003N2-6o; Mon, 08 Jul 2019 05:48:21 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkMVU-0003Ln-Rw
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jul 2019 05:48:10 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id D5ED350844;
 Mon,  8 Jul 2019 07:47:59 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id 6HYUzmgqQjbZ; Mon,  8 Jul 2019 07:47:45 +0200 (CEST)
Date: Mon, 8 Jul 2019 15:47:35 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Michael Ellerman <mpe@ellerman.id.au>
Subject: Re: [PATCH v9 10/10] selftests: add openat2(2) selftests
Message-ID: <20190708054735.3fepxxtolqaqwmrp@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-11-cyphar@cyphar.com>
 <878st9iax4.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
In-Reply-To: <878st9iax4.fsf@concordia.ellerman.id.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190707_224809_212254_0AA4B92B 
X-CRM114-Status: GOOD (  19.43  )
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
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============6067886071777767705=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6067886071777767705==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="fv76k6im74ofqhz7"
Content-Disposition: inline


--fv76k6im74ofqhz7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-08, Michael Ellerman <mpe@ellerman.id.au> wrote:
> Aleksa Sarai <cyphar@cyphar.com> writes:
> > diff --git a/tools/testing/selftests/openat2/Makefile b/tools/testing/s=
elftests/openat2/Makefile
> > new file mode 100644
> > index 000000000000..8235a49928f6
> > --- /dev/null
> > +++ b/tools/testing/selftests/openat2/Makefile
> > @@ -0,0 +1,12 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +
> > +CFLAGS +=3D -Wall -O2 -g
> > +TEST_GEN_PROGS :=3D linkmode_test resolve_test rename_attack_test
> > +
> > +include ../lib.mk
> > +
> > +$(OUTPUT)/linkmode_test: linkmode_test.c helpers.o
> > +$(OUTPUT)/rename_attack_test: rename_attack_test.c helpers.o
> > +$(OUTPUT)/resolve_test: resolve_test.c helpers.o
>=20
> You don't need to tell make that foo depends on foo.c.
>=20
> Also if you make the dependency be on helpers.c then you won't get an
> intermediate helpers.o, and then you don't need to clean it.
>=20
> So the above three lines could just be:
>=20
> $(TEST_GEN_PROGS): helpers.c

I had some trouble getting this to work (hence why I went with the
version in the patch), but it looks like this works. I'll include it in
the next set.

> > +EXTRA_CLEAN =3D helpers.o $(wildcard /tmp/ksft-openat2-*)
>=20
> If you follow my advice above you don't need helpers.o in there.
>=20
> Deleting things from /tmp is also a bit fishy on shared machines, ie. it
> will error if those files happen to be owned by another user.

Good point. I'll drop that hunk in the next set.

Thanks!

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--fv76k6im74ofqhz7
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXSLY8wAKCRCdlLljIbnQ
Enn2AQC9g0o7YHWuxFtQCLt+aHIE39RQMQDzB5QWrvZA8DdIUQEA69BwekXhnh8X
m2czJJrJISBz5Nz1y3qJzwUUGBvxEgY=
=RdsA
-----END PGP SIGNATURE-----

--fv76k6im74ofqhz7--


--===============6067886071777767705==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6067886071777767705==--

