Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5404981EFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 16:24:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/AwjH0ILtQvZxLigwmYbJd8cUS68sbkX6U+cIR6be0g=; b=N+CqIQbAOLxo56g+bGed8B461
	XgyoGVUcJ5kLj/l8V/liY76jtuDhOGiu5bBBBZqosqM2UdNL+TGOfyJvWwqHZFG9YmxmEu7HfwENW
	pzrBHPsOf71zYkSfMYtPKrmhoRpaD1cIW9JLNV6EbDWiZxLIpsMQyRkkSWB4f0dzX2JxrfyslqD/Q
	iTpFJWi3q6M8pXw5WVqYUXMzWxkCiKDlymkigKWfjQ0wgEzTZqM/HpAwQ7SWc7xjvO/9oFKgDxBuh
	sEG4bW0M0MXTqISaNS2igYibVDQEyIyov9FkszqSV7DyGtwNagYgaef2CooAxxziA470xJvdsRsSn
	KmKoDWAQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudui-0002ab-RT; Mon, 05 Aug 2019 14:24:40 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huduW-0002Zk-HB
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 14:24:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eezTYuaFJ41p0FglAAUo5tvk+Sx5H8RKlkZBQZJqI70=; b=c+8Gs6izRpppEiEy5we2d0+s5
 e9wNcmVsZY+G38bitfDDVtPisIhbQISLOfpDKX96g14/ir7OYK2mrxGGjPSjPoWnMNq12bzQC1lgs
 mxN6yPBOpYeXa346cSHNOs7YHYAe/0rWqdrjFsFAQ4Ay+QlPwJIDXdFabQB+Tj6t7QAOc=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1huduS-0000SS-BK; Mon, 05 Aug 2019 14:24:24 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 4F08C2742D06; Mon,  5 Aug 2019 15:24:23 +0100 (BST)
Date: Mon, 5 Aug 2019 15:24:23 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Tri Vo <trong@google.com>
Subject: Re: next/master boot: 256 boots: 6 failed, 177 passed with 72
 offline, 1 conflict (next-20190805)
Message-ID: <20190805142423.GG6432@sirena.org.uk>
References: <5d482ab9.1c69fb81.684ee.d95e@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d482ab9.1c69fb81.684ee.d95e@mx.google.com>
X-Cookie: Place stamp here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_072428_578007_C21655E9 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kevin Hilman <khilman@baylibre.com>, linux-next@vger.kernel.org,
 Matt Hart <matthew.hart@linaro.org>, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============8499112054466629473=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8499112054466629473==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0qt3EE9wi45a2ZFX"
Content-Disposition: inline


--0qt3EE9wi45a2ZFX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Aug 05, 2019 at 06:10:17AM -0700, kernelci.org bot wrote:

> arm64:
>     defconfig+CONFIG_CPU_BIG_ENDIAN=y:
>         clang-8:
>             meson-gxl-s805x-p241: 1 failed lab
>             meson-gxl-s905x-khadas-vim: 1 failed lab
>             meson-gxl-s905x-libretech-cc: 1 failed lab

We're still seeing failures with all clang builds failing to understand
the executable format of /init in big endian arm64 builds; GCC builds of
the same configuration boot successfully.  This has been going on for
about as long as we've been trying to boot clang builds AFAICT, it's a
huge proportion of the failures we're seeing in -next.

I did notice one similar failure for v7 GCC today:

	https://kernelci.org/boot/id/5d4807f559b514d97f31b28e/

which is also happening for other trees so that one at least looks
suspiciously like infrastructure.

--0qt3EE9wi45a2ZFX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1IPBYACgkQJNaLcl1U
h9DJ9wf/eULOFpWLQMqMSmShmTXK9umOcrPzPr1NGR6JJ8IedQQ7PC62x34VOxVt
KZ46WEs0VlZelSi+xbXaQw2D0PuNcMJFAfG1PMtsOAoWwqfpg00W/tLK3R9U2nAP
CVbZ/FTkIWeQ4cV93guigIkNGbBELRch3GHGHCnYFC3OcWJ26XUSKE9FWzJjUnYE
Yw/ZopQCVv97225/BwWMInnwyvMM9+dcA1rbtIlM6o8uBZZW2QVrlJj69miBs1hm
Lb5RN+1bYvE03IdwJ5eoFixaF0rSB2Co+DjxrHN5+4oH/0GgVPIAqvTSZe6yGFI6
jAN33ORfpqn8vVMmv08aRfDwd2FBaQ==
=5kgP
-----END PGP SIGNATURE-----

--0qt3EE9wi45a2ZFX--


--===============8499112054466629473==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8499112054466629473==--

