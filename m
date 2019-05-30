Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0DDF30263
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 20:54:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=+sbtpTr+9KZsdDyB0KWZyH6OpCGwoXC2QR94A3Jrkj0=; b=Ht0Ks4ZSkkqs/9/gpd5XhI2Vf
	RKvj8t9SdhWv3RyELRu2AFSZjOK4VCs6MDuZdE3jb4n0MZp8UZE8pnEWCfAHFTZ59OQJJnBDkGIQY
	IgeohoGh/+g5jTaR86ZPce5MUd8Dh91USe4HWLgVxMblCRmuJsw4XAmEJDIojPJMxbliq/scR7GaV
	P7n17S4xQfgmWe0CinhzrX5kxA+IreilRum1Pe8nnKzbwlQ4EwetFthLoGBch5wePAy+qRh4DD6Yd
	9rzxjvcvDWTFqEU2HSm8KtEo1Qgc/tXWxW5Upf+FAmhTMkophpEBJ5QvAfk04YaMRJT8SvmPij4gR
	EcpdUu6Nw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWQCB-00044q-US; Thu, 30 May 2019 18:54:35 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWQBq-0003pZ-Na
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 18:54:17 +0000
X-Originating-IP: 90.89.68.76
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 8BD9BFF806;
 Thu, 30 May 2019 18:53:54 +0000 (UTC)
Date: Thu, 30 May 2019 20:53:48 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] dt-bindings: display: Convert Allwinner DSI to a schema
Message-ID: <20190530185347.aql4znrk5msk2q6o@flea>
References: <20190527120910.18964-1-maxime.ripard@bootlin.com>
 <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAGb2v66uhrm20BwmODkPZjSM6Ek+xEg23w2Cs49ikW3WcU1Lqg@mail.gmail.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_115415_243223_FA9BA631 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Paul <seanpaul@chromium.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 devicetree <devicetree@vger.kernel.org>
Content-Type: multipart/mixed; boundary="===============5029558417838640568=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5029558417838640568==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="n26wko6czjrwlbek"
Content-Disposition: inline


--n26wko6czjrwlbek
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Thu, May 30, 2019 at 09:48:02PM +0800, Chen-Yu Tsai wrote:
> On Mon, May 27, 2019 at 8:09 PM Maxime Ripard <maxime.ripard@bootlin.com> wrote:
> >
> > The Allwinner SoCs have a MIPI-DSI and MIPI-D-PHY controllers supported in
> > Linux, with a matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Looks good to me. However not sure why you replaced the clock index macros
> with raw numbers.

The examples are compiled now, and unfortunately we can't use the
defines at this point.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--n26wko6czjrwlbek
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXPAmuwAKCRDj7w1vZxhR
xTrkAP9aecEKOK5bHZC70YnbsnYn/b1tZ+7DzzXoqX/FQEYF5AEAylRFy9rknaOQ
uAzr1PQPqbqIGy8rVpSH/ibPa/zelgY=
=yRoQ
-----END PGP SIGNATURE-----

--n26wko6czjrwlbek--


--===============5029558417838640568==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5029558417838640568==--

