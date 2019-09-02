Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B74A5020
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 09:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnPmz972RSI72K0MSF/TfLkgw8b8YPlFcfB3M+s/NPs=; b=eQbt3WxJyXgiGX
	orTjPvMyPVm74KbMbyaK5tAeuzF6n6VJL8eNDidEKs0+tYHiPSq2qo0sLHKf+pdteJhYuFUVF4QX4
	7d621el9lQFIAZcn5t1Ofo2MMuE3Aakd6hnDSwOwpvlCkZn7YAMzXQ75j80+todschTCnOfQzyU9J
	ZVdoav9UNvOWDshE2ABFgO5obji5JEe2wBklN5+RDjoFFuR8gFT5s1Z7qO6Ri2NBFZtJfEMbx+Jow
	1nQzjuPfLPua9RiHzXLnzzZsBktAT5yEnm8PCkxxuLlOxe1mIHiTAPtToW79sLLCTMtv/hAugI4YB
	JIqUWj8njt9JObKjfUyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4h1C-0002On-Nx; Mon, 02 Sep 2019 07:44:54 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4h0z-0002NW-2a
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 07:44:43 +0000
Received: by mail-qk1-x742.google.com with SMTP id q203so2538420qke.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 02 Sep 2019 00:44:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XFXQzU8iZG+JbQ666POQ8fYnLTr/7PFWLlx1qudpCCU=;
 b=Yr3Whvhk5B3v33OT26lkME1JVxjrlHGJSoNYPqfmM09CMt8iii92uhk6SoFQ1iDBJj
 vUolgnBYBTKyxvFZHpkXVDPsjXtFssQjH96zG5NKtl1bvux4MhrGVaR7jU04cfhZIJKV
 vauP+g280g33T1rCMEU1/5FTYhz39YX2msiKY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XFXQzU8iZG+JbQ666POQ8fYnLTr/7PFWLlx1qudpCCU=;
 b=QCWM0VbCmJmwQ19Op3T4YCLV1XzQkgsx6MQc58733ifcNXyrB2OI2M4MKJzsb587Bx
 zb1rbwMj2EnlpIRFH/3qT4DEg7PGWxxHmcnK6iywWjgAoU4WZGh5QUXPlVLIrRsNCjOz
 0xycSFuyrOyNaPryHmRBLe3YTNQ/3O/yLa3PeS7JSGOSHNhgQin3EsPZ1sPTht3158Dd
 PGXHBnCxTKCaLYpeCzlwozuVr8W7bMVmjA2/OnaipUvENzO5i7QwzsFGTBZwV0xAXtvY
 YkgibarSeBVf27KkVd7ybyVHyEGEYKp0IyO1OKoOHMuvXlYlztR9HENrrW4HbYqjzysg
 XVnQ==
X-Gm-Message-State: APjAAAUUdZCAvUHGY+YltWa2xsEG/vlwkOH7VXC799koN7Mp3MrEVZlN
 sl2EhnkgzLmk8jc0Asop4UX7Nf6mZCW1Ze1RHY5eKA==
X-Google-Smtp-Source: APXvYqznA9u2irl3hYlZAT8bMKuiauumT5Dk2extnFHPlE3Ol53oxcgq11wOQ3eR/1HbfKHz8ryDhMdobqHw7pJfrdk=
X-Received: by 2002:a05:620a:16ca:: with SMTP id
 a10mr10298471qkn.18.1567410275622; 
 Mon, 02 Sep 2019 00:44:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190830074103.16671-1-bibby.hsieh@mediatek.com>
 <20190830074103.16671-2-bibby.hsieh@mediatek.com>
In-Reply-To: <20190830074103.16671-2-bibby.hsieh@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 2 Sep 2019 15:44:24 +0800
Message-ID: <CANMq1KAQgxQ0bDUdBj=sOobh+qiNoyasvJHqNstrhu-j2f20CA@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm/mediatek: Support CMDQ interface in ddp component
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_004441_129198_B29338F8 
X-CRM114-Status: GOOD (  19.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, lkml <linux-kernel@vger.kernel.org>,
 dri-devel@lists.freedesktop.org, Tomasz Figa <tfiga@chromium.org>,
 YT Shen <yt.shen@mediatek.com>, CK Hu <ck.hu@mediatek.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 3:41 PM Bibby Hsieh <bibby.hsieh@mediatek.com> wrote:
>
> The CMDQ (Command Queue) in MT8183 is used to help
> update all relevant display controller registers
> with critical time limation.
> This patch add cmdq interface in ddp_comp interface,
> let all ddp_comp interface can support cpu/cmdq function
> at the same time.
>
> Signed-off-by: YT Shen <yt.shen@mediatek.com>
> Signed-off-by: CK Hu <ck.hu@mediatek.com>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_disp_color.c   |   7 +-
>  drivers/gpu/drm/mediatek/mtk_disp_ovl.c     |  78 +++++++-------
>  drivers/gpu/drm/mediatek/mtk_disp_rdma.c    |  66 ++++++------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 110 ++++++++++++++------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h |  53 ++++++----
>  5 files changed, 187 insertions(+), 127 deletions(-)
>
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_color.c b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> index f33d98b356d6..c5d3e3cf8ad5 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_color.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_color.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -45,12 +46,12 @@ static inline struct mtk_disp_color *comp_to_color(struct mtk_ddp_comp *comp)
>
>  static void mtk_color_config(struct mtk_ddp_comp *comp, unsigned int w,
>                              unsigned int h, unsigned int vrefresh,
> -                            unsigned int bpc)
> +                            unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>         struct mtk_disp_color *color = comp_to_color(comp);
>
> -       writel(w, comp->regs + DISP_COLOR_WIDTH(color));
> -       writel(h, comp->regs + DISP_COLOR_HEIGHT(color));
> +       mtk_ddp_write(cmdq_pkt, w, comp, DISP_COLOR_WIDTH(color));
> +       mtk_ddp_write(cmdq_pkt, h, comp, DISP_COLOR_HEIGHT(color));
>  }
>
>  static void mtk_color_start(struct mtk_ddp_comp *comp)
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> index 94c80c215c6e..f11c785199d3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_ovl.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -120,14 +121,15 @@ static void mtk_ovl_stop(struct mtk_ddp_comp *comp)
>
>  static void mtk_ovl_config(struct mtk_ddp_comp *comp, unsigned int w,
>                            unsigned int h, unsigned int vrefresh,
> -                          unsigned int bpc)
> +                          unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>         if (w != 0 && h != 0)
> -               writel_relaxed(h << 16 | w, comp->regs + DISP_REG_OVL_ROI_SIZE);
> -       writel_relaxed(0x0, comp->regs + DISP_REG_OVL_ROI_BGCLR);
> +               mtk_ddp_write_relaxed(cmdq_pkt, h << 16 | w, comp,
> +               DISP_REG_OVL_ROI_SIZE);
> +       mtk_ddp_write_relaxed(cmdq_pkt, 0x0, comp, DISP_REG_OVL_ROI_BGCLR);
>
> -       writel(0x1, comp->regs + DISP_REG_OVL_RST);
> -       writel(0x0, comp->regs + DISP_REG_OVL_RST);
> +       mtk_ddp_write(cmdq_pkt, 0x1, comp, DISP_REG_OVL_RST);
> +       mtk_ddp_write(cmdq_pkt, 0x0, comp, DISP_REG_OVL_RST);
>  }
>
>  static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
> @@ -137,7 +139,8 @@ static unsigned int mtk_ovl_layer_nr(struct mtk_ddp_comp *comp)
>         return ovl->data->layer_nr;
>  }
>
> -static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
> +static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx,
> +                            struct cmdq_pkt *cmdq_pkt)
>  {
>         unsigned int reg;
>         unsigned int gmc_thrshd_l;
> @@ -145,8 +148,8 @@ static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
>         unsigned int gmc_value;
>         struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
>
> -       writel(0x1, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
> -
> +       mtk_ddp_write(cmdq_pkt, 0x1, comp,
> +                     DISP_REG_OVL_RDMA_CTRL(idx));
>         gmc_thrshd_l = GMC_THRESHOLD_LOW >>
>                       (GMC_THRESHOLD_BITS - ovl->data->gmc_bits);
>         gmc_thrshd_h = GMC_THRESHOLD_HIGH >>
> @@ -156,22 +159,19 @@ static void mtk_ovl_layer_on(struct mtk_ddp_comp *comp, unsigned int idx)
>         else
>                 gmc_value = gmc_thrshd_l | gmc_thrshd_l << 8 |
>                             gmc_thrshd_h << 16 | gmc_thrshd_h << 24;
> -       writel(gmc_value, comp->regs + DISP_REG_OVL_RDMA_GMC(idx));
> -
> -       reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
> -       reg = reg | BIT(idx);
> -       writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);

You get rid of all uses of the "reg" variable, so please drop the
declaration too.

> +       mtk_ddp_write(cmdq_pkt, gmc_value,
> +                     comp, DISP_REG_OVL_RDMA_GMC(idx));
> +       mtk_ddp_write_mask(cmdq_pkt, BIT(idx), comp,
> +                           DISP_REG_OVL_SRC_CON, BIT(idx));
>  }
>
> -static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx)
> +static void mtk_ovl_layer_off(struct mtk_ddp_comp *comp, unsigned int idx,
> +                             struct cmdq_pkt *cmdq_pkt)
>  {
> -       unsigned int reg;
> -
> -       reg = readl(comp->regs + DISP_REG_OVL_SRC_CON);
> -       reg = reg & ~BIT(idx);
> -       writel(reg, comp->regs + DISP_REG_OVL_SRC_CON);
> -
> -       writel(0x0, comp->regs + DISP_REG_OVL_RDMA_CTRL(idx));
> +       mtk_ddp_write_mask(cmdq_pkt, 0, comp,
> +                           DISP_REG_OVL_SRC_CON, BIT(idx));
> +       mtk_ddp_write(cmdq_pkt, 0, comp,
> +                      DISP_REG_OVL_RDMA_CTRL(idx));
>  }
>
>  static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
> @@ -211,7 +211,8 @@ static unsigned int ovl_fmt_convert(struct mtk_disp_ovl *ovl, unsigned int fmt)
>  }
>
>  static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> -                                struct mtk_plane_state *state)
> +                                struct mtk_plane_state *state,
> +                                struct cmdq_pkt *cmdq_pkt)
>  {
>         struct mtk_disp_ovl *ovl = comp_to_ovl(comp);
>         struct mtk_plane_pending_state *pending = &state->pending;
> @@ -223,38 +224,37 @@ static void mtk_ovl_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>         unsigned int con;
>
>         if (!pending->enable)
> -               mtk_ovl_layer_off(comp, idx);
> +               mtk_ovl_layer_off(comp, idx, cmdq_pkt);
>
>         con = ovl_fmt_convert(ovl, fmt);
>         if (idx != 0)
>                 con |= OVL_CON_AEN | OVL_CON_ALPHA;
>
> -       writel_relaxed(con, comp->regs + DISP_REG_OVL_CON(idx));
> -       writel_relaxed(pitch, comp->regs + DISP_REG_OVL_PITCH(idx));
> -       writel_relaxed(src_size, comp->regs + DISP_REG_OVL_SRC_SIZE(idx));
> -       writel_relaxed(offset, comp->regs + DISP_REG_OVL_OFFSET(idx));
> -       writel_relaxed(addr, comp->regs + DISP_REG_OVL_ADDR(ovl, idx));
> +       mtk_ddp_write_relaxed(cmdq_pkt, con, comp,
> +                             DISP_REG_OVL_CON(idx));
> +       mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp,
> +                             DISP_REG_OVL_PITCH(idx));
> +       mtk_ddp_write_relaxed(cmdq_pkt, src_size, comp,
> +                             DISP_REG_OVL_SRC_SIZE(idx));
> +       mtk_ddp_write_relaxed(cmdq_pkt, offset, comp,
> +                             DISP_REG_OVL_OFFSET(idx));
> +       mtk_ddp_write_relaxed(cmdq_pkt, addr, comp,
> +                             DISP_REG_OVL_ADDR(ovl, idx));
>
>         if (pending->enable)
> -               mtk_ovl_layer_on(comp, idx);
> +               mtk_ovl_layer_on(comp, idx, cmdq_pkt);
>  }
>
>  static void mtk_ovl_bgclr_in_on(struct mtk_ddp_comp *comp)
>  {
> -       unsigned int reg;
> -
> -       reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> -       reg = reg | OVL_BGCLR_SEL_IN;
> -       writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +       mtk_ddp_write_mask(NULL, OVL_BGCLR_SEL_IN, comp,
> +                          DISP_REG_OVL_DATAPATH_CON, OVL_BGCLR_SEL_IN);
>  }
>
>  static void mtk_ovl_bgclr_in_off(struct mtk_ddp_comp *comp)
>  {
> -       unsigned int reg;
> -
> -       reg = readl(comp->regs + DISP_REG_OVL_DATAPATH_CON);
> -       reg = reg & ~OVL_BGCLR_SEL_IN;
> -       writel(reg, comp->regs + DISP_REG_OVL_DATAPATH_CON);
> +       mtk_ddp_write_mask(NULL, 0, comp,
> +                          DISP_REG_OVL_DATAPATH_CON, OVL_BGCLR_SEL_IN);
>  }
>
>  static const struct mtk_ddp_comp_funcs mtk_disp_ovl_funcs = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> index 24945fec00b1..6df372dac3e3 100644
> --- a/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> +++ b/drivers/gpu/drm/mediatek/mtk_disp_rdma.c
> @@ -9,6 +9,7 @@
>  #include <linux/of_device.h>
>  #include <linux/of_irq.h>
>  #include <linux/platform_device.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>
>  #include "mtk_drm_crtc.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -86,23 +87,14 @@ static irqreturn_t mtk_disp_rdma_irq_handler(int irq, void *dev_id)
>         return IRQ_HANDLED;
>  }
>
> -static void rdma_update_bits(struct mtk_ddp_comp *comp, unsigned int reg,
> -                            unsigned int mask, unsigned int val)
> -{
> -       unsigned int tmp = readl(comp->regs + reg);
> -
> -       tmp = (tmp & ~mask) | (val & mask);
> -       writel(tmp, comp->regs + reg);
> -}
> -
>  static void mtk_rdma_enable_vblank(struct mtk_ddp_comp *comp,
>                                    struct drm_crtc *crtc)
>  {
>         struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>
>         rdma->crtc = crtc;
> -       rdma_update_bits(comp, DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT,
> -                        RDMA_FRAME_END_INT);
> +       mtk_ddp_write_mask(NULL, RDMA_FRAME_END_INT, comp,
> +                          DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT);
>  }
>
>  static void mtk_rdma_disable_vblank(struct mtk_ddp_comp *comp)
> @@ -110,31 +102,35 @@ static void mtk_rdma_disable_vblank(struct mtk_ddp_comp *comp)
>         struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>
>         rdma->crtc = NULL;
> -       rdma_update_bits(comp, DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT, 0);
> +       mtk_ddp_write_mask(NULL, 0, comp,
> +                          DISP_REG_RDMA_INT_ENABLE, RDMA_FRAME_END_INT);
>  }
>
>  static void mtk_rdma_start(struct mtk_ddp_comp *comp)
>  {
> -       rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN,
> -                        RDMA_ENGINE_EN);
> +       mtk_ddp_write_mask(NULL, RDMA_ENGINE_EN, comp,
> +                          DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN);
>  }
>
>  static void mtk_rdma_stop(struct mtk_ddp_comp *comp)
>  {
> -       rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN, 0);
> +       mtk_ddp_write_mask(NULL, 0, comp,
> +                          DISP_REG_RDMA_GLOBAL_CON, RDMA_ENGINE_EN);
>  }
>
>  static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
>                             unsigned int height, unsigned int vrefresh,
> -                           unsigned int bpc)
> +                           unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
>         unsigned int threshold;
>         unsigned int reg;
>         struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>         u32 rdma_fifo_size;
>
> -       rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0, 0xfff, width);
> -       rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_1, 0xfffff, height);
> +       mtk_ddp_write_mask(cmdq_pkt, width, comp,
> +                           DISP_REG_RDMA_SIZE_CON_0, 0xfff);
> +       mtk_ddp_write_mask(cmdq_pkt, height, comp,
> +                           DISP_REG_RDMA_SIZE_CON_1, 0xfffff);
>
>         if (rdma->fifo_size)
>                 rdma_fifo_size = rdma->fifo_size;
> @@ -151,7 +147,7 @@ static void mtk_rdma_config(struct mtk_ddp_comp *comp, unsigned int width,
>         reg = RDMA_FIFO_UNDERFLOW_EN |
>               RDMA_FIFO_PSEUDO_SIZE(rdma_fifo_size) |
>               RDMA_OUTPUT_VALID_FIFO_THRESHOLD(threshold);
> -       writel(reg, comp->regs + DISP_REG_RDMA_FIFO_CON);
> +       mtk_ddp_write(cmdq_pkt, reg, comp, DISP_REG_RDMA_FIFO_CON);
>  }
>
>  static unsigned int rdma_fmt_convert(struct mtk_disp_rdma *rdma,
> @@ -197,7 +193,8 @@ static unsigned int mtk_rdma_layer_nr(struct mtk_ddp_comp *comp)
>  }
>
>  static void mtk_rdma_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
> -                                 struct mtk_plane_state *state)
> +                                 struct mtk_plane_state *state,
> +                                 struct cmdq_pkt *cmdq_pkt)
>  {
>         struct mtk_disp_rdma *rdma = comp_to_rdma(comp);
>         struct mtk_plane_pending_state *pending = &state->pending;
> @@ -207,24 +204,27 @@ static void mtk_rdma_layer_config(struct mtk_ddp_comp *comp, unsigned int idx,
>         unsigned int con;
>
>         con = rdma_fmt_convert(rdma, fmt);
> -       writel_relaxed(con, comp->regs + DISP_RDMA_MEM_CON);
> +       mtk_ddp_write_relaxed(cmdq_pkt, con, comp, DISP_RDMA_MEM_CON);
>
>         if (fmt == DRM_FORMAT_UYVY || fmt == DRM_FORMAT_YUYV) {
> -               rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
> -                                RDMA_MATRIX_ENABLE, RDMA_MATRIX_ENABLE);
> -               rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
> -                                RDMA_MATRIX_INT_MTX_SEL,
> -                                RDMA_MATRIX_INT_MTX_BT601_to_RGB);
> +               mtk_ddp_write_mask(cmdq_pkt, RDMA_MATRIX_ENABLE, comp,
> +                                  DISP_REG_RDMA_SIZE_CON_0,
> +                                  RDMA_MATRIX_ENABLE);
> +               mtk_ddp_write_mask(cmdq_pkt, RDMA_MATRIX_INT_MTX_BT601_to_RGB,
> +                                  comp, DISP_REG_RDMA_SIZE_CON_0,
> +                                  RDMA_MATRIX_INT_MTX_SEL);
>         } else {
> -               rdma_update_bits(comp, DISP_REG_RDMA_SIZE_CON_0,
> -                                RDMA_MATRIX_ENABLE, 0);
> +               mtk_ddp_write_mask(cmdq_pkt, 0, comp,
> +                                  DISP_REG_RDMA_SIZE_CON_0,
> +                                  RDMA_MATRIX_ENABLE);
>         }
> +       mtk_ddp_write_relaxed(cmdq_pkt, addr, comp, DISP_RDMA_MEM_START_ADDR);
> +       mtk_ddp_write_relaxed(cmdq_pkt, pitch, comp, DISP_RDMA_MEM_SRC_PITCH);
> +       mtk_ddp_write(cmdq_pkt, RDMA_MEM_GMC, comp,
> +                     DISP_RDMA_MEM_GMC_SETTING_0);
> +       mtk_ddp_write_mask(cmdq_pkt, RDMA_MODE_MEMORY, comp,
> +                          DISP_REG_RDMA_GLOBAL_CON, RDMA_MODE_MEMORY);
>
> -       writel_relaxed(addr, comp->regs + DISP_RDMA_MEM_START_ADDR);
> -       writel_relaxed(pitch, comp->regs + DISP_RDMA_MEM_SRC_PITCH);
> -       writel(RDMA_MEM_GMC, comp->regs + DISP_RDMA_MEM_GMC_SETTING_0);
> -       rdma_update_bits(comp, DISP_REG_RDMA_GLOBAL_CON,
> -                        RDMA_MODE_MEMORY, RDMA_MODE_MEMORY);
>  }
>
>  static const struct mtk_ddp_comp_funcs mtk_disp_rdma_funcs = {
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 8fea98578bc8..76416c1cbb28 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -13,6 +13,7 @@
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  #include <drm/drmP.h>
> +#include <linux/soc/mediatek/mtk-cmdq.h>
>  #include "mtk_drm_drv.h"
>  #include "mtk_drm_plane.h"
>  #include "mtk_drm_ddp_comp.h"
> @@ -76,36 +77,76 @@
>  #define DITHER_ADD_LSHIFT_G(x)                 (((x) & 0x7) << 4)
>  #define DITHER_ADD_RSHIFT_G(x)                 (((x) & 0x7) << 0)
>
> +void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +                  struct mtk_ddp_comp *comp, unsigned int offset)
> +{
> +       if (IS_ENABLED(CONFIG_MTK_CMDQ) && cmdq_pkt)
> +               cmdq_pkt_write(cmdq_pkt, comp->subsys,
> +                              comp->regs_pa + offset, value);
> +       else
> +               writel(value, comp->regs + offset);
> +}
> +
> +void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +                          struct mtk_ddp_comp *comp,
> +                          unsigned int offset)
> +{
> +       if (IS_ENABLED(CONFIG_MTK_CMDQ) && cmdq_pkt)
> +               cmdq_pkt_write(cmdq_pkt, comp->subsys,
> +                              comp->regs_pa + offset, value);
> +       else
> +               writel_relaxed(value, comp->regs + offset);
> +}
> +
> +void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt,
> +                       unsigned int value,
> +                       struct mtk_ddp_comp *comp,
> +                       unsigned int offset,
> +                       unsigned int mask)
> +{
> +       if (IS_ENABLED(CONFIG_MTK_CMDQ) && cmdq_pkt) {
> +               cmdq_pkt_write_mask(cmdq_pkt, comp->subsys,
> +                                   comp->regs_pa + offset, value, mask);
> +       } else {
> +               u32 tmp = readl(comp->regs + offset);
> +
> +               tmp = (tmp & ~mask) | (value & mask);
> +               writel(tmp, comp->regs + offset);
> +       }
> +}
> +
>  void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
> -                   unsigned int CFG)
> +                   unsigned int CFG, struct cmdq_pkt *cmdq_pkt)
>  {
>         /* If bpc equal to 0, the dithering function didn't be enabled */
>         if (bpc == 0)
>                 return;
>
>         if (bpc >= MTK_MIN_BPC) {
> -               writel(0, comp->regs + DISP_DITHER_5);
> -               writel(0, comp->regs + DISP_DITHER_7);
> -               writel(DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
> -                      DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
> -                      DITHER_NEW_BIT_MODE,
> -                      comp->regs + DISP_DITHER_15);
> -               writel(DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
> -                      DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
> -                      DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
> -                      DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
> -                      comp->regs + DISP_DITHER_16);
> -               writel(DISP_DITHERING, comp->regs + CFG);
> +               mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_5);
> +               mtk_ddp_write(cmdq_pkt, 0, comp, DISP_DITHER_7);
> +               mtk_ddp_write(cmdq_pkt,
> +                             DITHER_LSB_ERR_SHIFT_R(MTK_MAX_BPC - bpc) |
> +                             DITHER_ADD_LSHIFT_R(MTK_MAX_BPC - bpc) |
> +                             DITHER_NEW_BIT_MODE,
> +                             comp, DISP_DITHER_15);
> +               mtk_ddp_write(cmdq_pkt,
> +                             DITHER_LSB_ERR_SHIFT_B(MTK_MAX_BPC - bpc) |
> +                             DITHER_ADD_LSHIFT_B(MTK_MAX_BPC - bpc) |
> +                             DITHER_LSB_ERR_SHIFT_G(MTK_MAX_BPC - bpc) |
> +                             DITHER_ADD_LSHIFT_G(MTK_MAX_BPC - bpc),
> +                             comp, DISP_DITHER_16);
> +               mtk_ddp_write(cmdq_pkt, DISP_DITHERING, comp, CFG);
>         }
>  }
>
>  static void mtk_od_config(struct mtk_ddp_comp *comp, unsigned int w,
>                           unsigned int h, unsigned int vrefresh,
> -                         unsigned int bpc)
> +                         unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -       writel(w << 16 | h, comp->regs + DISP_OD_SIZE);
> -       writel(OD_RELAYMODE, comp->regs + DISP_OD_CFG);
> -       mtk_dither_set(comp, bpc, DISP_OD_CFG);
> +       mtk_ddp_write(cmdq_pkt, w << 16 | h, comp, DISP_OD_SIZE);
> +       mtk_ddp_write(cmdq_pkt, OD_RELAYMODE, comp, DISP_OD_CFG);
> +       mtk_dither_set(comp, bpc, DISP_OD_CFG, cmdq_pkt);
>  }
>
>  static void mtk_od_start(struct mtk_ddp_comp *comp)
> @@ -120,9 +161,9 @@ static void mtk_ufoe_start(struct mtk_ddp_comp *comp)
>
>  static void mtk_aal_config(struct mtk_ddp_comp *comp, unsigned int w,
>                            unsigned int h, unsigned int vrefresh,
> -                          unsigned int bpc)
> +                          unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -       writel(h << 16 | w, comp->regs + DISP_AAL_SIZE);
> +       mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_AAL_SIZE);
>  }
>
>  static void mtk_aal_start(struct mtk_ddp_comp *comp)
> @@ -137,10 +178,10 @@ static void mtk_aal_stop(struct mtk_ddp_comp *comp)
>
>  static void mtk_ccorr_config(struct mtk_ddp_comp *comp, unsigned int w,
>                              unsigned int h, unsigned int vrefresh,
> -                            unsigned int bpc)
> +                            unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -       writel(h << 16 | w, comp->regs + DISP_CCORR_SIZE);
> -       writel(CCORR_RELAY_MODE, comp->regs + DISP_CCORR_CFG);
> +       mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_CCORR_SIZE);
> +       mtk_ddp_write(cmdq_pkt, CCORR_RELAY_MODE, comp, DISP_CCORR_CFG);
>  }
>
>  static void mtk_ccorr_start(struct mtk_ddp_comp *comp)
> @@ -155,10 +196,10 @@ static void mtk_ccorr_stop(struct mtk_ddp_comp *comp)
>
>  static void mtk_dither_config(struct mtk_ddp_comp *comp, unsigned int w,
>                               unsigned int h, unsigned int vrefresh,
> -                             unsigned int bpc)
> +                             unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -       writel(h << 16 | w, comp->regs + DISP_DITHER_SIZE);
> -       writel(DITHER_RELAY_MODE, comp->regs + DISP_DITHER_CFG);
> +       mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_DITHER_SIZE);
> +       mtk_ddp_write(cmdq_pkt, DITHER_RELAY_MODE, comp, DISP_DITHER_CFG);
>  }
>
>  static void mtk_dither_start(struct mtk_ddp_comp *comp)
> @@ -173,10 +214,10 @@ static void mtk_dither_stop(struct mtk_ddp_comp *comp)
>
>  static void mtk_gamma_config(struct mtk_ddp_comp *comp, unsigned int w,
>                              unsigned int h, unsigned int vrefresh,
> -                            unsigned int bpc)
> +                            unsigned int bpc, struct cmdq_pkt *cmdq_pkt)
>  {
> -       writel(h << 16 | w, comp->regs + DISP_GAMMA_SIZE);
> -       mtk_dither_set(comp, bpc, DISP_GAMMA_CFG);
> +       mtk_ddp_write(cmdq_pkt, h << 16 | w, comp, DISP_GAMMA_SIZE);
> +       mtk_dither_set(comp, bpc, DISP_GAMMA_CFG, cmdq_pkt);
>  }
>
>  static void mtk_gamma_start(struct mtk_ddp_comp *comp)
> @@ -190,24 +231,25 @@ static void mtk_gamma_stop(struct mtk_ddp_comp *comp)
>  }
>
>  static void mtk_gamma_set(struct mtk_ddp_comp *comp,
> -                         struct drm_crtc_state *state)
> +                         struct drm_crtc_state *state,
> +                         struct cmdq_pkt *cmdq_pkt)
>  {
> -       unsigned int i, reg;
> +       unsigned int i;
>         struct drm_color_lut *lut;
>         void __iomem *lut_base;
>         u32 word;
>
>         if (state->gamma_lut) {
> -               reg = readl(comp->regs + DISP_GAMMA_CFG);
> -               reg = reg | GAMMA_LUT_EN;
> -               writel(reg, comp->regs + DISP_GAMMA_CFG);
> +               mtk_ddp_write_mask(cmdq_pkt, GAMMA_LUT_EN, comp,
> +                                  DISP_GAMMA_CFG, GAMMA_LUT_EN);
>                 lut_base = comp->regs + DISP_GAMMA_LUT;
>                 lut = (struct drm_color_lut *)state->gamma_lut->data;
>                 for (i = 0; i < MTK_LUT_SIZE; i++) {
>                         word = (((lut[i].red >> 6) & LUT_10BIT_MASK) << 20) +
>                                 (((lut[i].green >> 6) & LUT_10BIT_MASK) << 10) +
>                                 ((lut[i].blue >> 6) & LUT_10BIT_MASK);
> -                       writel(word, (lut_base + i * 4));
> +                       mtk_ddp_write(cmdq_pkt, word, comp,
> +                                     (unsigned int)(lut_base + i * 4));
>                 }
>         }
>  }
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> index 268d416081da..6bbc35f92815 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h
> @@ -69,21 +69,26 @@ enum mtk_ddp_comp_id {
>  };
>
>  struct mtk_ddp_comp;
> -
> +struct cmdq_pkt;
>  struct mtk_ddp_comp_funcs {
>         void (*config)(struct mtk_ddp_comp *comp, unsigned int w,
> -                      unsigned int h, unsigned int vrefresh, unsigned int bpc);
> +                      unsigned int h, unsigned int vrefresh,
> +                      unsigned int bpc, struct cmdq_pkt *cmdq_pkt);
>         void (*start)(struct mtk_ddp_comp *comp);
>         void (*stop)(struct mtk_ddp_comp *comp);
>         void (*enable_vblank)(struct mtk_ddp_comp *comp, struct drm_crtc *crtc);
>         void (*disable_vblank)(struct mtk_ddp_comp *comp);
>         unsigned int (*layer_nr)(struct mtk_ddp_comp *comp);
> -       void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx);
> -       void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx);
> +       void (*layer_on)(struct mtk_ddp_comp *comp, unsigned int idx,
> +                        struct cmdq_pkt *cmdq_pkt);
> +       void (*layer_off)(struct mtk_ddp_comp *comp, unsigned int idx,
> +                         struct cmdq_pkt *cmdq_pkt);
>         void (*layer_config)(struct mtk_ddp_comp *comp, unsigned int idx,
> -                            struct mtk_plane_state *state);
> +                            struct mtk_plane_state *state,
> +                            struct cmdq_pkt *cmdq_pkt);
>         void (*gamma_set)(struct mtk_ddp_comp *comp,
> -                         struct drm_crtc_state *state);
> +                         struct drm_crtc_state *state,
> +                         struct cmdq_pkt *cmdq_pkt);
>         void (*bgclr_in_on)(struct mtk_ddp_comp *comp);
>         void (*bgclr_in_off)(struct mtk_ddp_comp *comp);
>  };
> @@ -98,10 +103,11 @@ struct mtk_ddp_comp {
>
>  static inline void mtk_ddp_comp_config(struct mtk_ddp_comp *comp,
>                                        unsigned int w, unsigned int h,
> -                                      unsigned int vrefresh, unsigned int bpc)
> +                                      unsigned int vrefresh, unsigned int bpc,
> +                                      struct cmdq_pkt *cmdq_pkt)
>  {
>         if (comp->funcs && comp->funcs->config)
> -               comp->funcs->config(comp, w, h, vrefresh, bpc);
> +               comp->funcs->config(comp, w, h, vrefresh, bpc, cmdq_pkt);
>  }
>
>  static inline void mtk_ddp_comp_start(struct mtk_ddp_comp *comp)
> @@ -138,32 +144,36 @@ static inline unsigned int mtk_ddp_comp_layer_nr(struct mtk_ddp_comp *comp)
>  }
>
>  static inline void mtk_ddp_comp_layer_on(struct mtk_ddp_comp *comp,
> -                                        unsigned int idx)
> +                                        unsigned int idx,
> +                                        struct cmdq_pkt *cmdq_pkt)
>  {
>         if (comp->funcs && comp->funcs->layer_on)
> -               comp->funcs->layer_on(comp, idx);
> +               comp->funcs->layer_on(comp, idx, cmdq_pkt);
>  }
>
>  static inline void mtk_ddp_comp_layer_off(struct mtk_ddp_comp *comp,
> -                                         unsigned int idx)
> +                                         unsigned int idx,
> +                                         struct cmdq_pkt *cmdq_pkt)
>  {
>         if (comp->funcs && comp->funcs->layer_off)
> -               comp->funcs->layer_off(comp, idx);
> +               comp->funcs->layer_off(comp, idx, cmdq_pkt);
>  }
>
>  static inline void mtk_ddp_comp_layer_config(struct mtk_ddp_comp *comp,
>                                              unsigned int idx,
> -                                            struct mtk_plane_state *state)
> +                                            struct mtk_plane_state *state,
> +                                            struct cmdq_pkt *cmdq_pkt)
>  {
>         if (comp->funcs && comp->funcs->layer_config)
> -               comp->funcs->layer_config(comp, idx, state);
> +               comp->funcs->layer_config(comp, idx, state, cmdq_pkt);
>  }
>
>  static inline void mtk_ddp_gamma_set(struct mtk_ddp_comp *comp,
> -                                    struct drm_crtc_state *state)
> +                                    struct drm_crtc_state *state,
> +                                    struct cmdq_pkt *cmdq_pkt)
>  {
>         if (comp->funcs && comp->funcs->gamma_set)
> -               comp->funcs->gamma_set(comp, state);
> +               comp->funcs->gamma_set(comp, state, cmdq_pkt);
>  }
>
>  static inline void mtk_ddp_comp_bgclr_in_on(struct mtk_ddp_comp *comp)
> @@ -186,6 +196,13 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *comp_node,
>  int mtk_ddp_comp_register(struct drm_device *drm, struct mtk_ddp_comp *comp);
>  void mtk_ddp_comp_unregister(struct drm_device *drm, struct mtk_ddp_comp *comp);
>  void mtk_dither_set(struct mtk_ddp_comp *comp, unsigned int bpc,
> -                   unsigned int CFG);
> -
> +                   unsigned int CFG, struct cmdq_pkt *cmdq_pkt);
> +enum mtk_ddp_comp_type mtk_ddp_comp_get_type(enum mtk_ddp_comp_id comp_id);
> +void mtk_ddp_write(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +                  struct mtk_ddp_comp *comp, unsigned int offset);
> +void mtk_ddp_write_relaxed(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +                          struct mtk_ddp_comp *comp, unsigned int offset);
> +void mtk_ddp_write_mask(struct cmdq_pkt *cmdq_pkt, unsigned int value,
> +                       struct mtk_ddp_comp *comp, unsigned int offset,
> +                       unsigned int mask);
>  #endif /* MTK_DRM_DDP_COMP_H */
> --
> 2.18.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
