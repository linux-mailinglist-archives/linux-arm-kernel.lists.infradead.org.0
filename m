Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B6C376441
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:17:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qzsvjcFojwpsszupTIlZ8QFBgoyd96MugbuRYXd/IFE=; b=gtDRBmQ7lS/HJVfxzM6BXXtFI
	+59vuXkm2YHNfTsn6rHNcoKVrPaefnn90lq8Fy6/ui9EJITXmNnpwc6u6wFsanf3AAO4YZkFPHhiz
	hc7FZQdnq16kUnRc14O6eKz/xTVKEgo2GWkQh4p4TmMb6KAe1EnNT457FbpAXmaFl3MaG9pn+sD+k
	9jyL3Dq1PMKNppFadAFNSF4LdmHOg8INzwDL604YVLoBl+ucKCfyVY7u5sbPxB9Mw75vGF+m4e9G3
	qMnWzx6KPTVgSA4hNvbQgy7GNu2vGXYkn3zr8UT/yOOrEd3sQ9bzAPmfGmSGDVsn/0yEevq0HvTsV
	7760n8TEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyE8-0006gI-6s; Fri, 26 Jul 2019 11:17:32 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyE0-0006fo-AJ; Fri, 26 Jul 2019 11:17:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jm4OpSGofOUA5dqIvnMduxBbq6NaNOEvIczSvNy1Q0U=; b=K2KQcfiPjs6rgnZatJ0kUxrdK
 cpwlYJ5DdwUBS06TZWBTp08lIZAQLcwK5czEc/6yJdS+KIvG296bNLUjvfJSRQ2xgyn/zcp3DDFqZ
 iGhVj8B8GaJfmuLs7bJRXPejoee46BgPX3HXB9ERe6C/fXfYDCvexHCGzH6jgLCataL4M=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hqyDv-0001I1-8I; Fri, 26 Jul 2019 11:17:19 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 13D6D2742B63; Fri, 26 Jul 2019 12:17:18 +0100 (BST)
Date: Fri, 26 Jul 2019 12:17:17 +0100
From: Mark Brown <broonie@kernel.org>
To: Cheng-Yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH] Revert "ASoC: rockchip: i2s: Support mono capture"
Message-ID: <20190726111717.GB4902@sirena.org.uk>
References: <20190726044202.26866-1-cychiang@chromium.org>
MIME-Version: 1.0
In-Reply-To: <20190726044202.26866-1-cychiang@chromium.org>
X-Cookie: List at least two alternate dates.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_041724_367013_BA43CBFA 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alsa-devel@alsa-project.org, tzungbi@chromium.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Takashi Iwai <tiwai@suse.com>, dianders@chromium.org,
 Liam Girdwood <lgirdwood@gmail.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, dgreid@chromium.org, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============3965781844057460306=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3965781844057460306==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="4bRzO86E/ozDv8r1"
Content-Disposition: inline


--4bRzO86E/ozDv8r1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jul 26, 2019 at 12:42:02PM +0800, Cheng-Yi Chiang wrote:
> This reverts commit db51707b9c9aeedd310ebce60f15d5bb006567e0.
>=20
> Previous discussion in

Please use subject lines matching the style for the subsystem.  This
makes it easier for people to identify relevant patches.

Please include human readable descriptions of things like commits and
issues being discussed in e-mail in your mails, this makes them much
easier for humans to read especially when they have no internet access.
I do frequently catch up on my mail on flights or while otherwise
travelling so this is even more pressing for me than just being about
making things a bit easier to read.

--4bRzO86E/ozDv8r1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl064T0ACgkQJNaLcl1U
h9DmAAf9FDy70YAEs1yPd9vLXET+RkMVfd/1yiLlweWPaqgu5WqZDjmBFBOQBj98
CnVVDFj3X1Fv6bQs6Q/+jRMuP5ckxiGPCFO2n0dV70pXNj0m/iGUHtj4ly/zOqsH
hwNNbmOpHphNoz87TaPFdPCj6XWPcNUOIa9b+mv/g8sxzR+9AdhzP0xLaDY7ixN9
0sZ+5QRGFuPsu/WscetgXtdTlhxFnEYpm6HxgvmZIrdKW0hYKVM7rSj4wKxiaP9T
ZyYlSmH/oA1OATb8LuDUPE3TTCEmMnyZUSyEAHeXAeWNFZzNn4bG0XYBeQoNZE8C
HZeFqmHV3qj2cU3rejJ2g1P3zqrKyA==
=4GTC
-----END PGP SIGNATURE-----

--4bRzO86E/ozDv8r1--


--===============3965781844057460306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3965781844057460306==--

