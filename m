Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1ED20ACF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=hJxH+U7sACRx8PXZi3J4CkOaazI6GDc8QN4JgZoAXtw=; b=aWonckyWqvSeEPCxixrpMqrbe
	9WM+3Ct7m8MKqR01362qkajnTwAORXQdQRokU38dxbe7srj2kmf/EDyWOcK7hOOFZF3wwBZa2wnKq
	8ifr2b5g4heuXgszxjoyOAmW5RYvaLVPfkEqqg8aZ+9YSEAFm0wAwXtZLh9eUDJANqqrss7fK09T6
	PQCA4ZlZ0uhFH+dJXV0Oe7EQ4ND7ihbqPS3g6CxVybuDCUYmLU/ON74Fz/YGE3KaLxiJ5aVpJsu5b
	aZqwqW+hmc2yjjTxlE0HBKlXRsLHhJODlDfyZ2NXSOlO3dE9oBTMlYhvPjeeE1AhrSb0yjEu0xLIr
	P3hLOlrcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRI3g-0005pg-GC; Thu, 16 May 2019 15:12:36 +0000
Received: from mx1.mailbox.org ([2001:67c:2050:104:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRI3Z-0005pE-42
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:12:30 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id EE3654ECCC;
 Thu, 16 May 2019 17:12:25 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
 by spamfilter03.heinlein-hosting.de (spamfilter03.heinlein-hosting.de
 [80.241.56.117]) (amavisd-new, port 10030)
 with ESMTP id XV0bnWpzQT6y; Thu, 16 May 2019 17:12:21 +0200 (CEST)
Date: Fri, 17 May 2019 01:12:02 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516151202.hrawrx7hxllmz2di@yavin>
References: <20190516135944.7205-1-christian@brauner.io>
 <20190516142659.GB22564@redhat.com>
 <20190516145607.j43xyj26k6l5vmbd@yavin>
 <20190516150611.GC22564@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190516150611.GC22564@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_081229_464193_B3254749 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:67c:2050:104:0:1:25:1 listed in]
 [list.dnswl.org]
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
 linux-mips@vger.kernel.org, dhowells@redhat.com, joel@joelfernandes.org,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org, dancol@google.com,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Christian Brauner <christian@brauner.io>, serge@hallyn.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org, arnd@arndb.de,
 jannh@google.com, linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk,
 luto@kernel.org, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, torvalds@linux-foundation.org,
 linux-kernel@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============1290622979448008578=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1290622979448008578==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ndso2fpbrge26y3v"
Content-Disposition: inline


--ndso2fpbrge26y3v
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-05-16, Oleg Nesterov <oleg@redhat.com> wrote:
> On 05/17, Aleksa Sarai wrote:
> > On 2019-05-16, Oleg Nesterov <oleg@redhat.com> wrote:
> > > On 05/16, Christian Brauner wrote:
> > > > With the introduction of pidfds through CLONE_PIDFD it is possible =
to
> > > > created pidfds at process creation time.
> > >
> > > Now I am wondering why do we need CLONE_PIDFD, you can just do
> > >
> > > 	pid =3D fork();
> > > 	pidfd_open(pid);
> >
> > While the race window would be exceptionally short, there is the
> > possibility that the child will die
>=20
> Yes,
>=20
> > and their pid will be recycled
> > before you do pidfd_open().
>=20
> No.
>=20
> Unless the caller's sub-thread does wait() before pidfd_open(), of course.
> Or unless you do signal(SIGCHILD, SIG_IGN).

What about CLONE_PARENT?

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--ndso2fpbrge26y3v
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlzdfcIACgkQSnvnv3De
m5+LBg//TwYfNfdVTd12qfs8hOPFa2sx2DG90Wu3gEQ0F/cxogi+efP+RY/o+vPT
i0FYUiX+aGQ5bpWOfMVytL5PElsRY03f8GZSbweGW0m2y7Kb2cH+wx6qxe2s4RKI
JiNQ6UEIZcAHybLLKlbSaiIYMO1xmZxALchF/Nopq4lVDxpEKhOd8tJaZ5MWTQpi
WCGuVct2Mq+z2FVkdRZl0CXoSf4usXm/bGe/3P1Z/6ZllIwheasZP5whVSybpQa/
oDYZPJOHaPtKJ1DrXO3Qx5j17hltS97pT4DPWi/ad3AqMgHTdFoeuJOSLJzYZ3/d
XFiu4svN/b+dzLj75k+ki4HwbUln+Zz0mnHkgLRYUWC9a7j3bOf2qBxx3eWCIhbz
rRnc+kSy0Qu44pli5inNmPJF66MxVgMkvJtq1fmderaaywkBDjcgrsc7M9ScxUbW
CfPKBIhSZgmfUYqG+NCGXcgJEv4iI3xkFwWfOXGnCjYSoQkgIcJvszd3cVwacLX9
KImzTDjcb50CuNFbYtL5nOHjXl5cHDtsvASzSFZ1FIBZAwiXXnqQE2/byust72VY
WpysP1WuZmkwYLs13DebotUCbSQsvFvyZO6DXuY7JgYXz+rSCdTF4+vG7mjqg3Uo
UZk1XcunD1in53UE3nG2qfE9ayfhvwq6wQ+iSDdyfhDa9ocBjg8=
=utbj
-----END PGP SIGNATURE-----

--ndso2fpbrge26y3v--


--===============1290622979448008578==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1290622979448008578==--

