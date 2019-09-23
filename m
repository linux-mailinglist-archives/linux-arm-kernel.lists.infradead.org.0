Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECE87BAC78
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 03:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o+NXF9gjivQuGGjPl4rBlwutOOJgb6B9oxlgwKowafI=; b=T4FjpGwe8mR6Bv
	EjsP1r5zmdqhHD/jobbDcmUH44EmepuTsyrBzZx+wbQ8Vn/fXdIJ0tFvtL8nEx4kuVmJSrjvEcQi5
	x8ar5EtDlELrPe5WpGlRLqZ8cngRBTVVP0+O5mKc7R8rqEfcXmr/ojDcKY7fF0kAl4H6IjKuxU2bR
	RR1l4aqjgiseI0AiGDvcvaXpif/3pPpk2bkl6xfOAtFxpSeixvGtTD75NNd+pDJ+qXQOQvKAwV2FU
	/Qm2xOr0OFYLIGbJTBwwYK7qVxgYmRl8ibmy/bZpJ8L6aK7gywZ2F4b2m92aVAUKXJdiSz5M8oHQk
	OlheoHRhAe4p6EDkkTxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCDd5-0006we-Tc; Mon, 23 Sep 2019 01:59:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCDcn-0006w0-Aq; Mon, 23 Sep 2019 01:58:52 +0000
X-UUID: 13258898e95742e68de2a53f9a3597d3-20190922
X-UUID: 13258898e95742e68de2a53f9a3597d3-20190922
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2123156907; Sun, 22 Sep 2019 17:58:41 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Sep 2019 18:58:40 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 23 Sep 2019 09:58:40 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 23 Sep 2019 09:58:39 +0800
Message-ID: <1569203920.25491.9.camel@mtksdaap41>
Subject: Re: [RFC, v3, 4/4] media: platform: mtk-mdp3: Add Mediatek MDP3 driver
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Mon, 23 Sep 2019 09:58:40 +0800
In-Reply-To: <20190911094013.5892-1-bibby.hsieh@mediatek.com>
References: <20190911094013.5892-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_185849_380142_73393253 
X-CRM114-Status: GOOD (  16.46  )
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
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 Jerry-ch.Chen@mediatek.com, jungo.lin@mediatek.com, hans.verkuil@cisco.com,
 Ping-Hsun Wu <ping-hsun.wu@mediatek.com>, frederic.chen@mediatek.com,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 daoyuan huang <daoyuan.huang@mediatek.com>, holmes.chiou@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, tfiga@chromium.org, christie.yu@mediatek.com,
 zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Bibby:

On Wed, 2019-09-11 at 17:40 +0800, Bibby Hsieh wrote:
> From: daoyuan huang <daoyuan.huang@mediatek.com>
> 
> This patch adds driver for Media Data Path 3 (MDP3).
> Each modules' related operation control is sited in mtk-mdp3-comp.c
> Each modules' register table is defined in file with "mdp_reg_"
> and "mmsys_" prefix
> GCE related API, operation control  sited in mtk-mdp3-cmdq.c
> V4L2 m2m device functions are implemented in mtk-mdp3-m2m.c
> Probe, power, suspend/resume, system level functions are defined in
> mtk-mdp3-core.c
> 
> Signed-off-by: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
> Signed-off-by: daoyuan huang <daoyuan.huang@mediatek.com>
> ---

[snip]

> +
> diff --git a/drivers/media/platform/mtk-mdp3/mtk-mdp3-cmdq.c b/drivers/media/platform/mtk-mdp3/mtk-mdp3-cmdq.c
> new file mode 100644
> index 000000000000..bd8f274fcaa9
> --- /dev/null
> +++ b/drivers/media/platform/mtk-mdp3/mtk-mdp3-cmdq.c
> @@ -0,0 +1,504 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (c) 2018 MediaTek Inc.
> + * Author: Ping-Hsun Wu <ping-hsun.wu@mediatek.com>
> + */
> +
> +#include <linux/platform_device.h>
> +#include "mtk-mdp3-cmdq.h"
> +#include "mtk-mdp3-comp.h"
> +#include "mtk-mdp3-core.h"
> +#include "mtk-mdp3-m2m.h"
> +
> +#include "mdp-platform.h"
> +#include "mmsys_mutex.h"
> +
> +#define DISP_MUTEX_MDP_FIRST	(5)
> +#define DISP_MUTEX_MDP_COUNT	(5)
> +
> +#define MDP_PATH_MAX_COMPS	IMG_MAX_COMPONENTS
> +
> +struct mdp_path {
> +	struct mdp_dev		*mdp_dev;
> +	struct mdp_comp_ctx	comps[MDP_PATH_MAX_COMPS];
> +	u32			num_comps;
> +	const struct img_config	*config;
> +	const struct img_ipi_frameparam *param;
> +	const struct v4l2_rect	*composes[IMG_MAX_HW_OUTPUTS];
> +	struct v4l2_rect	bounds[IMG_MAX_HW_OUTPUTS];
> +};
> +
> +#define has_op(ctx, op) \
> +	(ctx->comp->ops && ctx->comp->ops->op)
> +#define call_op(ctx, op, ...) \
> +	(has_op(ctx, op) ? ctx->comp->ops->op(ctx, ##__VA_ARGS__) : 0)
> +
> +struct mdp_path_subfrm {
> +	s32	mutex_id;
> +	u32	mutex_mod;
> +	s32	sofs[MDP_PATH_MAX_COMPS];
> +	u32	num_sofs;
> +};
> +
> +static bool is_output_disable(const struct img_compparam *param, u32 count)
> +{
> +	return (count < param->num_subfrms) ?
> +		(param->frame.output_disable ||
> +		param->subfrms[count].tile_disable) :
> +		true;
> +}
> +
> +static int mdp_path_subfrm_require(struct mdp_path_subfrm *subfrm,
> +				   const struct mdp_path *path,
> +				   struct mdp_cmd *cmd, u32 count)
> +{
> +	const struct img_config *config = path->config;
> +	const struct mdp_comp_ctx *ctx;
> +	phys_addr_t mm_mutex = path->mdp_dev->mm_mutex.reg_base;
> +	s32 mutex_id = -1;
> +	u32 mutex_sof = 0;
> +	int mdp_color = 0;
> +	int index;
> +	u8 subsys_id = path->mdp_dev->mm_mutex.subsys_id;
> +
> +	/* Default value */
> +	memset(subfrm, 0, sizeof(*subfrm));
> +
> +	for (index = 0; index < config->num_components; index++) {
> +		ctx = &path->comps[index];
> +		if (is_output_disable(ctx->param, count))
> +			continue;
> +		switch (ctx->comp->id) {
> +		/**********************************************
> +		 * Name            MSB LSB
> +		 * DISP_MUTEX_MOD   23   0
> +		 *
> +		 * Specifies which modules are in this mutex.
> +		 * Every bit denotes a module. Bit definition:
> +		 *  2 mdp_rdma0
> +		 *  4 mdp_rsz0
> +		 *  5 mdp_rsz1
> +		 *  6 mdp_tdshp
> +		 *  7 mdp_wrot0
> +		 *  8 mdp_wdma
> +		 *  13 mdp_color
> +		 *  23 mdp_aal
> +		 *  24 mdp_ccorr
> +		 **********************************************/
> +		case MDP_AAL0:
> +			subfrm->mutex_mod |= 1 << 23;
> +			break;
> +		case MDP_CCORR0:
> +			subfrm->mutex_mod |= 1 << 24;
> +			break;
> +		case MDP_COLOR0:
> +			if (mdp_color)
> +				subfrm->mutex_mod |= 1 << 13;
> +			break;
> +		case MDP_WDMA:
> +			subfrm->mutex_mod |= 1 << 8;
> +			subfrm->sofs[subfrm->num_sofs++] = MDP_WDMA;
> +			break;
> +		case MDP_WROT0:
> +			subfrm->mutex_mod |= 1 << 7;
> +			subfrm->sofs[subfrm->num_sofs++] = MDP_WROT0;
> +			break;
> +		case MDP_TDSHP0:
> +			subfrm->mutex_mod |= 1 << 6;
> +			subfrm->sofs[subfrm->num_sofs++] = MDP_TDSHP0;
> +			break;
> +		case MDP_SCL1:
> +			subfrm->mutex_mod |= 1 << 5;
> +			subfrm->sofs[subfrm->num_sofs++] = MDP_SCL1;
> +			break;
> +		case MDP_SCL0:
> +			subfrm->mutex_mod |= 1 << 4;
> +			subfrm->sofs[subfrm->num_sofs++] = MDP_SCL0;
> +			break;
> +		case MDP_RDMA0:
> +			mutex_id = DISP_MUTEX_MDP_FIRST + 1;
> +			subfrm->mutex_mod |= 1 << 2;
> +			subfrm->sofs[subfrm->num_sofs++] = MDP_RDMA0;
> +			break;
> +		case MDP_IMGI:
> +			mutex_id = DISP_MUTEX_MDP_FIRST;
> +			break;
> +		case MDP_WPEI:
> +			mutex_id = DISP_MUTEX_MDP_FIRST + 3;
> +			break;
> +		case MDP_WPEI2:
> +			mutex_id = DISP_MUTEX_MDP_FIRST + 4;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	subfrm->mutex_id = mutex_id;
> +	if (-1 == mutex_id) {
> +		mdp_err("No mutex assigned");
> +		return -EINVAL;
> +	}
> +
> +	if (subfrm->mutex_mod) {
> +		/* Set mutex modules */
> +		MM_REG_WRITE(cmd, subsys_id, mm_mutex, MM_MUTEX_MOD,
> +			     subfrm->mutex_mod, 0x07FFFFFF);
> +		MM_REG_WRITE(cmd, subsys_id, mm_mutex, MM_MUTEX_SOF,
> +			     mutex_sof, 0x00000007);
> +	}

In [1], mdp3 device has a pointer to mutex device, and you directly
write mutex register in mdp3 driver.

		mdp_rdma0: mdp_rdma0@14001000 {
			compatible = "mediatek,mt8183-mdp-rdma",
				     "mediatek,mt8183-mdp3";

			mediatek,mm-mutex = <&mutex>;
		};


 		mutex: mutex@14016000 {
 			compatible = "mediatek,mt8183-disp-mutex";
 			reg = <0 0x14016000 0 0x1000>;
 		};

But mutex already has its own driver in mediatek drm driver [2]. This is
not a good design. I would like all mutex device register is controlled
in single driver. 

[1] https://patchwork.kernel.org/patch/11140747/
[2]
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/gpu/drm/mediatek/mtk_drm_ddp.c?h=v5.3#n429

Regards,
CK

> +	return 0;
> +}




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
