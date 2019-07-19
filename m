Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43BF66D901
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 04:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=83bNlKYsIBU44otz99A7m3G/viHzvVUcAGfAkXIq6jw=; b=gVR8B2pik7j4xthcf9MGgGwwt
	za3mL6WVdHIlpOAaSlu7cUWdotFvBq8ql5ozm0scFjFj790DnKuDH3yxJY9p+UpxfdNorsjYkSI1R
	poqMsw6X/WjU8wNWWqQHvAcckKJ5WBF2ZnbdeSoNAumQDAy+ZMUORh0qV2tNMHOiqMtW/kk1vCWNZ
	fQz1P3dSPVyLd6eWUXFyDMRLSyHO5H92kcutSVhH6N155+HecY3gdg+gjBW2BnxjcX7Wm47jkmITj
	5EHiAPo76i1bKfVhHtzdMCKSkIezIgqISlMWgqjwsW85zSoEIlkzwFCW4Kfr5f/PpxhatrNUzwYOe
	pFhoSPWcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoIVN-0001zT-KI; Fri, 19 Jul 2019 02:20:17 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoIUz-0001oO-2C
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 02:19:55 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id A6C4F507D6;
 Fri, 19 Jul 2019 04:19:47 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter05.heinlein-hosting.de (spamfilter05.heinlein-hosting.de
 [80.241.56.123]) (amavisd-new, port 10030)
 with ESMTP id rthfEAqSrQty; Fri, 19 Jul 2019 04:19:37 +0200 (CEST)
Date: Fri, 19 Jul 2019 12:19:31 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: "Dmitry V. Levin" <ldv@altlinux.org>
Subject: Re: [PATCH v9 08/10] open: openat2(2) syscall
Message-ID: <20190719021931.ypwvcvp3imbgjjx6@yavin>
References: <20190706145737.5299-1-cyphar@cyphar.com>
 <20190706145737.5299-9-cyphar@cyphar.com>
 <20190719015933.GA18022@altlinux.org>
MIME-Version: 1.0
In-Reply-To: <20190719015933.GA18022@altlinux.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_191953_263148_34ACABFF 
X-CRM114-Status: GOOD (  17.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.212 listed in list.dnswl.org]
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
Content-Type: multipart/mixed; boundary="===============9050188486880558140=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============9050188486880558140==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="g4nevyq6aunc32xc"
Content-Disposition: inline


--g4nevyq6aunc32xc
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-07-19, Dmitry V. Levin <ldv@altlinux.org> wrote:
> On Sun, Jul 07, 2019 at 12:57:35AM +1000, Aleksa Sarai wrote:
> [...]
> > +/**
> > + * Arguments for how openat2(2) should open the target path. If @extra=
 is zero,
> > + * then openat2(2) is identical to openat(2).
> > + *
> > + * @flags: O_* flags (unknown flags ignored).
>=20
> What was the rationale for implementing this semantics?
> Ignoring unknown flags makes potential extension of this new interface
> problematic.  This has bitten us many times already, so ...

I am mirroring the semantics of open(2) and openat(2).

To be clear, I am in favour of doing it -- and it would definitely be
possible to implement it with -EINVAL (you would just mask off
~VALID_OPEN_FLAGS for the older syscalls). But Linus' response to my
point about (the lack of) -EINVAL for unknown open(2) flags gave me the
impression he would be against this idea (though I might be
misunderstanding the point he was making).

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--g4nevyq6aunc32xc
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQSxZm6dtfE8gxLLfYqdlLljIbnQEgUCXTEorwAKCRCdlLljIbnQ
Eop3AQDsS+JxsKMay74AdwHvqjPK3crvN47y0krPsv6vGBsWhQD/f+ChPlnwx226
SbxKk/nCjHvnDSJga0WPUznn7tBxUQQ=
=7H8a
-----END PGP SIGNATURE-----

--g4nevyq6aunc32xc--


--===============9050188486880558140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============9050188486880558140==--

