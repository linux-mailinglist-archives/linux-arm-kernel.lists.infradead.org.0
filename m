Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4934F17042
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 07:02:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NE+5EKs6h/cM9bGAVgjzcgNWUlDq/XWtJW/EDkqfreM=; b=bavFVM9nEJwxgj4bWTGvzHtD6
	3iQjPVi3RN6XFiPq0HbX/CWxCJqGR77eVTugkszVL0HP0EvM6UoF2jQoZQX1a/yChNNM+bAU3Dddo
	+nPBJ3LCjzvgkrlWTnoXMadd3QYCYO++M8xQeBDou8oB/y0qnQQ5sz6jzHjB62WMLBXNx4gEWqhmV
	IGp/prmYdaCVwZMXGdwkgiJZd2AFJEhxGE5GE6pgPGIJaHjBcnYdK2168CxcmQg1LaG1lF305CrjS
	iKjSSZtbwE7TQlU84i+HYzTL4ispiDlV1a4mA3dtvlUiTpZBYoiVZNDPNp3tog0Jiq4iaZO5LQoPI
	3nLPh4Pkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOEiK-0007gz-VR; Wed, 08 May 2019 05:01:56 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOEiD-0007g7-QE
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 05:01:51 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44zPTP4n8fz9s3q;
 Wed,  8 May 2019 15:01:45 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1557291706;
 bh=2wFeY+1zSkdLN8J5QkMn2NTFMPwSkJhfzJkMsHGAhg8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MbZldME4VSRQhUqOX8H1vyFMArsZRiympEmfZR5JqeMMEXzsiXvq9MSSq1WgWBsIQ
 zI9/uu/XaUqPUfj3Hbv7yn2GhYcBZF/LJB5K/g1/5ECu/cnkCl3JpqV1Il45GHRB8L
 6Hlo3ZYwUm3OW2xCPitzbDIBZxBiw7l/t7eY6Ko+jFciFpRKELnzaOh+mCLObtnT+D
 ZKZODQfmJA3Eualj/DayCgY6lcZICFFaFPmjkAZJQtSdPWSyAAB6Bm7hlIjz7QdU0r
 dyFYCQegn90xOdYS147MXhdMk0YHHBIt4VbsvITsoZMKXSj+YI/c5rfM5gox18Ua3s
 3qUOAzrGKOcrA==
Date: Wed, 8 May 2019 15:01:44 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: manual merge of the char-misc tree with the arm-soc
 tree
Message-ID: <20190508150144.76426cfd@canb.auug.org.au>
In-Reply-To: <20190430174051.038c77c8@canb.auug.org.au>
References: <20190430174051.038c77c8@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_220150_377415_BE31BC1B 
X-CRM114-Status: GOOD (  17.68  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Greg KH <greg@kroah.com>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Patrick Venture <venture@google.com>
Content-Type: multipart/mixed; boundary="===============7639689441526229718=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7639689441526229718==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/8cPpKA4fRiq1UK1fHbuMCvQ"; protocol="application/pgp-signature"

--Sig_/8cPpKA4fRiq1UK1fHbuMCvQ
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Tue, 30 Apr 2019 17:40:51 +1000 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> Today's linux-next merge of the char-misc tree got conflicts in:
>=20
>   drivers/misc/Kconfig
>   drivers/misc/Makefile
>=20
> between commit:
>=20
>   524feb799408 ("soc: add aspeed folder and misc drivers")
>=20
> from the arm-soc tree and commit:
>=20
>   01c60dcea9f7 ("drivers/misc: Add Aspeed P2A control driver")
>=20
> from the char-misc tree.
>=20
> I fixed it up (see below - though the additions probably want to be
> moved as in the arm-soc commit) and can carry the fix as necessary.
> This is now fixed as far as linux-next is concerned, but any non
> trivial conflicts should be mentioned to your upstream maintainer when
> your tree is submitted for merging.  You may also want to consider
> cooperating with the maintainer of the conflicting tree to minimise any
> particularly complex conflicts.
>=20
> --=20
> Cheers,
> Stephen Rothwell
>=20
> diff --cc drivers/misc/Kconfig
> index b80cb6af0cb4,3209ee020b15..000000000000
> --- a/drivers/misc/Kconfig
> +++ b/drivers/misc/Kconfig
> @@@ -496,6 -496,30 +496,14 @@@ config VEXPRESS_SYSCF
>   	  bus. System Configuration interface is one of the possible means
>   	  of generating transactions on this bus.
>  =20
> + config ASPEED_P2A_CTRL
> + 	depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
> + 	tristate "Aspeed ast2400/2500 HOST P2A VGA MMIO to BMC bridge control"
> + 	help
> + 	  Control Aspeed ast2400/2500 HOST P2A VGA MMIO to BMC mappings through
> + 	  ioctl()s, the driver also provides an interface for userspace mappin=
gs to
> + 	  a pre-defined region.
> +=20
>  -config ASPEED_LPC_CTRL
>  -	depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
>  -	tristate "Aspeed ast2400/2500 HOST LPC to BMC bridge control"
>  -	---help---
>  -	  Control Aspeed ast2400/2500 HOST LPC to BMC mappings through
>  -	  ioctl()s, the driver also provides a read/write interface to a BMC r=
am
>  -	  region where the host LPC read/write region can be buffered.
>  -
>  -config ASPEED_LPC_SNOOP
>  -	tristate "Aspeed ast2500 HOST LPC snoop support"
>  -	depends on (ARCH_ASPEED || COMPILE_TEST) && REGMAP && MFD_SYSCON
>  -	help
>  -	  Provides a driver to control the LPC snoop interface which
>  -	  allows the BMC to listen on and save the data written by
>  -	  the host to an arbitrary LPC I/O port.
>  -
>   config PCI_ENDPOINT_TEST
>   	depends on PCI
>   	select CRC32
> diff --cc drivers/misc/Makefile
> index b9affcdaa3d6,c36239573a5c..000000000000
> --- a/drivers/misc/Makefile
> +++ b/drivers/misc/Makefile
> @@@ -54,6 -54,9 +54,7 @@@ obj-$(CONFIG_GENWQE)		+=3D genwqe
>   obj-$(CONFIG_ECHO)		+=3D echo/
>   obj-$(CONFIG_VEXPRESS_SYSCFG)	+=3D vexpress-syscfg.o
>   obj-$(CONFIG_CXL_BASE)		+=3D cxl/
>  -obj-$(CONFIG_ASPEED_LPC_CTRL)	+=3D aspeed-lpc-ctrl.o
>  -obj-$(CONFIG_ASPEED_LPC_SNOOP)	+=3D aspeed-lpc-snoop.o
> + obj-$(CONFIG_ASPEED_P2A_CTRL)	+=3D aspeed-p2a-ctrl.o
>   obj-$(CONFIG_PCI_ENDPOINT_TEST)	+=3D pci_endpoint_test.o
>   obj-$(CONFIG_OCXL)		+=3D ocxl/
>   obj-y				+=3D cardreader/

This is now a conflict between the arm-soc tree and Linus' tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/8cPpKA4fRiq1UK1fHbuMCvQ
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzSYrgACgkQAVBC80lX
0GxcaQf/cAZtLueodL+eLkGlJ1HPgreyNpVRFcXvPPG43uF6ReydrQ10G+3wr5Kx
wE0lN7G+HXU0IUCTNAHTL0ygsl5RfAaMdxjQpDRfkcb88e/ynTLUtMjU5dDEQUaE
4TR2M48ZAz3rWAeqQSikGztYKfpXY47CLOlQHpKL8qPo2+baV1ThpzveIjiRH5rG
TBhLOqvFCp9wOsT/TJRPscEAtCUVjg/23YfuR60tkDydyNdkA8n3Ai5z1MhR3fgs
9uZBDrj2OTXCViIUajZItgKiFhZqFZr2fWgbLfRQaTP4UYSDqPIOgg3lWk+8CCeS
v5lVoUssXIA1HnhBCWQIN0hvxhECuQ==
=WsjF
-----END PGP SIGNATURE-----

--Sig_/8cPpKA4fRiq1UK1fHbuMCvQ--


--===============7639689441526229718==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7639689441526229718==--

