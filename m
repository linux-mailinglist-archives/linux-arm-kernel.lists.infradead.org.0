Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23EC74585C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 11:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kQ/AyrFqFqgVIxwrKiFsVCvFBVOoMzI2H4IPf5PStuw=; b=XFjpdfPWnzQLGwt5q+lxQiktr
	cu6lWAzouEeYbAybZzzoTtMLd6yy+Rz7kU58aG4PJ9PCc61sf5IXIW+Te1Cq4BeDBMgpFtpw/EvVD
	aIg8ue2UZeT+LPo/KQPPa51Rfe/j5Iw4xwhGcwTZ9d7V8sJzYWNd3OJ8z/8JZCKV79a18nJ5rgMEw
	kA203lEfx/unaXfzeajS/tFOVM2kA+jzE6f/vbXBAnOJ4lhVF/lhMzLxE3jv9WuWF3tClwNkUKWMs
	0pfljBearvNuWgwwgpk8FMnx8w/zv2j0Bjcq9qUqLxg74O2SFFm9XPUxbFj/PMHEgN9nHMR7wa/40
	2mcIGj1nA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbiIP-0002Kc-Do; Fri, 14 Jun 2019 09:14:53 +0000
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbiI9-0002Jx-4h
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 09:14:38 +0000
Received: from localhost (aaubervilliers-681-1-81-150.w90-88.abo.wanadoo.fr
 [90.88.23.150]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id D8B1F240002;
 Fri, 14 Jun 2019 09:14:33 +0000 (UTC)
Date: Fri, 14 Jun 2019 11:14:33 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: pwm: Convert Allwinner PWM to a schema
Message-ID: <20190614091433.xac42w3n7cx7buh6@flea>
References: <20190516120848.25007-1-maxime.ripard@bootlin.com>
 <20190607111838.xlx74cvcfhaob3wf@flea>
MIME-Version: 1.0
In-Reply-To: <20190607111838.xlx74cvcfhaob3wf@flea>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_021437_346357_D5CBECE8 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-pwm@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0724703540117316312=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0724703540117316312==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="2ulork7hxmrmxe3s"
Content-Disposition: inline


--2ulork7hxmrmxe3s
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 07, 2019 at 01:18:38PM +0200, Maxime Ripard wrote:
> On Thu, May 16, 2019 at 02:08:48PM +0200, Maxime Ripard wrote:
> > The Allwinner SoCs have a PWM controller supported in Linux, with a
> > matching Device Tree binding.
> >
> > Now that we have the DT validation in place, let's convert the device tree
> > bindings for that controller over to a YAML schemas.
> >
> > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
>
> Ping?

Anyone? Should I just go ahead and merge it through the sunxi tree?

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--2ulork7hxmrmxe3s
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQNleQAKCRDj7w1vZxhR
xbjNAP9u2gIWLx6Xy6i2Tdwxun/a8yx08d/HSPLSI34w6E8USAD9H4mszsZNc+Uo
kU9HDUDOJN7I1BDXvlp8F8tUft9QOAE=
=aqsN
-----END PGP SIGNATURE-----

--2ulork7hxmrmxe3s--


--===============0724703540117316312==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0724703540117316312==--

