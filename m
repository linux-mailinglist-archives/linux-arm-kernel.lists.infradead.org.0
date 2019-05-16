Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2D3520157
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 10:31:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KKNvXOt8XhZ/DxaxSznbEq9k7HqHR/0DMQL0FtxKYCg=; b=imgSNnOf127uN1f/f9xiqZ7wM
	Wl4EG7+0vbjslBH9cEhWNaGoEmXsNRevyq4gCgZYXnlBj0EtYxRSQq1sIp7FBX0pbD+hVz7qkwzaj
	yd2mPTSbHHPLIIBFa9+0T82tP71ypQ2aAW3CwOXabn1rADSQWsX8IExqwcPF2F0Iy5qOjnAM6bE8S
	FMRCK9BSaVEJckqNOcd81I4RhZeDVDgYk3zmdhyf8LolZsC4Gm5ef0X1xpsnvpV+YBSnJcDHmkMMn
	SLVDxuaxXc30ltCEbD4ts+TPD7mAtiwMC8DV0n1TE13jAmAhumQpvu3IbpBhT8Juhu+JwSfRpHQY5
	gVkotVcyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBnZ-0000mZ-LA; Thu, 16 May 2019 08:31:33 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBnR-0000m5-6u
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 08:31:26 +0000
X-Originating-IP: 80.215.246.107
Received: from localhost (unknown [80.215.246.107])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 6532D20003;
 Thu, 16 May 2019 08:31:05 +0000 (UTC)
Date: Thu, 16 May 2019 10:31:04 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 0/2] drm/sun4i: Fix sun8i HDMI PHY initialization
Message-ID: <20190516083104.rr2ewg3dd4aej67b@flea>
References: <20190514204337.11068-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190514204337.11068-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013125_403100_2C5BCBD8 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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
Cc: airlied@linux.ie, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, wens@csie.org,
 daniel@ffwll.ch, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1343639309332059077=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1343639309332059077==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="nxc66wpttvnorf5q"
Content-Disposition: inline


--nxc66wpttvnorf5q
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Tue, May 14, 2019 at 10:43:35PM +0200, Jernej Skrabec wrote:
> I received a report that 4K resolution doesn't work if U-Boot video
> driver is disabled. It turns out that HDMI PHY clock driver was
> initialized prematurely, before reset line was deasserted and clocks
> enabled. U-Boot video driver masked the issue because it set pixel
> clock correctly.
>
> In the process of researching the bug, I also found out that few bits
> in HDMI PHY registers were not set correctly. While there is no
> noticeable change (4K resolution works with both settings), I've
> added fix anyway, to be conformant with vendor documentation.

Applied both, thanks

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--nxc66wpttvnorf5q
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXN0fyAAKCRDj7w1vZxhR
xUAXAP9xICklXvpieTeqdcZC4XE/+a2QALTSkxog1dIwU2z9hgEA9W1tdHngDaMj
jYInZNsuhpQY0H7zxkIQTeX7MeX2Ogs=
=TN7Y
-----END PGP SIGNATURE-----

--nxc66wpttvnorf5q--


--===============1343639309332059077==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1343639309332059077==--

