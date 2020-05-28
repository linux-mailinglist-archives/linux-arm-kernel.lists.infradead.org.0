Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F71E1E62AE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 15:48:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=26SZlyKf1vp4t+acIEbpsOr8MePYbB1Gj8KiOWx9jlQ=; b=D8GaGpM+dGAQgw2iazjpD45XI
	CMF360U7IAWE9Iq4DNMAj9kN4oc8iw6MqPwVg5/4hsT41m0C297P6ZivgRCpsY4vyQ8Sw9/WUjBU4
	w6Fs4qHCx/cMDHSsioBNBhsBLZ4PqnywFMkgMYZjFjcqW9TL27hHkSrymhqOdIBsPc3A6EN1SFFmd
	KSb7IhYJzNE4wp4QFJyN0sCDVT588rvgCzQ19w2q51dDWt4DJe6D8q4KENbmLv7+hkyZZ1qgU2iCI
	l2HHMSoWIO7+5Jsns+py/okla7B790A3PexOArymyCS5nxteVyPUpe9JKl0vdSMwAqKST8CSUGYb8
	ntMblVrlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeItR-0007Ki-39; Thu, 28 May 2020 13:48:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeItB-0007KC-L2; Thu, 28 May 2020 13:48:06 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 900B4207D3;
 Thu, 28 May 2020 13:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590673685;
 bh=hCc/4WkpOoMnYzAs7vLH2tpFPjfk82hCbKAhbeXkNI0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Y4k39ZFaQ41ExRlY1FpyEQJR61aEW8XCAqj3dq0dkZ3PCbvGQ8q/L0EwtUR+BdXqt
 b+coz6x9QHt1uSD8fvSAyy9Ku/2ke4nRaAGrNDGhCFHwPI7+CSialN6cbAZJ9geC2r
 dKuhxH11yqWoiaq+GxLW8DRut8Peg/xIRNbM6Fpw=
Date: Thu, 28 May 2020 14:48:02 +0100
From: Mark Brown <broonie@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 1/2] regmap: provide helpers for simple bit operations
Message-ID: <20200528134802.GE3606@sirena.org.uk>
References: <20200528123459.21168-1-brgl@bgdev.pl>
 <20200528123459.21168-2-brgl@bgdev.pl>
 <20200528132938.GC3606@sirena.org.uk>
 <CAMRc=MejeXv6vd5iRW_EB3XqBtdCWDcV=4BOCDDFd4D0-y9LUA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMRc=MejeXv6vd5iRW_EB3XqBtdCWDcV=4BOCDDFd4D0-y9LUA@mail.gmail.com>
X-Cookie: Small is beautiful.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_064805_710725_6D446DC5 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4649264996007943894=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4649264996007943894==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Ns7jmDPpOpCD+GE/"
Content-Disposition: inline


--Ns7jmDPpOpCD+GE/
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, May 28, 2020 at 03:32:40PM +0200, Bartosz Golaszewski wrote:
> czw., 28 maj 2020 o 15:29 Mark Brown <broonie@kernel.org> napisa=C5=82(a):

> > Why macros and not static inlines?

> The existing regmap_update_bits_*() helpers are macros too, so I tried
> to stay consistent. Any reason why they are macros and not static
> inlines? If there's none, then why not convert them too? Otherwise
> we'd have a static inline expanding a macro which in turn is calling a
> function (regmap_update_bits_base()).

Not really, I think it was just that they're argument tables.  It'd be
good to convert them.

--Ns7jmDPpOpCD+GE/
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7PwREACgkQJNaLcl1U
h9BZlQf/Rnk3QvRXUU9UWRrY62o3tOtAkM+YDOn1qkCahCNlR3xn6spu/jZ2xpm8
wtG0/ml9T9EeXbWZU0n2vWYQowTecwv3zFcQgHRtEaN+Q0F1pZeBoGo7Hazyp47Y
2UI0x5pTwKgEs6xwxQ9hDWy9KhGgLODt7MWUQv8T8m7XxDRmoCh9MbMAiEm2GPLb
Vt5FGW0iBTVJh/h0J84HpA1BY1bXPFBwICbqISunBPso9Gj7D5YzmK9iKvz4qW+g
eCfgV0eYbRbMCcL7UG9jOWOZxuznG+BfLNmzOLl/eydOppXcHVWhah9Q8Q8xsdqG
+R17K+lbB6MGwp7pU0Fr2sp98g43Cw==
=Zc21
-----END PGP SIGNATURE-----

--Ns7jmDPpOpCD+GE/--


--===============4649264996007943894==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4649264996007943894==--

