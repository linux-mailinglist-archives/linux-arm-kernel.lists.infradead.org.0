Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCEAB10451
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 May 2019 05:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ORJRlZ4LylJE7lNGm44IW5SzrvogRFPPviwLrPZ1k+Y=; b=aCQ
	8/NV9cFzOW09dT9OBMXIo5Zg0hLtxCAAj4L+r7SOFA9kqbyqdpbrhCjUs1syHHZ1uCUlI2YuV1d6O
	UTW+H3dps9YH4sqcfCWDQD0dGUMoDj4UcFKc6TNyS8dT2iVZ/V0TxTy+8Jn4gh658/VA1ph5H55i0
	uQNhaJWUC8cQu2llbaR3BXIexW9mK8maevuZHDof3MAiiY2zs2B1LXdiOyfiWVrbzHNGHqguAEiaK
	DdcEsEPmk5dH9b6BUZyb8lVAgtNkmpTrsSqJlaeiBDwpDTfMfhdn5Ouw5349AQJKTGtOD1xXLffl2
	HctPqzugRTpH50fU6vlt6F/yQu0LYPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLg7M-0007KF-3n; Wed, 01 May 2019 03:41:12 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLg7F-0007Ia-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 01 May 2019 03:41:07 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44v41M23gFz9s55;
 Wed,  1 May 2019 13:40:55 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1556682059;
 bh=8/XWx6sTUgF3n+CQYAwAK2rz3oF1AniFXec/UrIaKoU=;
 h=Date:From:To:Cc:Subject:From;
 b=PYTnRD1j05cpZNgnouPOZxI2LE0Q/a8toRyA0/QUVtb8v1kzwLcnXLd9UYHpEadEE
 zV2NwIt5nLO1hSF823ITo54wVvvF5rjuFgDmRCm+fh4ZKIrMcTlONCatxL9u/9/IUZ
 StEn07m90jAkYHleo5Hg9BcrY+vU0xgxDDEbENmMiozm0fiP+i0EpzQIA+TPxCuItM
 fOzmvyv7wDczI/NcakxbGOkxMBltqSgEHyzf5givh9eSzMqOgjsGsa2Wg/oyZIAKeK
 JPpTRbhtfWbk8i8kNmIaxcoC8yTHgsbqmxNzl0qof0kaSenwp8BRiNaFnL+vKpHKue
 1vm8ZLg01sZxA==
Date: Wed, 1 May 2019 13:40:54 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, Olof Johansson
 <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the input tree with the arm-soc tree
Message-ID: <20190501134054.4271616e@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_204105_907269_385D4823 
X-CRM114-Status: UNSURE (   7.72  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Jeff LaBundy <jeff@labundy.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOp?= =?UTF-8?B?cm9u?= <peron.clem@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5125673088247388139=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============5125673088247388139==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/UWQNxjObisc6mUEj5M3b=YF"; protocol="application/pgp-signature"

--Sig_/UWQNxjObisc6mUEj5M3b=YF
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Dmitry,

Today's linux-next merge of the input tree got a conflict in:

  Documentation/devicetree/bindings/vendor-prefixes.txt

between commit:

  2c98d9e47533 ("dt-bindings: vendor-prefixes: add AZW")

from the arm-soc tree and commit:

  7b5bb55d0dad ("Input: add support for Azoteq IQS550/572/525")

from the input tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc Documentation/devicetree/bindings/vendor-prefixes.txt
index 5f2b185a04e6,51f99549161e..000000000000
--- a/Documentation/devicetree/bindings/vendor-prefixes.txt
+++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
@@@ -54,7 -53,7 +54,8 @@@ avic	Shanghai AVIC Optoelectronics Co.
  avnet	Avnet, Inc.
  axentia	Axentia Technologies AB
  axis	Axis Communications AB
+ azoteq	Azoteq (Pty) Ltd
 +azw     Shenzhen AZW Technology Co., Ltd.
  bananapi BIPAI KEJI LIMITED
  bhf	Beckhoff Automation GmbH & Co. KG
  bitmain	Bitmain Technologies

--Sig_/UWQNxjObisc6mUEj5M3b=YF
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzJFUYACgkQAVBC80lX
0GwG8gf+PSn5NwiucS2UN3Q5cHfZXRaTVQjB78Dkpj3XTPbyFqg7SVpsas3Ct9Ns
8OjTx6pYCJp1tWvhxYAwqRVqETe9NmBDB3o4Xh9yOnqim16XqjihKG9dI8zGnpGC
hRvvtAYJA4cRK8vvfjJyH+AEakSdAsxeMT2f4ga0EiRbJzqA+w1xXANhPJaCb8i/
IbfkkIJlm7BBDFASt8ffm20NZPBLCgw6W+FgwztU6YRT2GI+d1wxO+ntlAncoFtt
5c6Rd4n0RVLoZk6zXXA/20Vbb/8C0hIa/QlGX9zOHykOb2dzAEIlBJ4eR41+gmo/
M/lYHoOjepSUO1R3PU9dCCguMDsalg==
=tn9Y
-----END PGP SIGNATURE-----

--Sig_/UWQNxjObisc6mUEj5M3b=YF--


--===============5125673088247388139==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5125673088247388139==--

