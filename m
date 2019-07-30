Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3D3A7A91C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vOFCrMtPLUupSMZegZFJbTbiiaHVJPzyR9NMTkzOgv0=; b=Y+FJTjfL63nFotTXu2D6P9wzK
	moN8EV+TYn9AVsWayLtdgpS/aGwKe4hYMdOyndxo3RliZkYxTq8lK4kf6Do5h+VwqO384clRtAAIa
	Ys4gfcevRs3KM00OmAOlnnIXxXYTvwEC9BB+QeESBXEpidrumzfkdVTt1qI3aDXN5Dl25hczYEciy
	fI5CvAlDqgusPy8Vz42KLzFcI1tRDTHlf0lO5yDOfKt5AUSWVt28Ovt3ibsPVjPsdObf1Gn2fXnYf
	PZ1e9gvgYakoF5sFQcfyu05cIvZt/GYaRCrY/q1+hhC4dLyD8m1t3ciz4r1OFcGQMVh9gIwt7XORk
	NXTBpuCTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRkY-0002Fu-1W; Tue, 30 Jul 2019 13:01:06 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRkM-0002FW-7U
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:00:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=R/SyRq6FyELxtxiORJjLbvIf0Y67FRULyN5eHL7APCE=; b=TSc8MgeA+4AglHkUpwuoCE7yM
 Ekffh0gSHlCpNHED7yw8ZuR+jj/bX5/Fxlmx51J4EUuFni/t6CBKgn37C2b81hRIHf69fQzhnoKOX
 z7FsljtFmaxza50MuxWymGgWOMNMtMTPSMC245xt1EMr5lBk2ClcAlibc4MoBl/KALxH8=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsRkG-0007Vi-CY; Tue, 30 Jul 2019 13:00:48 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 80F6C2742CB5; Tue, 30 Jul 2019 14:00:47 +0100 (BST)
Date: Tue, 30 Jul 2019 14:00:47 +0100
From: Mark Brown <broonie@kernel.org>
To: Kevin Hilman <khilman@baylibre.com>, Rob Herring <robh@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190730130047.GC4264@sirena.org.uk>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d403574.1c69fb81.14163.65d3@mx.google.com>
X-Cookie: Times approximate.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_060054_276947_3B9C75F9 
X-CRM114-Status: UNSURE (   7.28  )
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
Cc: kernel-build-reports@lists.linaro.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-next@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2059276865387822280=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2059276865387822280==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qjNfmADvan18RZcF"
Content-Disposition: inline


--qjNfmADvan18RZcF
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, Jul 30, 2019 at 05:17:56AM -0700, kernelci.org bot wrote:

The previously reported issues with booting -next on
meson-gxm-khadas-vim2 are still present today, though seemingly only
manifesting with CONFIG_RANDOMIZE_BASE and not defconfig (there are
failures with big endian too but they don't look device specific):

> arm64:

>     defconfig+CONFIG_RANDOMIZE_BASE=y:
>         gcc-8:
>             meson-gxm-khadas-vim2: 1 failed lab

It looks like it gets to userspace and then hangs (end of the log
below).  More details at:

	https://kernelci.org/boot/id/5d40069859b5148b3931b2bf/

The last message in the log indicates it was initializing the Panfrost
driver:

08:53:47.332143  <6>[   15.172833] panfrost d00c0000.gpu: clock rate = 666666666
08:55:40.299880  ShellCommand command timed out.: Sending # in case of corruption. Connection timeout 00:04:14, retry in 00:02:07

--qjNfmADvan18RZcF
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1AP34ACgkQJNaLcl1U
h9Csfwf/XsFzkhd2FswYbeGTTmMLf9k5KdI/kIbIqm9iw0JA6z8okdcGhwiUIRXA
fzrZI0iAXkijMLlUHPHWuNZYRu1zra5/a6jxxP01F8SoYCl88urfZ4sTBkQdAunE
1Gvu8vgxkkqxfHMaEldGMEaKu6xHh7vyYW+XjHJ1XWAeiMZYbL25GoSER+EH5XOy
4T/7RglA/lKrz96R2q4femYzT2Mb/f1//gmaXyu0m15yDSNd7aNPy8aTgEpNoNgL
3E8XMKtSJ0/lNFZPOgSah808rAqOr2wEM+V7DEJ13mCDrXyJS4HWmvGKN6VwZUq2
RMk9zVuGeA0v09fh8Q5dU8pOWF+9Cw==
=N+Ek
-----END PGP SIGNATURE-----

--qjNfmADvan18RZcF--


--===============2059276865387822280==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2059276865387822280==--

