Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DBB161C99
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 22:08:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ir+Hv24Sqh8fhIAMro15dL3sEL5B2MjNRTKXWMRRl3A=; b=MOwjZvkNcXmv7cCwjO+Kkasr/
	eDIvKP2m3M4AU4cEllggEILX6yC/LYTvUtdUe26tIL7P9Q3384qhLBe6L13raoqHvrYhMqPx9fXQj
	wS4gg6U6EcWt3wS2C7McLLuzE12GJO89H6DsytyLBm74plLwFXlI3zHS1o9fNS1NNy3zmJ2wAWg+7
	FGuhsq4V58hR+2aaJFCQsGYnZO54eGmQ/YNc0C/+BAMlAJyUQtonEgx5au+azD1tf03Tyb3U/lkIq
	HFDT6hSpyJwEke9OLCSk0bx2JySW1ZYpQy2liwJiPJaVNHpYqEeJzpxeH6h2VJmUh0/UMwnsWC3HC
	+cKFqqEzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3ncZ-00016T-J0; Mon, 17 Feb 2020 21:08:03 +0000
Received: from bilbo.ozlabs.org ([203.11.71.1] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3ncQ-00014h-7v; Mon, 17 Feb 2020 21:07:55 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 48LxQX2r8Sz9sPK;
 Tue, 18 Feb 2020 08:07:48 +1100 (AEDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1581973670;
 bh=nxdEeK3aKrGZjzXa1VSBkCfAzQbvnzVXLQPM5aG4gSs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=SjGC7LXOH47DzIYa/wTx9kck7ihEqEtd35QbvysyleLDJEjQ5TjidZYlw4EvotXPT
 CNdW/Ie+nISOjpVQNkI/tAX84t1nI3NLRA87JI2qdzjhr/wqKoazjF/aZDzBdoFHJ/
 VKiMfeoHd21dajc8qvIXzamrO96hG4HVMc0cB+y1K2ZNaauNI5b4V8fczSfEFssmom
 bcxJ8tjrXKbUDNK3b4mJe6iMy1s4xLX80MhbQkSmuBoirvX2wJ5CXGnIT7SwXB6bhW
 Fk+hqPBEet1lc8QjqYiICsTwtN/z5HT49IFmL0HxvrL1iF1yUiIqKGhg72zcBccGxi
 ehRzhNhxUdaFw==
Date: Tue, 18 Feb 2020 08:07:43 +1100
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Jianxin Pan <jianxin.pan@amlogic.com>
Subject: Re: [PATCH] soc: amlogic: fix compile failure with
 MESON_SECURE_PM_DOMAINS & !MESON_SM
Message-ID: <20200218080743.07e58c6e@canb.auug.org.au>
In-Reply-To: <1581955933-69832-1-git-send-email-jianxin.pan@amlogic.com>
References: <1581955933-69832-1-git-send-email-jianxin.pan@amlogic.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_130754_480789_0B913356 
X-CRM114-Status: GOOD (  10.59  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: multipart/mixed; boundary="===============1614901434110918124=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============1614901434110918124==
Content-Type: multipart/signed; boundary="Sig_/PmPWq+6iWpnXtLvAov9NhcT";
 protocol="application/pgp-signature"; micalg=pgp-sha256

--Sig_/PmPWq+6iWpnXtLvAov9NhcT
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi Jianxin,

On Tue, 18 Feb 2020 00:12:13 +0800 Jianxin Pan <jianxin.pan@amlogic.com> wr=
ote:
>
> When MESON_SECURE_PM_DOMAINS & !MESON_SM, there will be compile failure:
> .../meson-secure-pwrc.o: In function `meson_secure_pwrc_on':
> .../meson-secure-pwrc.c:76: undefined reference to `meson_sm_call'
>=20
> Fix this by adding depends on MESON_SM for MESON_SECURE_PM_DOMAINS.
>=20
> Fixes: b3dde5013e13 ("soc: amlogic: Add support for Secure power domains =
controller")
>=20
> Reported-by: kbuild test robot <lkp@intel.com>
> Reported-by: patchwork-bot+linux-amlogic<patchwork-bot+linux-amlogic@kern=
el.org>
> Reported-by: Stephen Rothwell<sfr@canb.auug.org.au>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  drivers/soc/amlogic/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

I will apply that patch to linux-next today.

--=20
Cheers,
Stephen Rothwell

--Sig_/PmPWq+6iWpnXtLvAov9NhcT
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAl5LAJ8ACgkQAVBC80lX
0Gzg7Af/boLJ+i4JAZ3psBMn+NTk5UrWqeD9jIY6ZyGmw/9xma882M/tR21D0KEI
S+5mkEFT7PKNvhjUlHhshMB/nYmrPpW/EhlHou1cuNmIGDx9zotA9PJyVGAQ8LW6
J7ajzSnF/aB77dQY4r99qm+FxFZARbrqMC41P+1raM/cz2LjoK+dVW62P9qh7tce
OajY/Qs83loC/fMzdibvV4RAXHAqMThSsEKF5GOswo/d+ySN9LFn0ekSExOklBzE
K/QiBlqMU1leEM2nSgbOXdLjQzsJ87ZOLb9J0PUbP15VKgJ9IX+mTyaYwZblEsDY
k4roNmnelsEhMiyNoFhrdO0rqFWV1Q==
=2huF
-----END PGP SIGNATURE-----

--Sig_/PmPWq+6iWpnXtLvAov9NhcT--


--===============1614901434110918124==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1614901434110918124==--

