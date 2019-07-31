Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4727C7B974
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:06:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Lljf7O4kvbJ+uCDFohAXcgiWuEWTUAG74KPnIWdmaKM=; b=jXM
	NYXJ8qY0Gf7cWIgLcwiRrk7x/Zt+Oz43FUadGWBeYF+QIexW2IChSIUh9st62bIuWsHyTHYeQxG6E
	1Tz/k0kjt8FLAZDBvYzeBWzpqeJNzKSjQ/aRmVw3CA/uNymkaLmUL5ITq33PzCx9t8wRhQltqcTNo
	xkszIp0k0jWg2+bN1wWx//TTB0vm320uXzQFpSrbvYJ7UMCzk5HCK2G9qCR3W0RF+OheQIiNv/LHX
	IBmkB4TU+Uasi9Xm5a7weULmNfRNzxzjA/Y/D6xBkVSZuTm1jyN7YwZM+gIUmlc415DzeVaYjG6v7
	aGzV8ScjZyDq/oBZG7AYJRkvxhnBUCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshkq-0004zz-DK; Wed, 31 Jul 2019 06:06:28 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshkS-0004mr-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 06:06:06 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45z2wk3Zllz9sBF;
 Wed, 31 Jul 2019 16:05:58 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1564553158;
 bh=G789WvqxZoZpdQOOwYke+JrWvQfQevv9ZWAFnS+sSZA=;
 h=Date:From:To:Cc:Subject:From;
 b=ULZcEMP1hbsL5PEMQRd9ipkccZJUqRzkZp64i6ZQ5vtXe2QcvKUtekLFQPvAolbo9
 oJvGVBUic1MX6EU2caJ4j9lymGFyd9dAcu+3zr64qlojxOe+0uTj4dVyzsAKC7LZ5p
 DLwhp+HJS6GxDvZUOMzIlII0ZqBkf9wB/M1WYj66OIilpxUxip10vbZrXrK5Ld4RS/
 myT81Db2yteC5mvo+gSefQYdNh1Q7ZLNrqY93qw8gt//QKVreCMM7g8DL3u/BhFxWd
 Gd2Rrq1lFAWoD36Kg18Iqp3GJ2ejlNRwNA/AQKJz3bxsRuKhy3fOHXFtuFeeSVjo9p
 bOhNMiTTv6mOQ==
Date: Wed, 31 Jul 2019 16:05:57 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: xilinx_uartps.c: suppress "may be used uninitialised" warning
Message-ID: <20190731160557.6a09c3e1@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_230605_146675_D003155A 
X-CRM114-Status: GOOD (  13.11  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Michal Simek <michal.simek@xilinx.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Serial List <linux-serial@vger.kernel.org>, Jiri Slaby <jslaby@suse.com>,
 Linux PPC Development List <linuxppc-dev@lists.ozlabs.org>,
 Linus ARM List <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4611273115020271232=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============4611273115020271232==
Content-Type: multipart/signed; boundary="Sig_/oMq6rKwzq4yIYumawKzTc/R";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/oMq6rKwzq4yIYumawKzTc/R
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

=46rom 31753a44c62c4fdf6e8a72994ae6861dbde49c11 Mon Sep 17 00:00:00 2001
From: Stephen Rothwell <sfr@canb.auug.org.au>
Date: Wed, 31 Jul 2019 16:00:52 +1000
Subject: [PATCH] xilinx_uartps.c: suppress "may be used uninitialised" warn=
ing

A powerpc allyesconfig build produces this warning:

In file included from include/linux/radix-tree.h:16,
                 from include/linux/idr.h:15,
                 from include/linux/kernfs.h:13,
                 from include/linux/sysfs.h:16,
                 from include/linux/kobject.h:20,
                 from include/linux/device.h:16,
                 from include/linux/platform_device.h:13,
                 from drivers/tty/serial/xilinx_uartps.c:16:
drivers/tty/serial/xilinx_uartps.c: In function 'cdns_uart_console_write':
include/linux/spinlock.h:288:3: warning: 'flags' may be used uninitialized =
in this function [-Wmaybe-uninitialized]
   _raw_spin_unlock_irqrestore(lock, flags); \
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~
drivers/tty/serial/xilinx_uartps.c:1197:16: note: 'flags' was declared here
  unsigned long flags;
                ^~~~~

It looks like gcc just can't track the relationship between "locked"
and "flags", and it is obvious that "flags" won't be used when "locked"
is zero, so the simplest thing is to initialise flags.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
---
 drivers/tty/serial/xilinx_uartps.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

This has been like this for a very long time, but this is now one of
the few remaining warnings produced by the powerpc allyesconfig build,
so it would be good to get rid of it.

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx=
_uartps.c
index f145946f659b..da4563aaaf5c 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -1194,7 +1194,7 @@ static void cdns_uart_console_write(struct console *c=
o, const char *s,
 				unsigned int count)
 {
 	struct uart_port *port =3D console_port;
-	unsigned long flags;
+	unsigned long flags =3D 0;
 	unsigned int imr, ctrl;
 	int locked =3D 1;
=20
--=20
2.22.0

--=20
Cheers,
Stephen Rothwell

--Sig_/oMq6rKwzq4yIYumawKzTc/R
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1BL8UACgkQAVBC80lX
0Gx3MAf+NgUfGWvdNoyBkiRwgAqA7uddSSYmPi/mZ/JfJp7uN+yVTM4AAaDJmkaI
lu52irRBVHp6J20zZjIrF0Nm1taHmDxNoyJacpkM1Za5klHa8DOxvLx01xLUGd7G
91gq2/j2oJYC+pJ3CBkRgt9Vj5GpOwiH+Sirmt71H+Hyno3pyQhQKasUXByHiMtr
RHLewYnj6OgEiU7aVh1Zy+w4JBpnycEETfeONFrI/WWDBsMupTBgeyhqilPsTh9C
hqZx4uJmKwmVsuxOc8We0+HTNCGPEbDV6GrX4hHCzn0EguoAyMjKNOCY11ZSy6SV
esnxLc4sHMDqCMAE4EWD5niCLtNxuQ==
=M6BN
-----END PGP SIGNATURE-----

--Sig_/oMq6rKwzq4yIYumawKzTc/R--


--===============4611273115020271232==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4611273115020271232==--

