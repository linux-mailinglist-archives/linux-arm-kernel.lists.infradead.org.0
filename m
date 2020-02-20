Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94AF016544F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:36:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NCqosV2lP++5nnulskvxLxtaewoTqOQU+lBOvS6WKgM=; b=rGjcFX5/yHH2kM
	hb8mvNoDWFggP6AELa5H+UzuNf+ygr1Q4Y3Gnzve42rwjYu+lhgOsRqLsFlVkd4r1Z28P12q0pXnP
	MjxzU0n3AiW45vqCTJDhD4hksVHaAV4G/bbA4u7xdmojbH7KLMsGiPozOuTYR4g3RLrfA/RqhvCWo
	aYBciysESX+pHwMQmjHZFpTwumPta8f7rqTJ/z7xePPcwaJqVgwLB29bK28bLoUDwCpVxgwwXMToS
	FcoxdJnM8BBopyy89JG7jgkEsRxL0QqreqoVU0qVC46cfld6RfyAJ/QH17wZyiOJAEHY/KxBHqVEo
	j8sQ/nprYRNS5QO4zZKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4alO-0006ej-Im; Thu, 20 Feb 2020 01:36:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4alE-0006dJ-OG; Thu, 20 Feb 2020 01:36:19 +0000
X-UUID: 22ad0f1db8de4e43a22b45bb9871a741-20200219
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=M86BLgqozbH/Kl6AgJIXd8CaALScxACbiWE+AGXHu0M=; 
 b=Cj+GpElCDUUggrUPzXSWal+0LBXA/Js6cHOFqPE/HSfaiaFT5cQVqGJOVhIk4xx0Y8hcHvzyj1y6Q9oTXDtHHS3Uj3fqXFw9iZpkhY6n4ouBXRHWRSCrFNfZ8aENxznZvMCINcJKXhRTUIxqURVMkFU95xxb1IPgavATLujoa7g=;
X-UUID: 22ad0f1db8de4e43a22b45bb9871a741-20200219
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 148835711; Wed, 19 Feb 2020 17:36:11 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 19 Feb 2020 17:36:09 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 20 Feb 2020 09:36:08 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 20 Feb 2020 09:35:31 +0800
Message-ID: <1582162568.24713.0.camel@mtksdaap41>
Subject: Re: [PATCH] drm/mediatek: component type MTK_DISP_OVL_2L is not
 correctly handled
From: CK Hu <ck.hu@mediatek.com>
To: Phong LE <ple@baylibre.com>
Date: Thu, 20 Feb 2020 09:36:08 +0800
In-Reply-To: <20200219141324.29299-1-ple@baylibre.com>
References: <20200219141324.29299-1-ple@baylibre.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_173617_783923_21A42181 
X-CRM114-Status: GOOD (  12.29  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Phong:

On Wed, 2020-02-19 at 15:13 +0100, Phong LE wrote:
> The larb device remains NULL if the type is MTK_DISP_OVL_2L.
> A kernel panic is raised when a crtc uses mtk_smi_larb_get or
> mtk_smi_larb_put.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Phong LE <ple@baylibre.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> index 1f5a112bb034..57c88de9a329 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c
> @@ -471,6 +471,7 @@ int mtk_ddp_comp_init(struct device *dev, struct device_node *node,
>  	/* Only DMA capable components need the LARB property */
>  	comp->larb_dev = NULL;
>  	if (type != MTK_DISP_OVL &&
> +	    type != MTK_DISP_OVL_2L &&
>  	    type != MTK_DISP_RDMA &&
>  	    type != MTK_DISP_WDMA)
>  		return 0;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
