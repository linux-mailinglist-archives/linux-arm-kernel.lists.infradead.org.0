Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C77B85088
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:02:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GRFfch69rG9W3G9YtwdrRZpeS9sFZS9hCqGKM1tV1BI=; b=ljo3/f8RghJy8SL81eCxuueob
	HNlEro1HPef3skmqNJt+fVI9UJfBERil5t9QSuD4N1vPzXdl/pVs65+tqhWUDwCcEAv8+46P7Dixs
	7rSaHQYFvH5Qt8fRkD6ZhuK5AjdQujtXQOXQEFEd0ETB1THtIflInGVvObCVfGhFyXmi34P7S3wOk
	6oYJtIqgtpqEsvQE0A4YPFpBm9obyuziKGPAhJphL+i5D2MzLYoOeoE0n6e2x97qTxkyt1oZ9iXnc
	dT0/rmlYcESiK1eju+wJPWfteEGuvT1TU5iU160HnVtINu2gNuz2KJvwGIrIdhxF+Lk4WptCtc8kZ
	ffpzhmHFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvOO3-0003lf-IF; Wed, 07 Aug 2019 16:02:04 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvONq-0003kf-Ge
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:01:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NSm6zInYJNJrj1rZpsXvLUbd6Z0ZiuTo9phx82i1NjU=; b=DCGDvR5MEA2u/DzwYIbW3Bgq4
 ax2RVy3sraw5zKaptCCkhzPmPhNLpheI55NdkvF0Moj8Lb+UXfROzJFVQ/yBw+wzuA0R8F1/cMz+/
 p97iqHyJmkTi44Q+eXStDHrBaIu8jjXsOGBkMP+eJT9+Jiys2L5MUvhkiQk0Fqqsg3dXM=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvONm-0008Cy-GV; Wed, 07 Aug 2019 16:01:46 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 3BD852742B9E; Wed,  7 Aug 2019 17:01:45 +0100 (BST)
Date: Wed, 7 Aug 2019 17:01:45 +0100
From: Mark Brown <broonie@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>,
	Matt Hart <matthew.hart@linaro.org>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807160145.GG4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <CAKwvOdkvFowCWP6cpKoMOz+EWojBXJWs3TzuTvn4180sVu4ayw@mail.gmail.com>
 <CAKwvOdkBhuzJ9L6L=+_PxSc4u3soB0VsiNUsjt=J55LgdYddnw@mail.gmail.com>
 <20190807123809.GA4048@sirena.co.uk>
 <ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com>
MIME-Version: 1.0
In-Reply-To: <ec7bef46-7dcf-d165-b772-b4fd6055d964@arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_090150_560518_8D5DF334 
X-CRM114-Status: GOOD (  11.31  )
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
Cc: Tri Vo <trong@google.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Nathan Huckleberry <nhuck@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5645849730222613624=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5645849730222613624==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="DWg365Y4B18r8evw"
Content-Disposition: inline


--DWg365Y4B18r8evw
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 07, 2019 at 03:41:25PM +0100, Robin Murphy wrote:
> On 07/08/2019 13:38, Mark Brown wrote:

> > 	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/lab-baylibre/boot-meson-gxbb-nanopi-k2.html

> I thought it looked suspicious that there were EFI messages in that boot
> log; from that job's config: https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/kernel.config

> ...
> # CONFIG_CPU_BIG_ENDIAN is not set
> ...

> I think that's a kernelci problem...

Ugh, right.  It's possible there's some issue in Kconfig which is
causing the steps we take to add in the extra config options to break
when clang is used but I'd be a little surprised.  Copying in Matt here
as well, I've filed a ticket in the KernelCI issue tracker:

	https://github.com/kernelci/kernelci-core/issues/136

--DWg365Y4B18r8evw
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1K9egACgkQJNaLcl1U
h9Bj4AgAhMZui+rohf8QMbYiarZ68mz7uXbbRqjQmYwMTf7+00UmiC6Cp1cMqH01
kK7SqjoDPHzp5b78LLUtJYBP0/ehCoyld9jOhYIbEf9utLvcgtiPQtzxqsT7L7Fv
VUT9NQdqhLhYMzqHo5CubYr0bYmmfyShCJDX7H2kxKZ7fPLYixmCP6LIi82WAh4c
81dQsVVGOKWY5hP1EK2WoBrdgxdUNYBfnxBn4+FhN0un0FP4BiRPvRuODPY/1+iS
zDDq+8OEpnXehGFdl59jQzd+qpGBCmvVuU4ytR3jNsXc3F9a9ls4i1dGVDAcGHwW
Q0olv+1mVUWd7Dafl7l6sSJVf11thw==
=2gJi
-----END PGP SIGNATURE-----

--DWg365Y4B18r8evw--


--===============5645849730222613624==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5645849730222613624==--

