Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20FCF6ECF1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jul 2019 02:10:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M3Sct3nvCC20ddgXKfSDmY+GLuq+VZ4oMqCmNFmGK18=; b=ebizObgrK+jo7kJWcxiJOMq+h
	omDXbGEMY0oVSJ1/f8ZbsveTuoN/1mWZV7lMkGiTqUph/q4s4XGyB2ZAy3uQaQWI6bdBjAAzxvGiO
	pKZK/p74IP1DzHiC5v/Wjogr4VQWxwKybKSF0wLwgNN34Y1HPFp/1FtzpYU7fNPkDnehcPAK97UGD
	WK8SJupIgfRZfYoJL/R2u9meN+a11PcxvCEYzg8roV6WQ20T4BFLWHoiPGCH5oExiU8rAt+tJTxK+
	sKNTijp5s/oBRlKiOmt0BGQMiudyz2krXywER7OxO5mNy2/QPh+TZxHfNrvfBGxmzYeGcsKUx60M2
	KU4mIS4vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hocxX-0001eH-Cv; Sat, 20 Jul 2019 00:10:43 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hocxI-0001d2-EV
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jul 2019 00:10:30 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 503C9501CC;
 Sat, 20 Jul 2019 02:10:21 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id wYoKm814sQqS; Sat, 20 Jul 2019 02:10:12 +0200 (CEST)
Date: Sat, 20 Jul 2019 10:09:30 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: shuah <shuah@kernel.org>
Subject: Re: [PATCH v10 8/9] kselftest: save-and-restore errno to allow for
 %m formatting
Message-ID: <20190720000930.g3jyjupgimptuubl@yavin>
References: <20190719164225.27083-1-cyphar@cyphar.com>
 <20190719164225.27083-9-cyphar@cyphar.com>
 <b32d95a1-8a49-65ef-4ddd-fe86a7ca01d5@kernel.org>
MIME-Version: 1.0
In-Reply-To: <b32d95a1-8a49-65ef-4ddd-fe86a7ca01d5@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_171028_640777_0F125B09 
X-CRM114-Status: GOOD (  17.17  )
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
 sparclinux@vger.kernel.org, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Al Viro <viro@zeniv.linux.org.uk>,
 Andy Lutomirski <luto@kernel.org>, Shuah Khan <skhan@linuxfoundation.org>,
 David Drysdale <drysdale@google.com>, Christian Brauner <christian@brauner.io>,
 "J. Bruce Fields" <bfields@fieldses.org>, linux-parisc@vger.kernel.org,
 linux-api@vger.kernel.org, Chanho Min <chanho.min@lge.com>,
 Jeff Layton <jlayton@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Eric Biederman <ebiederm@xmission.com>, linux-alpha@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 containers@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============3804099596766818971=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3804099596766818971==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="636rtrosv3xeor7c"
Content-Disposition: inline


--636rtrosv3xeor7c
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-19, shuah <shuah@kernel.org> wrote:
> On 7/19/19 10:42 AM, Aleksa Sarai wrote:
> > Previously, using "%m" in a ksft_* format string can result in strange
> > output because the errno value wasn't saved before calling other libc
> > functions. The solution is to simply save and restore the errno before
> > we format the user-supplied format string.
> >=20
> > Signed-off-by: Aleksa Sarai <cyphar@cyphar.com>
> [...]
> Hi Aleksa,
>=20
> Can you send this patch separate from the patch series. I will apply
> this as bug fix to 5.3-rc2 or rc3.
>=20
> This isn't part of this series anyway and I would like to get this in
> right away.

Done, and I'll drop it in v11 after the rest gets reviewed.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--636rtrosv3xeor7c
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXTJbtgAKCRCdlLljIbnQ
ErjeAQDm5ltY062NGtOMR1eaop8IvTWe5GYu7R+vym5BewUWYgD9HGmujOKl8CQ5
rJXhxSxnaze1/BDj2gUmfSjSP3IJNwo=
=CHUB
-----END PGP SIGNATURE-----

--636rtrosv3xeor7c--


--===============3804099596766818971==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3804099596766818971==--

