Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A0FBE094E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:40:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=5SA2AUXyv2+47dHSkcRYT3qGCWHS2fFq2rbNlO1YQkQ=; b=AnrSw9TWFzBHO+9RPQoBq3ShO
	rANEpBOTh3wRsbbn6P15qn5OYokrvyylsTK5I5dWGpEy6p3MxgreZLdNXsJx+MEZ07WHe2wE65jpO
	JTj4msFb6TmiA2WKZiJlv88E//Mbck2L+KclzPvqCG3kyUGlBz+FAgI27tYVJj/lJyCgO0V28wiKA
	R5Y6lhgB5rbtxWqFzAhHy2H25f7H5dzx8rilMJ0/xSnFU4iRteM0AEV7TBsaZmhV+ZatLo+5lG1AQ
	Y+BxrP8TCCru6bCTupjUe4SIcP2rpgdZUunpWNNeap9keIsVhDBfxd4G60AXw1vArCwDF4/xNYQOj
	YnRoi3zPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxD3-0001Kt-4y; Tue, 22 Oct 2019 16:40:37 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxCT-0008K1-43
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:40:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qzw4H24i5wT2P9XqsoiLtE39qc3Xr5JeEHgOsZqF2E8=; b=nmZ4YUJZkXoFq/0K0+fsp/oLi
 v6olQ5aRCRgeis8SLK8AL9g5WKFw1fwkNYSW2r0RJxXLxZCvA7WHLq2lu3GafBLvD4faZZEGhw+xO
 v36gO58/IlzFCRkEtqLIGPwX+jF1cHdODPGyEUbT4Ywsrn7OU92hktD0zZ2z2MGKvS5fU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iMxCQ-00074Z-Fm; Tue, 22 Oct 2019 16:39:58 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 039C42743259; Tue, 22 Oct 2019 17:39:57 +0100 (BST)
Date: Tue, 22 Oct 2019 17:39:57 +0100
From: Mark Brown <broonie@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 32/46] ASoC: pxa: i2s: use normal MMIO accessors
Message-ID: <20191022163957.GW5554@sirena.co.uk>
References: <20191018154052.1276506-1-arnd@arndb.de>
 <20191018154201.1276638-32-arnd@arndb.de>
MIME-Version: 1.0
In-Reply-To: <20191018154201.1276638-32-arnd@arndb.de>
X-Cookie: Whip it, whip it good!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_094001_229269_63DC1B40 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: alsa-devel@alsa-project.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4381202648678652998=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4381202648678652998==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="QVzQgM+zdZ3YWXqn"
Content-Disposition: inline


--QVzQgM+zdZ3YWXqn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Oct 18, 2019 at 05:41:47PM +0200, Arnd Bergmann wrote:
> To avoid dereferencing hardwired constant pointers from a global header
> file, change the driver to use devm_platform_ioremap_resource for getting
> an __iomem pointer, and then using readl/writel on that.

Acked-by: Mark Brown <broonie@kernel.org>

--QVzQgM+zdZ3YWXqn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2vMN0ACgkQJNaLcl1U
h9AR2Qf+KErM5EMnNx2LKVCOPfSuSN0Tyx/CfJONY87iW8gmPKc33rZ7qwEETZOm
oJpXIqkpkv4i20C/g0p8tma1Tc5S3nSchO4+DGEXf6Ym/0EMz7XweRalM9IpdI9E
TjdnVCbBt1JXRGeHp7MJJb1/Y7pNUhmUiTA4Tjy9a2LLTCwNqjNplPFikzEpT7h8
UmcDTLkr/evh6CCETbmWcdFvWCYsqHi866/9VHvfU7lSAQ2agmxQ9roTZ/mQZpe4
0xpDBqHawfsw7hoHrLpdz3TQcu6p27muy9ECoJ08WiCY7qYt0vR7pEwItPHaQn27
VzNBaEhD/oaZIr7AtQ7335B0Z4zz3Q==
=0eC3
-----END PGP SIGNATURE-----

--QVzQgM+zdZ3YWXqn--


--===============4381202648678652998==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4381202648678652998==--

