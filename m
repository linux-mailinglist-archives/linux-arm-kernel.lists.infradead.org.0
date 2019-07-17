Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57F846BBF2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zE3RJdd58nRCeb0sse3hbKeqEDFxtB/O1lqC2kDoT+k=; b=DUljq5sjGEj+HaoQwSstvSM40
	Z6+Ta5MU109jYmi888t66/1Wnl9mK35HqDdgLIxJm2LmOZvw3WHTuYFqiibGcL2lBRxNe8jREhuTf
	gTaQKGO8Gehpih2ZnnriW5+V72is2VgDS1IBd5OD9dj6j+t20djbrvueseAdeqPSourgvlHxiwGpH
	ouOTwKWXTCgjxt72Fm+aWlPnK50Zr7pim8r7pHEAK2z9sYFY41J5qGoa+VNLYwWKennLHk+Pa9t7d
	IsCZidm/8SDbBgzrfECMp9LznQELoAZCg0orytH4uUCycUePrg51WX1tj7Xhyze0/USEfBAhErLEB
	xwa2l5ceA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniVs-0004Zf-0X; Wed, 17 Jul 2019 11:54:24 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniVa-0004YI-N3; Wed, 17 Jul 2019 11:54:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bNOnC8lxCe3aDAnG0jcKQgNER1fc49FPtWHXlWhI7Rw=; b=u2vA0thvYVj2uWis+6spoRzNj
 c9AB8hzRFLHxONpE0pk1P+hArYT9OAzNX43036VzrZJ/gglEoyrzsJWoNmbQplliAwniVbis1MUig
 EAXUNaDLRm6rxOCIUFjXuzSf+e8MNFKCoUtzJNiVvQnonYFhLS5pRfC6Y5DDWDG/zG3Og=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hniVX-0000Ub-2i; Wed, 17 Jul 2019 11:54:03 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C1E682742C26; Wed, 17 Jul 2019 12:54:01 +0100 (BST)
Date: Wed, 17 Jul 2019 12:54:01 +0100
From: Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>
To: Kevin Hilman <khilman@baylibre.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 243 passed with 4
 offline, 1 conflict (next-20190717)
Message-ID: <20190717115401.GC4459@sirena.org.uk>
References: <5d2f063c.1c69fb81.69fe8.9d45@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d2f063c.1c69fb81.69fe8.9d45@mx.google.com>
X-Cookie: Fremen add life to spice!
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_045406_776481_9CB38D3A 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-amlogic@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============3045732315254902107=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3045732315254902107==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="hYooF8G/hrfVAmum"
Content-Disposition: inline


--hYooF8G/hrfVAmum
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Jul 17, 2019 at 04:27:56AM -0700, kernelci.org bot wrote:

Today's -next fails to boot on meson-gxm-khadas-vim2 in a variety
of configurations:

>     defconfig:
>         gcc-8:
>           meson-gxm-khadas-vim2:
>               lab-baylibre: new failure (last pass: next-20190705)

>     defconfig+CONFIG_CPU_BIG_ENDIAN=y:
>         gcc-8:
>           meson-gxm-khadas-vim2:
>               lab-baylibre: new failure (last pass: next-20190705)

>     defconfig+CONFIG_RANDOMIZE_BASE=y:
>         gcc-8:
>           meson-gxm-khadas-vim2:
>               lab-baylibre: new failure (last pass: next-20190705)

It looks like it gets to userspace and then hangs (end of the log
below).  More details at:

    https://kernelci.org/boot/id/5d2ed6ad59b514a0e649e937/

Compared to working boots in mainline it looks like the main difference
is the addition of the panfrost driver but that could be a complete red
herring.

08:00:51.567064  [   14.844034] Run /init as init process
08:00:51.590902  Starting syslogd: OK
08:00:51.645937  Starting klogd: OK
08:00:51.650193  Populating /dev using udev: [   14.894327] udevd[214]: starting version 3.2.7
08:00:51.651409  [   14.894906] random: udevd: uninitialized urandom read (16 bytes read)
08:00:51.652703  [   14.899720] random: udevd: uninitialized urandom read (16 bytes read)
08:00:51.653946  [   14.905958] random: udevd: uninitialized urandom read (16 bytes read)
08:00:51.655192  [   14.913972] udevd[214]: specified group 'kvm' unknown
08:00:51.656495  [   14.920901] udevd[215]: starting eudev-3.2.7
08:00:51.790817  [BL31]: tee size: 0
08:00:51.820838  [   15.089001] meson-gx-mmc d0070000.mmc: allocated mmc-pwrseq
08:00:51.860744  [   15.106647] meson8b-dwmac c9410000.ethernet: PTP uses main clock
08:00:51.865096  [   15.107020] meson8b-dwmac c9410000.ethernet: no reset control found
08:00:51.866318  [   15.114743] meson8b-dwmac c9410000.ethernet: User ID: 0x11, Synopsys ID: 0x37
08:00:51.867556  [   15.120434] meson8b-dwmac c9410000.ethernet: 	DWMAC1000
08:00:51.868872  [   15.123055] panfrost d00c0000.gpu: clock rate = 666666666
08:00:51.870123  [   15.125580] meson8b-dwmac c9410000.ethernet: DMA HW capability register supported
08:00:51.871365  [   15.126609] meson-drm d0100000.vpu: Queued 2 outputs on vpu
08:00:51.903478  [   15.131066] panfrost d00c0000.gpu: mali-t820 id 0x820 major 0x1 minor 0x0 status 0x0
08:00:51.907981  [   15.138262] meson8b-dwmac c9410000.ethernet: RX Checksum Offload Engine supported
08:00:51.909205  [   15.138269] meson8b-dwmac c9410000.ethernet: COE Type 2
08:00:51.910449  [   15.143806] panfrost d00c0000.gpu: features: 00000000,101e76ff, issues: 00000000,24040400
08:00:51.911698  [   15.145058] Bluetooth: Core ver 2.22
08:00:51.913009  [   15.145170] NET: Registered protocol family 31
08:00:51.914253  [   15.145175] Bluetooth: HCI device and connection manager initialized
08:00:51.919829  [   15.145197] Bluetooth: HCI socket layer initialized
08:02:48.216650  ShellCommand command timed out.: Sending # in case of corruption. Connection timeout 00:04:20, retry in 00:02:10
08:02:48.321432  #

--hYooF8G/hrfVAmum
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl0vDFgACgkQJNaLcl1U
h9AmnAf6A2RyN/7aPmjn2gXehhdC8E4x5bEjyk2uiDng1fvvwtm1sj+3wlvUMRPX
t8oF0pAgE2WzeVc5xAfLk6T0WHeKXuRR3wzKXobQL1fcABuaJIMLEMsgadcPIiMD
wrL5VJ2bjkrascfygj+e1o1cdSTXweJ/nMAYeQXJ+S1vfxMgh1d1lC8X7R4prk+Z
Rx4BZEjAG+uCNFV9lbZrfnZ3ObVL9xa3uLBiswEcHW4fgXC6iVsnKfU5ZFJFmxks
kpCnj7Gs3KHCVrLpZ4P6sr1sveQ+tyJ+iOXaSYP53GX0dNXPfI9hpgGJet0pVecJ
/rg0vgOW7d+ypGJXJZjY0FTqvL3wFg==
=7gnR
-----END PGP SIGNATURE-----

--hYooF8G/hrfVAmum--


--===============3045732315254902107==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3045732315254902107==--

