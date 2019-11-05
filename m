Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB6DEFB9C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 11:41:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qZXIkrAq393HHGlZK8E9EGEvYoLZG30D6WNKQcgsgAc=; b=Sn85sorLpaOpPGTEjYb+k7k2p
	KxD7F++LUOCm+mArPJaJCVQ/oUNr8hKN+cbVYp3G1+BUtkX+EF7BvecqFcnzsxvMKrU748vMBybNT
	N8DRrrsiNh4sQLG2V4gtHXlobVOAeO86v3HJYoGhf8Ju4QOqCH0O6cNDH82oLeQwnuoyWRGbUeI8W
	sWS8kmqkPKdffroRGnEp9/9IqgvkvXyUydHZO9s5JjM33CXmsuvbmxIH8mmHLm9iF8Zt3k3EiLbgp
	63nZ+QRhtKfktj+QxzMWcZh8xw/+icwUNlpMWdJx8JcmTLVr3ipvDw6r/bPRjqX5HZYCz+M1Lc4PD
	uJF3skpYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRwHJ-0001BO-LH; Tue, 05 Nov 2019 10:41:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRwHB-0001AZ-W9
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 10:41:31 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 130B3206BA;
 Tue,  5 Nov 2019 10:41:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572950489;
 bh=tYgfDNUiKF9OG4ZAZHs1pUURXP/0w4N53wTEREG05Pk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YltowqDGvnMBn/nVPnvQGpxkN/kl/KLHSWZ4Iz4UwBznH7w+V0gcqDNuSq2yAsfbo
 oJpi2x/ApcGc+grS9NYykkB2iWQz7g1j//dPIq/0KGRZ6Kjbpcmz6+O4L0Hy/Uyb8X
 dnxCjRrctg0qduKr+uh0C4chDMp3nKA/S+k/EVUc=
Date: Tue, 5 Nov 2019 11:41:26 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v5 2/7] drm/bridge: split some definitions of ANX78xx to
 dedicated headers
Message-ID: <20191105104126.GC3876@gilmour.lan>
References: <20191104110400.F319F68BE1@verein.lst.de>
 <20191104110605.F012268BFE@verein.lst.de>
MIME-Version: 1.0
In-Reply-To: <20191104110605.F012268BFE@verein.lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_024130_055633_2038B9AB 
X-CRM114-Status: GOOD (  14.56  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: multipart/mixed; boundary="===============8253799095334510918=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8253799095334510918==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="0eh6TmSyL6TZE2Uz"
Content-Disposition: inline


--0eh6TmSyL6TZE2Uz
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Tue, Oct 29, 2019 at 01:16:57PM +0100, Torsten Duwe wrote:
> From: Icenowy Zheng <icenowy@aosc.io>
>
> Some definitions currently in analogix-anx78xx.h are not restricted to
> the ANX78xx series, but also applicable to other DisplayPort
> transmitters by Analogix.
>
> Split out them to dedicated headers, and make analogix-anx78xx.h include
> them.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> Reviewed-by: Andrzej Hajda <a.hajda@samsung.com>

This one doesn't apply on drm-misc-next. The fix doesn't look really
obvious to me, can you rebase and resend it?

I'll apply the DT bindings and the DT tree so that it's part of the
next PR I'm going to send.

Maxime

--0eh6TmSyL6TZE2Uz
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXcFR1gAKCRDj7w1vZxhR
xV5aAQCXBnZlOkkH5HkRZaHAhmNuaFBDCCHJUlXqxSbXJL/X4QEA5kQpIKafNuiU
aw+xjEUvCpBo0PvmsdjNFuoA8dwovAI=
=FuMM
-----END PGP SIGNATURE-----

--0eh6TmSyL6TZE2Uz--


--===============8253799095334510918==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8253799095334510918==--

