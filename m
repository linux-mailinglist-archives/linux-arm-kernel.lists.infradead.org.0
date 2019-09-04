Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11443A8B54
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 21:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oG8ZCChWoernKVLXHzHEjI9HFO8DqvgXDqRpjaSmU0E=; b=NWOCkWPYxa8RM/C21575rYrxr
	MP2p4LsavQeRFd1+MP/vfNgHc0YAsSo06IVIVUhhLlqu4lQC/L0pvXqg56wgpZ3ZDLkYhC1evN/LB
	NuJYvgU47C7eV38+hMwy86w+psaYmUVY06rwXc0Pe/ONmCbTZh8DAdPxd6fgv4xNDsMlx0ARmUbDu
	PZlL1t6fdWdWoOvgJcdjqnO6BXnjnVPFETUDYyioIYOsdbu1AnQI2laSWewBZrhN+0ePgen0D01Tk
	7y3mwyOPK2Dk/h/VGC56X8Q0xS4UjpPi1xOjL+P5HLPdm2t1j1xHITNpGeZ1fLGU1lOeVhRlImsyY
	7XVnd1YXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5awM-00007z-9m; Wed, 04 Sep 2019 19:27:38 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5awE-00007Q-9T; Wed, 04 Sep 2019 19:27:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5adhNzvx7MLsuSPcTp28E0I55yLIESoO5DX3VhZdbMU=; b=qtc5LbctjphI+AJjJ6stKmTa0
 xNnEpdebaOfkucb5rdlUgKy7r8Nad6xO3py+EvEBq9L/4aUqdbUQ0lC/l57zZSzLUzW/ZWxLV7tnd
 CNx6C9dO4G2LucExzDMd6tYvy1PdsMA1H6rT3xDSUdJTso2TIayDmcdfsIQxOoCL/0hDg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1i5awA-0000Jc-T1; Wed, 04 Sep 2019 19:27:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 1DB5B2742B45; Wed,  4 Sep 2019 20:27:26 +0100 (BST)
Date: Wed, 4 Sep 2019 20:27:26 +0100
From: Mark Brown <broonie@kernel.org>
To: khilman@baylibre.com, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6
 offline, 1 untried/unknown (next-20190904)
Message-ID: <20190904192725.GI4348@sirena.co.uk>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
X-Cookie: Help fight continental drift.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_122730_338435_41FB00D6 
X-CRM114-Status: UNSURE (   8.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============3322658247250989540=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============3322658247250989540==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="9s922KAXlWjPfK/Q"
Content-Disposition: inline


--9s922KAXlWjPfK/Q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 04, 2019 at 12:05:57PM -0700, kernelci.org bot wrote:

Since 30th August -next fails to boot with no kernel output on
mt7622-rfb1:

> arm64:
>     defconfig:
>         gcc-8:
>             mt7622-rfb1: 1 failed lab
>=20
>     defconfig+CONFIG_RANDOMIZE_BASE=3Dy:
>         gcc-8:
>             mt7622-rfb1: 1 failed lab

There's logging from ATF so it looks like we try to boot the kernel:

Starting kernel ...

[ATF][    36.199793]save kernel info
[ATF][    36.202824]Kernel_EL2
[ATF][    36.205580]Kernel is 64Bit
[ATF][    36.208768]pc=3D0x40080000, r0=3D0x5cf48000, r1=3D0x0
INFO:    BL3-1: Preparing for EL3 exit to normal world, Kernel
INFO:    BL3-1: Next image address =3D 0x40080000
INFO:    BL3-1: Next image spsr =3D 0x3c9
[ATF][    36.227037]el3_exit

but no output.  More details including full logs at:

	https://kernelci.org/boot/id/5d6fe70059b514164ef1224d/
	https://kernelci.org/boot/id/5d6fe6e259b514164ef12243/

--9s922KAXlWjPfK/Q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1wEB0ACgkQJNaLcl1U
h9A/4Af9GyL4+48PsNu8OiRt5GxGu5j54SLyM+A6ZS8iZg4ZfTl875Dr4lp6qW67
gieIx4Zkgx8KzsSECl+W5mTUfW3LCOg79/AHTQCtsSs8CaD+fUSFe8DdrpdzyGeg
hLUsr4T56uaUUYO4KXCFaqzme5tL24bCiVTboGCmlVzLTlMDpBlQkIlDrATOUya2
liE9XHl2lpE3vCqExcRvTrhkfPRa8Gdhan34Sp/5HkJ0Yu+YyH90ERr+QyaMay2j
3/Rl+PT77tEzw1QWFY6a/1a4eoJBtVqron40suPFIEJgQBdRasFJHQjPlUyVSlAm
xIq7HDgZqAWzPgxgTm3nHuAtJluwbg==
=tqM1
-----END PGP SIGNATURE-----

--9s922KAXlWjPfK/Q--


--===============3322658247250989540==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3322658247250989540==--

