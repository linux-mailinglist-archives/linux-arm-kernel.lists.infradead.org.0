Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43F1266121
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 23:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MklMBlBNLs0MLGA5XEEsfacAobkBoh1t0IbB1k2UatQ=; b=mheRP4YOahCAqz
	lSzG4icGBwRlh7rBJoxq9m1CHpt7wdEiyVEJcJa5sRJswiZ9w/nuR6L4RiaoC9OnwixiZtbO5led6
	QKxYxlWyG+Lbpdi2Z5XkSFi8WVEYlbB/Ks1e/vQyAVmD1fe4jlxfktbiZKoz5rf2Toro04zv1jSXT
	RICywGdF/f/ycpzarvITqn8dgNXkSsh9DxDrWDFJhRFNe2/ICeggRDUhWP3CSB1Msj3kJSFcebKVW
	qS7mMiViesv8j7g0sB9E+2Cnnx2HbE8WsoBpSSrDUzVmlw9cgMeaYBQk1tnyhk5/4ZT4KeovldvOb
	k32xJlGhAHNah5hLH7aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlgcH-0004Li-Nx; Thu, 11 Jul 2019 21:28:37 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlgbz-0004F4-Pt; Thu, 11 Jul 2019 21:28:21 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hlgbu-0006n4-SN; Thu, 11 Jul 2019 23:28:14 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 7/7] ARM: dts: rockchip: Specify rk3288-veyron-minnie's
 display timings
Date: Thu, 11 Jul 2019 23:28:14 +0200
Message-ID: <10427933.3dknIRnSiX@diego>
In-Reply-To: <20190401171724.215780-8-dianders@chromium.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-8-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_142820_004032_20927844 
X-CRM114-Status: GOOD (  16.16  )
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

Am Montag, 1. April 2019, 19:17:24 CEST schrieb Douglas Anderson:
> Just like we did for rk3288-veyron-chromebook, we want to be able to
> use one of the fixed PLLs in the system to make the pixel clock for
> minnie.
> 
> Specifying these timings matches us with how the display is used on
> the downstream Chrome OS kernel.  See https://crrev.com/c/323211.
> 
> Unlike what we did for rk3288-veyron-chromebook, this CL actually
> changes the timings (though not the pixel clock) that is used when
> using the upstream kernel.  Booting up a minnie shows that it ended up
> with a 66.67 MHz pixel clock but it was still using the
> porches/blankings it would have wanted for a 72.5 MHz pixel clock.
> 
> NOTE: compared to the downstream kernel, this seems to cause a
> slightly different result reported in the 'modetest' command on a
> Chromebook.  The downstream kernel shows:
>   1280x800 60 1280 1298 1330 1351 800 804 822 830 66667
> 
> With this patch we have:
>   1280x800 59 1280 1298 1330 1351 800 804 822 830 66666
> 
> Specifically modetest was reporting 60 Hz on the downstream kernel but
> the upstream kernel does the math and comesup with 59 (because we
> actually achieve 59.45 Hz).  Also upstream doesn't round the Hz up
> when converting to kHz--it seems to truncate.
> 
> ALSO NOTE: when I look at the EDID from the datasheet, I see:
>   -hsync -vsync
> ...but it seems like we've never actually run with that so I've
> continued leaving that out.
> 
> Signed-off-by: Douglas Anderson <dianders@chromium.org>

applied for 5.4

Thanks
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
