Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B05B7D023D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 22:38:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Q7nmhv4elbwGYtAugf+Jx4gKEx9H9caub6K2xuQQT+o=; b=Vrg
	MQBqpBSLFjAT95pXYoYM/yPRRXpFxk2Pw/WHIfzKdeXTSlvUs+o6xbeRMeG7pmcG5lXJZfE1U/vMJ
	WpsBuJKRrKv9plCTeuNBWNKYG2m7nVw4zpWEfaSY1khbRfMuUeMEfkVsRjfacSRcDkzQWBx6sNmrR
	1ytB3RcPTNRIUhyZhrpxhFPchA1uZ277CBgiFMRRxpu7MmaaImjWkcYbHzfGGueHfJGTiliS/n5Ui
	Qc3ypw/3y6Dh8J7knbWsfeM+qVnZN79CeGFBymdaeY+/gl6DCw9EJMJTx+ZLsVQoqqealbJ1XzXXG
	i/yPX/kftAcqrKmXCPemVM009eEAgjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHwFa-0002G1-3o; Tue, 08 Oct 2019 20:38:30 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHwFT-0002Er-Ih
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 20:38:25 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 46nq1N2f5yz9sCJ;
 Wed,  9 Oct 2019 07:38:16 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1570567099;
 bh=MrlA8glPOdIlnMDdmhWkEzsJ4Uw18kpN8kq97gWX804=;
 h=Date:From:To:Cc:Subject:From;
 b=TADT4mDEYP9VeyEU5hHnVpHW7HEihrCrk1l56tt3aNebVfN34fBKiIbXXiV1GkA9m
 F88LANLhMK+pbrEb/XjJ16yczM1/WYUiCgGGEZsSdgiRSUwuHoNQHASIR1zyNUvMlQ
 bgYKURzxuQjvsM2SNwbnkRfQmoL3m55lT2pMPVda19KxzFXDYEntEIzXw9MhqUdQB0
 MbvsdfVrAtDDgGCWFho3fpiQlR6HBxIWkmuAb9ss0X1Lo54Jpcsa0/ITbT/iHIb23X
 GUeyT/aur28jO6UJ/YUPifV4mQIQGYoTvQRG6pZLtg9YX7MovRfniO0dM9Ahs0aqZK
 0SqmnCB2QHQ3Q==
Date: Wed, 9 Oct 2019 07:38:03 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>,
 Gregory Clement <gregory.clement@bootlin.com>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: Fixes tags need some work in the mvebu tree
Message-ID: <20191009073803.633c02b5@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_133823_836963_86498C0C 
X-CRM114-Status: UNSURE (   6.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Marek =?UTF-8?B?QmVow7pu?= <marek.behun@nic.cz>
Content-Type: multipart/mixed; boundary="===============8132517445940776963=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8132517445940776963==
Content-Type: multipart/signed; boundary="Sig_/83NC32yotp61XK8KAkelqst";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/83NC32yotp61XK8KAkelqst
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

In commit

  69eea31a26da ("arm64: dts: armada-3720-turris-mox: convert usb-phy to phy=
-supply")

Fixes tag

  Fixes: eb6c2eb6c7fb ("usb: host: xhci-plat: Prevent an abnormally

has these problem(s):

  - Subject has leading but no trailing parentheses
  - Subject has leading but no trailing quotes

Please do not split Fxes tags across more than one line.

In commit

  46cb29381635 ("arm64: dts: marvell: Add AP806-dual missing CPU clocks")

Fixes tag

  Fixes: e043bbd61e01 ("arm64: dts: marvell: Add cpu clock node on Armada 7=
K/8K")

has these problem(s):

  - Target SHA1 does not exist

Did you mean

Fixes: c00bc38354cf ("arm64: dts: marvell: Add cpu clock node on Armada 7K/=
8K")

--=20
Cheers,
Stephen Rothwell

--Sig_/83NC32yotp61XK8KAkelqst
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl2c86sACgkQAVBC80lX
0Gx6ngf/c4xA1GN4BnVOwkZqXYTiKSh6eCut+R+VYVT/MNfPqNHgnQ66UGIaqYqY
NSH5O3N5DUY7pBLVFaLzAxrSstrALc3+4JMPW9MRFp/g7uZzqRo0v7/JiybrM/EY
GuoRe5iNq8sLE3PX42zrVdpp8qTi1ofP3M+kIx3/2Gs40qbVrsBRp2LxKMV8H7Kb
xyBqdi0v8fL2IAOa1wQYyfLd8JD8vvs+IwL7gl3Gt4JPqS3ZWHZIhz4Lvsr/ErHe
c2FxX4A0tAnky2hnyrud8j2FsJ2sKmflQywFaQYga7725JjT3imoci8xPU4XuBpx
oKOum6awQogQG84dJGdpqHFHknvYVw==
=bBKv
-----END PGP SIGNATURE-----

--Sig_/83NC32yotp61XK8KAkelqst--


--===============8132517445940776963==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8132517445940776963==--

