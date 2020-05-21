Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354B81DDA2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 00:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=75e1WAINBIVH3tIvmR5RpYOlD0Yb+4e6HAI2gUPUREc=; b=kpR
	KY7uJUtD1IEVTdL5KL6dk7jvtp+1QVK5/Igqq15drcM0rxS7EkRHJNqSoP0gI31gS0Q8JN+HSAkMi
	AFY3K2MlCtqDDi6gxMyTFgYFt2yUPOKz3KoAYx99uux2hVK2P81+2oSN/qFJ3i9f3sUb5WHqyFOEo
	xxu6mDeg/0cMa6D1SasVA/TtT4gL13jnjdEVN8eQmy0QK46moNBbUULven66IlknICVSRk1ORLGOH
	5GpMckreYxtUnTdEGVC0hePz/JMP0FwL4B3hNFr6W2oyoS7Am+3jtU615ztNu3XfQ8dJpLToOlDfc
	FbYxOyiPlu1VIfzU2XO7866oHEzNevw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbtcT-00019o-4b; Thu, 21 May 2020 22:24:53 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbtcI-00017f-G7
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 22:24:43 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 49Skgk2cYmz9sSw;
 Fri, 22 May 2020 08:24:34 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1590099875;
 bh=7UG/0ck8m7LjoDlF4HVoIgucDjHFyP6zo05vApL+ymM=;
 h=Date:From:To:Cc:Subject:From;
 b=UEzQ5pIW5hUBmYnQCDpFUASjTsqHKabf9U/6Nx5IWSdHTkMpO67dfECTdKmBVljCO
 NyPtIpYtadOP58GB0yMMmHTXzN6HOi4pwoxMqzRP6kVoTp1E8y8+5zg5IbsOyLxAfz
 BucriDS51z7VQdOlDmxreYQ6CiRNgGNk9l7VPo4m4MmNiKdC82h9EBFLo6wT6knLh6
 KQUsANFtf+bYGSPLdptdOwghrG7DrvA/uppgbkCjf94dKViUyn7bLqlwZsWRTnbFj6
 FUARyHhkUuw8eNbk5W9epOS87MwgOyqIHJGtnOFj9qoYGez8yVvoVGYpsMLU6b3OOa
 C6MZ68mzNS21Q==
Date: Fri, 22 May 2020 08:24:33 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Signed-off-by missing for commit in the arm-soc tree
Message-ID: <20200522082433.4f536de1@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200521_152442_694225_67C719CE 
X-CRM114-Status: UNSURE (   5.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============6888594357242493328=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============6888594357242493328==
Content-Type: multipart/signed; boundary="Sig_/IvXSHzRHLZYRGpsc1AlupoL";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/IvXSHzRHLZYRGpsc1AlupoL
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Commit

  82ab9b6705bd ("dt-bindings: arm: Add Akebi96 board support")

is missing a Signed-off-by from its committer.

--=20
Cheers,
Stephen Rothwell

--Sig_/IvXSHzRHLZYRGpsc1AlupoL
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl7G/6EACgkQAVBC80lX
0GxLaAf9EWgzgWFYzJys9wwd6evMVEzq283JeOvE9oecgCbCYioxmpjTBx9fMt4x
Z+txmXMofZYtQbVYxzYPrPXu5+dVZvAkszA34JxycWg7ZBeKDnoo/voKTiMujp2x
7FR8GLWERnDKWormbLGFwuiRZ80ecScswc59xURYFc3RbVmh/qmiDhaOLpSaPv4P
r0tSlgx0RHYIpOHxYx1l2Ca5bloHeLUDQkgjWSEbRrH7Ip8tcAeVHJE2LqUnoOzv
0mChkGynxqxyhetQiV7eDNPMUqMMfLfMWa2xkh0Z1PXw0NnGC4h9Q75ipkoM+L7S
NaUNKYM/br5U7F0qHVCEBzXIS6SSYg==
=ow/L
-----END PGP SIGNATURE-----

--Sig_/IvXSHzRHLZYRGpsc1AlupoL--


--===============6888594357242493328==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6888594357242493328==--

