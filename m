Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E98BC6611C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 23:28:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fPXiudtijSpwxQvGN5D9RpUyLnOkEzUB/IA/9oyspM=; b=PQ51SZKIpvos4c
	eFGV4g0WYDI+pVeUl6nMVeV75EUgIZ9isvR+vwYTVu/Q3eX7ZrBcFSkHw9nHClDLTZrHHRsJA9J81
	ukkPt5kXcp5HtwkUFiFxkkgr3h2ZTGCJLpAspLGE1EgbJGMitXqkIMm3uagsXHvfgjJ/7x4cKB/Ac
	89+taa1+HhMKfbmMx6mn0hI3nbLGPB0dS6OVzRvUyPHTBCHU509bvPxQc91q3V1M7ZhPxBIpa3eTH
	48mV+qK3KZdntVIIn5hKftxLMGAOqfD2JSLYRbfUYYDiBoR0935dhDZnFRbhznKcRsGjhGO765m42
	LleEYaBIdNrjhVcrPNeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlgbr-0003tg-V5; Thu, 11 Jul 2019 21:28:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlgbd-0003sC-79; Thu, 11 Jul 2019 21:27:58 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hlgbR-0006mP-RG; Thu, 11 Jul 2019 23:27:45 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 6/7] ARM: dts: rockchip: Specify
 rk3288-veyron-chromebook's display timings
Date: Thu, 11 Jul 2019 23:27:44 +0200
Message-ID: <4744731.Gbjux09qzx@diego>
In-Reply-To: <20190401171724.215780-7-dianders@chromium.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-7-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_142757_415123_51DDD025 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?ISO-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, mka@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 1. April 2019, 19:17:23 CEST schrieb Douglas Anderson:
> Let's document the display timings that most veyron chromebooks (like
> jaq, jerry, mighty, speedy) have been using out in the field.  This
> uses the standard blankings but a slightly slower clock rate, thus
> getting a refresh rate 58.3 Hz.
> 
> NOTE: this won't really do anything except cause DRM to properly
> report the refresh rate since vop_crtc_mode_fixup() was rounding the
> pixel clock to 74.25 MHz anyway.  Apparently the adjusted rate isn't
> exposed to userspace so it's important that the rate we're trying to
> achieve is mostly right.
> 
> For the downstream kernel change related to this see See
> https://crrev.com/c/324558.
> 
> NOTE: minnie uses a different panel will be fixed up in a future
> patch, so for now we'll just delete the panel timings there.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.3

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
