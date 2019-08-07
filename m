Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54C984FEB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 17:30:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tbdth6dQY5L1trMG3ZHyMZZZYQwS0jEzo+HBl39nB8A=; b=JKfINaJmFFOBGLs1qcH/wCvrF
	ggkkUfpsHuzugAdRA2qG7Vecvae+1LTtnEitmW0/mm0uk3E2m0BMB+KR0kJxewqmJX4M6VzW8l1qu
	LcBHKXA5s4L7B2k2nNxaB5YmSAXv5MVwezRpUm8f/p/e3H3NrGUtv59N9ElaQBxe/+TCketlT1/gD
	2rW72bAcVfreWdrkPoJHYmWCB9Olv64D9wKN9oOiVANidrgC90/f0SdPkqc3X2s+JrUrS57zRXil+
	jYr0ODH6u+PgfjxoloRFM1SfmeYXACrWqJZtTA+k2r7kBXdS4RFm0vFhkYJhHVfR4MdkgLgdgWKBB
	g3DLK4FKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNsz-0003gm-Ki; Wed, 07 Aug 2019 15:29:57 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNsl-0003gG-Et
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 15:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bCRBD+ws/scZ/xPjLUvl9m8PcZB7nv/LjfC77vlJJIo=; b=aLUr6Szeiit55eqDta9WcgU70
 MP8+An5c3GFLEphur2OLYyPsGoqVTgqN/22wkVFQqN4y4mlRKhCjURgAsdaG88pT6niV7TwPCD58g
 KiYo51gRSFNhHJhchpbXylaehrJVWhNugY3mB/c8kzgpY/fW/WZ9NWAUv5z9B1iFrCZqI=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1hvNse-000898-9c; Wed, 07 Aug 2019 15:29:36 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 149B32742B9E; Wed,  7 Aug 2019 16:29:35 +0100 (BST)
Date: Wed, 7 Aug 2019 16:29:34 +0100
From: Mark Brown <broonie@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: Disable big endian builds with clang
Message-ID: <20190807152934.GF4048@sirena.co.uk>
References: <20190806183918.41078-1-broonie@kernel.org>
 <20190807130111.GE54191@lakrids.cambridge.arm.com>
 <20190807130527.GD4048@sirena.co.uk>
 <20190807135618.GF54191@lakrids.cambridge.arm.com>
MIME-Version: 1.0
In-Reply-To: <20190807135618.GF54191@lakrids.cambridge.arm.com>
X-Cookie: Dammit Jim, I'm an actor, not a doctor.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_082943_496787_21BE0F11 
X-CRM114-Status: GOOD (  19.35  )
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
 Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com,
 Matt Hart <matthew.hart@linaro.org>,
 Nathan Chancellor <natechancellor@gmail.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============2386724968348737867=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2386724968348737867==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="juZjCTNxrMaZdGZC"
Content-Disposition: inline


--juZjCTNxrMaZdGZC
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 07, 2019 at 02:56:19PM +0100, Mark Rutland wrote:
> On Wed, Aug 07, 2019 at 02:05:27PM +0100, Mark Brown wrote:

> > As far as I know this has been broken for as long as we tried building
> > and booting big endian kernels in clang.  The compile works fine, it's
> > just that the resulting binary doesn't seem to be working so well.

> I've just had a go, and it works for me. Log below from a BE busybox,
> but I also have a BE buildroot filesystem working.

Copying Matt who can actually look at the jobs getting submitted.  The
rootfs we're using should be:

	https://storage.kernelci.org/images/rootfs/buildroot/arm64be/

> From your log, it looks like the kernel is trying to launch init via
> binfmt_misc, using binfmt-464c. It could be that the file is corrupted
> somehow, or something's going wrong with binfmt. I haven't delved into
> that.

You can see the exact image being used in the reports I linked:

	https://storage.kernelci.org/next/master/next-20190730/arm64/defconfig+CONFIG_CPU_BIG_ENDIAN=y/clang-8/Image

> Are you using the right filesystem (and is the kernel definitely
> identifying itself as BE in the Image header flags)?

I'm assured that we're using the same rootfs as the GCC BE builds, sadly
neither of the labs that has boards configured to allow BE boots gives
enough access for me to verify that personally.

> This could be a dynamic loader issue -- my busybox is statically linked,
> and I'm not sure about my buildroot filesystem.

> This could be platform-specific; I'm booting under a KVM/QEMU VM on
> ThunderX2, using virtio-block for storage.

It's failing on every single platform we're trying, that's not as many
as it should be but it's still a bunch of physical platforms and like I
say the variable is the compiler.  A platform issue that only manifests
in the handover to userspace on multiple boards doesn't seem like the
most likely avenue.

--juZjCTNxrMaZdGZC
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1K7l4ACgkQJNaLcl1U
h9CKagf/cBrKegdqKNh8Jh9IRRR+Evij2tOiiN/TxuVlCZlXNCkr0vxbmt+93LqQ
g2y3lUacYvI/4BMMIkAAZ09vXiYcb1EJcvygYLzShP/k8xeHvuFNhNkjbUN+OjGM
Dlu2Q3xjowaalunkNXcfcA5VxV7Gux1u9CcRifa8o3BqKGWS7KFK6ZAkUS1qz1KV
x1GCcxPMqw/HJuzTl2NZ+dhSN1Jptwc2oNAMJoqjvOV5KAjEf9aVAKszgAYcNkai
rA7hdxRQm/6pwyoIe+ixWd64YmgWq7+qgC2sMG6S4j9WoTAUYENssjzyxRBIWouY
rePfXb1z7ZRVZHvDWc0n9QGrgBjIXg==
=hem4
-----END PGP SIGNATURE-----

--juZjCTNxrMaZdGZC--


--===============2386724968348737867==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2386724968348737867==--

