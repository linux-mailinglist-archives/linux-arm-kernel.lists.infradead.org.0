Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBEF52D644
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 09:26:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oy7vxB2+LRTy7B9+leuW3ZyANxOuA87zro48YJEAeus=; b=nPkASLgIcU2kK/UKcxs0s/7mE
	IGX75LesFRQLDQDUfXSdC+kV0e592zxRluFg/A1ibbX/CYh01pnFj7CFDnYTVqy0aPzpa40pwtwpe
	/oJHdXFZFIWbNrO+CiVTbbWKX4DUZIpQJr7l6qLujVoJMPq6iiRdwgXdQa6f+PZYgSRfJ23e8zwGz
	UBzdvdLaKK+razya80X37rHQv6iO++sQlXCGjsD0ILuhilCcXKJbLKbnw7dC3EjQASK9MJJn1xRNA
	UfNdzG4nR4y8/1RRys8hr1OuQb5tz94DhYe5qsq38A2ZGLKNNpIo26ieym87TXBCWGN1u8XmUFM0Z
	cDbe3zcPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVsz4-0007Qp-1f; Wed, 29 May 2019 07:26:50 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVsyw-0007QT-DC
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 07:26:44 +0000
X-Originating-IP: 90.88.147.134
Received: from localhost (aaubervilliers-681-1-27-134.w90-88.abo.wanadoo.fr
 [90.88.147.134]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 127B04000C;
 Wed, 29 May 2019 07:26:31 +0000 (UTC)
Date: Wed, 29 May 2019 09:26:31 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] ARM: dts: sun8i: a711: Change LRADC node names to avoid
 warnings
Message-ID: <20190529072631.bxkgcerg5kxwayv3@flea>
References: <20190525134003.5360-1-maxime.ripard@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20190525134003.5360-1-maxime.ripard@bootlin.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_002642_603838_783410D8 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.194 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6286651216747551967=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6286651216747551967==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="ycq3fsu4y57enbxt"
Content-Disposition: inline


--ycq3fsu4y57enbxt
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, May 25, 2019 at 03:40:03PM +0200, Maxime Ripard wrote:
> One of the usage of the LRADC is to implement buttons. The bindings define
> that we should have one subnode per button, with their associated voltage
> as a property.
>
> However, there was no reg property but we still used the voltage associated
> to the button as the unit-address, which eventually generated warnings in
> DTC.
>
> Rename the node names to avoid those warnings.
>
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>

Applied.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--ycq3fsu4y57enbxt
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXO40JwAKCRDj7w1vZxhR
xQtAAQD6kRG9KPRCzXV8eYL9vSf+PJnOgKYdqf1Zb12lWDTHlQEA0TH5vp352LFt
h2H4R3bOx98i/mQID3+CY+EKODIGDgk=
=naMe
-----END PGP SIGNATURE-----

--ycq3fsu4y57enbxt--


--===============6286651216747551967==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6286651216747551967==--

