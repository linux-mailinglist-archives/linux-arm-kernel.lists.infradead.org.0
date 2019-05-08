Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B11016FA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 05:47:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YCuMI5NpwVnnCh79E88dgOGKEvFnJSL8SiBg4I2M6TM=; b=kbmj59uXQ0flZ3HNbyKiAv4Ls
	d/kbGqYqzbR7+2mxdUK1oRX0gQJEcdXVPmErS0W/xsAgt20SESw8BmHvhAOHLl3NOY2MV7E3mMWg8
	wSEe2BYXoJyaRAg0ToYTKEZE2LDM4wk8mr0nRL5tLVlh4qhHZAOk/LP3h9AjuKYIBKjNBKNY8Z8Vq
	wKYUIjQWv3O7J81if3hHICsnQNtUkF80CHgPVFO0PPi7WCkbWSmSSxsP2GhFXMKyPI9ENBD2xxS28
	VYLxLxsg9sdcX6DoleUj8eRqXqHG1hTG/T+uoW9L6zvDhSNl8VU09MF5qSnMNYZ751nPR4ygSZ9Cz
	k2hewHxHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODYT-0002Pl-AA; Wed, 08 May 2019 03:47:41 +0000
Received: from ozlabs.org ([203.11.71.1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODYL-0002OW-Kk
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 03:47:35 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 44zMqh2nGWz9s4V;
 Wed,  8 May 2019 13:47:28 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1557287248;
 bh=R1RqJ1ImOmpys8/DGBYwmYPTH8oCYtZjVOwBbuB7jEg=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=rcQmVEaiSda2Xu6lLzFzzHBWm6Ly4ljbqFB9dSb34KN7oZCP4G4cInaXdIkaecogB
 Ec35BSUvBnsBEnx59nCKjtaz4bVOYFxfbKQ4ZDXOGKqlX/RgiV58nfqTqphvckmyir
 MfYuZtVsAwJMYJpAPy8DAUZia/Xxyjx5HARPiD0cVejOWBKPRit7V5UFDDssu5JpzH
 pt+dr9vfpOMrqaRs8CT/17yqmoBYJVp6KDuElRuMrjokxP9SjtgXEkCEenrA1mq76W
 w+s55lXw+BxS205Uv2mgZyjlKxFehkQ0O40iAtmwBxw55WGFadFnlVta2Wqhjat1ra
 lcmuau1aiFlHQ==
Date: Wed, 8 May 2019 13:47:27 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: manual merge of the staging tree with the imx-mxs tree
Message-ID: <20190508134727.7ca1e390@canb.auug.org.au>
In-Reply-To: <20190412144921.3a152478@canb.auug.org.au>
References: <20190412144921.3a152478@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_204734_048527_011BDAFE 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [203.11.71.1 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg KH <greg@kroah.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jonathan =?UTF-8?B?TmV1c2Now6Rm?= =?UTF-8?B?ZXI=?= <j.neuschaefer@gmx.net>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 Robert Yang <decatf@gmail.com>, Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Shawn Guo <shawn.guo@linaro.org>
Content-Type: multipart/mixed; boundary="===============3193948733833077230=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============3193948733833077230==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/1V1pV/zWcmIrgm4TFnFSdey"; protocol="application/pgp-signature"

--Sig_/1V1pV/zWcmIrgm4TFnFSdey
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Fri, 12 Apr 2019 14:49:21 +1000 Stephen Rothwell <sfr@canb.auug.org.au> =
wrote:
>
> Today's linux-next merge of the staging tree got a conflict in:
>=20
>   Documentation/devicetree/bindings/vendor-prefixes.txt
>=20
> between commit:
>=20
>   189733b0a7e4 ("dt-bindings: Add vendor prefix for Rakuten Kobo, Inc.")
>=20
> from the imx-mxs tree and commit:
>=20
>   2e5cee6c7622 ("dt-bindings: Add vendor prefix for Kionix, Inc.")
>=20
> from the staging tree.
>=20
> I fixed it up (see below) and can carry the fix as necessary. This
> is now fixed as far as linux-next is concerned, but any non trivial
> conflicts should be mentioned to your upstream maintainer when your tree
> is submitted for merging.  You may also want to consider cooperating
> with the maintainer of the conflicting tree to minimise any particularly
> complex conflicts.
>=20
> --=20
> Cheers,
> Stephen Rothwell
>=20
> diff --cc Documentation/devicetree/bindings/vendor-prefixes.txt
> index 5f2b185a04e6,93753f447c20..000000000000
> --- a/Documentation/devicetree/bindings/vendor-prefixes.txt
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
> @@@ -211,7 -210,7 +211,8 @@@ kiebackpeter    Kieback & Peter Gmb
>   kinetic Kinetic Technologies
>   kingdisplay	King & Display Technology Co., Ltd.
>   kingnovel	Kingnovel Technology Co., Ltd.
> + kionix	Kionix, Inc.
>  +kobo	Rakuten Kobo Inc.
>   koe	Kaohsiung Opto-Electronics Inc.
>   kosagi	Sutajio Ko-Usagi PTE Ltd.
>   kyo	Kyocera Corporation

This is now a conflict between the arm-soc tree and Linus' tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/1V1pV/zWcmIrgm4TFnFSdey
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzSUU8ACgkQAVBC80lX
0GwTPAf/cEVh8RWOnK9RS7qYoOibc+Ud8w21cx8GoOiArXG95S1BgP+HUekZMS/m
gy13w1VEqM1L391i+d/lrBuEQR/D5dQCXkIF6DzjBqmSUZ2X4D6y9IIFjXde5+21
Fq8F0bShBq8XI4zKbaUGT5BpbEEq/7Z+PU63tPL5jTuIdoA4666mMRUFPhcCoHj4
ajRQORxZsEdLv6MsTGQ6LLnTcfzbPMKT/B2M/aPFp8NolcHIvSt2lk+HjOeD5MJo
ltA1BMt6Tgwguq44o9IZIMGrfMwVYZNm3fY55zc8+jINsj+Ysb7gsLGAjwbEvQHB
PSrvQNm/09DAs+ziVUOhB3/uGroe9A==
=cTIR
-----END PGP SIGNATURE-----

--Sig_/1V1pV/zWcmIrgm4TFnFSdey--


--===============3193948733833077230==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============3193948733833077230==--

