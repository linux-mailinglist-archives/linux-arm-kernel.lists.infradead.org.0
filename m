Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3B1194244
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 16:02:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+VRScOBnCv54HS+PuNdiTpkD0KzYWxYrjMTmd0G3sOE=; b=BbRp4eQlldd3Ps
	BVreYTOeGJasI1+rYwZ48YKgb1riWolQQxoZRlhIXIl1pDR9rQ6WBe2w/+SPmI60LY51uNVxC33Lb
	bWyGcmuPrPVAWcbTNtB+YBnLs1VAxT3ew2Nj7ZC3UCF8MC36gVVc4S/ltn6Q8fq7bXDxpFZndZxE4
	T/Rp+c2MwUM2+TIUNk0bGILGNahDiKFXJ+Ft9+A14yLo04AP7qBWsurbAkfv9g+iDOa+ZZHuzX6gg
	M7lLf3edQI37E4moDzsM8EEab635sKHolsUxigmxrU4jvXAK7XtOxq+bgJhYuPjn0cGrJ54XPBPNz
	V1hglWygi0kaeOmp3uEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHU17-0000TC-Jo; Thu, 26 Mar 2020 15:01:57 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHU0n-0000R4-31; Thu, 26 Mar 2020 15:01:40 +0000
X-UUID: 7b99ddd1d743490cbed68db1551b7f52-20200326
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=FIellL6PCHRipyqR04VazAI65bQngInlMl4x1+YtWms=; 
 b=RsZin8+GbtA+z0+L9syPZkfwr02K2Gicgh08MryKKA6DbdzK9ga2tfKpXXcXS2Ft9TgZetbbqkBwBRTkSm4r6qbTKLKil5ExLyBOYxwIJE86CED13P2OM6HwvaTyIH0aLzpyL6l9WmYR4ESY9psAbjZn7yahWgjTwuAObvq0u48=;
X-UUID: 7b99ddd1d743490cbed68db1551b7f52-20200326
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 652970085; Thu, 26 Mar 2020 07:01:33 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Mar 2020 07:51:30 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Mar 2020 22:51:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 26 Mar 2020 22:51:16 +0800
Message-ID: <1585234277.12089.3.camel@mtksdaap41>
Subject: Re: [PATCH v12 4/5] soc / drm: mediatek: Move routing control to
 mmsys device
From: CK Hu <ck.hu@mediatek.com>
To: Matthias Brugger <mbrugger@suse.com>
Date: Thu, 26 Mar 2020 22:51:17 +0800
In-Reply-To: <f3c2926a-ef92-b004-9786-5be1645af497@suse.com>
References: <20200311165322.1594233-1-enric.balletbo@collabora.com>
 <20200311165322.1594233-5-enric.balletbo@collabora.com>
 <02290a21-7392-a2cf-576c-215091ec05e8@suse.com>
 <1585177534.26117.4.camel@mtksdaap41>
 <f3c2926a-ef92-b004-9786-5be1645af497@suse.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_080137_162312_6A6F9456 
X-CRM114-Status: GOOD (  25.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 p.zabel@pengutronix.de, frank-w@public-files.de,
 Seiya Wang <seiya.wang@mediatek.com>, sean.wang@mediatek.com,
 Houlong Wei <houlong.wei@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, Mauro
 Carvalho Chehab <mchehab@kernel.org>, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 Daniel Vetter <daniel@ffwll.ch>, matthias.bgg@kernel.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Matthias:

On Thu, 2020-03-26 at 12:54 +0100, Matthias Brugger wrote:
> Hi CK,
> 
> On 26/03/2020 00:05, CK Hu wrote:
> > Hi, Matthias:
> > 
> > On Wed, 2020-03-25 at 17:16 +0100, Matthias Brugger wrote:
> >>
> >> On 11/03/2020 17:53, Enric Balletbo i Serra wrote:
> >>> Provide a mtk_mmsys_ddp_connect() and mtk_mmsys_disconnect() functions to
> >>> replace mtk_ddp_add_comp_to_path() and mtk_ddp_remove_comp_from_path().
> >>> Those functions will allow DRM driver and others to control the data
> >>> path routing.
> >>>
> >>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> >>> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> >>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> >>> Acked-by: CK Hu <ck.hu@mediatek.com>
> >>
> >> This patch does not apply against v5.6-rc1.
> >> Please rebase as this is a quite big patch and it won't be easy to do that by hand.
> > 
> > I think this patch depends on [1] which has been acked by me and I have
> > not picked it. The simple way is that you pick [1] first and then pick
> > this series.
> > 
> > [1] 
> > https://patchwork.kernel.org/patch/11406227/
> > 
> 
> You would need to provide a stable tag for me that I can merge into my tree. You
> can also try to merge my for-next [1] which has the newest version from Enric.
> If you see any merge conflict, then we have to do something about it :)
> 
> Regards,
> Matthias
> 
> [1]
> https://git.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux.git/log/?h=for-next
> 

You have applied this series, so I would not apply other patches which
would conflict with this series. After this series land on main stream
(wish it happen in this merge window), I would rebase other patch on
main stream.

Regards,
CK

> > Regards,
> > CK
> > 
> >>
> >> Regards,
> >> Matthias
> >>
> >>> ---
> >>>
> >>> Changes in v12: None
> >>> Changes in v10:
> >>> - Select CONFIG_MTK_MMSYS (CK)
> >>> - Pass device pointer of mmsys device instead of config regs (CK)
> >>>
> >>> Changes in v9:
> >>> - Introduced a new patch to move routing control into mmsys driver.
> >>> - Removed the patch to use regmap as is not needed anymore.
> >>>
> >>> Changes in v8: None
> >>> Changes in v7: None
> >>>
> >>>  drivers/gpu/drm/mediatek/Kconfig        |   1 +
> >>>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c |  19 +-
> >>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c  | 256 ----------------------
> >>>  drivers/gpu/drm/mediatek/mtk_drm_ddp.h  |   7 -
> >>>  drivers/gpu/drm/mediatek/mtk_drm_drv.c  |  14 +-
> >>>  drivers/gpu/drm/mediatek/mtk_drm_drv.h  |   2 +-
> >>>  drivers/soc/mediatek/mtk-mmsys.c        | 279 ++++++++++++++++++++++++
> >>>  include/linux/soc/mediatek/mtk-mmsys.h  |  20 ++
> >>>  8 files changed, 316 insertions(+), 282 deletions(-)
> >>>  create mode 100644 include/linux/soc/mediatek/mtk-mmsys.h
> >>>
> >>> diff --git a/drivers/gpu/drm/mediatek/Kconfig b/drivers/gpu/drm/mediatek/Kconfig
> >>> index fa5ffc4fe823..c420f5a3d33b 100644
> >>> --- a/drivers/gpu/drm/mediatek/Kconfig
> >>> +++ b/drivers/gpu/drm/mediatek/Kconfig
> >>> @@ -11,6 +11,7 @@ config DRM_MEDIATEK
> >>>  	select DRM_MIPI_DSI
> >>>  	select DRM_PANEL
> >>>  	select MEMORY
> >>> +	select MTK_MMSYS
> >>>  	select MTK_SMI
> >>>  	select VIDEOMODE_HELPERS
> >>>  	help
> >>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> >>> index 0e05683d7b53..579a5a5d4472 100644
> >>> --- a/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> >>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_crtc.c
> >>> @@ -6,6 +6,7 @@
> >>>  #include <linux/clk.h>
> >>>  #include <linux/pm_runtime.h>
> >>>  #include <linux/soc/mediatek/mtk-cmdq.h>
> >>> +#include <linux/soc/mediatek/mtk-mmsys.h>
> >>>  
> >>>  #include <asm/barrier.h>
> >>>  #include <soc/mediatek/smi.h>
> >>> @@ -28,7 +29,7 @@
> >>>   * @enabled: records whether crtc_enable succeeded
> >>>   * @planes: array of 4 drm_plane structures, one for each overlay plane
> >>>   * @pending_planes: whether any plane has pending changes to be applied
> >>> - * @config_regs: memory mapped mmsys configuration register space
> >>> + * @mmsys_dev: pointer to the mmsys device for configuration registers
> >>>   * @mutex: handle to one of the ten disp_mutex streams
> >>>   * @ddp_comp_nr: number of components in ddp_comp
> >>>   * @ddp_comp: array of pointers the mtk_ddp_comp structures used by this crtc
> >>> @@ -50,7 +51,7 @@ struct mtk_drm_crtc {
> >>>  	u32				cmdq_event;
> >>>  #endif
> >>>  
> >>> -	void __iomem			*config_regs;
> >>> +	struct device			*mmsys_dev;
> >>>  	struct mtk_disp_mutex		*mutex;
> >>>  	unsigned int			ddp_comp_nr;
> >>>  	struct mtk_ddp_comp		**ddp_comp;
> >>> @@ -296,9 +297,9 @@ static int mtk_crtc_ddp_hw_init(struct mtk_drm_crtc *mtk_crtc)
> >>>  	}
> >>>  
> >>>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> >>> -		mtk_ddp_add_comp_to_path(mtk_crtc->config_regs,
> >>> -					 mtk_crtc->ddp_comp[i]->id,
> >>> -					 mtk_crtc->ddp_comp[i + 1]->id);
> >>> +		mtk_mmsys_ddp_connect(mtk_crtc->mmsys_dev,
> >>> +				      mtk_crtc->ddp_comp[i]->id,
> >>> +				      mtk_crtc->ddp_comp[i + 1]->id);
> >>>  		mtk_disp_mutex_add_comp(mtk_crtc->mutex,
> >>>  					mtk_crtc->ddp_comp[i]->id);
> >>>  	}
> >>> @@ -355,9 +356,9 @@ static void mtk_crtc_ddp_hw_fini(struct mtk_drm_crtc *mtk_crtc)
> >>>  					   mtk_crtc->ddp_comp[i]->id);
> >>>  	mtk_disp_mutex_disable(mtk_crtc->mutex);
> >>>  	for (i = 0; i < mtk_crtc->ddp_comp_nr - 1; i++) {
> >>> -		mtk_ddp_remove_comp_from_path(mtk_crtc->config_regs,
> >>> -					      mtk_crtc->ddp_comp[i]->id,
> >>> -					      mtk_crtc->ddp_comp[i + 1]->id);
> >>> +		mtk_mmsys_ddp_disconnect(mtk_crtc->mmsys_dev,
> >>> +					 mtk_crtc->ddp_comp[i]->id,
> >>> +					 mtk_crtc->ddp_comp[i + 1]->id);
> >>>  		mtk_disp_mutex_remove_comp(mtk_crtc->mutex,
> >>>  					   mtk_crtc->ddp_comp[i]->id);
> >>>  	}
> >>> @@ -761,7 +762,7 @@ int mtk_drm_crtc_create(struct drm_device *drm_dev,
> >>>  	if (!mtk_crtc)
> >>>  		return -ENOMEM;
> >>>  
> >>> -	mtk_crtc->config_regs = priv->config_regs;
> >>> +	mtk_crtc->mmsys_dev = priv->mmsys_dev;
> >>>  	mtk_crtc->ddp_comp_nr = path_len;
> >>>  	mtk_crtc->ddp_comp = devm_kmalloc_array(dev, mtk_crtc->ddp_comp_nr,
> >>>  						sizeof(*mtk_crtc->ddp_comp),
> >>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> >>> index b885f60f474c..014c1bbe1df2 100644
> >>> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> >>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> >>> @@ -13,26 +13,6 @@
> >>>  #include "mtk_drm_ddp.h"
> >>>  #include "mtk_drm_ddp_comp.h"
> >>>  
> >>> -#define DISP_REG_CONFIG_DISP_OVL0_MOUT_EN	0x040
> >>> -#define DISP_REG_CONFIG_DISP_OVL1_MOUT_EN	0x044
> >>> -#define DISP_REG_CONFIG_DISP_OD_MOUT_EN		0x048
> >>> -#define DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN	0x04c
> >>> -#define DISP_REG_CONFIG_DISP_UFOE_MOUT_EN	0x050
> >>> -#define DISP_REG_CONFIG_DISP_COLOR0_SEL_IN	0x084
> >>> -#define DISP_REG_CONFIG_DISP_COLOR1_SEL_IN	0x088
> >>> -#define DISP_REG_CONFIG_DSIE_SEL_IN		0x0a4
> >>> -#define DISP_REG_CONFIG_DSIO_SEL_IN		0x0a8
> >>> -#define DISP_REG_CONFIG_DPI_SEL_IN		0x0ac
> >>> -#define DISP_REG_CONFIG_DISP_RDMA2_SOUT		0x0b8
> >>> -#define DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN	0x0c4
> >>> -#define DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN	0x0c8
> >>> -#define DISP_REG_CONFIG_MMSYS_CG_CON0		0x100
> >>> -
> >>> -#define DISP_REG_CONFIG_DISP_OVL_MOUT_EN	0x030
> >>> -#define DISP_REG_CONFIG_OUT_SEL			0x04c
> >>> -#define DISP_REG_CONFIG_DSI_SEL			0x050
> >>> -#define DISP_REG_CONFIG_DPI_SEL			0x064
> >>> -
> >>>  #define MT2701_DISP_MUTEX0_MOD0			0x2c
> >>>  #define MT2701_DISP_MUTEX0_SOF0			0x30
> >>>  
> >>> @@ -94,48 +74,6 @@
> >>>  #define MUTEX_SOF_DSI2			5
> >>>  #define MUTEX_SOF_DSI3			6
> >>>  
> >>> -#define OVL0_MOUT_EN_COLOR0		0x1
> >>> -#define OD_MOUT_EN_RDMA0		0x1
> >>> -#define OD1_MOUT_EN_RDMA1		BIT(16)
> >>> -#define UFOE_MOUT_EN_DSI0		0x1
> >>> -#define COLOR0_SEL_IN_OVL0		0x1
> >>> -#define OVL1_MOUT_EN_COLOR1		0x1
> >>> -#define GAMMA_MOUT_EN_RDMA1		0x1
> >>> -#define RDMA0_SOUT_DPI0			0x2
> >>> -#define RDMA0_SOUT_DPI1			0x3
> >>> -#define RDMA0_SOUT_DSI1			0x1
> >>> -#define RDMA0_SOUT_DSI2			0x4
> >>> -#define RDMA0_SOUT_DSI3			0x5
> >>> -#define RDMA1_SOUT_DPI0			0x2
> >>> -#define RDMA1_SOUT_DPI1			0x3
> >>> -#define RDMA1_SOUT_DSI1			0x1
> >>> -#define RDMA1_SOUT_DSI2			0x4
> >>> -#define RDMA1_SOUT_DSI3			0x5
> >>> -#define RDMA2_SOUT_DPI0			0x2
> >>> -#define RDMA2_SOUT_DPI1			0x3
> >>> -#define RDMA2_SOUT_DSI1			0x1
> >>> -#define RDMA2_SOUT_DSI2			0x4
> >>> -#define RDMA2_SOUT_DSI3			0x5
> >>> -#define DPI0_SEL_IN_RDMA1		0x1
> >>> -#define DPI0_SEL_IN_RDMA2		0x3
> >>> -#define DPI1_SEL_IN_RDMA1		(0x1 << 8)
> >>> -#define DPI1_SEL_IN_RDMA2		(0x3 << 8)
> >>> -#define DSI0_SEL_IN_RDMA1		0x1
> >>> -#define DSI0_SEL_IN_RDMA2		0x4
> >>> -#define DSI1_SEL_IN_RDMA1		0x1
> >>> -#define DSI1_SEL_IN_RDMA2		0x4
> >>> -#define DSI2_SEL_IN_RDMA1		(0x1 << 16)
> >>> -#define DSI2_SEL_IN_RDMA2		(0x4 << 16)
> >>> -#define DSI3_SEL_IN_RDMA1		(0x1 << 16)
> >>> -#define DSI3_SEL_IN_RDMA2		(0x4 << 16)
> >>> -#define COLOR1_SEL_IN_OVL1		0x1
> >>> -
> >>> -#define OVL_MOUT_EN_RDMA		0x1
> >>> -#define BLS_TO_DSI_RDMA1_TO_DPI1	0x8
> >>> -#define BLS_TO_DPI_RDMA1_TO_DSI		0x2
> >>> -#define DSI_SEL_IN_BLS			0x0
> >>> -#define DPI_SEL_IN_BLS			0x0
> >>> -#define DSI_SEL_IN_RDMA			0x1
> >>>  
> >>>  struct mtk_disp_mutex {
> >>>  	int id;
> >>> @@ -246,200 +184,6 @@ static const struct mtk_ddp_data mt8173_ddp_driver_data = {
> >>>  	.mutex_sof_reg = MT2701_DISP_MUTEX0_SOF0,
> >>>  };
> >>>  
> >>> -static unsigned int mtk_ddp_mout_en(enum mtk_ddp_comp_id cur,
> >>> -				    enum mtk_ddp_comp_id next,
> >>> -				    unsigned int *addr)
> >>> -{
> >>> -	unsigned int value;
> >>> -
> >>> -	if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN;
> >>> -		value = OVL0_MOUT_EN_COLOR0;
> >>> -	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_OVL_MOUT_EN;
> >>> -		value = OVL_MOUT_EN_RDMA;
> >>> -	} else if (cur == DDP_COMPONENT_OD0 && next == DDP_COMPONENT_RDMA0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
> >>> -		value = OD_MOUT_EN_RDMA0;
> >>> -	} else if (cur == DDP_COMPONENT_UFOE && next == DDP_COMPONENT_DSI0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_UFOE_MOUT_EN;
> >>> -		value = UFOE_MOUT_EN_DSI0;
> >>> -	} else if (cur == DDP_COMPONENT_OVL1 && next == DDP_COMPONENT_COLOR1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_OVL1_MOUT_EN;
> >>> -		value = OVL1_MOUT_EN_COLOR1;
> >>> -	} else if (cur == DDP_COMPONENT_GAMMA && next == DDP_COMPONENT_RDMA1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN;
> >>> -		value = GAMMA_MOUT_EN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_OD1 && next == DDP_COMPONENT_RDMA1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
> >>> -		value = OD1_MOUT_EN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> -		value = RDMA0_SOUT_DPI0;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> -		value = RDMA0_SOUT_DPI1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> -		value = RDMA0_SOUT_DSI1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI2) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> -		value = RDMA0_SOUT_DSI2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI3) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> -		value = RDMA0_SOUT_DSI3;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> -		value = RDMA1_SOUT_DSI1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> -		value = RDMA1_SOUT_DSI2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> -		value = RDMA1_SOUT_DSI3;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> -		value = RDMA1_SOUT_DPI0;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> -		value = RDMA1_SOUT_DPI1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> -		value = RDMA2_SOUT_DPI0;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> -		value = RDMA2_SOUT_DPI1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> -		value = RDMA2_SOUT_DSI1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> -		value = RDMA2_SOUT_DSI2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> -		value = RDMA2_SOUT_DSI3;
> >>> -	} else {
> >>> -		value = 0;
> >>> -	}
> >>> -
> >>> -	return value;
> >>> -}
> >>> -
> >>> -static unsigned int mtk_ddp_sel_in(enum mtk_ddp_comp_id cur,
> >>> -				   enum mtk_ddp_comp_id next,
> >>> -				   unsigned int *addr)
> >>> -{
> >>> -	unsigned int value;
> >>> -
> >>> -	if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_COLOR0_SEL_IN;
> >>> -		value = COLOR0_SEL_IN_OVL0;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> >>> -		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> -		value = DPI0_SEL_IN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
> >>> -		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> -		value = DPI1_SEL_IN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> >>> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> -		value = DSI0_SEL_IN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
> >>> -		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
> >>> -		value = DSI1_SEL_IN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
> >>> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> -		value = DSI2_SEL_IN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
> >>> -		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
> >>> -		value = DSI3_SEL_IN_RDMA1;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
> >>> -		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> -		value = DPI0_SEL_IN_RDMA2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
> >>> -		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> -		value = DPI1_SEL_IN_RDMA2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI0) {
> >>> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> -		value = DSI0_SEL_IN_RDMA2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
> >>> -		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
> >>> -		value = DSI1_SEL_IN_RDMA2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
> >>> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> -		value = DSI2_SEL_IN_RDMA2;
> >>> -	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
> >>> -		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> -		value = DSI3_SEL_IN_RDMA2;
> >>> -	} else if (cur == DDP_COMPONENT_OVL1 && next == DDP_COMPONENT_COLOR1) {
> >>> -		*addr = DISP_REG_CONFIG_DISP_COLOR1_SEL_IN;
> >>> -		value = COLOR1_SEL_IN_OVL1;
> >>> -	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> >>> -		*addr = DISP_REG_CONFIG_DSI_SEL;
> >>> -		value = DSI_SEL_IN_BLS;
> >>> -	} else {
> >>> -		value = 0;
> >>> -	}
> >>> -
> >>> -	return value;
> >>> -}
> >>> -
> >>> -static void mtk_ddp_sout_sel(void __iomem *config_regs,
> >>> -			     enum mtk_ddp_comp_id cur,
> >>> -			     enum mtk_ddp_comp_id next)
> >>> -{
> >>> -	if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> >>> -		writel_relaxed(BLS_TO_DSI_RDMA1_TO_DPI1,
> >>> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> >>> -	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> >>> -		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
> >>> -			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> >>> -		writel_relaxed(DSI_SEL_IN_RDMA,
> >>> -			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> >>> -		writel_relaxed(DPI_SEL_IN_BLS,
> >>> -			       config_regs + DISP_REG_CONFIG_DPI_SEL);
> >>> -	}
> >>> -}
> >>> -
> >>> -void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> >>> -			      enum mtk_ddp_comp_id cur,
> >>> -			      enum mtk_ddp_comp_id next)
> >>> -{
> >>> -	unsigned int addr, value, reg;
> >>> -
> >>> -	value = mtk_ddp_mout_en(cur, next, &addr);
> >>> -	if (value) {
> >>> -		reg = readl_relaxed(config_regs + addr) | value;
> >>> -		writel_relaxed(reg, config_regs + addr);
> >>> -	}
> >>> -
> >>> -	mtk_ddp_sout_sel(config_regs, cur, next);
> >>> -
> >>> -	value = mtk_ddp_sel_in(cur, next, &addr);
> >>> -	if (value) {
> >>> -		reg = readl_relaxed(config_regs + addr) | value;
> >>> -		writel_relaxed(reg, config_regs + addr);
> >>> -	}
> >>> -}
> >>> -
> >>> -void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> >>> -				   enum mtk_ddp_comp_id cur,
> >>> -				   enum mtk_ddp_comp_id next)
> >>> -{
> >>> -	unsigned int addr, value, reg;
> >>> -
> >>> -	value = mtk_ddp_mout_en(cur, next, &addr);
> >>> -	if (value) {
> >>> -		reg = readl_relaxed(config_regs + addr) & ~value;
> >>> -		writel_relaxed(reg, config_regs + addr);
> >>> -	}
> >>> -
> >>> -	value = mtk_ddp_sel_in(cur, next, &addr);
> >>> -	if (value) {
> >>> -		reg = readl_relaxed(config_regs + addr) & ~value;
> >>> -		writel_relaxed(reg, config_regs + addr);
> >>> -	}
> >>> -}
> >>> -
> >>>  struct mtk_disp_mutex *mtk_disp_mutex_get(struct device *dev, unsigned int id)
> >>>  {
> >>>  	struct mtk_ddp *ddp = dev_get_drvdata(dev);
> >>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> >>> index 827be424a148..6b691a57be4a 100644
> >>> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> >>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.h
> >>> @@ -12,13 +12,6 @@ struct regmap;
> >>>  struct device;
> >>>  struct mtk_disp_mutex;
> >>>  
> >>> -void mtk_ddp_add_comp_to_path(void __iomem *config_regs,
> >>> -			      enum mtk_ddp_comp_id cur,
> >>> -			      enum mtk_ddp_comp_id next);
> >>> -void mtk_ddp_remove_comp_from_path(void __iomem *config_regs,
> >>> -				   enum mtk_ddp_comp_id cur,
> >>> -				   enum mtk_ddp_comp_id next);
> >>> -
> >>>  struct mtk_disp_mutex *mtk_disp_mutex_get(struct device *dev, unsigned int id);
> >>>  int mtk_disp_mutex_prepare(struct mtk_disp_mutex *mutex);
> >>>  void mtk_disp_mutex_add_comp(struct mtk_disp_mutex *mutex,
> >>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> >>> index 8e2d3cb62ad5..208f9c5256ef 100644
> >>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> >>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> >>> @@ -10,6 +10,7 @@
> >>>  #include <linux/of_address.h>
> >>>  #include <linux/of_platform.h>
> >>>  #include <linux/pm_runtime.h>
> >>> +#include <linux/soc/mediatek/mtk-mmsys.h>
> >>>  #include <linux/dma-mapping.h>
> >>>  
> >>>  #include <drm/drm_atomic.h>
> >>> @@ -425,7 +426,6 @@ static int mtk_drm_probe(struct platform_device *pdev)
> >>>  {
> >>>  	struct device *dev = &pdev->dev;
> >>>  	struct mtk_drm_private *private;
> >>> -	struct resource *mem;
> >>>  	struct device_node *node;
> >>>  	struct component_match *match = NULL;
> >>>  	int ret;
> >>> @@ -436,14 +436,10 @@ static int mtk_drm_probe(struct platform_device *pdev)
> >>>  		return -ENOMEM;
> >>>  
> >>>  	private->data = of_device_get_match_data(dev);
> >>> -
> >>> -	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >>> -	private->config_regs = devm_ioremap_resource(dev, mem);
> >>> -	if (IS_ERR(private->config_regs)) {
> >>> -		ret = PTR_ERR(private->config_regs);
> >>> -		dev_err(dev, "Failed to ioremap mmsys-config resource: %d\n",
> >>> -			ret);
> >>> -		return ret;
> >>> +	private->mmsys_dev = dev->parent;
> >>> +	if (!private->mmsys_dev) {
> >>> +		dev_err(dev, "Failed to get MMSYS device\n");
> >>> +		return -ENODEV;
> >>>  	}
> >>>  
> >>>  	/* Iterate over sibling DISP function blocks */
> >>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.h b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> >>> index 17bc99b9f5d4..b5be63e53176 100644
> >>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> >>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.h
> >>> @@ -39,7 +39,7 @@ struct mtk_drm_private {
> >>>  
> >>>  	struct device_node *mutex_node;
> >>>  	struct device *mutex_dev;
> >>> -	void __iomem *config_regs;
> >>> +	struct device *mmsys_dev;
> >>>  	struct device_node *comp_node[DDP_COMPONENT_ID_MAX];
> >>>  	struct mtk_ddp_comp *ddp_comp[DDP_COMPONENT_ID_MAX];
> >>>  	const struct mtk_mmsys_driver_data *data;
> >>> diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
> >>> index dbdfedd302fa..4b286b525cd3 100644
> >>> --- a/drivers/soc/mediatek/mtk-mmsys.c
> >>> +++ b/drivers/soc/mediatek/mtk-mmsys.c
> >>> @@ -5,8 +5,76 @@
> >>>   */
> >>>  
> >>>  #include <linux/clk-provider.h>
> >>> +#include <linux/device.h>
> >>>  #include <linux/of_device.h>
> >>>  #include <linux/platform_device.h>
> >>> +#include <linux/soc/mediatek/mtk-mmsys.h>
> >>> +
> >>> +#include "../../gpu/drm/mediatek/mtk_drm_ddp.h"
> >>> +#include "../../gpu/drm/mediatek/mtk_drm_ddp_comp.h"
> >>> +
> >>> +#define DISP_REG_CONFIG_DISP_OVL0_MOUT_EN	0x040
> >>> +#define DISP_REG_CONFIG_DISP_OVL1_MOUT_EN	0x044
> >>> +#define DISP_REG_CONFIG_DISP_OD_MOUT_EN		0x048
> >>> +#define DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN	0x04c
> >>> +#define DISP_REG_CONFIG_DISP_UFOE_MOUT_EN	0x050
> >>> +#define DISP_REG_CONFIG_DISP_COLOR0_SEL_IN	0x084
> >>> +#define DISP_REG_CONFIG_DISP_COLOR1_SEL_IN	0x088
> >>> +#define DISP_REG_CONFIG_DSIE_SEL_IN		0x0a4
> >>> +#define DISP_REG_CONFIG_DSIO_SEL_IN		0x0a8
> >>> +#define DISP_REG_CONFIG_DPI_SEL_IN		0x0ac
> >>> +#define DISP_REG_CONFIG_DISP_RDMA2_SOUT		0x0b8
> >>> +#define DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN	0x0c4
> >>> +#define DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN	0x0c8
> >>> +#define DISP_REG_CONFIG_MMSYS_CG_CON0		0x100
> >>> +
> >>> +#define DISP_REG_CONFIG_DISP_OVL_MOUT_EN	0x030
> >>> +#define DISP_REG_CONFIG_OUT_SEL			0x04c
> >>> +#define DISP_REG_CONFIG_DSI_SEL			0x050
> >>> +#define DISP_REG_CONFIG_DPI_SEL			0x064
> >>> +
> >>> +#define OVL0_MOUT_EN_COLOR0			0x1
> >>> +#define OD_MOUT_EN_RDMA0			0x1
> >>> +#define OD1_MOUT_EN_RDMA1			BIT(16)
> >>> +#define UFOE_MOUT_EN_DSI0			0x1
> >>> +#define COLOR0_SEL_IN_OVL0			0x1
> >>> +#define OVL1_MOUT_EN_COLOR1			0x1
> >>> +#define GAMMA_MOUT_EN_RDMA1			0x1
> >>> +#define RDMA0_SOUT_DPI0				0x2
> >>> +#define RDMA0_SOUT_DPI1				0x3
> >>> +#define RDMA0_SOUT_DSI1				0x1
> >>> +#define RDMA0_SOUT_DSI2				0x4
> >>> +#define RDMA0_SOUT_DSI3				0x5
> >>> +#define RDMA1_SOUT_DPI0				0x2
> >>> +#define RDMA1_SOUT_DPI1				0x3
> >>> +#define RDMA1_SOUT_DSI1				0x1
> >>> +#define RDMA1_SOUT_DSI2				0x4
> >>> +#define RDMA1_SOUT_DSI3				0x5
> >>> +#define RDMA2_SOUT_DPI0				0x2
> >>> +#define RDMA2_SOUT_DPI1				0x3
> >>> +#define RDMA2_SOUT_DSI1				0x1
> >>> +#define RDMA2_SOUT_DSI2				0x4
> >>> +#define RDMA2_SOUT_DSI3				0x5
> >>> +#define DPI0_SEL_IN_RDMA1			0x1
> >>> +#define DPI0_SEL_IN_RDMA2			0x3
> >>> +#define DPI1_SEL_IN_RDMA1			(0x1 << 8)
> >>> +#define DPI1_SEL_IN_RDMA2			(0x3 << 8)
> >>> +#define DSI0_SEL_IN_RDMA1			0x1
> >>> +#define DSI0_SEL_IN_RDMA2			0x4
> >>> +#define DSI1_SEL_IN_RDMA1			0x1
> >>> +#define DSI1_SEL_IN_RDMA2			0x4
> >>> +#define DSI2_SEL_IN_RDMA1			(0x1 << 16)
> >>> +#define DSI2_SEL_IN_RDMA2			(0x4 << 16)
> >>> +#define DSI3_SEL_IN_RDMA1			(0x1 << 16)
> >>> +#define DSI3_SEL_IN_RDMA2			(0x4 << 16)
> >>> +#define COLOR1_SEL_IN_OVL1			0x1
> >>> +
> >>> +#define OVL_MOUT_EN_RDMA			0x1
> >>> +#define BLS_TO_DSI_RDMA1_TO_DPI1		0x8
> >>> +#define BLS_TO_DPI_RDMA1_TO_DSI			0x2
> >>> +#define DSI_SEL_IN_BLS				0x0
> >>> +#define DPI_SEL_IN_BLS				0x0
> >>> +#define DSI_SEL_IN_RDMA				0x1
> >>>  
> >>>  struct mtk_mmsys_driver_data {
> >>>  	const char *clk_driver;
> >>> @@ -16,10 +84,221 @@ static const struct mtk_mmsys_driver_data mt8173_mmsys_driver_data = {
> >>>  	.clk_driver = "clk-mt8173-mm",
> >>>  };
> >>>  
> >>> +static unsigned int mtk_mmsys_ddp_mout_en(enum mtk_ddp_comp_id cur,
> >>> +					  enum mtk_ddp_comp_id next,
> >>> +					  unsigned int *addr)
> >>> +{
> >>> +	unsigned int value;
> >>> +
> >>> +	if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_OVL0_MOUT_EN;
> >>> +		value = OVL0_MOUT_EN_COLOR0;
> >>> +	} else if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_RDMA0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_OVL_MOUT_EN;
> >>> +		value = OVL_MOUT_EN_RDMA;
> >>> +	} else if (cur == DDP_COMPONENT_OD0 && next == DDP_COMPONENT_RDMA0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
> >>> +		value = OD_MOUT_EN_RDMA0;
> >>> +	} else if (cur == DDP_COMPONENT_UFOE && next == DDP_COMPONENT_DSI0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_UFOE_MOUT_EN;
> >>> +		value = UFOE_MOUT_EN_DSI0;
> >>> +	} else if (cur == DDP_COMPONENT_OVL1 && next == DDP_COMPONENT_COLOR1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_OVL1_MOUT_EN;
> >>> +		value = OVL1_MOUT_EN_COLOR1;
> >>> +	} else if (cur == DDP_COMPONENT_GAMMA && next == DDP_COMPONENT_RDMA1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_GAMMA_MOUT_EN;
> >>> +		value = GAMMA_MOUT_EN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_OD1 && next == DDP_COMPONENT_RDMA1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
> >>> +		value = OD1_MOUT_EN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> +		value = RDMA0_SOUT_DPI0;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> +		value = RDMA0_SOUT_DPI1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> +		value = RDMA0_SOUT_DSI1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI2) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> +		value = RDMA0_SOUT_DSI2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI3) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
> >>> +		value = RDMA0_SOUT_DSI3;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> +		value = RDMA1_SOUT_DSI1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> +		value = RDMA1_SOUT_DSI2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> +		value = RDMA1_SOUT_DSI3;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> +		value = RDMA1_SOUT_DPI0;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
> >>> +		value = RDMA1_SOUT_DPI1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> +		value = RDMA2_SOUT_DPI0;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> +		value = RDMA2_SOUT_DPI1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> +		value = RDMA2_SOUT_DSI1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> +		value = RDMA2_SOUT_DSI2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
> >>> +		value = RDMA2_SOUT_DSI3;
> >>> +	} else {
> >>> +		value = 0;
> >>> +	}
> >>> +
> >>> +	return value;
> >>> +}
> >>> +
> >>> +static unsigned int mtk_mmsys_ddp_sel_in(enum mtk_ddp_comp_id cur,
> >>> +					 enum mtk_ddp_comp_id next,
> >>> +					 unsigned int *addr)
> >>> +{
> >>> +	unsigned int value;
> >>> +
> >>> +	if (cur == DDP_COMPONENT_OVL0 && next == DDP_COMPONENT_COLOR0) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_COLOR0_SEL_IN;
> >>> +		value = COLOR0_SEL_IN_OVL0;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
> >>> +		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> +		value = DPI0_SEL_IN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
> >>> +		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> +		value = DPI1_SEL_IN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI0) {
> >>> +		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> +		value = DSI0_SEL_IN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
> >>> +		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
> >>> +		value = DSI1_SEL_IN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
> >>> +		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> +		value = DSI2_SEL_IN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
> >>> +		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
> >>> +		value = DSI3_SEL_IN_RDMA1;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
> >>> +		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> +		value = DPI0_SEL_IN_RDMA2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
> >>> +		*addr = DISP_REG_CONFIG_DPI_SEL_IN;
> >>> +		value = DPI1_SEL_IN_RDMA2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI0) {
> >>> +		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> +		value = DSI0_SEL_IN_RDMA2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
> >>> +		*addr = DISP_REG_CONFIG_DSIO_SEL_IN;
> >>> +		value = DSI1_SEL_IN_RDMA2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
> >>> +		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> +		value = DSI2_SEL_IN_RDMA2;
> >>> +	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
> >>> +		*addr = DISP_REG_CONFIG_DSIE_SEL_IN;
> >>> +		value = DSI3_SEL_IN_RDMA2;
> >>> +	} else if (cur == DDP_COMPONENT_OVL1 && next == DDP_COMPONENT_COLOR1) {
> >>> +		*addr = DISP_REG_CONFIG_DISP_COLOR1_SEL_IN;
> >>> +		value = COLOR1_SEL_IN_OVL1;
> >>> +	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> >>> +		*addr = DISP_REG_CONFIG_DSI_SEL;
> >>> +		value = DSI_SEL_IN_BLS;
> >>> +	} else {
> >>> +		value = 0;
> >>> +	}
> >>> +
> >>> +	return value;
> >>> +}
> >>> +
> >>> +static void mtk_mmsys_ddp_sout_sel(void __iomem *config_regs,
> >>> +				   enum mtk_ddp_comp_id cur,
> >>> +				   enum mtk_ddp_comp_id next)
> >>> +{
> >>> +	if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DSI0) {
> >>> +		writel_relaxed(BLS_TO_DSI_RDMA1_TO_DPI1,
> >>> +			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> >>> +	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
> >>> +		writel_relaxed(BLS_TO_DPI_RDMA1_TO_DSI,
> >>> +			       config_regs + DISP_REG_CONFIG_OUT_SEL);
> >>> +		writel_relaxed(DSI_SEL_IN_RDMA,
> >>> +			       config_regs + DISP_REG_CONFIG_DSI_SEL);
> >>> +		writel_relaxed(DPI_SEL_IN_BLS,
> >>> +			       config_regs + DISP_REG_CONFIG_DPI_SEL);
> >>> +	}
> >>> +}
> >>> +
> >>> +void mtk_mmsys_ddp_connect(struct device *dev,
> >>> +			   enum mtk_ddp_comp_id cur,
> >>> +			   enum mtk_ddp_comp_id next)
> >>> +{
> >>> +	void __iomem *config_regs = dev_get_drvdata(dev);
> >>> +	unsigned int addr, value, reg;
> >>> +
> >>> +	value = mtk_mmsys_ddp_mout_en(cur, next, &addr);
> >>> +	if (value) {
> >>> +		reg = readl_relaxed(config_regs + addr) | value;
> >>> +		writel_relaxed(reg, config_regs + addr);
> >>> +	}
> >>> +
> >>> +	mtk_mmsys_ddp_sout_sel(config_regs, cur, next);
> >>> +
> >>> +	value = mtk_mmsys_ddp_sel_in(cur, next, &addr);
> >>> +	if (value) {
> >>> +		reg = readl_relaxed(config_regs + addr) | value;
> >>> +		writel_relaxed(reg, config_regs + addr);
> >>> +	}
> >>> +}
> >>> +
> >>> +void mtk_mmsys_ddp_disconnect(struct device *dev,
> >>> +			      enum mtk_ddp_comp_id cur,
> >>> +			      enum mtk_ddp_comp_id next)
> >>> +{
> >>> +	void __iomem *config_regs = dev_get_drvdata(dev);
> >>> +	unsigned int addr, value, reg;
> >>> +
> >>> +	value = mtk_mmsys_ddp_mout_en(cur, next, &addr);
> >>> +	if (value) {
> >>> +		reg = readl_relaxed(config_regs + addr) & ~value;
> >>> +		writel_relaxed(reg, config_regs + addr);
> >>> +	}
> >>> +
> >>> +	value = mtk_mmsys_ddp_sel_in(cur, next, &addr);
> >>> +	if (value) {
> >>> +		reg = readl_relaxed(config_regs + addr) & ~value;
> >>> +		writel_relaxed(reg, config_regs + addr);
> >>> +	}
> >>> +}
> >>> +
> >>>  static int mtk_mmsys_probe(struct platform_device *pdev)
> >>>  {
> >>>  	const struct mtk_mmsys_driver_data *data;
> >>> +	struct device *dev = &pdev->dev;
> >>>  	struct platform_device *clks;
> >>> +	void __iomem *config_regs;
> >>> +	struct resource *mem;
> >>> +	int ret;
> >>> +
> >>> +	mem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> >>> +	config_regs = devm_ioremap_resource(dev, mem);
> >>> +	if (IS_ERR(config_regs)) {
> >>> +		ret = PTR_ERR(config_regs);
> >>> +		dev_err(dev, "Failed to ioremap mmsys-config resource: %d\n",
> >>> +			ret);
> >>> +		return ret;
> >>> +	}
> >>> +
> >>> +	platform_set_drvdata(pdev, config_regs);
> >>>  
> >>>  	data = of_device_get_match_data(&pdev->dev);
> >>>  
> >>> diff --git a/include/linux/soc/mediatek/mtk-mmsys.h b/include/linux/soc/mediatek/mtk-mmsys.h
> >>> new file mode 100644
> >>> index 000000000000..7bab5d9a3d31
> >>> --- /dev/null
> >>> +++ b/include/linux/soc/mediatek/mtk-mmsys.h
> >>> @@ -0,0 +1,20 @@
> >>> +/* SPDX-License-Identifier: GPL-2.0-only */
> >>> +/*
> >>> + * Copyright (c) 2015 MediaTek Inc.
> >>> + */
> >>> +
> >>> +#ifndef __MTK_MMSYS_H
> >>> +#define __MTK_MMSYS_H
> >>> +
> >>> +enum mtk_ddp_comp_id;
> >>> +struct device;
> >>> +
> >>> +void mtk_mmsys_ddp_connect(struct device *dev,
> >>> +			   enum mtk_ddp_comp_id cur,
> >>> +			   enum mtk_ddp_comp_id next);
> >>> +
> >>> +void mtk_mmsys_ddp_disconnect(struct device *dev,
> >>> +			      enum mtk_ddp_comp_id cur,
> >>> +			      enum mtk_ddp_comp_id next);
> >>> +
> >>> +#endif /* __MTK_MMSYS_H */
> >>>
> > 
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
