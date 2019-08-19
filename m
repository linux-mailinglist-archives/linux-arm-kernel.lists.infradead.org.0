Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D571E91AB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 03:31:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JyYo/A1KNK3VuuigPVoh0WQKz+shwW7LDxPFcM3dXN4=; b=YxN2+s5nYFYcAS
	zxoS2CXUSudoiZM/TD9CAIbkKwXDk3v6CkxC9MHdoqtqOzc9tpX0Kh+WY9R6dEyLaUYBbevNYSfH2
	F72ofxoi7gTq0VGD1pe3I1uona5Cub1F1xaEEYywhh9jI/99iltuJk6u4FZQGqm6IG5R6fOm1frlj
	Wwliio6yH+FkndZxK/rPOL8q0Lnn+46ZLzqhx3exUUf1mbxtBWkMIM7+j6TrjwoG0ynmDIGS1Lj+B
	r6J5GvykODccsco5zzYPABcSHtjG5Yi+w5vEBcBQ3HTnLJecD5J0zQC2nyi4TKOcnLkjJd3fUQYOp
	EgSp5TL6Qkz9Y/qBDc2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzWVl-0008NM-7I; Mon, 19 Aug 2019 01:31:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzWVW-0008Lu-Q8; Mon, 19 Aug 2019 01:30:52 +0000
X-UUID: 5be8980b20654e05bee74901865b4d13-20190818
X-UUID: 5be8980b20654e05bee74901865b4d13-20190818
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 229156875; Sun, 18 Aug 2019 17:30:33 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 18 Aug 2019 18:30:32 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkcas08.mediatek.inc
 (172.21.101.126) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 19 Aug 2019 09:30:31 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 19 Aug 2019 09:30:31 +0800
Message-ID: <1566178231.7536.1.camel@mtksdaap41>
Subject: Re: [PATCH] gpu: drm: mediatek: mtk_drm_drv.c: Add of_node_put()
 before goto
From: CK Hu <ck.hu@mediatek.com>
To: Nishka Dasgupta <nishkadg.linux@gmail.com>
Date: Mon, 19 Aug 2019 09:30:31 +0800
In-Reply-To: <20190706133021.3308-1-nishkadg.linux@gmail.com>
References: <20190706133021.3308-1-nishkadg.linux@gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_183050_852525_F50841DB 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: p.zabel@pengutronix.de, airlie@linux.ie, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, daniel@ffwll.ch, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Nishka:

On Sat, 2019-07-06 at 19:00 +0530, Nishka Dasgupta wrote:
> Each iteration of for_each_child_of_node puts the previous
> node, but in the case of a goto from the middle of the loop, there is
> no put, thus causing a memory leak. Hence add an of_node_put before the
> goto in two places.
> Issue found with Coccinelle.

Applied to mediatek-drm-fixes-5.3 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/tree/mediatek-drm-fixes-5.3

Regards,
CK

> 
> Signed-off-by: Nishka Dasgupta <nishkadg.linux@gmail.com>
> ---
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 95fdbd0fbcac..2dffbc8c6d73 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -524,12 +524,15 @@ static int mtk_drm_probe(struct platform_device *pdev)
>  			comp = devm_kzalloc(dev, sizeof(*comp), GFP_KERNEL);
>  			if (!comp) {
>  				ret = -ENOMEM;
> +				of_node_put(node);
>  				goto err_node;
>  			}
>  
>  			ret = mtk_ddp_comp_init(dev, node, comp, comp_id, NULL);
> -			if (ret)
> +			if (ret) {
> +				of_node_put(node);
>  				goto err_node;
> +			}
>  
>  			private->ddp_comp[comp_id] = comp;
>  		}



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
