Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6247D1AC7F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 15:45:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uOxU3xrV7qFRIS5ups/aUPZIKOH9Hf/S/VD8sCQuNqc=; b=F5np3vQRgDgvxiVZ8nu7hHJs5
	R1B3bD4inKWydLFPsGGLwcmZLTy7SXBv/C1POOnTcbaEKsKOmRq55Wek33dZhdWqsTi34nU93J+OD
	wZj9ZfHBIygqfo9I8UJgM9DMaLiJV45Og0zlleAF3ANy4oYQJth+S7ocENP25LoQYRaYonWUCoULk
	CWkZcFwceyIo0CgEwP3hXZYzbTuIcdqn+PH2vVe2qi8vqhyr87AUXGjpKAk+R9tNBUM2mUA5AueU+
	H//LkCVWM6bLDNngT1TlI09Yrnv6my8hI099aP1lp5YS6qrt9mKLcnAe4IqLe3QhLW8fUUVRGoiCG
	hMAPuxF5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPon4-0008SF-JG; Sun, 12 May 2019 13:45:22 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPomw-0008Rk-P9
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 13:45:16 +0000
X-Originating-IP: 109.190.253.16
Received: from localhost (unknown [109.190.253.16])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 88435FF805;
 Sun, 12 May 2019 13:45:11 +0000 (UTC)
Date: Sun, 12 May 2019 15:45:09 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 0/8] Allwinner H6 Mali GPU support
Message-ID: <20190512134509.vcduqbkmnvpkbmkb@flea>
References: <20190417173031.9920-1-peron.clem@gmail.com>
 <CAJiuCccu_wfgio9wUcOCP0o4XPRgQOvTOZS8St7mV88TAdwaRg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJiuCccu_wfgio9wUcOCP0o4XPRgQOvTOZS8St7mV88TAdwaRg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_064514_967313_65B206E6 
X-CRM114-Status: UNSURE (   9.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-sunxi <linux-sunxi@googlegroups.com>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============6061225948956144059=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6061225948956144059==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="rdm3gipkowzevz6z"
Content-Disposition: inline


--rdm3gipkowzevz6z
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Sat, May 11, 2019 at 06:39:39PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Maxime,
>
> Is this series ok for you ?

I'm not the maintainer of that binding, so I'd need a ack from whoever
that is.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--rdm3gipkowzevz6z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXNgjZQAKCRDj7w1vZxhR
xYZsAQD5+ls2Dl1d2OZDihJtXIvSzrlA2EwW9o3twORAyHJbmgD/bGqu28VMWFpf
Dp9xKj1AiGUCNUe2O3d0X2/FGXNE3wQ=
=Uxq2
-----END PGP SIGNATURE-----

--rdm3gipkowzevz6z--


--===============6061225948956144059==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6061225948956144059==--

