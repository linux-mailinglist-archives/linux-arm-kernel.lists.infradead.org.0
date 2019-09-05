Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F7D1A9794
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 02:19:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TX3RVThDnI86FFd5RETdWwrZu8e+1+KiXvmCfmMEPjY=; b=bPX
	GOa2iv2pP2ibLnNhotiCtKO5ih/q7SX9NeM+YmTdXPeNL9aKJd+KXE9vBr4M37tIZ5DMXljYwAF1t
	dhBOXXjBOvrYUnR3U4j5Agi9dNHkWBySGHucTTB1CLgMHBKvDBNeehX98r8oSjkCaaef30jvv5Nfa
	s+DUrRMNKFGW/+4pmaeByZxMO9ji6qswr52ttul/2o+3nzMQuKE6OMLP8Dw6Yo/JNFIYJsKmaM7FY
	PmAO/B2OyZBzJgDNRc9GovNzuVsN0Vvj7tgLRB2/WP9I0iWlWKFi+l8shrudP1bYnlkT+fgcsHOfx
	9YFCUMKYgUEMau77lPvIOURlZvJB+ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5fUN-0002FM-5c; Thu, 05 Sep 2019 00:19:03 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5fUE-0002EX-M6
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 00:18:56 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46P1WZ6CJxz9s4Y;
 Thu,  5 Sep 2019 10:18:50 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1567642731;
 bh=8St8DeBF6H8ThjyeyMS9MwYGb/EhOESEWkBFdd9+QgY=;
 h=Date:From:To:Cc:Subject:From;
 b=Clcjl8Fb+wiXCfZriKpZCz7wxY8WhaHaq2kTmfg9pKR8fxtAWIfgBWIwRWL01/pHl
 J7/RRkNUY+co6htpBmfMaqQ3YtBN9BpQyjUZ6PD06c3c2C72CfKBquNPzFP8QXA5VA
 RH3nfZ5/nGt3XcIS5aG/E+IKD6d0ZDTipU1qnwDd8RpcRxDZFmPu0BHW83vSWCXJt6
 99vg2QRLV0C2e/8+x6hOOvuEBydjg/EoxbbQl+Y7bO0dSc9vz9CRRClWWSTNPAu1jO
 F87TLRkawNxQNcZTQ0ECU6YLHnbBsNfJnWla5IwdmT4vMTVBFqbEGpRAuBZ20kqGKm
 80xcsd28kYXDg==
Date: Thu, 5 Sep 2019 10:18:49 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Ralf Baechle <ralf@linux-mips.org>, James Hogan <jhogan@kernel.org>,
 Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the mips tree with the arm-soc tree
Message-ID: <20190905101849.24d501a6@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_171854_909723_361F00AD 
X-CRM114-Status: UNSURE (   6.47  )
X-CRM114-Notice: Please train this message.
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
Cc: Paul Cercueil <paul@crapouillou.net>, Paul Burton <paul.burton@mips.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6880234064011555759=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6880234064011555759==
Content-Type: multipart/signed; boundary="Sig_/i7HG_DmXR_XmYC1q3faXIY7";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/i7HG_DmXR_XmYC1q3faXIY7
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the mips tree got a conflict in:

  drivers/video/fbdev/Makefile

between commit:

  c7b46e0c33c5 ("fbdev: remove w90x900/nuc900 platform drivers")

from the arm-soc tree and commit:

  e305bff3a706 ("video/fbdev: Drop JZ4740 driver")

from the mips tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc drivers/video/fbdev/Makefile
index aab7155884ea,49502d6256cb..000000000000
--- a/drivers/video/fbdev/Makefile
+++ b/drivers/video/fbdev/Makefile
@@@ -116,7 -116,7 +116,6 @@@ obj-y                             +=3D om
  obj-$(CONFIG_XEN_FBDEV_FRONTEND)  +=3D xen-fbfront.o
  obj-$(CONFIG_FB_CARMINE)          +=3D carminefb.o
  obj-$(CONFIG_FB_MB862XX)	  +=3D mb862xx/
- obj-$(CONFIG_FB_JZ4740)		  +=3D jz4740_fb.o
 -obj-$(CONFIG_FB_NUC900)           +=3D nuc900fb.o
  obj-$(CONFIG_FB_PUV3_UNIGFX)      +=3D fb-puv3.o
  obj-$(CONFIG_FB_HYPERV)		  +=3D hyperv_fb.o
  obj-$(CONFIG_FB_OPENCORES)	  +=3D ocfb.o

--Sig_/i7HG_DmXR_XmYC1q3faXIY7
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1wVGkACgkQAVBC80lX
0Gx1Rwf/berTIFWR35Lv7DXfKx9LY68EWuKW4VZ3NzjOgfTHZfJziUkBnOlNWEfe
0OvtMav6P9OkYU4w6b+mKnnyLzrDUyd5YNbtKEnBObeaU64IHOyC+UtOibIk3oW8
tM2IXqR1rRVD7QM/9ApNpUwRI9ZadigDFF9C0CbFwP/LZXs5fDScMtDIQmGzMtAT
wCQcNHgJk96zNBZ6m1AFjUegLIvSxfZByAB8mz8hVfIGehxGqRZwIIU89tQ67sRK
FBXiXZte+36uafFquSP6OXp32YFXz1YQc2aarK8e6EYRWuKXOp0iq+SYlkPhmsuJ
TwzDxIrUuHspBWHgJtpHsvGm9YjCzQ==
=FmKs
-----END PGP SIGNATURE-----

--Sig_/i7HG_DmXR_XmYC1q3faXIY7--


--===============6880234064011555759==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6880234064011555759==--

