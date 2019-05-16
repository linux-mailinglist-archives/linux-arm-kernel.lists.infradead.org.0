Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61222202E2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:53:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7KXBD6FihbugIZhS1yF0sIhIXa0MTFgLKOdMPswgoiQ=; b=LR0C+KPEuyxWFAgJg7YXvL4Md
	so6V0eH8/20oLZqXC2qkz38AZNylK+5E0wdjOYCBj5Jeirlu6EroDNxeMl8lS6xNEMMMVGwxlx5qT
	oR7EKGKjnNgZLScXIfzqIXCwAhB8wvcfEiLZHITnbgJWmDadNpXTayM9VMrvHJTSk/1kWZED+Ez1H
	3/aC84l/5Dj32Qj5mRu75rtgB493qZLVvU8ROYtPZ64r2DVRK7JqPAoLUYdELlaGqkZav8LOF5+DA
	vpjapmJwl6GoOKJjrIOMMEPMPpS+Ao4HWqPv3nxdJ0CFX/OL8t+hyVmnVWtTI0gsmLqxD2ZGs7B+s
	OsU0UnLTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRD58-0004oI-Q8; Thu, 16 May 2019 09:53:46 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRD52-0004oB-6o
 for linux-arm-kernel@bombadil.infradead.org; Thu, 16 May 2019 09:53:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nUt+iZtkTLh44d7p4kiMusFtukFDtNP/PV75kpU2fiY=; b=vOa3xitVmIxKGDk5GY1RpAXcS
 aPN7Szceq7TO5nUCo3suWb2ieWKUAS933IP2DQ6g9UABxODH/gQbEGCVuQUkluJ8su1rzrk7vM441
 rOOug5+jwGbt8eMNGkxMu6pYo3YhRhJmuCd0Y1Nf5U8jO5Ao00bESuc0fEQdbZ1YtISiLcgBKvNzk
 TX9yhnMX3oHldMQDxKK8p7Fb7tUBnFRyA4xTaS+yrdTY1lc2vnNOohUX0StwXHEumQOeBXUCiCmr8
 SayxJacNppANcvyyCQ83/PHzJT72xckUOmrB6ms6uG6IJ2axmJaiPhyVcT+Rnn6jGQYbHC3rnOhSF
 sDW60GDLA==;
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRD4y-0000Es-F8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:53:38 +0000
Received: from localhost (unknown [80.215.244.179])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay10.mail.gandi.net (Postfix) with ESMTPSA id 7D2D9240003;
 Thu, 16 May 2019 09:52:59 +0000 (UTC)
Date: Thu, 16 May 2019 11:11:05 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v10 0/2] drm/sun4i: sun6i_mipi_dsi: Fixes/updates
Message-ID: <20190516091105.er6oeyrnompwik3j@flea>
References: <20190512184128.13720-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
In-Reply-To: <20190512184128.13720-1-jagan@amarulasolutions.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_105336_552426_94878C10 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.230 listed in list.dnswl.org]
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 michael@amarulasolutions.com, linux-amarula@amarulasolutions.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6827696607893966357=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6827696607893966357==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ce3qofktjm47bfnn"
Content-Disposition: inline


--ce3qofktjm47bfnn
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, May 13, 2019 at 12:11:25AM +0530, Jagan Teki wrote:
> This is v10 for the previous series[1] and few pathes are dropped
> as part of this series since it would require separate rework same
> will send in separately or another series.

APplied both, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ce3qofktjm47bfnn
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0pKQAKCRDj7w1vZxhR
xUFPAP9qQEmAom0RveVfdjeyYEidWvLU6MUme3eTHox9GhsoXQD6Aio7WpCJH0Hs
BM+RV1KwgBuakfuaClq/zq0ivu9hZgw=
=wdAl
-----END PGP SIGNATURE-----

--ce3qofktjm47bfnn--


--===============6827696607893966357==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6827696607893966357==--

