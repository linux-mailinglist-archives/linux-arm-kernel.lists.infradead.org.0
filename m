Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198C4C1CA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Sep 2019 10:15:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AzVwhtumpXc7FkIiVGfoFec5Drizn0nMQOgo540g/Pc=; b=tus3iztk/jTOyw5n+mF9lI5vM
	IUhy+upeQlC5R43bzp/fPvSf0W15Ps1bKkVm7kRM/ovo5GaUpNuJCLkfvHw4opYMhgwkSuWMgvhsL
	6twcKEv5bQ7J2kx6YQ2U2jzBbiUS2Imi2523EYkJigiGNNDKGYX7Ko9CGI+qWmrHKKVx3ocqfWIgV
	nohT3JvX7SFQQdg897JID0WRJKap494hCuZbQQv2WKH8gzWyAPqeRGV7PK1EM2jfFGeJc7+N2RoKW
	ykqR61atyJOmfNTiRnJZQWAfD/LwaehBA9ycWOQ/L6BrV0AQFJTa9vycbfvmTjocthcabIV4vbGER
	9j8NoibDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqpy-0001eQ-3c; Mon, 30 Sep 2019 08:15:18 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqpM-0001Tg-In
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Sep 2019 08:14:42 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 292E2AF43;
 Mon, 30 Sep 2019 08:14:36 +0000 (UTC)
Message-ID: <7429d35ebf2115ee9020bd261f504858c3419486.camel@suse.de>
Subject: Re: [PATCH] ARM: fix __get_user_check() in case uaccess_* calls are
 not inlined
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Masahiro Yamada <yamada.masahiro@socionext.com>, 
 linux-arm-kernel@lists.infradead.org, Russell King
 <rmk+kernel@armlinux.org.uk>
Date: Mon, 30 Sep 2019 10:13:57 +0200
In-Reply-To: <20190930055925.25842-1-yamada.masahiro@socionext.com>
References: <20190930055925.25842-1-yamada.masahiro@socionext.com>
User-Agent: Evolution 3.32.4 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_011440_760507_8FCB2436 
X-CRM114-Status: GOOD (  14.47  )
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
Cc: Arnd Bergmann <arnd@arndb.de>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Russell King <linux@armlinux.org.uk>, Stefan Agner <stefan@agner.ch>,
 linux-kernel@vger.kernel.org, Olof Johansson <olof@lixom.net>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: multipart/mixed; boundary="===============6417387890044476216=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6417387890044476216==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-IeFRuNA2cBG/0U7j0WPi"


--=-IeFRuNA2cBG/0U7j0WPi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2019-09-30 at 14:59 +0900, Masahiro Yamada wrote:
> KernelCI reports that bcm2835_defconfig is no longer booting since
> commit ac7c3e4ff401 ("compiler: enable CONFIG_OPTIMIZE_INLINING
> forcibly"):
>=20
>   https://lkml.org/lkml/2019/9/26/825
>=20
> I also received a regression report from Nicolas Saenz Julienne:
>=20
>   https://lkml.org/lkml/2019/9/27/263
>=20
> This problem has cropped up on arch/arm/config/bcm2835_defconfig
> because it enables CONFIG_CC_OPTIMIZE_FOR_SIZE. The compiler tends
> to prefer not inlining functions with -Os. I was able to reproduce
> it with other boards and defconfig files by manually enabling
> CONFIG_CC_OPTIMIZE_FOR_SIZE.
>=20
> The __get_user_check() specifically uses r0, r1, r2 registers.
> So, uaccess_save_and_enable() and uaccess_restore() must be inlined
> in order to avoid those registers being overwritten in the callees.
>=20
> Prior to commit 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING"), the 'inline' marker was always enough for
> inlining functions, except on x86.
>=20
> Since that commit, all architectures can enable CONFIG_OPTIMIZE_INLINING.
> So, __always_inline is now the only guaranteed way of forcible inlining.
>=20
> I want to keep as much compiler's freedom as possible about the inlining
> decision. So, I changed the function call order instead of adding
> __always_inline around.
>=20
> Call uaccess_save_and_enable() before assigning the __p ("r0"), and
> uaccess_restore() after evacuating the __e ("r0").
>=20
> Fixes: 9012d011660e ("compiler: allow all arches to enable
> CONFIG_OPTIMIZE_INLINING")
> Reported-by: "kernelci.org bot" <bot@kernelci.org>
> Reported-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---

Thanks!

Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>


--=-IeFRuNA2cBG/0U7j0WPi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl2RuUUACgkQlfZmHno8
x/4mGwf/TjOB2oFr8aZFVmRpUy6wdYJ/WjWJWgFRQxJCX2lTjIb8JfDUQB7dXcDl
AzNED/mYYtw7i0J6gOQPqBe/wGWY1kWndS1raRy0VuhYqKrpY9hsrzPkTXfQ6n+Z
P+YSlBElpDShLqC+b3ZNnidYo4yvhQDh1KfOD+tl4qNEVmPvDcDWpGOgNSIsFqnc
DO9kEVOzQg5kY+O0w/ds65s4Lq1TEYgMdUI5RKTP77k79lH0u3agDCXqJqzQySxx
hEbSJtcJAWRsrmUGMmbOgyab4BgMOi6hBhP3jscVCq660dwrBqBGQ2E2Sex3v+ok
SYQ0+Fu7K8JNggyWSwqswtxTkbaP4g==
=OhtC
-----END PGP SIGNATURE-----

--=-IeFRuNA2cBG/0U7j0WPi--



--===============6417387890044476216==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6417387890044476216==--


