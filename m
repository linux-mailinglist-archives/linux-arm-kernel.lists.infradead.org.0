Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CF6092575
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 15:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2GJ+n6K/rx5KmcGiW/H9HLp/IQSpsZL/ZMu3GaH95nU=; b=PtDhIWEmialulePG7nrX14Tij
	wtPQMkd+WImrZOCCGHggqmBqGHXks47k9x4TZvIDAC+kp6egSW96ne1ZNgS0Iw3X+GKL9MRsYhi1c
	69l/281ZCBJB4HDRH+Mc6PwJcLIRODv3GDhZ/DRRK9rocFjV9ZlJCfQvAFJbkUKJOTYXCByrFNReh
	039VKc/Yg8tqHahcm8G562GVitadRJVDZCkxrwtPEOaCFPB99fk3DqmJdE6OckQlLNIwb24DK1MXs
	iI99zCIaOjppCaPN+kFMrXSRPzuCpaH0MFVtK2eWFJ5eSP9l0MvQaKTZEkgFRi855oZrC2dkS5cNP
	51J3tuUNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzhzH-0007lO-B3; Mon, 19 Aug 2019 13:46:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhy3-0006XA-3X
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 13:45:05 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3A882082C;
 Mon, 19 Aug 2019 13:45:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566222302;
 bh=7s+QAxWZgZe7HRkO1x02uj1NiJnc7PUsEVk5JR96e28=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MGp/YMZtzX9YLBWtpC+C5a8zm1QMGR8zibIrX4pb7X41iQPIP4iA7uQyPkCJXnQbv
 xfCkWQHkKEdw6T8xIyMkpwkEqsMNw8eqji6wRXF3lBKko5c0SQUx9f64WmJTcI9qLs
 2zrjD6TudyOAnzxxGZaWsSiVzGLGc531zvEC0v0U=
Date: Mon, 19 Aug 2019 15:44:59 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 0/2] Introduce Tanix TX6 box DT
Message-ID: <20190819134459.vgqaxekwkj423pyk@flea>
References: <20190816205342.29552-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190816205342.29552-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_064503_365511_3DEF0050 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============0643031362642062829=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0643031362642062829==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="czkf5do6ez7nazvr"
Content-Disposition: inline


--czkf5do6ez7nazvr
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Aug 16, 2019 at 10:53:40PM +0200, Jernej Skrabec wrote:
> This series adds support for Tanix TX6 box:
> - Allwinner H6 Quad-core 64-bit ARM Cortex-A53
> - GPU Mali-T720
> - 4GiB DDR3 RAM (3GiB useable)
> - 100Mbps EMAC via AC200 EPHY
> - Cdtech 47822BS Wifi/BT
> - 2x USB 2.0 Host and 1x USB 3.0 Host
> - HDMI port
> - IR receiver
> - 64GiB eMMC
> - 5V/2A DC power supply
>
> Patch 1 adds compatible strings to dt bindings documentation.
>
> Patch 2 adds Tanix TX6 DT.

Applied both, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--czkf5do6ez7nazvr
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXVqn2wAKCRDj7w1vZxhR
xVyBAPoCHTWn7mwS2Vjc+4SW3htnMaF+Tsx7LHIOKuzGpyPjigEAyA75QveVmE7q
ryci36c243oW6/wVymR/Yj730Z2otw0=
=nYs9
-----END PGP SIGNATURE-----

--czkf5do6ez7nazvr--


--===============0643031362642062829==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0643031362642062829==--

