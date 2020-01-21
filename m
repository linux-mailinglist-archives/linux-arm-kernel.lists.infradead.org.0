Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1584C143859
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 09:35:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kHkA50yo44zX4ejPswZXOatQlqXXxpp/jpOvL2B9WzU=; b=d1VIW4Tt1f+ukp
	nrxfsjfWOhFGOUvu+fYmDDl/Ca58+Uwc/tP/WueqM2IMb1xBQTjA1IsIsyWThF6Ga0ZdELnIBuazC
	AzhubX+NaL8G3dav81+uXJglWW6yQh7g1lDgGs3O6PAOZ6FUhV9aA8ebKyY3Ott55n2uwArkYo3Ma
	U7yVX41MAw63kulStijMFaS71V0WEgzdn6uwp+6+Mmd4cJDV2bJIx5oJgRxOHhVfR4zM/FodklIYp
	h8KQ4CN6vTc96KWTLr2VAbLjSJUMCerEvbkOGVbin6bDo6/QK6iixrTVjdrIEzebkBr7KZFKfDMR4
	Iqqwo5r7re4dX59dY/ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itp0U-0005gS-3R; Tue, 21 Jan 2020 08:35:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itp0J-0005fc-21
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 08:35:23 +0000
Received: from localhost (unknown [171.76.119.14])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C749F20661;
 Tue, 21 Jan 2020 08:35:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579595718;
 bh=heTsX97URT+i6grSByTb7+bV4lKDgcTZRQJGkR1/X7k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sCrALuQ9saD06F1M+KuWYDpzQ7BvCCl+jMEOwG8342XNSZMuyYJmigYu5e77zxgc6
 L6Pv0e2nitaAKcfPvUaHK/r8+XNT2LTomHWalmLBUzp6HfnfZwIY66+u4yOSbIKrjU
 ZyyvvwDoLoISCnvRVqzouMDs+sgfBO7t/1O97Z14=
Date: Tue, 21 Jan 2020 14:05:14 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH 1/2] dmaengine: sun4i: Add support for cyclic requests
 with dedicated DMA
Message-ID: <20200121083514.GE2841@vkoul-mobl>
References: <20200110141140.28527-1-stefan@olimex.com>
 <20200110141140.28527-2-stefan@olimex.com>
 <20200115123137.GJ2818@vkoul-mobl>
 <20200115170731.vt6twfhvuwjrbbup@gilmour.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115170731.vt6twfhvuwjrbbup@gilmour.lan>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_003519_122343_80261E42 
X-CRM114-Status: GOOD (  14.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Mavrodiev <stefan@olimex.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, open list <linux-kernel@vger.kernel.org>,
 "open list:DRM DRIVERS FOR ALLWINNER A10" <dri-devel@lists.freedesktop.org>,
 Chen-Yu Tsai <wens@csie.org>, Daniel Vetter <daniel@ffwll.ch>,
 "open list:DMA GENERIC OFFLOAD ENGINE SUBSYSTEM" <dmaengine@vger.kernel.org>,
 Dan Williams <dan.j.williams@intel.com>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15-01-20, 18:07, Maxime Ripard wrote:
> On Wed, Jan 15, 2020 at 06:01:37PM +0530, Vinod Koul wrote:
> > On 10-01-20, 16:11, Stefan Mavrodiev wrote:
> > > Currently the cyclic transfers can be used only with normal DMAs. They
> > > can be used by pcm_dmaengine module, which is required for implementing
> > > sound with sun4i-hdmi encoder. This is so because the controller can
> > > accept audio only from a dedicated DMA.
> > >
> > > This patch enables them, following the existing style for the
> > > scatter/gather type transfers.
> >
> > I presume you want this to go with drm tree (if not let me know) so:
> >
> > Acked-by: Vinod Koul <vkoul@kernel.org>
> 
> There's no need for it to go through DRM, it can go through your tree :)

okay in that case I have applied now :), thanks

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
