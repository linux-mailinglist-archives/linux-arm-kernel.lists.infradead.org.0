Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B154F4E185
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 10:00:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=XkGcYOxI60XVf4Y6ooicuyE5qKtPyH6Pa8Ylk3CsAN0=; b=cepzHQ6iPPPWRG7vDuji+PEgg
	Vd/R2gjUSlwZXUW1Kei2pfJ8H3Hs6i4NGMrHwFzqC6xjBVqCTIlPgYJu8G5U7/ncMXpiVaaHOL+8C
	KhyyrNBfEAV1ntktgTUHWF9E41dNJtF0NkYHXxjPioIc34wq2gw6Vh+nYV/Ow7xm6acjA+EOKR85q
	9Vto2Ij5O9/gKsVERBp+4vIdM5Qkqol8KUVbP/bxgFwJ6OPAIxQfb1BdOMMCT7J/mif2Lwga8sN1B
	cjbi391FxaDoJkKGmhWPtXuqaQDAfchUk4Zj3Rs/OaTrle60DLHVD1EYanyRPHzAKh0kd6aOKqjs4
	LsrdBuZMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heETL-000271-EI; Fri, 21 Jun 2019 08:00:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heET2-00026o-9R
 for linux-arm-kernel@bombadil.infradead.org; Fri, 21 Jun 2019 08:00:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OElTWWm69t+iZHpW4W2u6e3aI47BHVnRj9NJg68sw2w=; b=IrjT4Cqj3ifIf9XA1twzsVPJ+
 cSmoIlNcXeTwesq78CjBIreNdbrCkdMKDSNcowhOkp5gKDqHT09QVLsSxxHQuc+hKlLxx82nYGjMz
 CDGCRtDM3UJWEKZDiMdQw/zVOCH/aV8PzBDOFWMS/nWN1V6v6EMow/p/w3qHjaPKBzdpI/KoztWbo
 Ix0Jn9qMUTgKWguUTsL1klK8cGFwR9dkYCbQJZ87URxgnl9g88lbaYz80R3MQWSxg+hhJ18emg4m9
 OmBf004Ni7E+maj5tnFq7nW6dWbToywngYtZJnaynMi0RNUKyVRZmmdZ5PoVLJHyoEUwuEH35J2O3
 Ms3oTl9mA==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heET0-0004tT-Dj
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 08:00:16 +0000
X-Originating-IP: 90.88.16.156
Received: from localhost (aaubervilliers-681-1-41-156.w90-88.abo.wanadoo.fr
 [90.88.16.156]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 7A99D1C0005;
 Fri, 21 Jun 2019 07:59:34 +0000 (UTC)
Date: Fri, 21 Jun 2019 09:59:34 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: pwm: Convert Allwinner PWM to a schema
Message-ID: <20190621075934.dytb5ruv4gefgrmc@flea>
References: <20190516120848.25007-1-maxime.ripard@bootlin.com>
 <20190607111838.xlx74cvcfhaob3wf@flea>
 <20190614091433.xac42w3n7cx7buh6@flea>
MIME-Version: 1.0
In-Reply-To: <20190614091433.xac42w3n7cx7buh6@flea>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_090014_490493_35099EFB 
X-CRM114-Status: GOOD (  15.78  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: multipart/mixed; boundary="===============2946458488973106281=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============2946458488973106281==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="62wdhr4nif6wvnvt"
Content-Disposition: inline


--62wdhr4nif6wvnvt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jun 14, 2019 at 11:14:33AM +0200, Maxime Ripard wrote:
> On Fri, Jun 07, 2019 at 01:18:38PM +0200, Maxime Ripard wrote:
> > On Thu, May 16, 2019 at 02:08:48PM +0200, Maxime Ripard wrote:
> > > The Allwinner SoCs have a PWM controller supported in Linux, with a
> > > matching Device Tree binding.
> > >
> > > Now that we have the DT validation in place, let's convert the device tree
> > > bindings for that controller over to a YAML schemas.
> > >
> > > Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > Ping?
>
> Anyone? Should I just go ahead and merge it through the sunxi tree?

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--62wdhr4nif6wvnvt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXQyOZQAKCRDj7w1vZxhR
xaoyAQDllw8NhQOREnODoAZvZn4YVeHtSyaUFs5GhVlJ9E8P2gEApIXSQcNFUihO
w01NbKzMlqQawHGtoNJdlW/lOxaBgA0=
=8Zfy
-----END PGP SIGNATURE-----

--62wdhr4nif6wvnvt--


--===============2946458488973106281==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============2946458488973106281==--

