Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7DBE6727C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 17:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wVtI8Pa0VVFPaoyzkiAwg9coxi0UsloXhKPl91714xw=; b=NHUHAc0YJY7jpp/Lqx37Je1wt
	dEzkBT3COqiSFb4SDLZxEeoRnTWcR0VBYRh9GpKqw8hp/6Yjsq6GJGBgta6pGwDoi9V7dkPu7J5oM
	coS9hqGtbMvxjMSHLj3WGvWMl/bP1VWffT84qMSq/iSak95cPJLqisO/rOXRK2oLkPJMUjU4ta6ah
	KVaUU6z3nORo4tLvY4EoixQ/cjtCII0gIgykJy4RwuEedaD9FUNifqowNQVHC9FBHADCqkH5BK/9e
	cYQKqzWciy4uCcYXNNGnPNV/AVGhF9XBrcq3EhOs1sld4yiRb9zl8CRR3VbKUMItMefqxS9e7pAN2
	96zzSxGLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlxYV-00066f-6Z; Fri, 12 Jul 2019 15:33:51 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlxYD-00064w-0A
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 15:33:35 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id A1467511F2;
 Fri, 12 Jul 2019 17:33:28 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id QDRC6RVdbb1k; Fri, 12 Jul 2019 17:33:19 +0200 (CEST)
Date: Sat, 13 Jul 2019 01:32:27 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v9 00/10] namei: openat2(2) path resolution restrictions
Message-ID: <20190712153227.owkjmx47lzrggweo@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190712151118.GP17978@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190712151118.GP17978@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_083333_238242_7D8292D0 
X-CRM114-Status: GOOD (  12.63  )
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
 linux-api@vger.kernel.org, containers@lists.linux-foundation.org,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Chanho Min <chanho.min@lge.com>
Content-Type: multipart/mixed; boundary="===============8449866444415920687=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8449866444415920687==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="whm56wbfs3ehouyz"
Content-Disposition: inline


--whm56wbfs3ehouyz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-12, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Sun, Jul 07, 2019 at 12:57:27AM +1000, Aleksa Sarai wrote:
> > Patch changelog:
> >   v9:
> >     * Replace resolveat(2) with openat2(2). [Linus]
> >     * Output a warning to dmesg if may_open_magiclink() is violated.
> >     * Add an openat2(O_CREAT) testcase.
>=20
> One general note for the future, BTW: for such series it's generally
> a good idea to put it into a public git tree somewhere and mention that
> in the announcement...

Sure, I'll mention it next time. For the record the tree is
  <https://github.com/cyphar/linux/tree/resolveat/master>

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--whm56wbfs3ehouyz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXSioAwAKCRCdlLljIbnQ
EgzkAQChn28FqDC8mwoRBSpKSsYawQ4zVuMzbt7zKNknJNg7nQD/cmJDlKpmnt40
Jbd8FP1RPFVHA8Y7yVeIE+cOpg3nbw4=
=RciL
-----END PGP SIGNATURE-----

--whm56wbfs3ehouyz--


--===============8449866444415920687==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8449866444415920687==--

