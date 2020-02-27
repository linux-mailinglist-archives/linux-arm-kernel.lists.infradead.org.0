Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325BB170E73
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 03:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Eqi6xs53xGJTjzkpmvNCi6IIF6fkh+wqQ5BkEgMZko=; b=MktLuACbxeBcnD
	LWRPdZdIfp018ev6wnvFE16skaVKcew6ol8t+UNeSUl+O5JwgWq3ML+iPHDLaKx3Mla1Jwqkr3OMc
	gRnc73c6OfZXf9C71rZFVdU4/Edwx7TsHqnE1Mxhmj2qQR7M1yHXi14k1bkghY8RRab3HdXrTDob6
	bNjIA9+O0H0fkT2GRdI0xqRzfxJlt0ymVz0TAHy6lPT7QSQaN26764FBy5NKphzYIBmGPiWKCBnXI
	na5lRGhVUqqR2NB3fCOZMQAUsx09Lbh7cDcpesrYDLheHI3KFX9WXB0J5C8LIH94Z84QHd8li8Cu8
	9M6omTXO03sR6b6c2BAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j78wK-0003G9-So; Thu, 27 Feb 2020 02:30:16 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j78w0-000375-T3; Thu, 27 Feb 2020 02:30:01 +0000
X-UUID: d9524116bfdf4ce3836f29b0c5c619af-20200226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=K4gGve8y0GjmB4JegJVgO+MM4WVhEqGsHCW/PaLyMBE=; 
 b=NmTxK+hDuJjB44uoqb2qj3OW6lWT6qKXjcslPrTxOlIjF0M6JmpTjx6/+1GSZcRWXz2ieI61kB8O2o3jmaM2Xhl7yJkCPBZq3evrfs8aXvNYGaJelcUFHPCpWDL4WtaOyIiQj0StsM5tyJBAdSWjb1An2aFmO9KplErdHO3WmFo=;
X-UUID: d9524116bfdf4ce3836f29b0c5c619af-20200226
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1888582319; Wed, 26 Feb 2020 18:29:50 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Feb 2020 18:20:27 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Feb 2020 10:18:53 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 27 Feb 2020 10:19:51 +0800
Message-ID: <1582769985.20746.10.camel@mtksdaap41>
Subject: Re: [PATCH v9 0/4] arm64: mediatek: Fix mt8173 mmsys device probing
From: CK Hu <ck.hu@mediatek.com>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Date: Thu, 27 Feb 2020 10:19:45 +0800
In-Reply-To: <20200226105419.632771-1-enric.balletbo@collabora.com>
References: <20200226105419.632771-1-enric.balletbo@collabora.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_182956_945413_BF3B6BE6 
X-CRM114-Status: GOOD (  19.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 Allison Randal <allison@lohutok.net>, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <mbrugger@suse.com>, sboyd@kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, p.zabel@pengutronix.de, matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Enric:

I would like you to modify mmsys binding document. In current document,
mmsys is a clock controller, but I think it's a system controller
including clock control, routing control, and miscellaneous control in
mmsys partition.

Regards,
CK

On Wed, 2020-02-26 at 11:54 +0100, Enric Balletbo i Serra wrote:
> Dear all,
> 
> Those patches are intended to solve an old standing issue on some
> Mediatek devices (mt8173, mt2701 and mt2712).
> 
> Up to now both drivers, clock and drm are probed with the same device tree
> compatible. But only the first driver gets probed, which in effect breaks
> graphics on those devices.
> 
> The MMSYS (Multimedia subsystem) in Mediatek SoCs has some registers to
> control clock gates (which is used in the clk driver) and some registers
> to set the routing and enable the differnet blocks of the display
> and MDP (Media Data Path) subsystem. On this series the clk driver is
> not a pure clock controller but a system controller that can provide
> access to the shared registers between the different drivers that need
> it (mediatek-drm and mediatek-mdp). Hence the MMSYS clk driver was moved
> to drivers/soc/mediatek and is the entry point (parent) which will trigger
> the probe of the corresponding mediatek-drm driver.
> 
> **IMPORTANT** This series only fixes the issue on mt8173 to make it
> simple and as is the only platform I can test. Similar changes should be
> applied for mt2701 and mt2712 to have display working.
> 
> For reference, here are the links to the old discussions:
> * v8: https://patchwork.kernel.org/project/linux-mediatek/list/?series=244891
> * v7: https://patchwork.kernel.org/project/linux-mediatek/list/?series=241217
> * v6: https://patchwork.kernel.org/project/linux-mediatek/list/?series=213219
> * v5: https://patchwork.kernel.org/project/linux-mediatek/list/?series=44063
> * v4:
>   * https://patchwork.kernel.org/patch/10530871/
>   * https://patchwork.kernel.org/patch/10530883/
>   * https://patchwork.kernel.org/patch/10530885/
>   * https://patchwork.kernel.org/patch/10530911/
>   * https://patchwork.kernel.org/patch/10530913/
> * v3:
>   * https://patchwork.kernel.org/patch/10367857/
>   * https://patchwork.kernel.org/patch/10367861/
>   * https://patchwork.kernel.org/patch/10367877/
>   * https://patchwork.kernel.org/patch/10367875/
>   * https://patchwork.kernel.org/patch/10367885/
>   * https://patchwork.kernel.org/patch/10367883/
>   * https://patchwork.kernel.org/patch/10367889/
>   * https://patchwork.kernel.org/patch/10367907/
>   * https://patchwork.kernel.org/patch/10367909/
>   * https://patchwork.kernel.org/patch/10367905/
> * v2: No relevant discussion, see v3
> * v1:
>   * https://patchwork.kernel.org/patch/10016497/
>   * https://patchwork.kernel.org/patch/10016499/
>   * https://patchwork.kernel.org/patch/10016505/
>   * https://patchwork.kernel.org/patch/10016507/
> 
> Best regards,
>  Enric
> 
> Changes in v9:
> - Move mmsys to drivers/soc/mediatek (CK)
> - Do not move the display routing from the drm driver (CK)
> - Removed from this series because are not needed:
>   * [PATCH v8 5/6] drm/mediatek: Move MMSYS configuration to include/linux/platform_data
> - Removed from this series because are applied:
>   * [PATCH v8 3/6] media: mtk-mdp: Check return value of of_clk_get.
> 
> Changes in v8:
> - Select REGMAP and MFD_SYSCON (Randy Dunlap)
> - Be a builtin_platform_driver like other mediatek mmsys drivers.
> - New patch introduced in this series.
> 
> Changes in v7:
> - Add R-by from CK
> - Free clk_data->clks as well
> - Get rid of private data structure
> 
> Enric Balletbo i Serra (1):
>   drm/mediatek: Fix mediatek-drm device probing
> 
> Matthias Brugger (3):
>   drm/mediatek: Use regmap for register access
>   drm/mediatek: Omit warning on probe defers
>   soc: mediatek: Move mt8173 MMSYS to platform driver
> 
>  drivers/clk/mediatek/clk-mt8173.c         | 104 ----------------
>  drivers/gpu/drm/mediatek/Kconfig          |   2 +
>  drivers/gpu/drm/mediatek/mtk_disp_color.c |   5 +-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c   |   5 +-
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c  |   5 +-
>  drivers/gpu/drm/mediatek/mtk_dpi.c        |  12 +-
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c   |   4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c    |  53 ++++----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h    |   4 +-
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c    |  45 ++++---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.h    |   2 +-
>  drivers/gpu/drm/mediatek/mtk_dsi.c        |   8 +-
>  drivers/gpu/drm/mediatek/mtk_hdmi.c       |   4 +-
>  drivers/soc/mediatek/Kconfig              |   7 ++
>  drivers/soc/mediatek/Makefile             |   1 +
>  drivers/soc/mediatek/mt8173-mmsys.c       | 143 ++++++++++++++++++++++
>  16 files changed, 233 insertions(+), 171 deletions(-)
>  create mode 100644 drivers/soc/mediatek/mt8173-mmsys.c
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
