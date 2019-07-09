Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 883FD62CEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jul 2019 02:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xLM7yP+hFhYFiEiYKjd37ImI0imaZ8j8NhlrebDp/2Q=; b=cuM22Jhlb9IVYKwWTT9Ipy3iQ
	lMB6eZFNDtEctmPlw4xl9BQK15kzRYNdQQrSPbEh+Eoz6HsQJfU+A8ChSPown4CIRrM4vgbkf7S5h
	JgYV8izjIYskHKa1X6CzTAexxiEf04auKpDg+9jG9NEaJPDbn/NPq1vb7eYm7wQDnJEhcb34a4gxT
	Prw6gje6lhidXUs/IGGG7+yHhrzAvms7PBUDfIgp9PwMxFVfnsIyW4kczkERkvA7GtB/7Di9FYK6o
	K2FUQ2Rd6Tm6fm9EdbywkYIHTn4684vEx1v56xWs9zV1GJWZrkinCHyPnl7xjG8gib13EjkEJ5nxU
	8u6KrdyFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkdkp-00037Y-J4; Tue, 09 Jul 2019 00:13:07 +0000
Received: from ozlabs.org ([2401:3900:2:1::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkdka-00036g-Om
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jul 2019 00:12:54 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 45jN7M0SmXz9sMr;
 Tue,  9 Jul 2019 10:12:46 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1562631167;
 bh=ZZTfzyE+cPSzGQoUXg5UJzRqYPFv9U0TKErOUGeuwR4=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Tl5JdZFHIssf7gy7XtbC3OQR3jYjORX/KmKkpXxjxt/nuJflDHy35m6d1wVbSvjEO
 XTsVAOIK5TSJjuibOF9g/iyK69hwEZUeKn+W03VkWnzjrXYml06MzQ+hYagvkeQbi4
 cYULcs3kBvgBlmAYWTlOQ1sxRZj9bqX050e5eh4DvMsqb5LRAB+RqQ3baijdUl7uAb
 xj2UXGOwhWpGn9QvjvvXHlx+PzFHxuW2kCuMmV6NqNykGulnODp/IlV3ttjBVio/x4
 nTrWJ8cPXwnmdZQq08+VhXgmcg6LvwsN96PpzDIM3aX9zft1owPCbC1443UOpap/7i
 4WbjTR6V0BcAA==
Date: Tue, 9 Jul 2019 10:12:46 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Russell King <rmk@armlinux.org.uk>, Olof Johansson <olof@lixom.net>,
 Arnd Bergmann <arnd@arndb.de>
Subject: Re: linux-next: manual merge of the samsung-krzk tree with the arm
 tree
Message-ID: <20190709101246.58e21f1b@canb.auug.org.au>
In-Reply-To: <20190628091634.12fdc79c@canb.auug.org.au>
References: <20190621093347.36987c97@canb.auug.org.au>
 <20190628091634.12fdc79c@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_171253_266839_17F7EE19 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
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
Cc: ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: multipart/mixed; boundary="===============8319668281437408534=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============8319668281437408534==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/PtdDwAOn==6Zouw31bhux/y"; protocol="application/pgp-signature"

--Sig_/PtdDwAOn==6Zouw31bhux/y
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Fri, 28 Jun 2019 09:16:34 +1000 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>=20
> On Fri, 21 Jun 2019 09:33:47 +1000 Stephen Rothwell <sfr@canb.auug.org.au=
> wrote:
> >=20
> > Today's linux-next merge of the samsung-krzk tree got a conflict in:
> >=20
> >   arch/arm/configs/exynos_defconfig
> >=20
> > between commit:
> >=20
> >   5f41f9198f29 ("ARM: 8864/1: Add workaround for I-Cache line size mism=
atch between CPU cores")
> >=20
> > from the arm tree and commit:
> >=20
> >   9f532d26c75c ("ARM: exynos_defconfig: Trim and reorganize with savede=
fconfig")
> >=20
> > from the samsung-krzk tree.
> >=20
> > I fixed it up (see below) and can carry the fix as necessary. This
> > is now fixed as far as linux-next is concerned, but any non trivial
> > conflicts should be mentioned to your upstream maintainer when your tree
> > is submitted for merging.  You may also want to consider cooperating
> > with the maintainer of the conflicting tree to minimise any particularly
> > complex conflicts.
> >=20
> > diff --cc arch/arm/configs/exynos_defconfig
> > index 9b959afaaa12,f140532ddca7..000000000000
> > --- a/arch/arm/configs/exynos_defconfig
> > +++ b/arch/arm/configs/exynos_defconfig
> > @@@ -4,12 -5,7 +5,8 @@@ CONFIG_PREEMPT=3D
> >   CONFIG_CGROUPS=3Dy
> >   CONFIG_BLK_DEV_INITRD=3Dy
> >   CONFIG_PERF_EVENTS=3Dy
> > - CONFIG_MODULES=3Dy
> > - CONFIG_MODULE_UNLOAD=3Dy
> > - CONFIG_PARTITION_ADVANCED=3Dy
> >   CONFIG_ARCH_EXYNOS=3Dy
> > - CONFIG_ARCH_EXYNOS3=3Dy
> >  +CONFIG_CPU_ICACHE_MISMATCH_WORKAROUND=3Dy
> >   CONFIG_SMP=3Dy
> >   CONFIG_BIG_LITTLE=3Dy
> >   CONFIG_NR_CPUS=3D8 =20
>=20
> This is now a conflict between the arm-soc tree and the arm tree.

I am still getting this conflict (the commit ids may have changed).
Just a reminder in case you think Linus may need to know.

--=20
Cheers,
Stephen Rothwell

--Sig_/PtdDwAOn==6Zouw31bhux/y
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl0j2/4ACgkQAVBC80lX
0Gxq2Af+NocXoSKFdoIZF8ymYFO5+3MxUg8UPU5uW6n2MYaU0roKS1N6qvR8y8Vq
rKEQOt8KM25xJ6oV4mBFEh9pBqflepsh+Ps6yZFFYsEcofkD7yey2oGBSaJ77pJ/
aT/3JTHoDA16s9TTRzFkdvm13T43rOhpvAyAABv2fG7Qg8lRp/a8BjL41Qs1KUmM
BeT+DfjcxGDMctuYYS+wZupifjv09/klGKKNC6yBcXAb1RLsjhFEdCDl35Wk4+8B
VJFwSQMw8syqwM3mdxivq+EzgQVaTZS04NQuHLgmdTluhNqGB50JABUi7TsE4io7
RnILUrTrX4HtXSY+5BLIAicPg2Zs+Q==
=TaxR
-----END PGP SIGNATURE-----

--Sig_/PtdDwAOn==6Zouw31bhux/y--


--===============8319668281437408534==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8319668281437408534==--

