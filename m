Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9591372A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 17:18:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7g79f8Zew89CBxbeBpNKjGCom800SDqGe1KvFceBrBo=; b=I1FBO7e+wEVDqpjkX5A7/ZekD
	M/h1qawOpqA7Lmie5Ej/6xvNI+K9UBVQbRWrKheyemThRv0NoLJb0d66MIYZ8JIAYx4LnkVkSlf5/
	ocOsWSz7U0N2uMGG2yI/FIXN2/289lS7qGYdfbtr8GCIGm0cYadOMx2yUOYlx5TdHDVoMiIFcGo0Z
	eVJFbAvyuq4rK5m2n+OREqQrDiTRGWPn1SlXV0DA12anx/HBpqJV83WZ3SG7YgPMElyHy5/tFEsiI
	oyvwlLnN/9kHVbkGLfDvBsImNtiu8LXghK8V0vK5XFeRlQljOxpSwhgnLMSlx4Wq5pbY8qA8q67q5
	lGayvi5lA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipwzR-0004MA-Cp; Fri, 10 Jan 2020 16:18:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipwzK-0004LW-W5
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 16:18:20 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1F67B20673;
 Fri, 10 Jan 2020 16:18:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578673098;
 bh=CNkQqQjNxxjMxd0cG6tO8K7HmYmp24FIWvU31w4VO4s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yDJfo217GwgxoqlanVfhv8is/B104K1Nwu3xmcXrGW2wwky2haCsda334DspVENpg
 aoMinfIx6wsKYfWzlnT2XMSYm4WpcaJjAfNASITSTerk1VDzQtY2sVC2AD76M8tpoJ
 jqjzSKwYUYTtXep+Zq0pv834kKv0gA00kcT4DpXM=
Date: Fri, 10 Jan 2020 17:18:15 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Stefan Mavrodiev <stefan@olimex.com>
Subject: Re: [PATCH 1/2] dmaengine: sun4i: Add support for cyclic requests
 with dedicated DMA
Message-ID: <20200110161815.iyvtjg35uxfehlqp@gilmour.lan>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-2-stefan@olimex.com>
MIME-Version: 1.0
In-Reply-To: <20200110141140.28527-2-stefan@olimex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_081819_055304_788B0BDC 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: David Airlie <airlied@linux.ie>, linux-sunxi@googlegroups.com,
 Vinod Koul <vkoul@kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============4938651923803419463=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4938651923803419463==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="totzryfts3qen7g5"
Content-Disposition: inline


--totzryfts3qen7g5
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Jan 10, 2020 at 04:11:39PM +0200, Stefan Mavrodiev wrote:
> Currently the cyclic transfers can be used only with normal DMAs. They
> can be used by pcm_dmaengine module, which is required for implementing
> sound with sun4i-hdmi encoder. This is so because the controller can
> accept audio only from a dedicated DMA.
>
> This patch enables them, following the existing style for the
> scatter/gather type transfers.
>
> Signed-off-by: Stefan Mavrodiev <stefan@olimex.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

--totzryfts3qen7g5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXhijxwAKCRDj7w1vZxhR
xS5OAQCuIzZcjjb8Sg26Hl9el8UvbemFQG9v3vr7NYDHlHNz6gD/eRGoMlVnct4z
GxzxvLVcX2fzSzVP+7DXzQDhetp1Pgs=
=h876
-----END PGP SIGNATURE-----

--totzryfts3qen7g5--


--===============4938651923803419463==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4938651923803419463==--

