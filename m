Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DF5920A4D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 16:56:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lJys0IluURuNSQ/JU4nKlmD53b8DPeKw5LXnmIcz0h4=; b=Rs7cgXoakjdsfkIVobw/sCAbG
	MdgZdFhC+B/KHDso/6odkH0sdVAp5I0n8Jo6uhp7uA+o4pHRVs0TmJcV69I0F8ZoNC7Kj+A91TvVL
	Px35PTu9yTolQp2pSfZ3CiSEJXNpCxH3ZRhfVNVtthApS//A3ROwBQwXSl2Bo4pt0/I5BXhjZIU51
	HxMluNYh4WrU6N2UA/6wVioIG+3CDqexDtXrRvXKtoT7U1bIUG5d2JcThmepBTxfpo5hkUAjWZ0RQ
	5q73BN6U+tM2aUQM7vGL/lzQRzan6II+ByM/uOU0s8/gcX5adLdAguWFBJG2R1a1ZyK5K+RX6gwPT
	/KmWKi8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHoJ-0006rN-UU; Thu, 16 May 2019 14:56:43 +0000
Received: from mx1.mailbox.org ([80.241.60.212])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHo8-0006ky-Nq
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 14:56:35 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx1.mailbox.org (Postfix) with ESMTPS id 5BDF94CB10;
 Thu, 16 May 2019 16:56:30 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id 8d4PMuRmJICT; Thu, 16 May 2019 16:56:27 +0200 (CEST)
Date: Fri, 17 May 2019 00:56:07 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v1 1/2] pid: add pidfd_open()
Message-ID: <20190516145607.j43xyj26k6l5vmbd@yavin>
References: <20190516135944.7205-1-christian@brauner.io>
 <20190516142659.GB22564@redhat.com>
MIME-Version: 1.0
In-Reply-To: <20190516142659.GB22564@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_075633_176291_0C13588E 
X-CRM114-Status: GOOD (  15.47  )
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
Content-Type: multipart/mixed; boundary="===============6593587359148306229=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6593587359148306229==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="asldj7bns6ry6jfo"
Content-Disposition: inline


--asldj7bns6ry6jfo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-05-16, Oleg Nesterov <oleg@redhat.com> wrote:
> On 05/16, Christian Brauner wrote:
> >
> > With the introduction of pidfds through CLONE_PIDFD it is possible to
> > created pidfds at process creation time.
>=20
> Now I am wondering why do we need CLONE_PIDFD, you can just do
>=20
> 	pid =3D fork();
> 	pidfd_open(pid);

While the race window would be exceptionally short, there is the
possibility that the child will die and their pid will be recycled
before you do pidfd_open(). CLONE_PIDFD removes the race completely.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--asldj7bns6ry6jfo
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlzdegcACgkQSnvnv3De
m59otQ//cKLIBYu0NRjFiTL/Sy05MLpjdwxWtxgO+bUeTNYJNghTPgEJw+c+25c7
tNoebC+JCGcAwO8ACNKnZDd3AuaNys1ZrFwNP7s9IcfOhPEHbcgD2OthKJUE5zZJ
bXypZRJF+JWJYvn8yBVWpV0IKZwytCnY/yDelTQgcZnKQ2fnmPLEIDtYD3zAuab+
IgkiYZ/oDsrgUIjkgiYs7gHSqU/cZEDI+dxAZawR2xuSOg7nLUlZ9mJmFWiUYwfL
55w4joeTcTAlRUDEBzsJFemknqCEo+5qrX0C2qoTmZvdiaVqMQKmGiqYbxdTRC/o
6lH2q4JQE2aYetbZ9Q9gl4fnFsbbAZBADAuAd8xV0rFWbCB+gkTdZS4G3MZ9baAm
F0o5HofG0TvkzG5K81aRWlipjvnngapLm/xnSCrfe3rIi9Kw+u1+9jMr+1/BTN/5
dsHnpAqWPt81mJdlzOSqhCfG7aLmJ/AQKvrC8h2JvtKema98vpK7hJhCbAUi+6lU
1V9iCvnERBIOlmzkE67ZGtKRPXmPSKIxKgbvOhc1f9DAYQID20S+SNtRJcBpSwhH
+YDqmefCAfqC6+JU/ZySLZrkuNOmoGuHP+T3ku0JyGn4xUayM1ZtKece3ILcafoi
hRTQy5y2ax/fJ2EPN7o5qc8Oe8DMInckJzKsOvbMe43FldNhKzA=
=SNKZ
-----END PGP SIGNATURE-----

--asldj7bns6ry6jfo--


--===============6593587359148306229==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6593587359148306229==--

