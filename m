Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AEFDF189
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 09:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5C05h5H45xV5btj5Uv7dlNl28x/r0mGBnnAZuTQybPg=; b=Fu8
	WYLj5hksSMObwZNEpR2UbGW/Rgj5FB00B/prgMlZC8lkEIB7iVUvjyqJdYicSTJahKv+HULNR6Cxq
	Bew1ytTpw2ajzr5V9lgurGJA2v7EyR8YyRnPkxBxk63A9AWAcyvNUKL8ekd/KRqn14II/Hyg/yiA2
	FHa7MjB2lrg1iqNF0xTGoZAD90B69MdMvT6C7arBeE7meoOYdrrjWcf0HTAx6soIZ2V9UwxOQHLvG
	HDPOhwjPOQHr41RIac0tStU/3/2mb650hyJqwYi3XFe9qd2DkW8IPrs5m/gpvGwaeNwNLa7jShNiI
	VJez+eBunFrjaI4ABeqgRJvGpET1shQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLNOD-0002CN-Im; Tue, 30 Apr 2019 07:41:21 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLNO6-0002Bp-10
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 07:41:15 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44tYP037VSz9s7T;
 Tue, 30 Apr 2019 17:41:07 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1556610071;
 bh=DaaFAoPL5nbu+X5DMwZs1bYyG461/fqfOUODuvUM6cM=;
 h=Date:From:To:Cc:Subject:From;
 b=tLDOi4y4DhceYBf6Rmn4Ep/ep9zStJFMKT1881P+gEmSMj1iOxEUoBuVQ55QDMjoY
 ueLhEAsgT/55Mj7f2amnP7tT3QlW/Q61NdtIKadGrVxMF28W0Vlmb662843uH9mw9b
 DdPsgUMwHskLt4jH1Q+DVLvzEfhid0QL6b7rYKALKL9sDmUO1Nr9hzOYnvb2Ya2AH4
 uq2kL1i2muGP4wzL7OmQPm0AHA4xX1sqlhWMQiQ2aRRPuPfLBoKT2rubxuj8crLH0D
 3kxeLkEmxE9EjcP8U23tZPIhWsi5J73JOj+FJ9EsjyINYZl//AoVuQQ1KRpUjWgmlS
 PFKqAsHg+SnPw==
Date: Tue, 30 Apr 2019 17:40:51 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Greg KH <greg@kroah.com>, Arnd Bergmann <arnd@arndb.de>, Olof Johansson
 <olof@lixom.net>, ARM <linux-arm-kernel@lists.infradead.org>
Subject: linux-next: manual merge of the char-misc tree with the arm-soc tree
Message-ID: <20190430174051.038c77c8@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_004114_473605_86EC4A83 
X-CRM114-Status: GOOD (  10.33  )
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
Cc: Patrick Venture <venture@google.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============1559787796064420335=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1559787796064420335==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/Ny_5=Hqp3mTDaEmmISm8Ays"; protocol="application/pgp-signature"

--Sig_/Ny_5=Hqp3mTDaEmmISm8Ays
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

Today's linux-next merge of the char-misc tree got conflicts in:

  drivers/misc/Kconfig
  drivers/misc/Makefile

between commit:

  524feb799408 ("soc: add aspeed folder and misc drivers")

from the arm-soc tree and commit:

  01c60dcea9f7 ("drivers/misc: Add Aspeed P2A control driver")

from the char-misc tree.

I fixed it up (see below - though the additions probably want to be
moved as in the arm-soc commit) and can carry the fix as necessary.
This is now fixed as far as linux-next is concerned, but any non
trivial conflicts should be mentioned to your upstream maintainer when
your tree is submitted for merging.  You may also want to consider
cooperating with the maintainer of the conflicting tree to minimise any
particularly complex conflicts.

--=20
Cheers,
Stephen Rothwell

diff --cc drivers/misc/Kconfig
index b80cb6af0cb4,3209ee020b15..000000000000
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@@ -496,6 -496,30 +496,14 @@@ config VEXPRESS_SYSCF
  	  bus. System Configuration interface is one of the possible means
  	  of generating transactions on this bus.
 =20
+ config ASPEED_P2A_CTRL
+ 	depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
+ 	tristate "Aspeed ast2400/2500 HOST P2A VGA MMIO to BMC bridge control"
+ 	help
+ 	  Control Aspeed ast2400/2500 HOST P2A VGA MMIO to BMC mappings through
+ 	  ioctl()s, the driver also provides an interface for userspace mappings=
 to
+ 	  a pre-defined region.
+=20
 -config ASPEED_LPC_CTRL
 -	depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
 -	tristate "Aspeed ast2400/2500 HOST LPC to BMC bridge control"
 -	---help---
 -	  Control Aspeed ast2400/2500 HOST LPC to BMC mappings through
 -	  ioctl()s, the driver also provides a read/write interface to a BMC ram
 -	  region where the host LPC read/write region can be buffered.
 -
 -config ASPEED_LPC_SNOOP
 -	tristate "Aspeed ast2500 HOST LPC snoop support"
 -	depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
 -	help
 -	  Provides a driver to control the LPC snoop interface which
 -	  allows the BMC to listen on and save the data written by
 -	  the host to an arbitrary LPC I/O port.
 -
  config PCI_ENDPOINT_TEST
  	depends on PCI
  	select CRC32
diff --cc drivers/misc/Makefile
index b9affcdaa3d6,c36239573a5c..000000000000
--- a/drivers/misc/Makefile
+++ b/drivers/misc/Makefile
@@@ -54,6 -54,9 +54,7 @@@ obj-$(CONFIG_GENWQE)		+=3D genwqe
  obj-$(CONFIG_ECHO)		+=3D echo/
  obj-$(CONFIG_VEXPRESS_SYSCFG)	+=3D vexpress-syscfg.o
  obj-$(CONFIG_CXL_BASE)		+=3D cxl/
 -obj-$(CONFIG_ASPEED_LPC_CTRL)	+=3D aspeed-lpc-ctrl.o
 -obj-$(CONFIG_ASPEED_LPC_SNOOP)	+=3D aspeed-lpc-snoop.o
+ obj-$(CONFIG_ASPEED_P2A_CTRL)	+=3D aspeed-p2a-ctrl.o
  obj-$(CONFIG_PCI_ENDPOINT_TEST)	+=3D pci_endpoint_test.o
  obj-$(CONFIG_OCXL)		+=3D ocxl/
  obj-y				+=3D cardreader/

--Sig_/Ny_5=Hqp3mTDaEmmISm8Ays
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzH/AMACgkQAVBC80lX
0Gxkrwf+KnscYdJuNJYRWeKxKXVoNBpZRmZMxj9BqOiQ5SeV5k443b22uXfrYHkT
X5jRMJe0zGgRdu/1swgOQjVq02Vm7wpNMjvqU1dwOoTsD//zpSdypiAAsMDbz/gJ
/3h/kp7/Wrj1QvwCCS9NItlQGNDy1ETwh0gVkeuLEw1LObxsr11B5bTYUN4Xm8QN
9MipYy/MSjIIR3dQG7YjvaYHk6cY4+hItm7bwYgF1Z5BbXwVB96Ae16kHrHnPt7v
qV2OvSLTgYsws3NwXQr6/zYg2PgM6pozMQrBhwDRjK3fjQhyXFBp7VRju2bfcDy8
tOc0KEqsSUIkQRgnJYnZXgCTXcez7g==
=9oiN
-----END PGP SIGNATURE-----

--Sig_/Ny_5=Hqp3mTDaEmmISm8Ays--


--===============1559787796064420335==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1559787796064420335==--

