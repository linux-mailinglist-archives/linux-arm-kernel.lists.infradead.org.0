Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2286E3C08
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 21:32:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vUwatGc05ywnTBnwd7T6d7EFMx2YBuuw0FZq2z1FGJ8=; b=LluMi7ooTFd9+oLkQ1Q3ZOPWL
	JDR+AtDyht/crhc83InmvZMXApgGMdi9l1ViCbwk8KKZnCDjqTjhyMZCUx9NDL26RIyUNalfB2Mie
	WfFuIEWJJZL53jR+rw9zBYnM6tmHj+PJSZNRAqiyqhxyrNMaJ2rwQ1/b8zehMsudNUNoQQx5ED3pY
	X4NIqXD0OvrlOuBz8wWoFZuUo93+41U0MdZdMStipsd6/TFhoYq8oKrq0DQn9GhdSn9bR1omE6k50
	734Y2E5uvuLreMN5dcVDE+lRy9hPWVP91Hk352yfp9OL46COJWvjiT9z7yUfrV80VyhLSpXHEDa+Z
	odxDFYGvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNiqc-0000p0-PJ; Thu, 24 Oct 2019 19:32:38 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNiqT-0000oe-Db
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 19:32:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vttDbr1v3prfmmWDLzJK+9NKCnOd94v+/MHN5g7eafo=; b=CbE96/yh2YdFVA3lDo3rtgUW1
 1nKGHL5oUytt+gNKSOzQltYdAVrbAYGCVdJRDWR5ElYjyGcNuSfoi39rOSctuCSd82zqjizgevvl/
 RItWIKeeCoaAlflHirdSRmTem7K9x/GW5JqAO0MdF/ne4ysAJoQm40sjHSG8N3Yunv5xU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iNiqP-0003zz-Rk; Thu, 24 Oct 2019 19:32:25 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 55273274293C; Thu, 24 Oct 2019 20:32:25 +0100 (BST)
Date: Thu, 24 Oct 2019 20:32:25 +0100
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Re: [PATCH] spi: Fix NULL pointer when setting SPI_CS_HIGH for GPIO CS
Message-ID: <20191024193225.GM46373@sirena.co.uk>
References: <20191024141309.22434-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20191024141309.22434-1-gregory.clement@bootlin.com>
X-Cookie: Filmed before a live audience.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_123229_458893_D85C2D4F 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 "kernelci.org bot" <bot@kernelci.org>, stable@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-spi@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============4521220190545424073=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4521220190545424073==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="0+35XlDF45POFHfm"
Content-Disposition: inline


--0+35XlDF45POFHfm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 24, 2019 at 04:13:09PM +0200, Gregory CLEMENT wrote:
> Even if the flag use_gpio_descriptors is set, it is possible that
> cs_gpiods was not allocated, which leads to a kernel crash:
>=20
> Unable to handle kernel NULL pointer dereference at virtual address 00000=
000
> pgd =3D (ptrval)
> [00000000] *pgd=3D00000000
> Internal error: Oops: 5 [#1] ARM
> Modules linked in:
> CPU: 0 PID: 1 Comm: swapper Tainted: G        W         5.4.0-rc3 #1
> Hardware name: NVIDIA Tegra SoC (Flattened Device Tree)
> PC is at of_register_spi_device+0x20c/0x38c
> LR is at __of_find_property+0x3c/0x60
> pc : [<c09b45dc>]    lr : [<c0c47a98>]    psr: 20000013

Please think hard before including complete backtraces in upstream
reports, they are very large and contain almost no useful information
relative to their size so often obscure the relevant content in your
message. If part of the backtrace is usefully illustrative then it's
usually better to pull out the relevant sections.

--0+35XlDF45POFHfm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl2x/EgACgkQJNaLcl1U
h9Dc+Qf7BOBELW73o6MOZxD5Uq2/Eahp26z5rN7PMc+EvRwda/BzHGhUTsTrotmX
ppdm6tsBosW3dH8P6tbwXIIJHO11BO4ma/pbO5ZZloEqeo3Zvxt89+AxZD4roa26
GEnDMWLNn2Y3L0YENJzNelC3RMBY7sIv7wMgiGZR7qadTFrx6Y3v+VLAEEEsSnA6
f3AmuiyCWtiNyuhi1gIst/hGeDzLyNOGVJuNfH7SV4RbQVN51k9Cam5JEaBB6NjK
PTKDGt0u2CGaKQxTZRHb8al+SznFqEk0eKU06KEWpdcPJAOPW24cLVXl2YAb6b2l
yg1Wz4gE+9D908qKFUl3e+fimC6N+A==
=pES0
-----END PGP SIGNATURE-----

--0+35XlDF45POFHfm--


--===============4521220190545424073==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4521220190545424073==--

