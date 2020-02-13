Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B1615B757
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 03:58:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z7lwv5uAgRDCA6roqnS5mmnklmtDisqd0Apg89/qjiM=; b=ps/jC0YDb6hPSg
	0CuRNIB+PUQnr9g3kJyJOnVMgh+NC9xN6lzwcvoiHDKV/rH2EtcsHikau9NrL0V3demaSOlunGiNt
	zulV0dIlQ3Wb/OM2W0GKrX+EnQZmc7YKzEI/ait4wkDbsgdoC7TljURwCQn4Znk1bjIr89RyXEHSw
	gDW1t1oQpoCRWG8F0uOb4sX/bhCN11nCdYh6eqWuA5FYfLK3iq4L0iZFHHmyEa/q0Pn8uRHznG+ss
	fkBNm57heYb9rExS4HTMQ+i1GrNTuSUaY9ysiYhJFi9dmMfvWx/UaNLgBk0rbkEVzJBl7WMMOVvj8
	INKkKhvarHFAFYVz4UZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j24hh-0000ol-6M; Thu, 13 Feb 2020 02:58:13 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j24hV-0000nk-AG; Thu, 13 Feb 2020 02:58:03 +0000
X-UUID: 13af140b57d840df9bb3842d44eede74-20200212
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=0HPDjdt74T111dUFssEsZJlHvxvLqFiiV5OgaDl5UMI=; 
 b=leVPUigmIgi+5lYDpuX29RQSRcbEv8Hm0/47jlB8vwQJ0pTQDGP3gf+0/gGpu4/f8CfzzrdOkesbjHHCf1ijfEGpQhbqPyP9ltKQ6inV2tBm1eGIw6fEZ9Hbsd1Hr/087GcW7Nl/uIu9k3rMFELZYqayoY0VEkIDzyV2Es+EyXY=;
X-UUID: 13af140b57d840df9bb3842d44eede74-20200212
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 614904420; Wed, 12 Feb 2020 18:57:56 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Feb 2020 18:58:05 -0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 13 Feb 2020 10:56:49 +0800
Message-ID: <1581562673.24120.3.camel@mtksdaap41>
Subject: Re: [resend PATCH v6 00/12] arm/arm64: mediatek: Fix mmsys device
 probing
From: CK Hu <ck.hu@mediatek.com>
To: <matthias.bgg@kernel.org>
Date: Thu, 13 Feb 2020 10:57:53 +0800
In-Reply-To: <20191207224740.24536-1-matthias.bgg@kernel.org>
References: <20191207224740.24536-1-matthias.bgg@kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_185801_364956_26B9B309 
X-CRM114-Status: GOOD (  22.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, sean.wang@kernel.org, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 laurent.pinchart@ideasonboard.com, ulrich.hecht+renesas@gmail.com,
 linux-clk@vger.kernel.org, drinkcat@chromium.org, wens@csie.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, sean.wang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, sboyd@kernel.org,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 enric.balletbo@collabora.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:


Would you work on this series in a short time? Some Yongqiang's patches
[1] also modify mmsys driver, and now it depend on your patch to prevent
conflicts. If you would not work on this series in a short time, I would
like to apply Yongqiang's patch without this series.

[1]
https://patchwork.kernel.org/project/linux-mediatek/list/?series=223221

Regards,
CK

On Sat, 2019-12-07 at 23:47 +0100, matthias.bgg@kernel.org wrote:
> From: Matthias Brugger <mbrugger@suse.com>
> 
> [reseding due to wrong mail of Stephen]
> 
> This is version five of the series. It's a long time this wasn't worked on, so
> as a reminder, version four can be found here:
> https://patchwork.kernel.org/cover/10686247/
> 
> The biggest changes this new version does, is to implement the clock probing
> through a platform driver. The corresponding platform device get's created in
> the DRM driver. I converted all the clock drivers to platform drivers and tested
> the approach on the Acer Chromebook R13 (mt8173 based).
> Apart from that I reordered the patches so that the DT bindings update are the first
> patches.
> 
> Changes since v5:
> - re-arrange the patch order
> - generate platform_device for mmsys clock driver inside the DRM driver
> - fix DTS binding accordingly
> - switch all mmsys clock driver to platform probing
> - fix mt8173 platform driver remove function
> - fix probe defer path in HDMI driver
> - fix probe defer path in mtk_mdp_comp
> - fix identation of error messages
> 
> Changes since v4:
> - fix missing regmap accessors in drm diver (patch 1)
> - omit probe deffered warning on all drivers (patch 5)
> - update drm and clk bindings (patch 6 and 7)
> - put mmsys clock part in dts child node of mmsys. Only done
> for HW where no dts backport compatible breakage is expected 
> (either DRM driver not yet implemented or no HW available to
> the public) (patch 9 to 12)
> 
> Changes since v3:
> - use platform device to probe clock driver
> - add Acked-by CK Hu for the probe deferred patch
> 
> Changes since v2:
> - fix kconfig typo (shame on me)
> - delete __initconst from mm_clocks as converted to a platform driver
>   
> Changes since v1:
> - add binding documentation
> - ddp: use regmap_update_bits
> - ddp: ignore EPROBE_DEFER on clock probing
> - mfd: delete mmsys_private
> - add Reviewed-by and Acked-by tags
>  
> MMSYS in Mediatek SoCs has some registers to control clock gates (which is 
> used in the clk driver) and some registers to set the routing and enable
> the differnet blocks of the display subsystem.
> 
> Up to now both drivers, clock and drm are probed with the same device tree
> compatible. But only the first driver get probed, which in effect breaks
> graphics on mt8173 and mt2701.
> 
> This patch uses a platform device registration in the DRM driver, which
> will trigger the probe of the corresponding clock driver. It was tested on the
> bananapi-r2 and the Acer R13 Chromebook.
> 
> 
> Matthias Brugger (12):
>   dt-bindings: display: mediatek: Add mmsys binding description
>   dt-bindings: mediatek: Add compatible for mt7623
>   drm/mediatek: Use regmap for register access
>   drm: mediatek: Omit warning on probe defers
>   media: mtk-mdp: Check return value of of_clk_get
>   clk: mediatek: mt2701: switch mmsys to platform device probing
>   clk: mediatek: mt2712e: switch to platform device probing
>   clk: mediatek: mt6779: switch mmsys to platform device probing
>   clk: mediatek: mt6797: switch to platform device probing
>   clk: mediatek: mt8183: switch mmsys to platform device probing
>   clk: mediatek: mt8173: switch mmsys to platform device probing
>   drm/mediatek: Add support for mmsys through a pdev
> 
>  .../display/mediatek/mediatek,disp.txt        | 30 ++++++-----
>  drivers/clk/mediatek/clk-mt2701-mm.c          | 41 +++++++++-----
>  drivers/clk/mediatek/clk-mt2712-mm.c          | 39 +++++++++-----
>  drivers/clk/mediatek/clk-mt6779-mm.c          | 41 +++++++++-----
>  drivers/clk/mediatek/clk-mt6797-mm.c          | 43 ++++++++++-----
>  drivers/clk/mediatek/clk-mt8173.c             | 51 +++++++++++++++---
>  drivers/clk/mediatek/clk-mt8183-mm.c          | 39 +++++++++-----
>  drivers/gpu/drm/mediatek/mtk_disp_color.c     |  5 +-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c       |  5 +-
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c      |  5 +-
>  drivers/gpu/drm/mediatek/mtk_dpi.c            | 12 +++--
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c       |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c        | 54 +++++++++----------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h        |  4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c        | 35 +++++++++---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h        |  4 +-
>  drivers/gpu/drm/mediatek/mtk_dsi.c            |  8 ++-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c           |  4 +-
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c |  6 +++
>  19 files changed, 295 insertions(+), 135 deletions(-)
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
