Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F19012A4C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 00:52:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=A9Q+fJtUGPqfFVNpWxEqAbmrSd6EpwAHPkFjX0l2t14=; b=RmFe2JCKm/lGQ4YjJBSOgqQYm
	zckEAyF5Cn7GW6ZlZ1b9SjKJfbi9W/Q21jHAAb+Y4pr8qeyARtzqb/RmG+OqLs5JlpR61tSvUiA7s
	eimk+BIsK4H8F2T7vwlfOnb040/FeA67f9nWaIIh2iJHwcrWdJfCIMDgQq5frp2UB9F7G9IV4uq4Q
	jLTnNOmQBOtMQQkPZs2MixcRk+TBlUggwLHGo8XRvDUrTtnkHp9H2E8w2aFEJAg7TY7mh49iN7Et9
	EGVCny6jIDKFEfJkUJJo3/TMdZChA3tLUdsZrwlyxj3M8C+w8NGRzVwI+kSFE34uyFcn0LVF0X0LQ
	iIWvDgC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijty8-0008RX-Kz; Tue, 24 Dec 2019 23:52:04 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijty1-0008RG-So
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Dec 2019 23:51:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=wVeG4o2wMLfWamY/spW73kzHgOHGF8sCfwGnxV1QecY=; b=Qqn84oRLhfEoicUtxn8KgThtq
 ekIL2BYMpXYFkDWCTQa3OkwsKbFICnezYVm5bxWhwismS5YCDkoRJSK3Gjt4AzP0ZPqHh7GgBJ90Z
 1OjPgDhJpjrvi/XL0xlQRXwvVd91R79HneYLVJhdhyFMiEm9G14s5vKQgfqcz29GZO954=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=fitzroy.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.org.uk>)
 id 1ijtxr-0007BU-Pt; Tue, 24 Dec 2019 23:51:47 +0000
Received: by fitzroy.sirena.org.uk (Postfix, from userid 1000)
 id 9EAB1D01938; Tue, 24 Dec 2019 23:51:45 +0000 (GMT)
Date: Tue, 24 Dec 2019 23:51:45 +0000
From: Mark Brown <broonie@kernel.org>
To: =?utf-8?B?amVmZl9jaGFuZyjlvLXkuJbkvbMp?= <jeff_chang@richtek.com>
Subject: Re: [PATCH] ASoC: Add MediaTek MT6660 Speaker Amp Driver
Message-ID: <20191224235145.GA27497@sirena.org.uk>
References: <1576836934-5370-1-git-send-email-richtek.jeff.chang@gmail.com>
 <20191220121152.GC4790@sirena.org.uk>
 <7a9bcf5d414c4a74ae8e101c54c9e46f@ex1.rt.l>
MIME-Version: 1.0
In-Reply-To: <7a9bcf5d414c4a74ae8e101c54c9e46f@ex1.rt.l>
X-Cookie: I have many CHARTS and DIAGRAMS..
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_155157_973498_0FF9B569 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Type: multipart/mixed; boundary="===============4114380816291409481=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4114380816291409481==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="SLDf9lqlvOQaIe6s"
Content-Disposition: inline


--SLDf9lqlvOQaIe6s
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 23, 2019 at 02:10:12AM +0000, jeff_chang(=E5=BC=B5=E4=B8=96=E4=
=BD=B3) wrote:

> --> When I check other driver at sound/soc/codecs/ folder, I just follow =
what others do.
> It seems in .h --> /* SPDX-Liencese-Identifier: GPL-2.0 */
>    In .c --> // SPDK-Liencese-Identifier: GPL-2.0

> Is it correct?

Yes, headers use C style comments and source files use C++ style.

--SLDf9lqlvOQaIe6s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl4CpI4ACgkQJNaLcl1U
h9DFVwf7Bvj8SH/istxSwNkLQ2Tr1SMqR95oagZSg6cNQ4V31uLCUSK/oD+TYaO/
4JjGHrPKLlwBKweT/nJ6nOX9/YcS1N7hvb5bOwK2dbcpsNb0BmkuDC+fy4sEXqfY
KyMmaYgN7+lkV2bYC7Y+x3FtZHs3IScuvGLk5pDp4NqXJddKTMEljQRdegtPDP3N
sAzfTrBMczPhnb320cF+yBQk5xSGCrez8FAJPlpGiaS1TkuHMr4CczYtSgO2qCKW
DYRLizqBUbJ0l8FkHW87f1YY8KdF4GKig5ihIiF8BQ4Vz7IiNTXiDC9eaayD/V71
hchxd/+izG1UhhEmm6NiVOIuyyUl9w==
=YYW7
-----END PGP SIGNATURE-----

--SLDf9lqlvOQaIe6s--


--===============4114380816291409481==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4114380816291409481==--

