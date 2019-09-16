Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1F8B3868
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Sep 2019 12:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=O9IKtY1mYC+Lxs9/WJV55s/vtS/MOdP1aFdqf7Gl+p0=; b=I3Q
	MnLSzqHCIBmrF9VXXlX6yAZZDKgNkiJh/2oQ607Kr8t+en2MoFPByU/Pu9DLZawIVtr1dYgN0ve5D
	BvPcOKL9+KRAWRxLtLK8BbttbYhv2/SdU7Myn3dtK4iWP9uYHi8CY8KZBVWie+tmsSYPBk/c3zW3k
	Y/ABxeB7aRn5TtAghGyCRT+ITfjzeZgpC+Sd/BNzglii5sOUeM5HXpTDIagxnUFkuhxtog4TTm22H
	vIdiBtsabFIRqPmNaVoVeeHRFr2kybgpjbDOIvV2198Navsx3iSGiFgWRfgSH5G0horAoa6/i+dkc
	9udsuiK2SFlpqc1sS6xExyz/eGBtQOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9oT5-0000AZ-TB; Mon, 16 Sep 2019 10:42:52 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9oSr-00009r-3G
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Sep 2019 10:42:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Content-Type:MIME-Version:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JZBjiu6mXEF4xljF1dJvnzItrxLJQ/ptLLfiyKsUZDM=; b=mcTQ3/PmWWPgIhdxeGMFgAW+F
 1fLJopUTSjAisftrUQn8kbLQVK2OpQSbkj3b1Vl0Xi1aQeTUQ5YogfHaYMV7gY19ZeLXOWCTL2fav
 4q8glNwUzm/puuhRvzWb4RtjCxXnv6Tet9/LAt/vUoJzQHqeHTcUyJDrILuyyw0AEqYMo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i9oSn-0003vN-9s; Mon, 16 Sep 2019 10:42:33 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2E02B2741A23; Mon, 16 Sep 2019 11:42:32 +0100 (BST)
Date: Mon, 16 Sep 2019 11:42:31 +0100
From: Mark Brown <broonie@kernel.org>
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: linux-next: manual merge of the arm64 tree with the
 compiler-attributes tree
Message-ID: <20190916104231.GX4352@sirena.co.uk>
MIME-Version: 1.0
X-Cookie: Man and wife make one fool.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_034237_152146_2BF7BAA9 
X-CRM114-Status: UNSURE (   7.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============7553489479812147362=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============7553489479812147362==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Y48FV0AvvvAm5Iyr"
Content-Disposition: inline


--Y48FV0AvvvAm5Iyr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the arm64 tree got a conflict in:

  init/Kconfig

between commit:

  eb111869301e15b7373 ("compiler-types.h: add asm_inline definition")

=66rom the compiler-attributes tree and commit:

  2d122942484c20b ("Revert "init/Kconfig: Fix infinite Kconfig recursion on=
 PPC"")

=66rom the arm64 tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.

diff --cc init/Kconfig
index 257e428c90472,d96127ebc44e0..cebadd0cfa50e
--- a/init/Kconfig
+++ b/init/Kconfig
@@@ -30,9 -30,9 +30,12 @@@ config CC_CAN_LIN
  config CC_HAS_ASM_GOTO
        def_bool $(success,$(srctree)/scripts/gcc-goto.sh $(CC))
 =20
 +config CC_HAS_ASM_INLINE
 +      def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(C=
C) -x c - -c -o /dev/null)
 +
+ config TOOLS_SUPPORT_RELR
+       def_bool $(success,env "CC=3D$(CC)" "LD=3D$(LD)" "NM=3D$(NM)" "OBJC=
OPY=3D$(OBJCOPY)" $(srctree)/scripts/tools-support-relr.sh)
+=20
  config CC_HAS_WARN_MAYBE_UNINITIALIZED
        def_bool $(cc-option,-Wmaybe-uninitialized)
        help

--Y48FV0AvvvAm5Iyr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1/ZxcACgkQJNaLcl1U
h9BiNgf7BUPhO+mDw5BCZm9EeRGqX2N+OfJwDTJ1+fa6mVSR7olKtg1n4raFn7Ex
hbwCpqh0IL7tS9mvQOqo64zCUmhXDrMsiGe8Zk9iODnAETVdhGYM7vMC1YMLi5et
KeNG/by+pMv56RXllDX/kXNvVAJptCUCWZAclLeHLWyb7bG2xpZfZy+3PIJlsWxU
SvwNMegCobH50m5MSrDiYsoWq80mC8pKBOEqTuP1utmKDhLJR+aFu3P3BnnAu5wE
EJieQaQ4C0TuNTcTSHVDicFQxYcTbmt8CDZcetNz27Get/pO13RYVYpnsGAKJJ60
PBvRcHuMpwZChVP7TwRpgBfDBnECTA==
=sijn
-----END PGP SIGNATURE-----

--Y48FV0AvvvAm5Iyr--


--===============7553489479812147362==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7553489479812147362==--

