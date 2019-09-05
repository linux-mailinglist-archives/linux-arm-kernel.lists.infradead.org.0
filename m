Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 163B4AA161
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 13:28:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9lq7cf/Apsp7kJdhjEqhuQoyacI9iC9W8xVgigEVUqk=; b=msumDZzGpJ6Mm8f7QQxInp69z
	DRV1EvAP9EnGdAjwg/sl6AeLu7EQXX2PgPD+3VzAfikLj6GjLR0RBPngn2LyEgo243KjF+6/TasFi
	DN/VPTqyemgEv4Zb5KE695mljR1ptL7p0PiDbnjJE+aRe01G3WIAxgvHmBVExI9LEhprMf79F28sW
	zm7SXhiC5bBSR5rLmUo/ZXZa9zZmx8VNJsnoBbqRMy1dYowonzNdIFOEhT9J2byS2wqlB7BQ+yXth
	6hg12MWqizsPzdF4lBEpLnd73m+9JFAbC6FFUWII88DmdfE8bhHl+glRHzXd1mgV9Yty2djPyVRMq
	7iq6PwexQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pw1-00065Q-5L; Thu, 05 Sep 2019 11:28:17 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pvh-00064D-RN
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 11:27:59 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 80455A162A;
 Thu,  5 Sep 2019 13:27:48 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id bvZM-eYrS-l9; Thu,  5 Sep 2019 13:27:44 +0200 (CEST)
Date: Thu, 5 Sep 2019 21:27:18 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Christian Brauner <christian.brauner@ubuntu.com>
Subject: Re: [PATCH v12 01/12] lib: introduce copy_struct_{to,from}_user
 helpers
Message-ID: <20190905112718.ojg3znly6x3m4mjq@yavin.dot.cyphar.com>
References: <20190904201933.10736-1-cyphar@cyphar.com>
 <20190904201933.10736-2-cyphar@cyphar.com>
 <20190905110915.4vvhicg4ldmpi5u6@wittgenstein>
MIME-Version: 1.0
In-Reply-To: <20190905110915.4vvhicg4ldmpi5u6@wittgenstein>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_042758_189983_8C50B6FC 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
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
 Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Alexei Starovoitov <ast@kernel.org>, linux-kernel@vger.kernel.org,
 David Howells <dhowells@redhat.com>, linux-kselftest@vger.kernel.org,
 sparclinux@vger.kernel.org, Shuah Khan <shuah@kernel.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 Namhyung Kim <namhyung@kernel.org>, David Drysdale <drysdale@google.com>,
 Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============3188958737127614295=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3188958737127614295==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nkbo7v76ghbobp4m"
Content-Disposition: inline


--nkbo7v76ghbobp4m
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-09-05, Christian Brauner <christian.brauner@ubuntu.com> wrote:
> On Thu, Sep 05, 2019 at 06:19:22AM +1000, Aleksa Sarai wrote:
> > A common pattern for syscall extensions is increasing the size of a
> > struct passed from userspace, such that the zero-value of the new fields
> > result in the old kernel behaviour (allowing for a mix of userspace and
> > kernel vintages to operate on one another in most cases). This is done
> > in both directions -- hence two helpers -- though it's more common to
> > have to copy user space structs into kernel space.
> >=20
> > Previously there was no common lib/ function that implemented
> > the necessary extension-checking semantics (and different syscalls
> > implemented them slightly differently or incompletely[1]). A future
> > patch replaces all of the common uses of this pattern to use the new
> > copy_struct_{to,from}_user() helpers.
> >=20
> > [1]: For instance {sched_setattr,perf_event_open,clone3}(2) all do do
> >      similar checks to copy_struct_from_user() while rt_sigprocmask(2)
> >      always rejects differently-sized struct arguments.
> >=20
> > Suggested-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
> > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
>=20
> I would probably split this out into a separate patchset. It can very
> well go in before openat2(). Thoughts?

Yeah, I'll split this and the related patches out -- though I will admit
I'm not sure how you're supposed to deal with multiple independent
patchsets that depend on each other. How will folks reviewing openat2(2)
know to include the lib/struct_user.c changes?

Also, whose tree should it go through?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--nkbo7v76ghbobp4m
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXXDxEwAKCRCdlLljIbnQ
EqovAQD8WBncNVUTEL0Y3xtDhqYMDFHga+X5xWtEwl2PAh4uVQEAhuzdaAU+gBqt
VqtP9IF4PFfoqMmGbekI1BKCWI4gmgo=
=UsGw
-----END PGP SIGNATURE-----

--nkbo7v76ghbobp4m--


--===============3188958737127614295==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3188958737127614295==--

