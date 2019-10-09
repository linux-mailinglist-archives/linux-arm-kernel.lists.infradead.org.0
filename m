Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDB9D0C2F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 12:06:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V9L3MB9jdN2ChBvZh1KHkrg5Zw2Y+cMYfJnj3cdx7mM=; b=VioX0vgMmbGbAt
	eqIqXMk3EZy1JdNFou1Z8Dg3RR5tR+vKCx2Q6NqvcSSYz+0K7wCPJv7Z+IvHKxyd8QssjSkLMa4zg
	5dfUMmCLmnxakzvldiMD3fNcVSKHixWTBGBJlgbbKnbAeZKWAlafq5GqDkIxZYp5mP5EdS6DbZVxG
	K+bQurHygG0oZUB9bnsQhCGW9Xzu5WKDnaOZHeGl90rtd+JbdXwGJfwuJSQ3czmDioM+VLlIMrpIA
	/wcQV2K0U4ZI+hfkZ2wgnvgkKPStR7TBIpRQ3oNVnhPcSw47Gox084jBUsZODZcGe94Ay3D8dmXgr
	uOaK9YpWr6WvgHky6JBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI8rI-0004M8-MV; Wed, 09 Oct 2019 10:06:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI8rA-0004LO-Le; Wed, 09 Oct 2019 10:06:10 +0000
X-UUID: dac2cf6a78a64f7ea9eace02e387793c-20191009
X-UUID: dac2cf6a78a64f7ea9eace02e387793c-20191009
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 832052562; Wed, 09 Oct 2019 02:06:14 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 03:02:30 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS31DR.mediatek.inc (172.27.6.102) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 9 Oct 2019 17:47:23 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 9 Oct 2019 17:47:22 +0800
Message-ID: <1570614445.12886.4.camel@mtksdaap41>
Subject: Re: [PATCH v5, 00/32] add drm support for MT8183
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Wed, 9 Oct 2019 17:47:25 +0800
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 34AEFD1C4F56C1A0D09EBD74E73936ACCED7E27932AFE928403BD939E21273402000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_030608_712453_BF3A52B6 
X-CRM114-Status: GOOD (  15.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Yongqiang:

To make process more smoothly, I've applied some stable patches of this
series in mediatek-drm-next-5.5 [1]. The applied patches include
dt-bindings, CCORR, DITHER, OVL, Mutex related patches. The non-applied
patches include mmsys related patches. Please based on the applied
patches to send new version.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This series are based on 5.3-rc1 and provid 32 patch
> to support mediatek SOC MT8183
> 
> Change since v4
> - fix reviewed issue in v4
> 
> Change since v3
> - fix reviewed issue in v3
> - fix type error in v3
> - fix conflict with iommu patch
> 
> Change since v2
> - fix reviewed issue in v2
> - add mutex node into dts file
> 
> Changes since v1:
> - fix reviewed issue in v1
> - add dts for mt8183 display nodes
> - adjust display clock control flow in patch 22
> - add vmap support for mediatek drm in patch 23
> - fix page offset issue for mmap function in patch 24
> - enable allow_fb_modifiers for mediatek drm in patch 25
> 
> Yongqiang Niu (32):
>   dt-bindings: mediatek: add binding for mt8183 display
>   dt-bindings: mediatek: add ovl_2l description for mt8183 display
>   dt-bindings: mediatek: add ccorr description for mt8183 display
>   dt-bindings: mediatek: add dither description for mt8183 display
>   dt-bindings: mediatek: add mutex description for mt8183 display
>   arm64: dts: add display nodes for mt8183
>   drm/mediatek: add mutex mod into ddp private data
>   drm/mediatek: add mutex mod register offset into ddp private data
>   drm/mediatek: add mutex sof into ddp private data
>   drm/mediatek: add mutex sof register offset into ddp private data
>   drm/mediatek: split DISP_REG_CONFIG_DSI_SEL setting into another use
>     case
>   drm/mediatek: add mmsys private data for ddp path config
>   drm/mediatek: move rdma sout from mtk_ddp_mout_en into
>     mtk_ddp_sout_sel
>   drm/mediatek: add ddp component CCORR
>   drm/mediatek: add commponent OVL_2L0
>   drm/mediatek: add component OVL_2L1
>   drm/mediatek: add component DITHER
>   drm/mediatek: add gmc_bits for ovl private data
>   drm/medaitek: add layer_nr for ovl private data
>   drm/mediatek: add function to background color input select for
>     ovl/ovl_2l direct link
>   drm/mediatek: add background color input select function for
>     ovl/ovl_2l
>   drm/mediatek: add ovl0/ovl_2l0 usecase
>   drm/mediatek: distinguish ovl and ovl_2l by layer_nr
>   drm/mediatek: add clock property check before get it
>   drm/mediatek: add connection from OVL0 to OVL_2L0
>   drm/mediatek: add connection from RDMA0 to COLOR0
>   drm/mediatek: add connection from RDMA1 to DSI0
>   drm/mediatek: add connection from OVL_2L0 to RDMA0
>   drm/mediatek: add connection from OVL_2L1 to RDMA1
>   drm/mediatek: add connection from DITHER0 to DSI0
>   drm/mediatek: add connection from RDMA0 to DSI0
>   drm/mediatek: add support for mediatek SOC MT8183
> 
>  .../bindings/display/mediatek/mediatek,disp.txt    |  30 +-
>  .../bindings/display/mediatek/mediatek,display.txt |  21 ++
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi           | 111 ++++++
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c            |  79 +++-
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c           |  27 +-
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c            |  42 ++-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c             | 410 ++++++++++++++++-----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h             |   6 +
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c        |  67 ++++
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h        |  21 ++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c             |  50 +++
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h             |   3 +
>  12 files changed, 745 insertions(+), 122 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,display.txt
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
