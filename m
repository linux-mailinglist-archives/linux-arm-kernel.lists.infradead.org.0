Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42E7A817EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 13:12:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M4Q6FEmqtk7lfk0935RhBq4okERHtBu1GCfNVpOL2F4=; b=omjs9eSdX7SPQiE9qwAx/dsGj
	j22Ls0A3qbxKRkG2MytC4TgzqaIPGhDe85ni7CpWLQ+8WoLdvfYXsHjEkNgoHPzlbEGzhrAGPJGuO
	KuoH+TK8vF3JJup3RRdFNFmKnkpaDHZUIWX4hCIvcyipoN5fKHTMG5gAIfh/Whj7yTMe3zLpLW5q7
	m39geC0WR4xyEIj9iwr5MWRIdm4I0ND9xiFL+x6Nn5ItAUqqN9+3Hc7YBfHkn/ajvz0YeVGy4HVhL
	jsFnJb4tviq7B/bwxuiWjrx+A4fDaeB+VvkgId460aCtPJLgOhZbaY8Td8UWK0TvKteTR6xY4VzbJ
	oXAE9TGvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huav1-0005C2-EM; Mon, 05 Aug 2019 11:12:47 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huauT-0004xP-Fu
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 11:12:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=K4Aat8AT+6tYW8UP9Bp0lYfZhLOGe429fHYIBSshOXA=; b=i+hQmhPyAnXuKrxgrdyNGvu5Z
 rdXYA9jTPHqEhzd0yklVGCUut72A3c3rjaKnylc58wr0k/GyqUaGyC23VXXP07OGiEKKcyIZvkUzx
 vfFVK1K7F6hftZ+zGhPbDefsvqhjSDu2jN91D/IKG/CydHqgNUjUglKribqQ3cuYiYiUY=;
Received: from ypsilon.sirena.org.uk ([2001:470:1f1d:6b5::7])
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1huauM-0008IA-Rb; Mon, 05 Aug 2019 11:12:06 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id C258A2742D06; Mon,  5 Aug 2019 12:12:05 +0100 (BST)
Date: Mon, 5 Aug 2019 12:12:05 +0100
From: Mark Brown <broonie@kernel.org>
To: Alex Deucher <alexander.deucher@amd.com>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>,
 David Zhou <David1.Zhou@amd.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Tao Zhou <tao.zhou1@amd.com>,
 Dennis Li <dennis.li@amd.com>
Subject: Re: next/master build: 230 builds: 5 failed, 225 passed, 6 errors,
 1344 warnings (next-20190805)
Message-ID: <20190805111205.GB6432@sirena.org.uk>
References: <5d47f990.1c69fb81.a5d88.ee1f@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d47f990.1c69fb81.a5d88.ee1f@mx.google.com>
X-Cookie: Place stamp here.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_041213_528763_7712AA9A 
X-CRM114-Status: UNSURE (   6.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-next@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============1596580349297052434=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1596580349297052434==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="qcHopEYAB45HaUaB"
Content-Disposition: inline


--qcHopEYAB45HaUaB
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Aug 05, 2019 at 02:40:32AM -0700, kernelci.org bot wrote:

Today's -next fails to build an arm allmodconfig due to:

> allmodconfig (arm, gcc-8) =E2=80=94 FAIL, 2 errors, 16 warnings, 0 sectio=
n mismatches
>=20
> Errors:
>     drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:279:9: error: implicit dec=
laration of function 'readq'; did you mean 'readb'? [-Werror=3Dimplicit-fun=
ction-declaration]
>     drivers/gpu/drm/amd/amdgpu/amdgpu_device.c:298:3: error: implicit dec=
laration of function 'writeq'; did you mean 'writeb'? [-Werror=3Dimplicit-f=
unction-declaration]

due to 4fa1c6a679bb0 (drm/amdgpu: add RREG64/WREG64(_PCIE) operations)
which introduces use of readq() and writeq().

--qcHopEYAB45HaUaB
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1IDwQACgkQJNaLcl1U
h9ARMQf8CpKTcEPj9AoJAXRS0EO8wCrctRVwqRqJ4Vb13LXHkmNV9a15IgiKoEM7
OHHTwl/t/mBlajYsyoghxsgB0aIXckM5rJ77d+GEFQln4rkjx3ZmxFwZKhUNNbcE
3Jn5jYj3B37pbnzB7aYJK1ESO9lKOHY45ZcywGG+cvgqWuRHu8jdCuQXE3xFbNBM
CdDJh3JK5ihmP97JCGSUvGZCJS8StLHsLzJ0G2/K7wCYM86N3NxIYKeDuwYtXgna
tWl6ZwwsnV70LLjGueAHIUC3kk/2vi9UHpjLpUr8PZI9f3WKJZfibW+7JqqYgp/5
S6J7mggMrr4WljGwRgLwbuKFDmPKkw==
=mwnn
-----END PGP SIGNATURE-----

--qcHopEYAB45HaUaB--


--===============1596580349297052434==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1596580349297052434==--

