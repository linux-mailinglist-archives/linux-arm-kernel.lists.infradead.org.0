Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B582A7A989
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:28:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lAHIh3/0rHfvn2bzH8wPAVeBKJDb10RQk/eSeEEMWsU=; b=fRX8t7TwVlUkzSoTgRmi/EJeT
	YIWNQl87dI0KPP60yJh7vAnkKEdzmmODZ7g34QqcZERseMxxD63wCKAhq9VM2WQTsTdRRClelZ3mp
	yfvkvQ0FgxwD7F+yL/h9U/6fePeGzNmBbn0ymoZU96Sh5/CIQ/Ap4Pmb+q32xTTGDRwCX7VoVnSOE
	TBRLl+oGQYpc7SazvcG+wzMKhzErF/Etobn7dg0DsIKQvIGIThi3ieflLYW/aIHGWJ5io4sjIqpei
	gPDjWI34BL0R/0LEhi4hfZjk+xwA6Cq9vNnTjux4pgsdAL135Y+XxUwK9hWw3ILzAeVDk8S0f+6gN
	852eHQsXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsSBM-0005V1-5k; Tue, 30 Jul 2019 13:28:48 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsSBA-0005TY-Ez
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:28:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=walLL9B2ctUvGn9VSOEMf5RfdhWokjcJ8sftsI3u0oE=; b=JBmq85+IrCD5UTa4/ev5Idm9x
 hftU0Smw6FZju2dNnYJHyjA/2JYQUP1ZdAOYnHOMtxR9SCC8EctW3F0LK9F7lzBbYpJYp+uDXd1jm
 3gH5zvdh8P5LftzAxOSjOB6QXGpoVx/EROyFADXD4MqvZevZlnfO5S8vcs4c+55n+YGwA=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsSB7-0007ZD-O5; Tue, 30 Jul 2019 13:28:33 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id CD4ED2742CB5; Tue, 30 Jul 2019 14:28:32 +0100 (BST)
Date: Tue, 30 Jul 2019 14:28:32 +0100
From: Mark Brown <broonie@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Tri Vo <trong@google.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190730132832.GD4264@sirena.org.uk>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d403574.1c69fb81.14163.65d3@mx.google.com>
X-Cookie: Times approximate.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_062836_507344_CCC24D68 
X-CRM114-Status: UNSURE (   7.69  )
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
Cc: linux-next@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============3412225858642252646=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3412225858642252646==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="Km1U/tdNT/EmXiR1"
Content-Disposition: inline


--Km1U/tdNT/EmXiR1
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 30, 2019 at 05:17:56AM -0700, kernelci.org bot wrote:

> next/master boot: 265 boots: 17 failed, 184 passed with 64 offline (next-20190730)
> Full Boot Summary: https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20190730/
> Full Build Summary: https://kernelci.org/build/next/branch/master/kernel/next-20190730/

For a while now all arm64 big endian clang built kernels have been
failing, the kernel mounts the root filesystem but is unable to execute
init due to an inability to understand the executable format:

08:55:25.999629  <6>[  226.077194] Run /init as init process
08:55:31.066490  <4>[  226.086518] request_module: kmod_concurrent_max (0) close to 0 (max_modprobes: 50), for module binfmt-464c, throttling...
08:55:31.085167  <4>[  231.135458] request_module: modprobe binfmt-464c cannot be processed, kmod busy with 50 threads for more than 5 seconds now
08:55:35.745340  ShellCommand command timed out.: Sending # in case of corruption. Connection timeout 00:01:54, retry in 00:00:11
08:55:35.846536  #
08:55:35.849523  #
08:55:36.185339  <4>[  231.154208] request_module: kmod_concurrent_max (0) close to 0 (max_modprobes: 50), for module binfmt-464c, throttling...
08:55:36.208673  <4>[  236.255449] request_module: modprobe binfmt-464c cannot be processed, kmod busy with 50 threads for more than 5 seconds now
08:55:36.209013  <3>[  236.269366] Failed to execute /init (error -8)
08:55:36.210161  <6>[  236.285459] Run /sbin/init as init process
08:55:41.306737  <4>[  236.294490] request_module: kmod_concurrent_max (0) close to 0 (max_modprobes: 50), for module binfmt-464c, throttling...
08:55:41.331547  <4>[  241.375455] request_module: modprobe binfmt-464c cannot be processed, kmod busy with 50 threads for more than 5 seconds now
08:55:41.331837  <3>[  241.389316] Starting init: /sbin/init exists but couldn't execute it (error -8)

(binfmt-464c is binfmt-misc, the fallback for unknown executable
formats).  The same kernel version built with GCC boots fine.

You can see a bunch of reports here (all the big endian failures):

	https://kernelci.org/boot/all/job/next/branch/master/kernel/next-20190730/

It's possible that there's some infrastructure error that's causing the
wrong ramdisk to be sent to the boards only for clang but I'd be a bit
surprised.

--Km1U/tdNT/EmXiR1
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1ARgAACgkQJNaLcl1U
h9DFbgf+KqXb8a9Ph8jjvciYHVMRk/1noLRaTxS02sx0KuuFAWpZt0LN72ou4vKq
Lxn59VKfK2aCp7f8Dul5PW4sPRWF4S+PlTEzURic0Cvho09GIOWrgfE2LDsAJ8wj
Z9w1wLWY+IJj3eaJI0CnUMuyhbzqgD4XLig6F4dTYt/MU1aHtYWZ6T7b1iPN90gk
6dJS8EXTbWquHHhXs0tf9OnPxYhG+TryzBeT6NmB7Jx+cE8Qte2ppiTHrrOdIzFn
+p4ky3406620ZXu08g78GURRoY6EeCerACq3hRXTQ41KVIC4aSjDgMGhDY6Wibp5
z7xqVe3dA6UODHmwiSHkod06K8H3lw==
=AzxX
-----END PGP SIGNATURE-----

--Km1U/tdNT/EmXiR1--


--===============3412225858642252646==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3412225858642252646==--

