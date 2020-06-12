Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961ED1F7AEE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jun 2020 17:30:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZWCQtdFsa/IuBnvuyzYv/vmgY+K6Cyjo9PX+d4CPx+M=; b=pBqKRjRoV8MVuz
	gQWYBSeP6fs3iOptoCrC89glFmT12w0albpIU4qzI+xyOiafQaT8HFzY+zXbXPdU4Llr6ln1jW5un
	ZK4DTxB53D3uvJhiLIqzIab5ql4dBwHTe6BehT4IPa5JMbJUkQejHmgxTzQ7NvZ3Q0F28h723Ba2T
	2o7MOpEUqVkF72spoyezLA2r9gG9CwESyCw6RVboeK2xWAU1wY/+pMh5u4PfeTM4L+0RsmoMwt+Pc
	lKO3WuBU8vH4i4awRvoYdiFzck7yAmeoorME6cdByRBbrQJikviWYkUflYymAJQ9loA4STEWS8Cc8
	Pk7uyLXaIILWiqfRBzug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjldg-0000uD-Fo; Fri, 12 Jun 2020 15:30:40 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjldV-0000sf-8o; Fri, 12 Jun 2020 15:30:31 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 54BF72A5693
Subject: Re: [RESEND PATCH 0/3] Convert mtk-dpi to drm_bridge API
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: linux-kernel@vger.kernel.org, Collabora Kernel ML <kernel@collabora.com>
References: <20200518173909.2259259-1-enric.balletbo@collabora.com>
Message-ID: <d5f0fb47-f0cf-f3cb-485a-3bba97c736fc@collabora.com>
Date: Fri, 12 Jun 2020 17:30:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200518173909.2259259-1-enric.balletbo@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200612_083029_443199_85AD5C88 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>, drinkcat@chromium.org,
 Philipp Zabel <p.zabel@pengutronix.de>, narmstrong@baylibre.com,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 a.hajda@samsung.com, boris.brezillon@collabora.com,
 linux-mediatek@lists.infradead.org, laurent.pinchart@ideasonboard.com,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 18/5/20 19:39, Enric Balletbo i Serra wrote:
> The reason for this resend is because I forget to add some bridge
> maintainers. So adding them and collect the actual tags.
> 
> The mtk-dpi driver still uses the drm_encoder API which is now somewhat
> deprecated. We started to move all the Mediatek drivers to the drm_bridge API,
> like we did for the mtk-dsi driver [1], this is another small step to be able to
> fully convert the DRM Mediatek drivers to the drm_bridge API. A dummy
> drm_encoder is maintained in the mtk-dpi driver but the end goal is move all the
> dummy drm_encoder (mtk-dsi, mtk-dpi, etc) to the main mtk_drm_drv driver.
> 
> [1] https://lore.kernel.org/patchwork/project/lkml/list/?series=441559
> 
> 
> Enric Balletbo i Serra (3):
>   drm/mediatek: mtk_dpi: Rename bridge to next_bridge
>   drm/mediatek: mtk_dpi: Convert to bridge driver
>   drm/mediatek: mtk_dpi: Use simple encoder
> 
>  drivers/gpu/drm/mediatek/mtk_dpi.c | 84 ++++++++++++++----------------

A gentle ping, I think this patchset still is missing a reviewed tag from bridge
maintainers if is fine.

Thanks,
 Enric


>  1 file changed, 39 insertions(+), 45 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
