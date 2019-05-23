Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 752D727DC5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 15:12:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CzVKb2cXlvXmy9WmqCFtDHWOEWGmnyM+SReRsidy59s=; b=W03gn+22/j3mri3LgGzSrV8xy
	vY7avVQFBBab2fnBRtRfGBPbKnxNQh+yyyEeMlU4KitaoKUdDotz2h9mTKPx4L0fpqKO2YA9lwjWl
	qLiRe4DtC6TmB2xmb1sYfJ3M3tycgMyORTuSpvdV+vdxVGwj9cLNHl6orAugHbI6SjVSt2FW58wjH
	MZFGdOPBxVSGFvCO0Vu8fwgjDK3474tF4ygtdlkoUuRlF57lEAf+Iq6Zjirdn2nWdWo3Tug2IYl2p
	lP8L0IR3RWo3DnFKAC2JW5Ap4PO5iQIguOLwFkug5HddOCMEaKSSG4GbvXgSB0rWaAfaiKI0BX8+o
	W8cQQ8WoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTnWM-0002Vc-B8; Thu, 23 May 2019 13:12:34 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTnWF-0002VC-RA; Thu, 23 May 2019 13:12:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QvlfoLHm0G7/InzihE6PxMP0/Z/oolwPHati4bZmwQk=; b=wvGRj18ykIjgLomRO2wv+zz2c
 6FN4MniOthn8MoyoxeRJ587gb7wWgPnLnueeF74OHNrJ/hje8VjT3sxKa6EcouM0RxxZJzqEvmabM
 AchRocYS+FjBtFfeXPh/wbVWtTD85UB+eYfe1ecuWyHP9DUwL8Ogby4rV6hkzuPnj3kJs=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=debutante.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpa (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hTnVy-0000AJ-Rd; Thu, 23 May 2019 13:12:10 +0000
Received: by debutante.sirena.org.uk (Postfix, from userid 1000)
 id 386DD1126D24; Thu, 23 May 2019 14:12:07 +0100 (BST)
Date: Thu, 23 May 2019 14:12:07 +0100
From: Mark Brown <broonie@kernel.org>
To: Eduardo Valentin <edubezval@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Subject: Re: mainline/master boot bisection: v5.2-rc1-165-g54dee406374c on
 rk3288-veyron-jaq
Message-ID: <20190523131207.GC17245@sirena.org.uk>
References: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5ce6040d.1c69fb81.60b3b.29fb@mx.google.com>
X-Cookie: I brake for chezlogs!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_061228_026404_9857C5A7 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, tomeu.vizoso@collabora.com,
 linux-pm@vger.kernel.org, guillaume.tucker@collabora.com, mgalka@collabora.com,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 matthew.hart@linaro.org, khilman@baylibre.com, enric.balletbo@collabora.com,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4933502880922588565=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4933502880922588565==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="JgQwtEuHJzHdouWu"
Content-Disposition: inline


--JgQwtEuHJzHdouWu
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, May 22, 2019 at 07:23:09PM -0700, kernelci.org bot wrote:

>   Details:    https://kernelci.org/boot/id/5ce5984c59b514e6a47a364c
>   Plain log:  https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.txt
>   HTML log:   https://storage.kernelci.org//mainline/master/v5.2-rc1-165-g54dee406374c/arm/multi_v7_defconfig+CONFIG_EFI=y+CONFIG_ARM_LPAE=y/gcc-8/lab-collabora/boot-rk3288-veyron-jaq.html
>   Result:     28694e009e51 thermal: rockchip: fix up the tsadc pinctrl setting error

It looks like this issue has persisted for a while without any kind of
fix happening - given that the bisection has identified this commit as
causing the regression and confirmed that reverting it fixes shouldn't
we just revert?  My guess would be that there's some error with the
pinctrl settings in the DT for the board.

--JgQwtEuHJzHdouWu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAlzmnCYACgkQJNaLcl1U
h9DdRQf+JZtHoJEVkzFX602V6UOrnMDu66zIL9WEt8FQA28mY1VFaEe5jdz2Qhow
EoBDngfyg8tk3oipmTqKRQ6xmCwGyTzYJBJn/OXjCqJHV09ZtJFmlo70EVppBO/c
rClNwCjcwaQpC1fekhcBbZdx0AmeVNkfSD/CKtEa0ZppBeqxch+u9CEL4QzR9LPC
TSTRNXixW9s7SdI/RVs9EO0Gskr0w+M1QBPjhyegJHlny7FI9QYPU9RMUrtuIqrH
zcVRf7D/rzmnS6jHOZCvEQ49PXwcBHv/KnNp6t7ttNz5gr0EIKhaFEICSnTSjMh+
eFF4fQBLHILKCtKUTkNWZKbi4Qcl6Q==
=m0Lf
-----END PGP SIGNATURE-----

--JgQwtEuHJzHdouWu--


--===============4933502880922588565==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4933502880922588565==--

