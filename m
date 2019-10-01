Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793E4C2F7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 11:04:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l94T8KbvNlzcmcJCew5GR4nGIqWTYe16kVB7Zv5lUb4=; b=Fvr60CrCyUaDMbPhfpSon00pY
	EOoPXFlL6B8AAW6XjRW+1zOq6XMEuCPs/Q4aJRmSo1YU+2gRYSr+znhDz34Zl4oOxa8ESFtbpP01/
	RFpRgJSGxOEersboNF+A+uLvqI2IgG2+uzvMC0UrdVjtBK3+pBv90pmFguC7vKOgf3Zj5iu5fjoFI
	a+n+qP3OysdzRZcUEzyKLGpBpz3WOFabvMDgG2y5EFY0/+nu/2JfAC8ZNVgyfmoistdFtUiZpy5gb
	eVTjEx7ar11lPIgBGJv7rY1Ya9o25lEDapNoQBpZTip76NKi5kg6CiUdzq2W/6Ohatnsv8l+iM4fG
	2HY7SQ3/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFE4c-0005L6-Jb; Tue, 01 Oct 2019 09:03:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFE4R-0005KG-TX
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 09:03:49 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 53471AFF4;
 Tue,  1 Oct 2019 09:03:44 +0000 (UTC)
Message-ID: <196a63271591fbe0bc1fdd5a1a01a25caf5178d0.camel@suse.de>
Subject: Re: [PATCH v2] ARM: add __always_inline to functions called from
 __get_user_check()
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, 
 linux-arm-kernel@lists.infradead.org, Russell King
 <rmk+kernel@armlinux.org.uk>
Date: Tue, 01 Oct 2019 11:03:40 +0200
In-Reply-To: <20191001083701.27207-1-yamada.masahiro@socionext.com>
References: <20191001083701.27207-1-yamada.masahiro@socionext.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_020348_100223_2C32F0C0 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, Linus Torvalds <torvalds@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>
Content-Type: multipart/mixed; boundary="===============4046442151653688881=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4046442151653688881==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-1pzhYzFOaS2Q7mcGcHoY"


--=-1pzhYzFOaS2Q7mcGcHoY
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-10-01 at 17:37 +0900, Masahiro Yamada wrote:
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly") (https://lkml.org/lkml/2019/9/26/825).
>=20
> I also received a regression report from Nicolas Saenz Julienne
> (https://lkml.org/lkml/2019/9/27/263).
>=20
> This problem has cropped up on bcm2835_defconfig because it enables
> CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends to prefer not inlining
> functions with -Os. I was able to reproduce it with other boards and
> defconfig files by manually enabling CONFIG_CC_OPTIMIZE_FOR_SIZE.
>=20
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined.
> Otherwise, those register assignments would be entirely dropped,
> according to my analysis of the disassembly.
>=20
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
>=20
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
>=20
> I also added __always_inline to 4 functions in the call-graph from the
> __get_user_check() macro.
>=20
> Fixes: 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-1pzhYzFOaS2Q7mcGcHoY
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2TFmwACgkQlfZmHno8
x/6gYwf/bt9SGaahlMy9jzh92vkL0lR++WMTDA9czeLR9wbO/ccn+pzclxkdt2oV
zHhrTCh5umkugXPLNKJAwZHfyBCnZ/r4Qe4RUrf4VLaQxHWNtNAhfSroI0213SXW
xcpmbYWmgFuEkiCBC0WOUESteF78q5e6OXe8jExrj1BQIe4aOqaKHNSMJdkdrbyl
Im1V51p0JSvVgJPDTZJax4gHko+Tq4/PTPXwCsxeRCu7ftC2eLk+TFFfxufsVAOw
gTr0yr8wR+ekaeDayR1fp87Uz51u83A3/K0bhfTtcHHMykQwTUFijaYRHeAGd//G
wV5Zsn+SQl3vKzQsrCieTubb54urkw==
=6Yel
-----END PGP SIGNATURE-----

--=-1pzhYzFOaS2Q7mcGcHoY--



--===============4046442151653688881==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4046442151653688881==--


