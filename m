Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA4BB12A8B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 18:45:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KfIUfhYjUZploS3Rj43qu2mKSPavbtlLn35leNwsmKw=; b=Np/S7e+YPPbm+y5r4IMo9ioSW
	VZLueus8TphsGaHuvuXP6ug45rSXsPQZKOINjdBeBunEeAHNO9Z0wSMGbph3kqnPiNwOhwZWrI2Qq
	qSb3Is2H/rnD5jmkPEfmd9ASG5QHrE36xcu0IUagl2BxhwoT0reK3gaPJykihglCBm8CvIMiGTuZq
	FDybLS1Z8WOjcM9inp1SCxNZIRMDJp0Gp7GKKO21Fo0rhjvFmWcEQENFS6F7/0MthYIfW8MT2w8hv
	L4Akxai2ilby84BkXZaQoc6FvM/qC/nsq+ESXQ4RK88Y1PdhAXVndEVWgieZbv4V3vuwWufKsg9yF
	fp7frrHvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikAjB-0005vI-FR; Wed, 25 Dec 2019 17:45:45 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikAiy-0005ut-LE
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Dec 2019 17:45:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sqZ9HRtCdnjD8DXcSEjuElmOGdM4XxRfBfU9GjfcdkE=; b=xh2L9IAY8F6aToclrkfPNsiKO
 R8JsvHw7bcWKqp0cboXhHjwtyrucBbi1vATkutReqRA4LzuzYDlH02xLmnb8ciFJWajJdZIgafPTZ
 U/yVAsVzL3fUesDItZipgPIS4Ije67vI/Ktfkce9tGLz6u/jKaG116BPMHbDjrM8DMOXU=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ikAiu-0001hl-Qx; Wed, 25 Dec 2019 17:45:28 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 14D67D01A22; Wed, 25 Dec 2019 17:45:27 +0000 (GMT)
Date: Wed, 25 Dec 2019 17:45:27 +0000
From: Mark Brown <broonie@kernel.org>
To: =?utf-8?B?amVmZl9jaGFuZyjlvLXkuJbkvbMp?= <jeff_chang@richtek.com>
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20191225174527.GB27497@sirena.org.uk>
References: <1576836934-5370-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20191220121152.GC4790@sirena.org.uk>
 <7a9bcf5d414c4a74ae8e101c54c9e46f@ex1.rt.l>
 <20191224235145.GA27497@sirena.org.uk>
 <938f562e322849328d5a7782b2c1de97@ex1.rt.l>
MIME-Version: 1.0
In-Reply-To: <938f562e322849328d5a7782b2c1de97@ex1.rt.l>
X-Cookie: I have many CHARTS and DIAGRAMS..
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191225_094533_286031_F1216CA8 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tiwai@suse.com" <tiwai@suse.com>, "lgirdwood@gmail.com" <lgirdwood@gmail.com>,
 Jeff Chang <richtek.jeff.chang@gmail.com>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "perex@perex.cz" <perex@perex.cz>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============5906820695761849196=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5906820695761849196==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="IrhDeMKUP4DT/M7F"
Content-Disposition: inline


--IrhDeMKUP4DT/M7F
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Dec 25, 2019 at 01:45:43AM +0000, jeff_chang(=E5=BC=B5=E4=B8=96=E4=
=BD=B3) wrote:

> This is adau1997 driver on upstream branch

> @ sound/soc/codecs/adau1997.c

> // SPDX-License-Identifier: GPL-2.0-only
> /*
>  * ADAU1977/ADAU1978/ADAU1979 driver

This is the result of an automatic conversion which wasn't
reviewed, it's not ideal.

> It seems not whole comment use c++. Only first line at source file, Right?

Please do it like this:

// SPDX-License-Identifier: GPL-2.0-only
//
// ADAU1977/ADAU1978/ADAU1979 driver

--IrhDeMKUP4DT/M7F
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4DoDMACgkQJNaLcl1U
h9Dp2Af/aU0nU+b2UxZTkVGZHR3/l8NBevpw5Tzd3SGjZgaPfnLnnupSxFRHbMJh
AYQybA/K1pTWIJsLSNcPjn0x/YstXMil9in42PqCANDLY6qQxi1nHQpqWo26S2+O
u6x9f+rSrJA5zzbjVcbxvBFaEjUtl/O7DTfvf6LNKZ2Nr6DtIlO4vyX8Q5RjhtG8
zvotyES221ovg8TpQ9uv140oUlNtxDyBzstcRQhNXK7gaKqTIHde082f7uqmTspi
xdwhz8EVLpe2LDDYLO5lFH5TKDeektnfhFfelKj26AJ3aFj7Qfn7faKPSNJR3Udy
kXcrZVVgsxfIAjdAGGxzwXGoqw7gLQ==
=YJiP
-----END PGP SIGNATURE-----

--IrhDeMKUP4DT/M7F--


--===============5906820695761849196==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5906820695761849196==--

