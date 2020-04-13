Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9574D1A696F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 18:09:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdBxQr7KXWhSZR/k9ozupv4Q1sTnh0h0SwHSclaQfKs=; b=TWdx7Ba0u8LEN1
	SPmCs1Jo5HfwxQDfLQ8NlRL+09d3VH0QPtAywqdU7ZEgxtnaCvyrNLQRMLpj9HJUfy6GgLe6YBi6V
	kdcLN/4aoqE3x/mMANV/w+mnUkRfK/LKiTkt4Gd4o0Ca9sXVp3HRNwAHvhwgNmymYjHzSBOI8VRWi
	2bYs8sbQOUKBDIqOepEg2HAOfHvvVneVnjbYU1ryuwS/ZfdcJzXgV15fnAx9CZgxsnjs115EDgl0D
	2Lq+PntJXfPu7sS+/uJOMmavIqOlJWvC1srRli9/6MfsWVhNqGJGtKHm8dkdZbb4CWFskmWDp8KwD
	hHe6fbb/BxCLOHlloVIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO1eH-0006jF-D8; Mon, 13 Apr 2020 16:09:25 +0000
Received: from mailoutvs43.siol.net ([185.57.226.234] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO1e9-0006ii-P7
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 16:09:19 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id BA13F5230DC;
 Mon, 13 Apr 2020 18:09:10 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta09.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta09.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id 6FMkXzO6_pPd; Mon, 13 Apr 2020 18:09:10 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 681F15230DF;
 Mon, 13 Apr 2020 18:09:10 +0200 (CEST)
Received: from jernej-laptop.localnet (89-212-178-211.dynamic.t-2.net
 [89.212.178.211]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 2757B5230DC;
 Mon, 13 Apr 2020 18:09:09 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH] drm/sun4i: hdmi ddc clk: Fix size of m divider
Date: Mon, 13 Apr 2020 18:09:08 +0200
Message-ID: <1742537.tdWV9SEqCh@jernej-laptop>
In-Reply-To: <CAGb2v66LxhqTBeA_Br=kUrTq83hocEcAzYYC6nXpASvkkjn+1g@mail.gmail.com>
References: <20200413095457.1176754-1-jernej.skrabec@siol.net>
 <CAGb2v65qetxxVX1yoCjyduM4zRTyF3YKX1g9CuaHZkF_Z+AKQg@mail.gmail.com>
 <CAGb2v66LxhqTBeA_Br=kUrTq83hocEcAzYYC6nXpASvkkjn+1g@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_090917_968877_074812B6 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.234 listed in list.dnswl.org]
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.57.226.234 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 13. april 2020 ob 16:12:39 CEST je Chen-Yu Tsai napisal(a):
> On Mon, Apr 13, 2020 at 6:11 PM Chen-Yu Tsai <wens@csie.org> wrote:
> > On Mon, Apr 13, 2020 at 5:55 PM Jernej Skrabec <jernej.skrabec@siol.net> 
wrote:
> > > m divider in DDC clock register is 4 bits wide. Fix that.
> > > 
> > > Fixes: 9c5681011a0c ("drm/sun4i: Add HDMI support")
> > > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > 
> > Reviewed-by: Chen-Yu Tsai <wens@csie.org>
> 
> Cc stable?

I don't think it's necessary:
1. It doesn't change much (anything?) for me when reading EDID. I don't think 
it's super important to have precise DDC clock in order to properly read EDID.
2. No matter if it has "Cc stable" tag or not, it will be eventually picked 
for stable due to fixes tag.

This was only small observation when I was researching EDID readout issue on 
A20 board, but sadly, I wasn't able to figure out why reading it sometimes 
fails. I noticed similar issue on SoCs with DE2 (most prominently on OrangePi 
PC2 - H5), but there was easy workaround - I just disabled video driver in U-
Boot. However, if A20 display driver gets disabled in U-Boot, it totally 
breaks video output on my TV when Linux boots (no output). I guess there is 
more fundamental problem with clocks than just field size. I think we should 
add more constraints in clock driver, like preset some clock parents and not 
allow to change parents when setting rate, but carefully, so simplefb doesn't 
break. Such constraints should also solve problems with dual head setups.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
