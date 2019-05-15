Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C121F6F0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:52:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D9pF81M6pTQF8NeqOzvgWbyx8pYd7VCNXJUNGux2DfI=; b=Ycds3f34gMVQLEyTjUFQMmLn6
	az68UufWr88eqmidM+hPipRS45vYRnIW5dOmmv7OFuxmtaYpytyhNY7Lr0NsYW4XJT8sG1+SM/TzB
	jVcvj7/Ae0Bl/tvtwRMj8E4TgGlXqLrvSpmJv0UEahlapeiIDzAIReIS09QlDndPPn0VkOiHUg+X4
	EzNa4UAGC0MZFuGMQoDZmIFRxxwNitSCW4PwAd9A2bvfWswdSN8gXYxh0/slijxq7vl4fq+hOT2HZ
	kbdlkSv5jrbn7AwVjYmOhAsAlwlPidhIRdbuD+dugMNXP9u9tMvUCiSW5+688F7AlHklRMxra7QRL
	tXdTr1yBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQvGD-0001YN-U4; Wed, 15 May 2019 14:52:01 +0000
Received: from mx2.mailbox.org ([80.241.60.215])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQvG3-0001E3-Pi
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:51:56 +0000
Received: from smtp1.mailbox.org (smtp1.mailbox.org
 [IPv6:2001:67c:2050:105:465:1:1:0])
 (using TLSv1.2 with cipher ECDHE-RSA-CHACHA20-POLY1305 (256/256 bits))
 (No client certificate requested)
 by mx2.mailbox.org (Postfix) with ESMTPS id 36D13A1145;
 Wed, 15 May 2019 16:51:46 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
 by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de
 [80.241.56.115]) (amavisd-new, port 10030)
 with ESMTP id X8vroVdtsNp3; Wed, 15 May 2019 16:51:23 +0200 (CEST)
Date: Thu, 16 May 2019 00:51:05 +1000
From: Aleksa Sarai <cyphar@cyphar.com>
To: Christian Brauner <christian@brauner.io>
Subject: Re: [PATCH 1/2] pid: add pidfd_open()
Message-ID: <20190515145105.t7u6v5wxsq2tnbwj@yavin>
References: <20190515100400.3450-1-christian@brauner.io>
 <4c5ae46657e1931a832def5645db61eb0bf1accd.camel@opteya.com>
 <20190515141634.lrc5ynllcmjr64mn@brauner.io>
MIME-Version: 1.0
In-Reply-To: <20190515141634.lrc5ynllcmjr64mn@brauner.io>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_075151_994516_340187C9 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [80.241.60.215 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, dhowells@redhat.com,
 linux-kselftest@vger.kernel.org, sparclinux@vger.kernel.org,
 linux-api@vger.kernel.org, elena.reshetova@intel.com,
 Yann Droneaud <ydroneaud@opteya.com>, linux-s390@vger.kernel.org,
 linux-arch@vger.kernel.org, linux-xtensa@linux-xtensa.org,
 keescook@chromium.org, arnd@arndb.de, jannh@google.com,
 linux-m68k@lists.linux-m68k.org, viro@zeniv.linux.org.uk, luto@kernel.org,
 oleg@redhat.com, tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-parisc@vger.kernel.org, torvalds@linux-foundation.org,
 linux-mips@vger.kernel.org, luto@amacapital.net, ebiederm@xmission.com,
 linux-alpha@vger.kernel.org, akpm@linux-foundation.org,
 linuxppc-dev@lists.ozlabs.org
Content-Type: multipart/mixed; boundary="===============0105058947819852852=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0105058947819852852==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2zvewrqzesizclxu"
Content-Disposition: inline


--2zvewrqzesizclxu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 2019-05-15, Christian Brauner <christian@brauner.io> wrote:
> On Wed, May 15, 2019 at 04:00:20PM +0200, Yann Droneaud wrote:
> > Would it be possible to create file descriptor with "restricted"
> > operation ?
> >=20
> > - O_RDONLY: waiting for process completion allowed (for example)
> > - O_WRONLY: sending process signal allowed
>=20
> Yes, something like this is likely going to be possible in the future.
> We had discussion around this. But mapping this to O_RDONLY and O_WRONLY
> is not the right model. It makes more sense to have specialized flags
> that restrict actions.

Not to mention that the O_* flags have silly values which we shouldn't
replicate in new syscalls IMHO.

--=20
Aleksa Sarai
Senior Software Engineer (Containers)
SUSE Linux GmbH
<https://www.cyphar.com/>

--2zvewrqzesizclxu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEb6Gz4/mhjNy+aiz1Snvnv3Dem58FAlzcJ1kACgkQSnvnv3De
m5+m3g//R5zkvJNpR/uERo7fQzZ+8FbxYCxRtilFUHcBIdsgV/Lx50jsUxWug4Zl
9r3C4jToLLKtMADwKihJR+E1ftE2STZ85hvLL0wpKX2kUqQcby7sU+XqgAFDuFXe
eJLnHxTbErqrqcU8Qz1+0nTAxiPcekV2c7jB1+jQtFvakcqlxaT2CtK2/7P3sw2P
G8mLXOL8uRx2WQ4z94SwfQ4kFwx14SIfWOA3kXVCDsuOoisQBqFsq9WhTwVsTb1X
H9KRNF58YIjBkWTVe3VcJZiVKXfqZxYbZDhHSQiibqyFZ3JkBjeo+FS9xoGqCNkl
I1M/BRHkyfhy1fIA8sIq82Bf1XXj4gaunsAk26xJqdpNnwUzXLT9IqXB/cD+D0+/
v6SzkNckMf/igucg6Ev9n8Z+Asst7aTfDLkrtPubFrYsD8FjgsU7xqMlN5lnVMx3
ovXX+xt0yRgVaczFTA0oWlc316Cje3SfchGc5dYce1BdsM98UaveoFKqsZ2QFyA7
sHNClAFebnAGwYAcOAWgz4dU+B2YmDv1Z1xJ52IyGcPo4KGXYBfY9X3J+rIXTLhc
0qp7vr8JIII/pSDquixjtG+aI+eLtl0g72mUM1KlOGDJZhQG14VRasjEI1M098Fk
GRGn0Y2fOWPigwhq0zRKpIIp2d3YXZY8TamkTEMXPY3azLq50Jk=
=+Ix9
-----END PGP SIGNATURE-----

--2zvewrqzesizclxu--


--===============0105058947819852852==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0105058947819852852==--

