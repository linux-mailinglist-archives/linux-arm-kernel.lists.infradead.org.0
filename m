Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BAA5FAB55
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 08:53:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+HAEuiQYkOIgf5Ibr7J6mm9o3RyUYO9aLiVip2r42Dk=; b=MCt86Jfl1zR/3ZNUloR32ItcT
	fLkxMtB1EOGSff4bT9Imb7mGo8/WQxGq3LOhR95TsQFFhDWus52LJL2Xog/buZcke2OrYVgyFRr8i
	svtQn3DjgEQi7uaKvxvQde0EaZcX9bMspNittmj4ybPQuE0bsGlmYwcVkyHhBOau8gl8eMwEGavTF
	29QBOuc6ZAz5/a3dOykZ1ccC+RmHAyLlANaNehagcRBhw5R74ufoCqkgFfEXdg4/lRBotRf4BBbbX
	6Mk5AqEA2dCfie5cNXfAmv0SX6xdKRtGI3lTt2bowhU3070QFJSf0y026CoHE6+2MS1g7Cpm2LvL1
	XuM1Q+vjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUnSh-0007H6-RC; Wed, 13 Nov 2019 07:53:11 +0000
Received: from mout-p-201.mailbox.org ([80.241.56.171])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUnSW-0007GN-4k
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 07:53:01 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mout-p-201.mailbox.org (Postfix) with ESMTPS id 47CcKk24kPzQlBh;
 Wed, 13 Nov 2019 08:52:58 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id Bp_N38N4yiqo; Wed, 13 Nov 2019 08:52:50 +0100 (CET)
Date: Wed, 13 Nov 2019 18:52:27 +1100
From: Aleksa Sarai <cyphar@cyphar.com>
To: Al Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PATCH v15 6/9] namei: LOOKUP_{IN_ROOT,BENEATH}: permit limited
 ".." resolution
Message-ID: <20191113075227.lu5b5uvc2nuk76uk@yavin.dot.cyphar.com>
References: <20191105090553.6350-1-cyphar@cyphar.com>
 <20191105090553.6350-7-cyphar@cyphar.com>
 <20191113020917.GC26530@ZenIV.linux.org.uk>
MIME-Version: 1.0
In-Reply-To: <20191113020917.GC26530@ZenIV.linux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_235300_487648_C45EB03A 
X-CRM114-Status: GOOD (  15.81  )
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
 sparclinux@vger.kernel.org, Christian Brauner <christian.brauner@ubuntu.com>,
 Shuah Khan <shuah@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Tycho Andersen <tycho@tycho.ws>,
 Aleksa Sarai <asarai@suse.de>, Jiri Olsa <jolsa@redhat.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 linux-mips@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, linuxppc-dev@lists.ozlabs.org,
 linux-m68k@lists.linux-m68k.org, Andy Lutomirski <luto@kernel.org>,
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
Content-Type: multipart/mixed; boundary="===============0415541523279176056=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0415541523279176056==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="qprdfpbfkuvffdu5"
Content-Disposition: inline


--qprdfpbfkuvffdu5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-11-13, Al Viro <viro@zeniv.linux.org.uk> wrote:
> On Tue, Nov 05, 2019 at 08:05:50PM +1100, Aleksa Sarai wrote:
>=20
> > One other possible alternative (which previous versions of this patch
> > used) would be to check with path_is_under() if there was a racing
> > rename or mount (after re-taking the relevant seqlocks). While this does
> > work, it results in possible O(n*m) behaviour if there are many renames
> > or mounts occuring *anywhere on the system*.
>=20
> BTW, do you realize that open-by-fhandle (or working nfsd, for that matte=
r)
> will trigger arseloads of write_seqlock(&rename_lock) simply on d_splice_=
alias()
> bringing disconnected subtrees in contact with parent?

I wasn't aware of that -- that makes path_is_under() even less viable.
I'll reword it to be clearer that path_is_under() isn't a good idea and
why we went with -EAGAIN over an in-kernel retry.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--qprdfpbfkuvffdu5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXcu2OAAKCRCdlLljIbnQ
EtqZAQCjNdiANKBF7WCOTHUeD48U+o/7WczR7I/1WTsCcSBp9gEA6HgEdHKRHmol
+5Fvn3Eg1Tya83fWQgWoVLu8i6CUUwE=
=voMa
-----END PGP SIGNATURE-----

--qprdfpbfkuvffdu5--


--===============0415541523279176056==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0415541523279176056==--

