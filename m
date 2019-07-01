Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ACCF5B2C0
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 03:30:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lZ+4axFWGxR0J+oKCu1MmSp2fdDwf68/AWD2HcJwtyI=; b=Se/zqWVdK90stM
	rmlqnC1+1HnMeujPrUTj7bQ/kYB7ktpgHWLIAMLW5IzwOf7xjVi9ekxROMbDDGzBLMkyOBztvWfQH
	PjqTKURFwBV7mpQ8lm5eR4XxnUYJy2rIkcRS6LPjC6SE7mKw1pGEMLtSnsVzbTBKs2dodapESxquS
	+5p3yxiMEWrX/0mSjDET4YRG4x63tXXTpRRhgZpRPhKw2GAS9aeZzk7A4fZlZ8tVMzRlHCLHcOb3X
	2bfjri/hJIchKph0WIdCo5Iot1nbAm5Hl4UiyzsNE1FxvNs1hQxw93lxejxrUnVS1oajMXHnUEjnv
	jA7Uef9ePA7WS4g4KYiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhl9Y-0005Zq-BB; Mon, 01 Jul 2019 01:30:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhl8g-0005Yp-62; Mon, 01 Jul 2019 01:29:51 +0000
X-UUID: 32b0026c3da244ec81d7f0f38c9b38de-20190630
X-UUID: 32b0026c3da244ec81d7f0f38c9b38de-20190630
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1574571460; Sun, 30 Jun 2019 17:29:42 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 30 Jun 2019 18:29:40 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS33DR.mediatek.inc (172.27.6.106) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 09:29:25 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 1 Jul 2019 09:29:23 +0800
Message-ID: <1561944562.17120.1.camel@mtksdaap41>
Subject: Re: [v5 4/7] drm/mediatek: add frame size control
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Mon, 1 Jul 2019 09:29:22 +0800
In-Reply-To: <20190627080116.40264-5-jitao.shi@mediatek.com>
References: <20190627080116.40264-1-jitao.shi@mediatek.com>
 <20190627080116.40264-5-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24732.000
X-TM-AS-Result: No-12.337600-8.000000-10
X-TMASE-MatchedRID: zGP2F0O7j/vmLzc6AOD8DfHkpkyUphL9xXRDKEyu2zF+SLLtNOiBhmmd
 1p2wVSdNRw3fpQHgw3t0pmQclXiHl4UJf3YQjB6CiJwEp8weVXwxXH/dlhvLv2q646qiEnRz7yL
 x17DX9aet2gtuWr1Lmt52diAVzqN2Z/mERv8EXlX754IB1tyKcqg3Fm19nZrJ0u/U/L+rNlES99
 dUV0LYkjvFiNq8G3M5EiVVgKqFXk5Nfs8n85Te8oMbH85DUZXyseWplitmp0j6C0ePs7A07RRAJ
 C2k3BZ6qjisAJ9xR93/FHz8N5NA/ciiN6rHv+xKGCY6L4Z1ACk=
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--12.337600-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24732.000
X-TM-SNTS-SMTP: A90BCEAADDCB8D640566EAD2CCD718AC8B8A63ED6C117C0EF66499DE0C7667252000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_182950_230815_AEE46E37 
X-CRM114-Status: GOOD (  12.30  )
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
 David Airlie <airlied@linux.ie>, stonea168@163.com,
 dri-devel@lists.freedesktop.org, yingjoe.chen@mediatek.com,
 Ajay Kumar <ajaykumar.rs@samsung.com>, Vincent Palatin <vpalatin@chromium.org>,
 cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>, Thierry
 Reding <treding@nvidia.com>, linux-pwm@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Pawel Moll <pawel.moll@arm.com>,
 Ian Campbell <ijc+devicetree@hellion.org.uk>, Inki
 Dae <inki.dae@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Andy
 Yan <andy.yan@rock-chips.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org,
 Rahul Sharma <rahul.sharma@samsung.com>, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Sean
 Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jitao:

On Thu, 2019-06-27 at 16:01 +0800, Jitao Shi wrote:
> Our new DSI chip has frame size control.
> So add the driver data to control for different chips.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>

This version is different than previous version, so you should remove
the reviewed-by tag. For this version, I still give you a

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> ---
>  drivers/gpu/drm/mediatek/mtk_dsi.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
> index 6b6550926db6..45e331055842 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -78,6 +78,7 @@
>  #define DSI_VBP_NL		0x24
>  #define DSI_VFP_NL		0x28
>  #define DSI_VACT_NL		0x2C
> +#define DSI_SIZE_CON		0x38
>  #define DSI_HSA_WC		0x50
>  #define DSI_HBP_WC		0x54
>  #define DSI_HFP_WC		0x58
> @@ -162,6 +163,7 @@ struct phy;
>  struct mtk_dsi_driver_data {
>  	const u32 reg_cmdq_off;
>  	bool has_shadow_ctl;
> +	bool has_size_ctl;
>  };
>  
>  struct mtk_dsi {
> @@ -430,6 +432,10 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
>  	writel(vm->vfront_porch, dsi->regs + DSI_VFP_NL);
>  	writel(vm->vactive, dsi->regs + DSI_VACT_NL);
>  
> +	if (dsi->driver_data->has_size_ctl)
> +		writel(vm->vactive << 16 | vm->hactive,
> +		       dsi->regs + DSI_SIZE_CON);
> +
>  	horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
>  
>  	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
