Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6936D1EA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:20:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EXRm3XVnhtljxAxMu5DMsYsPk4x+LeWYkqKTi6PXE+8=; b=pzURQN/e27GhpXzGfaJmA2l7Q
	I3846HH31n4tQVVf2PAiOhjsFd2RnH+koFGbQxhmBng7zLjLMDPwxwHl8jK8/F4dvra0nWWE8dEVJ
	E4KeAmzwatg22otO08Exgg+yIAzfXhplF8Su1s7HQrVPi5+6SrRYOOqu8VI0OfpNAqMy6grboxbXF
	mSTJyAReLV3OS1KvLbJc9Ei27CXI2pLVJmIJINwwDsB9057cASYtcZrx5a+1mAclXdo9SruFvjOYG
	YADELyAZJNAY1ydX78mGwu/N9y5zQF2KOF/HNbjhL0YAVE1Eiqq7DYZcEYd1GlrGq3uRm014HpNf3
	d6+NNLpPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho98v-0005Ye-PE; Thu, 18 Jul 2019 16:20:30 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho98a-0004mG-KB
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:20:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=GEMJ79gll8fP32MQKMulFqjgp+NR3HbjScGjmbnKEQc=; b=qExq3ELCPLlqIUuyQOUpjrWKT
 FZb4jSgNAU0UuviR0DrHWXyKkaP74MjQiOnZNiLav2El6hlQnKq//ba5IImoMzNAawUf7ZJTJynLx
 zDjV0E3Sc5HRF+3Amt/yoLHyAi2/sK5QHkzxk1BLxmZskny912PxiCSN5HmBE7HTc4kxw=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ho98Y-0005YS-BR; Thu, 18 Jul 2019 16:20:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id A2E5F274175C; Thu, 18 Jul 2019 17:20:05 +0100 (BST)
Date: Thu, 18 Jul 2019 17:20:05 +0100
From: Mark Brown <broonie@kernel.org>
To: khilman@baylibre.com, Heiko Stuebner <heiko@sntech.de>
Subject: Re: next/master boot: 285 boots: 16 failed, 264 passed with 3
 offline, 1 untried/unknown, 1 conflict (next-20190718)
Message-ID: <20190718162005.GF5761@sirena.org.uk>
References: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d3057c8.1c69fb81.c6489.8ad2@mx.google.com>
X-Cookie: Oh, wow!  Look at the moon!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_092008_707478_2887EA54 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@vger.kernel.org, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============5646744366684770848=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5646744366684770848==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="GxcwvYAGnODwn7V8"
Content-Disposition: inline


--GxcwvYAGnODwn7V8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jul 18, 2019 at 04:28:08AM -0700, kernelci.org bot wrote:

Today's -next started failing to boot defconfig on rk3399-firefly:

> arm64:

>     defconfig:
>         gcc-8:
>             rk3399-firefly: 1 failed lab

It hits a BUG() trying to set up cpufreq:

[   87.381606] cpufreq: cpufreq_online: CPU0: Running at unlisted freq: 200000 KHz
[   87.393244] cpufreq: cpufreq_online: CPU0: Unlisted initial frequency changed to: 408000 KHz
[   87.469777] cpufreq: cpufreq_online: CPU4: Running at unlisted freq: 12000 KHz
[   87.488595] cpu cpu4: _generic_set_opp_clk_only: failed to set clock rate: -22
[   87.491881] cpufreq: __target_index: Failed to change cpu frequency: -22
[   87.495335] ------------[ cut here ]------------
[   87.496821] kernel BUG at drivers/cpufreq/cpufreq.c:1438!
[   87.498462] Internal error: Oops - BUG: 0 [#1] PREEMPT SMP

I'm struggling to see anything relevant in the diff from yesterday, the
unlisted frequency warnings were there in the logs yesterday but no oops
and I'm not seeing any changes in cpufreq, clk or anything relevant
looking.

Full bootlog and other info can be found here:

	https://kernelci.org/boot/id/5d302d8359b51498d049e983/

--GxcwvYAGnODwn7V8
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0wnDQACgkQJNaLcl1U
h9AJLAf/QOWPPRySQV2t0p6i7pkJ5HN1H8EXj6vGqUAcVNcLzFKwST9mV6iDuvhh
wLJTSe4sTaBVxyMzUHJvXrGJ9G28cpymST0ltXQ6F+7kilwWZXUeuZlKx0v08QRM
EMU3U/731EN5qYY0ueC5CFMS5uW4iMtf7/hVUFE3weRM9hp7bd173ZK/8RmctDOX
o4PBdEWl1I+UOgZQUS7bDiR8ii6wZG302Cylr377u2URMnFSob9UWQHSDtWWo/TN
aFhIrR9xdAMWRNgsI3PTYH8KCwxLAnHTeV/dNVEi1YN2hsaLTvKIoEUyJr8En6nA
QW3BmP2IrH/NaMKOmn0+9lznApOrAQ==
=umHc
-----END PGP SIGNATURE-----

--GxcwvYAGnODwn7V8--


--===============5646744366684770848==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5646744366684770848==--

