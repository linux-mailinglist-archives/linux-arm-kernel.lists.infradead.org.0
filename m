Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7558A436
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 19:25:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EZHgVOBufXwiY3gy9dJaDjLzQFo77GoC3Tp6IHSfLxs=; b=Qgh17ttfMOpTdPbH3G3cPIbfl
	+hmnEJ3LlYv+OYNQGCrciNi4rPzmqG8XQDRW2L14JNcNxFivlSk/gK4C4v91zUb8NzMbsGV/LGqLU
	8zL29A7J8yE/HQK+Ku20ZpWB6QYqyw7899UQ94GjTB3S1Ij6gfKY9Vf8N/4P/TyI7k3Wkg/44aiVk
	Pnx8orUncDGHUnw9ToUU/8u60hioFP6YQNNP3T/DLKhJ0LUs6jNUBhIh1Q8dM0zVKnjgVglL5sevB
	tBGhD5g5JKw0qNcp5YBY2xJ5Fq6ySKuUzI3ouA8rS6i3jWQaxQJNMjnwUKfIV3IZkZcVx5yOIqXgv
	ebg/djlyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxE4M-0003Wq-Lm; Mon, 12 Aug 2019 17:25:18 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE46-00032z-Nd
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 17:25:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K05134folpIhTvdy8yN5MTqWIVVYHepWQ1nOE7KUEpY=; b=a4f8i+ZycT1x2Z+xEbYSKQ43c
 TXqQGbSJcw+UP76/MIGUOvK0Ny9qiCQSZx9Pw+FpWbTg0Eju2Z9DcFJJsPnWxrfE1NM7rcXp+1k8u
 HVaIpIGV4pAMOXejtGdN1Z9uqOJfnK1Ux69LCSHtGcjiQ5CZSYCZHJB0U4sYXiXfAWnog=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hxE44-0002Pz-0r; Mon, 12 Aug 2019 17:25:00 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 06FE02740CBD; Mon, 12 Aug 2019 18:24:58 +0100 (BST)
Date: Mon, 12 Aug 2019 18:24:58 +0100
From: Mark Brown <broonie@kernel.org>
To: khilman@baylibre.com, Heiko Stuebner <heiko@sntech.de>
Subject: Re: next/master boot: 285 boots: 16 failed, 264 passed with 3
 offline, 1 untried/unknown, 1 conflict (next-20190718)
Message-ID: <20190812172458.GM4592@sirena.co.uk>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
 <20190718162005.GF5761@sirena.org.uk>
MIME-Version: 1.0
In-Reply-To: <20190718162005.GF5761@sirena.org.uk>
X-Cookie: Decaffeinated coffee?  Just Say No.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_102502_871246_98155602 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@vger.kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============0607792535707654673=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0607792535707654673==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="C01fF7hLGvN0zd9s"
Content-Disposition: inline


--C01fF7hLGvN0zd9s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Jul 18, 2019 at 05:20:05PM +0100, Mark Brown wrote:
> On Thu, Jul 18, 2019 at 04:28:08AM -0700, kernelci.org bot wrote:

> Today's -next started failing to boot defconfig on rk3399-firefly:

> [   87.491881] cpufreq: __target_index: Failed to change cpu frequency: -=
22
> [   87.495335] ------------[ cut here ]------------
> [   87.496821] kernel BUG at drivers/cpufreq/cpufreq.c:1438!
> [   87.498462] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP

> I'm struggling to see anything relevant in the diff from yesterday, the
> unlisted frequency warnings were there in the logs yesterday but no oops
> and I'm not seeing any changes in cpufreq, clk or anything relevant
> looking.

> Full bootlog and other info can be found here:
>=20
> 	https://kernelci.org/boot/id/5d302d8359b51498d049e983/

This is still present in -next today, though we don't have the failure
to change frequency any more - it still fails right after cpufreq
though:

	https://kernelci.org/boot/id/5d51784259b514a021f12245/
	https://kernelci.org/boot/id/5d51781559b514a007f12241/

--C01fF7hLGvN0zd9s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1RoOoACgkQJNaLcl1U
h9Dj1Af/VQopbydFY7JzTz2b3ZKRSkUlGs8iymzkvcUjsk1e/MeZ8d6cbowqTxDR
2oktFl47dC0AZq/CFs2Xq0B16AQ1XVXgq3J57Uh/IBH2XdzvUFIDAO5BJcMopKXg
eAHCcEdKOI3q/wSZgr25wzZ1jxZ/E/X9iMaIQYmtkuVkl/QE6Ip9sYx3ThsHKNwi
n1jIe7HqjD2cDWjKSsvPtk/BYYd/BbQ14NudFhvZUPptsRe0mM1Gmo2jU5ncwl2D
RX4eeInyAPUy3VhyZc/D3buwBD12aZuJV/ZRn7vOgQ2St+YiVikDyy5OiBntuT06
Ep8ayTj2EnkV6AoFECk3YAAKQ/hguQ==
=T7ph
-----END PGP SIGNATURE-----

--C01fF7hLGvN0zd9s--


--===============0607792535707654673==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0607792535707654673==--

