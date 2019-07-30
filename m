Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8812E7A9E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=teiBidn5/grrbV59VBov5c9EL4P+BAiCqkxX0htNa/s=; b=XghXSPzbUKad9Jjsc9FkLRYs2
	FEOWcMK2boXmxvf55YSnuu6D0lzgc5DzzcQczPs425lD6hIvFTsaBk+a+JXLvvDu5Z2W2cijxafCg
	23afyNIe7vbeFuswTbf3knComTEOdRxRTIEvd3UNAQz9k7mWIB9Q/mR2yeltflUcA6MGc7G7kpDgG
	RRGIdKvE1+mgNaC/E07ldLHZgeyoMg1oz1b7LgEnb/dTxuw4fCmT9hasj1npOWYa1Nn7R7LeGdyiv
	r5oQxwn6MPJbF8x6kgeL0aO3YDcDmRNmNIoB67B6LRhuc4QSeOaKyzA2CYIjDSiEUAhhoo9UqwN2x
	2GX+C1WSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSNg-0003Gh-EY; Tue, 30 Jul 2019 13:41:32 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSNV-0003GL-13
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:41:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=q4emvkia8kW7InY6Ecaz9ZLmJivkOyR41ZZJhIArh/E=; b=mRjyEJZby69EPlJ+md3bMvHr1
 EA+BPO2o51AT7x6bMAlc/pWkMp0nE62V+C9nFcJZFEZKYba0TaI1H6PQvzLVFysatUYwA+adyK2z8
 qlvOfWYOnzB/ckszkvRwYEc5WRYWeFcRIIn6OKJ92kAFb1jjiESMk1M5FZwU15Zezz9ko=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsSNQ-0007bJ-Sf; Tue, 30 Jul 2019 13:41:16 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id BD6492742CB5; Tue, 30 Jul 2019 14:41:15 +0100 (BST)
Date: Tue, 30 Jul 2019 14:41:15 +0100
From: Mark Brown <broonie@kernel.org>
To: Bjorn Andersson <bjorn.andersson@linaro.org>,
 Lina Iyer <ilina@codeaurora.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190730134115.GE4264@sirena.org.uk>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d403574.1c69fb81.14163.65d3@mx.google.com>
X-Cookie: Times approximate.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_064121_077201_40E27CBC 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============1829021857714461999=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1829021857714461999==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="5xSkJheCpeK0RUEJ"
Content-Disposition: inline


--5xSkJheCpeK0RUEJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 30, 2019 at 05:17:56AM -0700, kernelci.org bot wrote:

Today's -next fails to boot on QDF2400 systems:

> arm64:
>     defconfig:
>         gcc-8:
>             qcom-qdf2400: 1 failed lab

>     defconfig+CONFIG_RANDOMIZE_BASE=3Dy:
>         gcc-8:
>             qcom-qdf2400: 1 failed lab

It crashes trying to load the pinctrl driver, looking at the diff I
suspect due to 0ce242ad2ec17dd (pinctrl: qcom: Pass irqchip when adding
gpiochip) but haven't bisected or anything.

More info including full logs at:

	https://kernelci.org/boot/id/5d40064459b5148b2631b2a6/
	https://kernelci.org/boot/id/5d40073a59b5148bc631b28d/
	https://kernelci.org/boot/id/5d40054959b5148a5e31b29b/
	https://kernelci.org/boot/id/5d40082a59b5148c2931b28d/

(both configs, built with GCC and clang), interesting bit of one of the
backtraces is:

08:56:35.942217  [    4.264434] Unable to handle kernel NULL pointer derefe=
rence at virtual address 0000000000000000
08:56:35.942520  [    4.272262] Mem abort info:
08:56:35.942781  [    4.275032]   ESR =3D 0x96000044
08:56:35.943081  [    4.278074]   Exception class =3D DABT (current EL), IL=
 =3D 32 bits
08:56:35.943330  [    4.283976]   SET =3D 0, FnV =3D 0
08:56:35.943569  [    4.287011]   EA =3D 0, S1PTW =3D 0
08:56:35.943809  [    4.290139] Data abort info:
08:56:35.982983  [    4.293001]   ISV =3D 0, ISS =3D 0x00000044
08:56:35.983330  [    4.296823]   CM =3D 0, WnR =3D 1
08:56:35.983608  [    4.299772] [0000000000000000] user address but active_=
mm is swapper
08:56:35.985342  [    4.306113] Internal error: Oops: 96000044 [#1] PREEMPT=
 SMP
08:56:35.985640  [    4.311664] Modules linked in:
08:56:35.985901  [    4.314704] CPU: 3 PID: 1 Comm: swapper/0 Not tainted 5=
=2E3.0-rc2-next-20190730 #1
08:56:35.986154  [    4.322081] Hardware name: WIWYNN QDF2400 Reference Eva=
luation Platform CV90-LA115-P900/QDF2400 Customer Reference Board, BIOS 0AC=
JA551 06/12/2018
08:56:36.026209  [    4.335189] pstate: 80400005 (Nzcv daif +PAN -UAO)
08:56:36.026587  [    4.339966] pc : __memset+0x80/0x188
08:56:36.026867  [    4.343524] lr : msm_gpio_init_valid_mask+0x134/0x1a4
08:56:36.028625  [    4.348556] sp : ffff00001015b480
08:56:36.028923  [    4.351855] x29: ffff00001015b4c0 x28: ffffbc73ef19a768=
=20
08:56:36.029191  [    4.357150] x27: ffffbc73ef19a400 x26: 000000000000016a=
=20
08:56:36.029441  [    4.362445] x25: 0000000000000096 x24: 0000000000000020=
=20
08:56:36.029688  [    4.367740] x23: 0000000000000020 x22: ffffbc73ef7ba000=
=20
08:56:36.029927  [    4.373035] x21: 0000000000000000 x20: ffffbc73ef7cb880=
=20
08:56:36.069212  [    4.378330] x19: ffffbc73ef7cb890 x18: 0000000000000002=
=20
08:56:36.069560  [    4.383626] x17: 0000000000000000 x16: 0000000000002680=
=20
08:56:36.071378  [    4.388921] x15: ffff524de59c5827 x14: 0000000000000000=
=20
08:56:36.071694  [    4.394216] x13: 0000000000000000 x12: 0000000000000083=
=20
08:56:36.071963  [    4.399511] x11: 0000000000000018 x10: 0000000000000021=
=20
08:56:36.072213  [    4.404806] x9 : 0000000000000020 x8 : 0000000000000000=
=20
08:56:36.072462  [    4.410101] x7 : 0000000000000000 x6 : 0000000000804661=
=20
08:56:36.072701  [    4.415396] x5 : 6146000000000000 x4 : 0000000000000000=
=20
08:56:36.112335  [    4.420692] x3 : 0000000000000010 x2 : 0000000000000018=
=20
08:56:36.112682  [    4.425986] x1 : 0000000000000000 x0 : 0000000000000000=
=20
08:56:36.112962  [    4.431282] Call trace:
08:56:36.114798  [    4.433713]  __memset+0x80/0x188
08:56:36.115105  [    4.436927]  gpiochip_add_data_with_key+0x624/0xa58
08:56:36.115373  [    4.441786]  msm_pinctrl_probe+0x34c/0x458
08:56:36.115623  [    4.445866]  qdf2xxx_pinctrl_probe+0x290/0x334
08:56:36.115870  [    4.450296]  platform_drv_probe+0x8c/0xb4
08:56:36.116109  [    4.454286]  really_probe+0x214/0x490
08:56:36.116344  [    4.457932]  driver_probe_device+0x60/0xf8
08:56:36.116581  [    4.462012]  __device_attach_driver+0xfc/0x114
08:56:36.155329  [    4.466439]  bus_for_each_drv+0x7c/0xc4
08:56:36.155676  [    4.470258]  __device_attach+0xbc/0x15c

--5xSkJheCpeK0RUEJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ASPoACgkQJNaLcl1U
h9DAmQf/UYLaAbsKXQBVMx3+191crJsIyUPrAyFP4L8KZS1sVL0sXM1QroXwZD3h
LsixJsypFctlhb4otb+Efm7Wh0kC/I8iTfL8bYbTdQULqd84UosXmcv74SlJcZKs
RuPyCzXFbqV30qUWJg6OCfiASM0wdrbGv5/7QkarVEEvypMyn1y/iGruJkq6O4EU
3yZpsaKL5G98kXjgmNQ2WMZHvVI2kvU+IpXOWC2biIflTwxkMZZgJ9EN7/Rh6WtX
KCk8kUUW5sVOHhYg61/zGBF8Yl13w3OEdtMUG/FcV9tWySp4V5RnrzaP7NOVOdzP
bRbT00X0MmW7IqR+ksl/1jvodMSgKQ==
=jLOS
-----END PGP SIGNATURE-----

--5xSkJheCpeK0RUEJ--


--===============1829021857714461999==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1829021857714461999==--

