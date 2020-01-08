Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F285134DA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 21:31:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=SzSPRM56Eojgs3h590MpiCne48Mrn7P9yssGC+DvTqQ=; b=tFp
	JXpS/yi5j2BoeVeJTEwWrjRKrNoImglY2237yPDmTmSxwyv4YApVOykMZU5doOgJh4tDB415/HVcP
	Pt83NZQcQ1Hj+D9oULb1/+J8yRY1ERFIU8it9ei2ueSzOVU1Jt0/b5usw7RdHCtfkpmAEFvQWCz53
	E1iEFfOt+nOM8KCE4QTzd7m5E6219u5f0kSWAqvppniOzO4SmOzfZAt5FaG133AGNfSGfQENmShqq
	djzZZW4UQbAzslsp+3wh+AlATC2MFw5VcRCpOTajNsmKAKdDrDWDpUxDKmUifhSQcZwJL9QthDjEm
	6o+n9p95E3dokXysLN0ofrCGKcUsuWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipHzU-00057k-Ho; Wed, 08 Jan 2020 20:31:44 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipHwf-0001Ms-Cc
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 20:28:54 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 47tLRs72xPz9sPJ;
 Thu,  9 Jan 2020 07:28:41 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1578515325;
 bh=iXmqXirrsBQRqRiY/M5nTMqr0oBHja7Xprthl2OT4cg=;
 h=Date:From:To:Cc:Subject:From;
 b=glK3IIKQZ2iculhRlejO4Jt0yy1e/dVbGNbRDnvAUfeNBIS2hMhmDX+8rFnBpILMc
 341WGBr5hUIINTNUBmJ4BMzlKlkZjCnZXpwQS8OJ58Qt7P2NliBy3oXxNHdFf9lrDr
 y6KVZlMEYzuxhPdLVBdnDThalt4A1t0Vl5BxLEtO2BFmGh10r8iJcoYVUw9Rrr+fqe
 utWF8Q4BViQlRd1ii53mWqFEJmTkOkait/5Y1wHeSAR4cWXvL+44NRD5nKHvos9AZh
 t1NqKPFCuXBf1I/usyZYyB//VBCxs8TAO/nQJWhT444z2lkJXx8oUMuDPB4ib8bPJd
 4/HKe397EYfvA==
Date: Thu, 9 Jan 2020 07:28:40 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tag needs some work in the mvebu tree
Message-ID: <20200109072840.0a8d1ef6@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_122849_611687_0137ED5B 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Baruch Siach <baruch@tkos.co.il>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============8586219132677560591=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8586219132677560591==
Content-Type: multipart/signed; boundary="Sig_/fB+QLalH_DE.qdPRNRKeajb";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/fB+QLalH_DE.qdPRNRKeajb
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

In commit

  66f5ff1bf632 ("arm64: dts: marvell: clearfog-gt-8k: fix switch cpu port n=
ode")

Fixes tag

  Fixes: a612083327 ("arm64: dts: add support for SolidRun Clearfog GT 8K")

has these problem(s):

  - SHA1 should be at least 12 digits long
    Can be fixed by setting core.abbrev to 12 (or more) or (for git v2.11
    or later) just making sure it is not set (or set to "auto").

--=20
Cheers,
Stephen Rothwell

--Sig_/fB+QLalH_DE.qdPRNRKeajb
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl4WO3gACgkQAVBC80lX
0GzlBwf+IkqztACER0k99/iO/1AhWCYZOkD2h+h2E7BX8mxGC8uuswkNz37f0B+V
1dvWtFY+iDtB9NEwwoNPPuiX/nvM7Pf7VLoVR/B72uz8XXlRuBQsshSBzDF1287r
VECxdKw+K2pQkgZXLu4bkHfYhsbRrZgvLUaoIAbhpeihTtbmmboJ9G9wq9RPtKu8
WI9Bb06Fw/cHmJkZF2EankNyn01TClE1UYd7kejZuB21wafFr9zsmaor4exDzoB4
wjuW3l9Xl4gajI3BwmShCUG1nDrDORsK24OHpGREbctFyIFME+AyfdC85x5Slggm
vCuZZO+It2+QgCJzt8grGpScsh7r3A==
=uRcc
-----END PGP SIGNATURE-----

--Sig_/fB+QLalH_DE.qdPRNRKeajb--


--===============8586219132677560591==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8586219132677560591==--

