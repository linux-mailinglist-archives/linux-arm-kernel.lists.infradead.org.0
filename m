Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95C3866167
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 23:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rZUU5SJwYicuq9bhnfB998QahLzIxlmrSqbcwn2rKPw=; b=oCUXY0foMJQ3Pn
	DL0QCL6K+6YonVrSmdHm7C1hf/+pu7xhwjZ0tT2Mg14QkA+A6qpkzQChiSWLFieC8KbyCNa11d4Bs
	s5BxHCy9CxGFaqQmyEwDo8JBvSJKaNyBgrSsOnZjZZDAOYMOxrB8weNpou6IGNCjsif6DxxAWarft
	RMAvMAVE9Q1oSYKFr7vjn8oYkBXvVUWHD6ETJRBdR9hfWXI09oK8C4iG1GRpKrYMafHLINzlcu0mm
	QhSaGx8Z3Iq55zRlXJCWynVOsG11GYLg/gU/ojjwEY4hWnmLJifJw1dull5PkIfLCfUSWz9D4EJnX
	EV2C0c207AdiwsT2+FvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlh0Q-000500-M0; Thu, 11 Jul 2019 21:53:34 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlgzw-0004yY-2m; Thu, 11 Jul 2019 21:53:05 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hlgzr-0006th-0q; Thu, 11 Jul 2019 23:52:59 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 6/7] ARM: dts: rockchip: Specify
 rk3288-veyron-chromebook's display timings
Date: Thu, 11 Jul 2019 23:52:58 +0200
Message-ID: <3703486.dL69t9P4Cl@diego>
In-Reply-To: <4744731.Gbjux09qzx@diego>
References: <20190401171724.215780-1-dianders@chromium.org>
 <20190401171724.215780-7-dianders@chromium.org> <4744731.Gbjux09qzx@diego>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_145304_271076_EEDDAE47 
X-CRM114-Status: GOOD (  12.85  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Donnerstag, 11. Juli 2019, 23:27:44 CEST schrieb Heiko St=FCbner:
> Am Montag, 1. April 2019, 19:17:23 CEST schrieb Douglas Anderson:
> > Let's document the display timings that most veyron chromebooks (like
> > jaq, jerry, mighty, speedy) have been using out in the field.  This
> > uses the standard blankings but a slightly slower clock rate, thus
> > getting a refresh rate 58.3 Hz.
> > =

> > NOTE: this won't really do anything except cause DRM to properly
> > report the refresh rate since vop_crtc_mode_fixup() was rounding the
> > pixel clock to 74.25 MHz anyway.  Apparently the adjusted rate isn't
> > exposed to userspace so it's important that the rate we're trying to
> > achieve is mostly right.
> > =

> > For the downstream kernel change related to this see See
> > https://crrev.com/c/324558.
> > =

> > NOTE: minnie uses a different panel will be fixed up in a future
> > patch, so for now we'll just delete the panel timings there.
> > =

> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> =

> applied for 5.3

5.4 obviously
[just to not confuse people reading that later]



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
