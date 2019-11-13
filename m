Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C09DF9F8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 01:47:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w9iN3l5uNV7lDQ41IAKvxi39ZXpGMBSENFYREo0o/Qo=; b=k5rjKTXCgpU7yjm5SnRQhLUVu
	uDjg15Hy53aDINjLOn8dydTFU6MhXRFXrx3MaSoMRGb2UuC3qDMf3cne4tLOPJUpt4YHMfIitGtKQ
	wg3hcCOpR6RzHgJBuqXhDfGGucPwq8vjqDa2YRCx1vUBAUp8ZQhftW0zJ76LJRR5x4rHfyZR8f9FA
	n65/8p8avZDb7OQmmpwHnZF7VivS5bONqP39HXzwQE2HZivGVy1te648xh7AOmnCt7s/0OgTy9MyK
	lPNkq50Hw+rHAS+MvsvAqKwBAmPSrJ8HZA9qKQz3XFXpUIQkJKOeQ9jZOnyM6wEayeAurVuGuFuVx
	YcAQAHCcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUgod-0004Dt-II; Wed, 13 Nov 2019 00:47:23 +0000
Received: from mout-p-101.mailbox.org ([80.241.56.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUgoS-0004CR-Uz
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 00:47:15 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:2:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-101.mailbox.org (Postfix) with ESMTPS id 47CQtM1PgvzKm9q;
 Wed, 13 Nov 2019 01:47:07 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter04.heinlein-hosting.de (spamfilter04.heinlein-hosting.de
 [80.241.56.122]) (amavisd-new, port 10030)
 with ESMTP id rfbcH-n--HBG; Wed, 13 Nov 2019 01:47:00 +0100 (CET)
Date: Wed, 13 Nov 2019 11:46:34 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v15 0/9] open: introduce openat2(2) syscall
Message-ID: <20191113004634.tz7geloshltkafwj@yavin.dot.cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191111132404.y523iqicbn6fivx5@yavin.dot.cyphar.com>
 <201911121457.7D02692@keescook>
MIME-Version: 1.0
In-Reply-To: <201911121457.7D02692@keescook>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_164713_304669_07937F31 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 sparclinux@vger.kernel.org, Jiri Olsa <jolsa@redhat.com>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Tycho Andersen <tycho@tycho.ws>, Aleksa Sarai <asarai@suse.de>,
 Shuah Khan <shuah@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 linuxppc-dev@lists.ozlabs.org, linux-m68k@lists.linux-m68k.org,
 Al Viro <viro@zeniv.linux.org.uk>, Andy Lutomirski <luto@kernel.org>,
 Shuah Khan <skhan@linuxfoundation.org>, Namhyung Kim <namhyung@kernel.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, libc-alpha@sourceware.org,
 linux-parisc@vger.kernel.org, linux-api@vger.kernel.org,
 Chanho Min <chanho.min@lge.com>, Jeff Layton <jlayton@kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Eric Biederman <ebiederm@xmission.com>,
 linux-alpha@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============5887090773367368558=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5887090773367368558==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="7ndczamgwxls6q65"
Content-Disposition: inline


--7ndczamgwxls6q65
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-11-12, Kees Cook <keescook@chromium.org> wrote:
> On Tue, Nov 12, 2019 at 12:24:04AM +1100, Aleksa Sarai wrote:
> > On 2019-11-05, Aleksa Sarai <cyphar@cyphar.com> wrote:
> > > This patchset is being developed here:
> > >   <https://github.com/cyphar/linux/tree/openat2/master>
> > >=20
> > > Patch changelog:
> > >  v15:
> > >   * Fix code style for LOOKUP_IN_ROOT handling in path_init(). [Linus=
 Torvalds]
> > >   * Split out patches for each individual LOOKUP flag.
> > >   * Reword commit messages to give more background information about =
the
> > >     series, as well as mention the semantics of each flag in more det=
ail.
> > > [...]
> >=20
> > Ping -- this patch hasn't been touched for a week. Thanks.
>=20
> If I've been following correctly, everyone is happy with this series.
> (i.e. Linus's comment appear to have been addressed.)
>=20
> Perhaps the next question is should this go via a pull request by you to
> Linus directly during the v5.5 merge window, via akpm, via akpm, via
> Christian, or some other path? Besides Linus, it's not been clear who
> should "claim" this series. :)

Given the namei changes, I wanted to avoid stepping on Al's toes. Though
he did review the series a few versions ago, the discussion didn't focus
on the openat2(2) semantics (which have also changed since then). I'm
not sure whether to interpret the silence to mean he's satisfied with
things as they are, or if he hasn't had more time to look at the series.

As for which tree it should be routed to, I don't mind -- Christian is
the most straight-forward choice (but if Al wants to route it, that's
fine with me too).

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--7ndczamgwxls6q65
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXctSZgAKCRCdlLljIbnQ
Ej+PAP0UBMczq8p/OLMeyIryF0EfQ+noWktKHkfgvrRf7bKN7AEAiW1OItA5gtV4
HiJnADyDHQw1h7livSSrD2X7HKS2BAA=
=yOzJ
-----END PGP SIGNATURE-----

--7ndczamgwxls6q65--


--===============5887090773367368558==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5887090773367368558==--

