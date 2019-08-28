Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF0B49FCBB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 10:18:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=F4xSaohDB/rXKUZ0zQafl1Au4zCKTcc9XuVSAQkRxho=; b=EzkEUeviGLXBzUUiHb7/fBq4b
	LOauTvFI5ne2vbIItNY/vQ5XtSNmJA4YpwNP1DUnPnWPsCp/dsi9b9oEksvM1ot/lCbQcWAJE5h1J
	fBK86FTK9Zhth3WRFScA3C8b26WhBRN0b2Hg2M8xfbT5cbvZwUzRtNKE6dYMxRUwteOjDJ3cZyG0G
	Ms3cuQpOahQNiRsS1mDcj2PH5x7kfD37cXl30MukFXLZ1QLV1++h5GIdEgsHYPFoU72Fjor10qiO8
	K0jynNLqkB28uVDvBZdDsJbme4ZdJAfpDNIdiHSF7F2PH4juJ0IeisYf3l1peHOX1jwbgYqKU1rA2
	6E0x551rA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2tA9-0003wR-5I; Wed, 28 Aug 2019 08:18:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2t9t-0003va-GK
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 08:18:29 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 310E82189D;
 Wed, 28 Aug 2019 08:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566980302;
 bh=+pPMLUCSSxO28zMU47W0EaRFagvxicZdMQed3gzfifw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=09CmK50HCvij31BRxh1M3vSf9K8uw68/0d/d5eMMsCOfA6A9Pbp7INvd1tMHJg7nu
 pvbxHaI4GFBWa/xBBLz7LAsxuA+8PaEk8PSl0DRtAAVMoJ6YdYrBxVU+RvOOUMMhOS
 vt8f/iHOhmY5YghwX2M2lOmhLJkRIKLPNgFxtkk0=
Date: Wed, 28 Aug 2019 10:18:19 +0200
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net, wim@linux-watchdog.org
Subject: Re: [PATCH RESEND v2 1/6] dt-bindings: watchdog: Add YAML schemas
 for the generic watchdog bindings
Message-ID: <20190828081819.qqztieg7cgdvpkxv@flea>
References: <20190821143835.7294-1-mripard@kernel.org>
MIME-Version: 1.0
In-Reply-To: <20190821143835.7294-1-mripard@kernel.org>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_011828_181643_99347F0D 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============6055182956885042000=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============6055182956885042000==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="i6iaeebbwmfsnvrm"
Content-Disposition: inline


--i6iaeebbwmfsnvrm
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Aug 21, 2019 at 04:38:30PM +0200, Maxime Ripard wrote:
> From: Maxime Ripard <maxime.ripard@bootlin.com>
>
> The watchdogs have a bunch of generic properties that are needed in a
> device tree. Add a YAML schemas for those.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>

Ping?

Maxime


--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

--i6iaeebbwmfsnvrm
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXWY4ywAKCRDj7w1vZxhR
xSrsAP9Wm4uqadS7xrVp8WfRQCHb46bRTlF+qGXNnJAoK7xrlwEAnhNhZ4zOZeDd
sjEXxaKnIq1SiINnOpEsBy21a+L8eAY=
=fuF4
-----END PGP SIGNATURE-----

--i6iaeebbwmfsnvrm--


--===============6055182956885042000==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============6055182956885042000==--

