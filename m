Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEDF8BB87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 16:29:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xlk8B5QkoCmwb4NcgeAg7c4Rnd6hZnvmBeq345bV7TQ=; b=E0E
	RHm10Ly1Lg6n+Gs8RogLk4XRbKQ4LUu2zIpXrz7XxOGZ7NNtmSdr/vvAwyaTOS42vL7aGhm/521gl
	smYvklndHewZ5QNmO48SWkCkzelJrxapVg1esX6JmBbT1IMK1LLPz+BojhnmFd6AFaCnaZ2Nv7DO3
	tqfsl3oxWxLQ96YaCyYgz5WB2/nEniUM8LirAi9m1CfpfzmuVamZS79j3nxyROMijIaU2ktrHnflT
	Zgd1+9MNkLmTpVfvwdV7g3awFrHmMDH1LC66jKAEDAmwX+SUTc3ZtVRt+GEBVOEr3jP8fSI28BZvf
	wE00IFgPc6GMLOnIQTZHKPmgEMZBekg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxXng-0001ho-KP; Tue, 13 Aug 2019 14:29:24 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxXn5-0001ax-98
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 14:28:50 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 467FSk6gMhz9sN1;
 Wed, 14 Aug 2019 00:28:38 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1565706520;
 bh=ACE+9ye8XX94fLyYzZSFwCW0VwuWvHwCQooSP/F/dgA=;
 h=Date:From:To:Cc:Subject:From;
 b=QuEotmz3ddb1SAqTbT/1noT8q4953fVbA6IR3DZF9nlzqSon4Opid/AVKjcLuFrGt
 W3LeFDjcH1DyNW7chYSCr4ZD9qSUzdaBJ0tgS169qtmZy2IPkbunv5eqwVC1/Z9P5c
 nIlhKcM7YFPKitGRZ0ujJ+JDhl3HPMs6oAPE4bsj97bp2+6dVQID2AGFIB3VraP8G1
 kFvi1PgipJRC3kOt/+bGxgOBh4lk7VUNZda8Do7EhdV3LzJMKONdkdLnUypvXryn0i
 qt7CJZAlDcb3W0/yf4DBbIUmCCj5LCiCUIrmp8lrmiJ+nBOmoF/+YLOuaUrpQDb6ob
 j6TxFnSTPHu+g==
Date: Wed, 14 Aug 2019 00:28:36 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tags need some work in the arm-soc tree
Message-ID: <20190814002836.4b6aa14b@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_072849_361049_A56A52E9 
X-CRM114-Status: UNSURE (   6.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: multipart/mixed; boundary="===============8405970818435131111=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8405970818435131111==
Content-Type: multipart/signed; boundary="Sig_/kz85xgv1foK0yj0LRJkbu.m";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/kz85xgv1foK0yj0LRJkbu.m
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

In commit

  4f0f89dd9060 ("ARM: dts: stm32: add pwm cells to stm32f746")

Fixes tag

  Fixes: 9bd7b77af8e4 ("ARM: dts: stm32: add Timers driver for stm32f746

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

In commit

  289459737869 ("ARM: dts: stm32: add pwm cells to stm32f429")

Fixes tag

  Fixes: c0e14fc712d9 ("ARM: dts: stm32: add Timers driver for stm32f429

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

In commit

  493e84c5dc4d ("ARM: dts: stm32: add missing vdda-supply to adc on stm32h7=
43i-eval")

Fixes tag

  Fixes: 090992a9ca54 ("ARM: dts: stm32: enable ADC on stm32h743i-eval

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

In commit

  1425d00aff01 ("ARM: dts: stm32: add missing vdda-supply to adc on stm3242=
9i-eval")

Fixes tag

  Fixes: 7465d81191a1 ("ARM: dts: stm32: enable ADC on stm32f429i-eval

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

In commit

  bb06b54721fb ("ARM: dts: stm32: remove fixed regulator unit address on st=
m32429i-eval")

Fixes tag

  Fixes: 7465d81191a1 ("ARM: dts: stm32: enable ADC on stm32f429i-eval

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

Please do not split Fixes tags over more than one line.  Also, please
keep them with the rest of the other tags.

--=20
Cheers,
Stephen Rothwell

--Sig_/kz85xgv1foK0yj0LRJkbu.m
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl1SyRQACgkQAVBC80lX
0GzZDwf+IsrJGu+m4VjHCnQut8LJ5UjoXaH00xOp7YoLUwH3HrpZUoK3LioqIoXO
yZqQHgRSdjSZCvb3CfAzMKHks9CjbMHPzd6YMzMg06c2oRHvzk8Yhhjg4Pe+s8uG
q1J/L9QC4w9dchq44h0bjgXMe5EQcvgeCvLk9INrbX3Tj1lgYHq3wGHaytMba8vI
6Y90Mhy+0F5RnzRM5+NU8PizWeigM0P1qUpMbvPc41YNknE/uD+qrFYqYad/XJxn
NQhRiLJFJLewtIOvNMdzwrjAFEmANR+yi34Ut+UrOZC60cNhW1jw/oc3qcMnY/kL
/BHY681uQ2Vnn1R3PcnRdKwu1snuWA==
=fN5O
-----END PGP SIGNATURE-----

--Sig_/kz85xgv1foK0yj0LRJkbu.m--


--===============8405970818435131111==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8405970818435131111==--

