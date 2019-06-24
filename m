Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B269E51F66
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 01:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=W9EHQWUoUZD6Jc26/KtXTbNPpK4G35Yu5CTFrnYhh10=; b=MmJ
	vUxMnYzTXtZOr2u6u+UBCfBhL1SYSGzKy53mrXSxWTEAd6pkDkSpkyISIF7UYqc1aQpjwhOwiHosw
	Xstg647MiPKpAud0pL0pOJDXGA4ZNdKH8zMnxl/CSWGa4hPKDvomSdc3dqM00ngaX5ND+Ujdhr8bE
	HYnBsOC6rOiQai8QpS57QBI45REZPTrasqAqktPf24glhNyW5CVjX7RHlG2jkh9Lt+qgFxAMUO9AK
	HK6b4yHNdrM7KjWzNif4/q7PZz8zT5Ti19hruej+BVTlvV/FGJK8Dgt1cejkuYd3/Cy9R3Pf5KdLv
	J3v8zwrigInrK0og3PpHysZhAEuVh4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfYrt-0001Uo-DR; Mon, 24 Jun 2019 23:59:25 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfYrg-0001Tg-5f
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 23:59:13 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45XmV32DlRz9s8m;
 Tue, 25 Jun 2019 09:59:07 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1561420747;
 bh=Hen2snqqpEObpSAq2c6bshrMW+1cGI3PPwZNjQakpws=;
 h=Date:From:To:Cc:Subject:From;
 b=CMaJmjXUhWZSH3G7ZF7TucJBfxTCoVOgmwW80GXCHgGM6Nfc8AS8Ds63ea7gLdhyu
 NcBa9GATEILZC+EPTZ6JYIXKReSBPN97knyzJPnRN4p/n3kNTTEXoQxmvD6xQBLNHf
 Rt/P1rS9IgyYNGDZ8uNUDbhkvWOGNPcN0HbJraEG+XoviP2oBZRs4AwlmLJxzKr0G+
 ZlSvvNg7kuTQ3A8C+X4biPK1oKa1G0jiJVcCo4bXbgTvjBkUKfxzuXFSEtwkRVmuDt
 3EvKjdwTdeI5CxEWb9vDm4Brl70PE2Z47B9q4Ob9OoOh81ZpZAh6rSwkXaq0g3wG6p
 fb5K32jp9BqAw==
Date: Tue, 25 Jun 2019 09:59:06 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Krzysztof Kozlowski <krzk@kernel.org>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the samsung-krzk tree with the arm-soc
 tree
Message-ID: <20190625095906.06c97e0c@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_165912_438978_D0BFA5D4 
X-CRM114-Status: UNSURE (   6.79  )
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
Cc: Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============2257338988809103466=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============2257338988809103466==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/DYAqH5VtESGNex_VbQzPLet"; protocol="application/pgp-signature"

--Sig_/DYAqH5VtESGNex_VbQzPLet
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the samsung-krzk tree got a conflict in:

  arch/arm/configs/s3c6400_defconfig

between commit:

  6c48edcc955a ("ARM: configs: Remove useless UEVENT_HELPER_PATH")

from the arm-soc tree and commit:

  5a96019ce5cd ("ARM: defconfig: samsung: Cleanup with savedefconfig")

from the samsung-krzk tree.

I fixed it up (see below) and can carry the fix as necessary. This
is now fixed as far as linux-next is concerned, but any non trivial
conflicts should be mentioned to your upstream maintainer when your tree
is submitted for merging.  You may also want to consider cooperating
with the maintainer of the conflicting tree to minimise any particularly
complex conflicts.



--=20
Cheers,
Stephen Rothwell

--Sig_/DYAqH5VtESGNex_VbQzPLet
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0RY8oACgkQAVBC80lX
0GwGPAf+PNcyQkEMDRMVNk1uGZdsRY8sHdbhNGKJU2euhikT1WZiVamOhWrRTnfj
UZBBGAlM7JqKZJ39qGzk5yvEPFUKiVOGeg7Xx3xT8febF+S9vKYN3XnOcPMjrMxe
S8RD4vF0WtLpFzFCRu/hd1GdL78TL1LtNtvIy20Ph7Z9Q/aO8VwPxsHE7BYGxSsA
IHfs5YOjlSCZxZdUbZK3rXceTXO553EM6H9sn/Xr9O0brG2VJmJ6XcAZAcybB4Oh
E+pMCl5gHD1Kl/dhMxPn5qQkte9u3Kgvf8WNDVUOxJL+3JEXZ5qFtdjh4NREXE1v
0dyp3bnna0+DkCDuyMym/FiQclr2cQ==
=N9qa
-----END PGP SIGNATURE-----

--Sig_/DYAqH5VtESGNex_VbQzPLet--


--===============2257338988809103466==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2257338988809103466==--

