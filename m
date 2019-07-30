Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2037A894
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 14:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nyhCgCa/WWBn1DoA8rxsHtNKI44E6nTafa/Js0qD7vg=; b=h8u4EWgl7yLFzqmDVW8Z3GysD
	02wPo3Q41aGwO/OkngYOyP+88Km4aPjjUotAI1MoZqFSfpOWwRbgwzJ0syr3lt96y7sf9QP6reIAX
	eDu2ORBl1Ad+zb+y/LiBdVRPxTH2PSy8cvH/lI7jtt6lGDvIUzG+NFG1tp42Sr5XrnClg2dj+Yjuy
	ZH6cSJa5MugH3ZKEPiYN8A6+iPmbv30+4AGghZ319ykw8Pv3gQDWwOV5R3j3oz3HcV81l9YNvXwXF
	LK/B0caBd0S42Bb89kjQgVK8I6FuKKuin2tKzjKbKjcwwjL5HVf7oI0srHmvDKXrBluGzI/R0+CoT
	aj/Wqp6Sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsRL1-0006VZ-Sn; Tue, 30 Jul 2019 12:34:44 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsRKo-0006V0-PH
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 12:34:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=D2YPQJSssFXG6XJhGCQI9LtrGRYEbm9Vq4RoLp19BNU=; b=rHu2BycLd+YYaFD2GZaq7O3Et
 jHoKHhun6/D56t5jU2t8Omk80fN8N1YT451NzhorKaNVhIVSUxc+oswCEnESSIxvKvfipUg4/CmC9
 4ul/BXAb+qPSQrXBvaxhiYElXkXup2Ti43+8SXJFU2OVk8eyiw2JHLabnsnqDAAB+tO5Y=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hsRKk-0007Qu-Ca; Tue, 30 Jul 2019 12:34:26 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 8BEEC2742D06; Tue, 30 Jul 2019 13:34:25 +0100 (BST)
Date: Tue, 30 Jul 2019 13:34:25 +0100
From: Mark Brown <broonie@kernel.org>
To: khilman@baylibre.com, Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: next/master boot: 265 boots: 17 failed, 184 passed with 64
 offline (next-20190730)
Message-ID: <20190730123425.GB4264@sirena.org.uk>
References: <5d403574.1c69fb81.14163.65d3@mx.google.com>
MIME-Version: 1.0
In-Reply-To: <5d403574.1c69fb81.14163.65d3@mx.google.com>
X-Cookie: Times approximate.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_053430_827279_46DD0AF3 
X-CRM114-Status: UNSURE (   8.50  )
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
Cc: linux-oxnas@groups.io, linux-next@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kernel-build-reports@lists.linaro.org
Content-Type: multipart/mixed; boundary="===============4604022732605860555=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4604022732605860555==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="yEPQxsgoJgBvi8ip"
Content-Disposition: inline


--yEPQxsgoJgBvi8ip
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 30, 2019 at 05:17:56AM -0700, kernelci.org bot wrote:

> Boot Failures Detected:
>=20
> arm:
>     oxnas_v6_defconfig:
>         gcc-8:
>             ox820-cloudengines-pogoplug-series-3: 1 failed lab

For some time now -next and mainline have been failing to boot on
Pogoplug 3 with the oxnas_v6_defconfig, the kernel seems to start fine
but fails to parse the ramdisk it's passed:

08:50:02.086589  <6>[    7.719854] IP-Config: Complete:
08:50:02.087213  <6>[    7.723330]      device=3Deth0, hwaddr=3D0a:a2:89:27=
:10:1b, ipaddr=3D10.201.4.144, mask=3D255.255.0.0, gw=3D10.201.0.1
08:50:02.087413  <6>[    7.733409]      host=3D10.201.4.144, domain=3D, nis=
-domain=3D(none)
08:50:02.088056  <6>[    7.739499]      bootserver=3D10.201.1.1, rootserver=
=3D10.201.1.1, rootpath=3D
08:50:02.088248  <6>[    7.739504]      nameserver0=3D10.201.1.1
08:50:02.129966  <5>[    7.752025] RAMDISK: Couldn't find valid RAM disk im=
age starting at 0.
08:50:02.130381  <4>[    7.759616] List of all partitions:
08:50:02.131333  <4>[    7.763363] 0100           65536 ram0=20

Possibly an issue with the ramdisk getting overwritten or something?

Full details for today's -next can be seen here:

	https://kernelci.org/boot/id/5d4004bb59b51489d631b28d/

--yEPQxsgoJgBvi8ip
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl1AOVAACgkQJNaLcl1U
h9ALMgf/UsXvdF4Sayi9hNUwwm0wCOJ9dB1n8L76v9DjPI1cN8MvrF+3M3HS7M7S
6jNyB7dFoxrMILacFV4Co45NcBMF+ZgeJjPcWDHpF/vwj0XsV8d2C9aIvdLpqdVy
Jh65+wIkFnTPWhrjTzFUxAlWclv/6i7ZBBe42oC79SInfsieyNH5V1OMoO01XI7i
CyTqDXmbQL72Nmp2r5jCi/SwrC5Sh1xYWVFynDoyGVZieOr8oQOIsRyaDzqAj+nc
Zqw0nmzkVJzkBYqqSs+P4IaD5BKrWUwiofTMspxnAPXt8X5K57GfXvgswGxBNvhE
4ut4elXlKKD4+AwZAiwwAe05rE3iCA==
=+oW9
-----END PGP SIGNATURE-----

--yEPQxsgoJgBvi8ip--


--===============4604022732605860555==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4604022732605860555==--

