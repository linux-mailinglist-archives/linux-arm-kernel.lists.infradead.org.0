Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D0E29E97E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=d9IydTgRTglIYUkxuz1rXHJ1m0JVx5UHlaAIp61pGQg=; b=jNIlwgOP/irKz00/whvyTHIqn
	70i+hF2twiVqLonNissycSSZ+l9Gl5kARyRzfvDBxCU3mkkWCrhH4FE/aF+32L5Ugtq48zC95ZrTV
	gCXYvFQZeg9g7o2//rZzB7FuArgL6VrG1M/+luzmjq1lUK7X+uuqJUDwPVWlF43ichf+I/LFg+VUo
	4gb0UXRrmpLOm77lU5bgxcIU7V8OT5mO6YjR2wutdia93UFCWxCK3XJQ8WBaJGOqqcGVBMKkyGeqe
	yVmkki2c4MLk+1w4ixlZ7e7bBtJHGl5kipZlgWYiZvUjXlogA/In8yTKsxBOTV3s9JgW8sEdmiiKY
	jkm5ROdJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bcv-0005RD-S6; Tue, 27 Aug 2019 13:35:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bcU-0005Km-Ho
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:34:48 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 96FD420828;
 Tue, 27 Aug 2019 13:34:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566912886;
 bh=JUTyWwX2ET5pcAqmDZd9yiuKVN2SmCNm8sEP12RzMMc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=W8ZvR5DOjP38DXOaIx0j7myXAl5RgAQIqWTAFcW9XrI6yxAULG4QtZbJ00ES1PtER
 0IuAUFyISZy/h9ClfTor1novhWyk4vkJPnoMSOET1v3C+MutUZDXG8jrEcjoUM4EX5
 QdPdAZBYQ45xuf4Ibd0L1LDj/JdnCbt+yZMwUXI4=
Date: Tue, 27 Aug 2019 15:34:43 +0200
From: Maxime Ripard <mripard@kernel.org>
To: Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH] arm64: dts: allwinner: a64: pine64-plus: Add PHY
 regulator delay
Message-ID: <20190827133443.fdxl5wjmgkerc3uh@flea>
References: <20190825130336.14154-1-jernej.skrabec@siol.net>
MIME-Version: 1.0
In-Reply-To: <20190825130336.14154-1-jernej.skrabec@siol.net>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_063446_866015_DEF72DD4 
X-CRM114-Status: GOOD (  11.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Ondrej Jirman <megous@megous.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6753186568083115446=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6753186568083115446==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="hjrahydg6q3alewh"
Content-Disposition: inline


--hjrahydg6q3alewh
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Aug 25, 2019 at 03:03:36PM +0200, Jernej Skrabec wrote:
> Depending on kernel and bootloader configuration, it's possible that
> Realtek ethernet PHY isn't powered on properly. It needs some time
> before it can be used.
>
> Fix that by adding 100ms ramp delay to regulator responsible for
> powering PHY.
>
> Fixes: 94dcfdc77fc5 ("arm64: allwinner: pine64-plus: Enable dwmac-sun8i")
> Suggested-by: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>

How was that delay found?

It should at least have a comment explaining why it's there.

Thanks!
Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--hjrahydg6q3alewh
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWUxcwAKCRDj7w1vZxhR
xQcDAP9PcjmKcemio5RyGsvXfmaqZINOqCwOKsTiONK54RVLbQEAgaFOmHxFyHfJ
oQcsq82EY17PkSDieqvgY9JWjjbwrgo=
=kJyJ
-----END PGP SIGNATURE-----

--hjrahydg6q3alewh--


--===============6753186568083115446==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6753186568083115446==--

