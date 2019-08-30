Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6E3A300C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 08:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NsMcI32MOHKTM7VpO+q+WR1UznKqzhrmub2vqn62s3A=; b=qTM3/8gd//ej67
	09/JUNM+EPd/1zuK0A9WL4AsE+gn7A97w84IM6Z/n1PRILYf+zNP2fcMT9LgmGBWYqdLuReR7hFHW
	AIP+xqyYROWUtB6egM1Axb5Mydb3ZhmDPFeVQIFoYWgWzNhdMi4Utxe6318mdzh2hVMnON7zpWLwb
	POKOrJ2kDQb67DpAtvKz/QIiLnyYq8N2tF99T0t4yUwGNELahH4n/X7iCMCYuODDZXIzq8o8iAud8
	G+f12OaRxm7tycHNohkqB5Q0Msjaxq/gbw4Cz4i8WRLEHRvfIXMSdA8zswLRSpDnBlpcAnkOg/8Uf
	MM0b8/P/8/dCv9iLt8Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3aVL-0006St-HS; Fri, 30 Aug 2019 06:35:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3aUg-0005xP-3r; Fri, 30 Aug 2019 06:34:47 +0000
X-UUID: f32790e68b9e475e9d7829ca3e931ecf-20190829
X-UUID: f32790e68b9e475e9d7829ca3e931ecf-20190829
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1049398310; Thu, 29 Aug 2019 22:34:48 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 23:34:47 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 30 Aug 2019 14:34:44 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 30 Aug 2019 14:34:38 +0800
Message-ID: <1567146872.5942.21.camel@mtksdaap41>
Subject: Re: [PATCH v5, 30/32] drm/mediatek: add connection from DITHER0 to
 DSI0
From: CK Hu <ck.hu@mediatek.com>
To: <yongqiang.niu@mediatek.com>
Date: Fri, 30 Aug 2019 14:34:32 +0800
In-Reply-To: <1567090254-15566-31-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
 <1567090254-15566-31-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2D80EE79821C3E6C697081CC7D2D39A69D62CD500E2390B9E48C61F531F4FD352000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_233446_434612_25715A7A 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On Thu, 2019-08-29 at 22:50 +0800, yongqiang.niu@mediatek.com wrote:
> From: Yongqiang Niu <yongqiang.niu@mediatek.com>
> 
> This patch add connection from DITHER0 to DSI0

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> 
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> index 237824f..fd38658 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
> @@ -35,10 +35,12 @@
>  
>  #define MT8183_DISP_OVL0_2L_MOUT_EN		0xf04
>  #define MT8183_DISP_OVL1_2L_MOUT_EN		0xf08
> +#define MT8183_DISP_DITHER0_MOUT_EN		0xf0c
>  #define MT8183_DISP_PATH0_SEL_IN		0xf24
>  
>  #define OVL0_2L_MOUT_EN_DISP_PATH0			BIT(0)
>  #define OVL1_2L_MOUT_EN_RDMA1				BIT(4)
> +#define DITHER0_MOUT_IN_DSI0				BIT(0)
>  #define DISP_PATH0_SEL_IN_OVL0_2L			0x1
>  
>  #define MT2701_DISP_MUTEX0_MOD0			0x2c
> @@ -323,6 +325,9 @@ static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
>  		   next == DDP_COMPONENT_RDMA1) {
>  		*addr = MT8183_DISP_OVL1_2L_MOUT_EN;
>  		value = OVL1_2L_MOUT_EN_RDMA1;
> +	} else if (cur == DDP_COMPONENT_DITHER && next == DDP_COMPONENT_DSI0) {
> +		*addr = MT8183_DISP_DITHER0_MOUT_EN;
> +		value = DITHER0_MOUT_IN_DSI0;
>  	} else {
>  		value = 0;
>  	}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
