Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E4616600A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 21:38:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c4UK8GXlLGsiW41m8s6qTmYNZ046J66xW3ZCWa9ZBTU=; b=oe/MwJskv47E1t
	SII8MUK0wabC7QO/BObINrY9/FjebsOunzFfIL+CB19c9RKM+u7JriZ64x+eODOCMjnLQYhUjuJWX
	7sluHO/9Nr2+eV7oCpY8mcyx1IJ1AQAXOuQjtu7ArKX4fp6ApcMR+VBWI2fB2MYsctZqEaFiHrZUM
	DZXiMBEkIIbBWI92L7EDP79pgi7xyfVBLRHJ8C6nJZ2vXHSCTLCyZhFRqE/nMRiGgrAe7oRSdFYGe
	hXy63SULm/eYLwWCOc8cLV1ahlDFLYp4Iz0GwgV7v4zyBMIkAzosUrieHKHHKCIqEzL48aMszrdSA
	9Zlvj8JqniyNDjh1d7sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hletG-0002VD-8U; Thu, 11 Jul 2019 19:38:02 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlet3-0002ON-Tn; Thu, 11 Jul 2019 19:37:51 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 4568880395;
 Thu, 11 Jul 2019 21:35:41 +0200 (CEST)
Date: Thu, 11 Jul 2019 21:35:39 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH v5 0/7] drm/panel: simple: Add mode support to devicetree
Message-ID: <20190711193539.GA5912@ravnborg.org>
References: <20190401171724.215780-1-dianders@chromium.org>
 <CAD=FV=Vi2C7s2oWBDD0n+HK=_SuBYhRM9saMK-y6Qa0+k-g17w@mail.gmail.com>
 <20190628171342.GA2238@ravnborg.org> <2169143.hEFa8b2HQR@diego>
 <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=U3Wj8vaZcQLmkfX6zgjVFEra+GrHMH3OCs5QQ_-tM4hw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10
 a=5PwMyr1ww-aXvGv-uLAA:9 a=CjuIK1q_8ugA:10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_123750_141262_F54FCDE0 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
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
 Brian Norris <briannorris@chromium.org>,
 Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Viresh Kumar <viresh.kumar@linaro.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 LKML <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>, Sean Paul <seanpaul@chromium.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Enric =?iso-8859-1?Q?Balletb=F2?= <enric.balletbo@collabora.com>,
 Klaus Goger <klaus.goger@theobroma-systems.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Matthias Kaehlcke <mka@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dough.

> > So Thierry was able to look at the patches yesterday it seems and has Acked
> > all the relevant ones. As a drm-misc-contributor I could also apply them
> > myself, but now don't want to preempt any additional comments you might
> > have ;-) . So I guess my question would be if you still want to do a review
> > or if I should apply them.
> 
> Hopefully you saw, but I responded to all of your review feedback.  In
> the end, I thought it'd be OK to land the series as-is and I can fix
> up nits in a follow-up series, though I'm waiting for your responses
> to a couple questions first.
> 
> It would be ideal if you could confirm that you're OK with this plan
> even if you don't have time to respond in detail to my emails yet.  I
> think Heiko can land them all through the appropriate channels since
> the patches have all the proper Acks.
My main concern was the bug cocerning override_mode - which turned out to
be me confused.
There is one part about flags that does not yet makes sense but
we can fix it later.

Please resend a series that applies to drm-misc-next so
we can land this.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
