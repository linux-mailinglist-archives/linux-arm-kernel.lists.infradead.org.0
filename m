Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D99441AE69
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 01:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9ANGdWmXQrdO/Qiauy35XhgTAhAyxc2SzyWnCuileiA=; b=sK+ENzI3+ynUcrygH5+cHaU4J
	bigoXiP66oQZtZ3mPdlLJ80DuMt+d/tfe2WsUqQXfT04uU2DaAZcM9MlJISYbca857fdJItqVfAhm
	6uehaCDIa/bpi4RMF6MD3LGMl+aFoINXfo3f33XpuBh6TWbCDSM9z8siGtgJbILQY+5v2nZouRScT
	PAqo/wkK11D5zbb6n2dkAoyrbcYcJdX9y5feR7zTXnUer6JBK9dSWgLhfl6rZzSnLg8B+JMW7bArp
	cHtLVYoGg3ikqtJ2XyuzGSWjfXmoTPq6pRaOob1PMS/xbFyC8mNwMPJJXSdWhtbiKq2PQ6UBODMM5
	vMeC3HimQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPxtT-0002we-CA; Sun, 12 May 2019 23:28:35 +0000
Received: from bilbo.ozlabs.org ([2401:3900:2:1::2] helo=ozlabs.org)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPxtL-0002ve-PC
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 23:28:29 +0000
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by mail.ozlabs.org (Postfix) with ESMTPSA id 452KrG1Hc0z9s6w;
 Mon, 13 May 2019 09:28:14 +1000 (AEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=canb.auug.org.au;
 s=201702; t=1557703698;
 bh=ATL4kHU382WX2z7ErWNR+vsPla44tUhrsoFXnbXw2Y0=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cr4qdUKrwnwRXUpL3BoLaRJnZZ5FdthHRGxDrERn6sxYAdpbik9HKok9T97dRU+gc
 1VKWXDLvsjROpY4ltlIBLN467BG0yaqhy8yH/kV+5YuuHj9m1XF6lDu5G3wrXhMxtP
 TTqWEv5BizCJbP/8ncjynWtKJ48XvXxqEyIq/C3SmtsZrLOBG5xntJm9vLXjpbgr0d
 A6Z/2QexU79acLgesUQ5ikzgllSy7EiRItm5/78u1m17lLW1IUCJ0BKt6T2u1AtYVO
 skxi4ZUHN22lbtt2W2PLDqEGEM2rWoIc5PrQhXPST5e7CUnQBvJGtQPxC/oGBvT4RU
 WAN4r0Y4i1NCg==
Date: Mon, 13 May 2019 09:28:06 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Olof Johansson <olof@lixom.net>, Arnd Bergmann <arnd@arndb.de>, ARM
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: linux-next: manual merge of the input tree with the arm-soc tree
Message-ID: <20190513092756.0eb03c72@canb.auug.org.au>
In-Reply-To: <20190501134054.4271616e@canb.auug.org.au>
References: <20190501134054.4271616e@canb.auug.org.au>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_162828_307613_22C0919B 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.4 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2401:3900:2:1:0:0:0:2 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Next Mailing List <linux-next@vger.kernel.org>,
 =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Jeff LaBundy <jeff@labundy.com>
Content-Type: multipart/mixed; boundary="===============7113961194153549302=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--===============7113961194153549302==
Content-Type: multipart/signed; micalg=pgp-sha256;
 boundary="Sig_/1Ut8vlM/tSGq=IsIjYTN6gG"; protocol="application/pgp-signature"

--Sig_/1Ut8vlM/tSGq=IsIjYTN6gG
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: quoted-printable

Hi all,

On Wed, 1 May 2019 13:40:54 +1000 Stephen Rothwell <sfr@canb.auug.org.au> w=
rote:
>
> Today's linux-next merge of the input tree got a conflict in:
>=20
>   Documentation/devicetree/bindings/vendor-prefixes.txt
>=20
> between commit:
>=20
>   2c98d9e47533 ("dt-bindings: vendor-prefixes: add AZW")
>=20
> from the arm-soc tree and commit:
>=20
>   7b5bb55d0dad ("Input: add support for Azoteq IQS550/572/525")
>=20
> from the input tree.
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
> index 5f2b185a04e6,51f99549161e..000000000000
> --- a/Documentation/devicetree/bindings/vendor-prefixes.txt
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
> @@@ -54,7 -53,7 +54,8 @@@ avic	Shanghai AVIC Optoelectronics Co.
>   avnet	Avnet, Inc.
>   axentia	Axentia Technologies AB
>   axis	Axis Communications AB
> + azoteq	Azoteq (Pty) Ltd
>  +azw     Shenzhen AZW Technology Co., Ltd.
>   bananapi BIPAI KEJI LIMITED
>   bhf	Beckhoff Automation GmbH & Co. KG
>   bitmain	Bitmain Technologies

Thie is now a conflict between the arm-soc tree and Linus' tree.

--=20
Cheers,
Stephen Rothwell

--Sig_/1Ut8vlM/tSGq=IsIjYTN6gG
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAlzYrAYACgkQAVBC80lX
0GxLUgf/TPvpX9Qyf51e5o+3yuVhTPB/uirCiqJYU1bRIO1fKDPYvNJR9p0jvYQk
UKK0tj7AbhRaAsHumme0mXwU5fc5QYX0/XpQrtL/CVHxk7ua1FmtFIwDcI3bFY48
Tub91jqGMQSJtg8KdPHC5vs/B/6xf/YmLO6PBItiaQtiktN2ZAI3B4erVt4lij55
+/Yx3J5Qg735hUCpAM1FaK3swlHGCIOgl9c20xHlu75u59osFIpEAqeaD1tCHrqi
9sPGAFX8y/VtDfbPtVt1PS6TXLAttDWimk+MbntOJ7EctgbVcVZ1Ayf4A6nIZ7ou
RzsPGMCTB930djEoKWqmEKMVRs4J1g==
=JkKI
-----END PGP SIGNATURE-----

--Sig_/1Ut8vlM/tSGq=IsIjYTN6gG--


--===============7113961194153549302==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============7113961194153549302==--

