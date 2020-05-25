Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E74DE1E06DA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 08:25:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dFqZXLmC7OhiO9HHEq9GXNyAgAXHOWqPKGNNTLptgpQ=; b=D9r20ZU6eLaNUS
	ICrOffNvdxs89MLrJvbTQO3H3cgqszd3yHFb17AWstCxyfOu8suHgSoXEQqm4cGF3U0Suvnrl1qe/
	Bm2YGWFPLHXV5swoi8amhIBRea3rrwXCRS7xX3yJqAjwweTdR6WuFBfDmhCAUNHj/po05yoKkvPIZ
	4KEl5KdgKeI4iRfxlhJwimXen3TPPJXQ+7oHRnA78NrLhx2suVgGU13es5ANt1z2pZrBjYoyVQMA6
	ULt2zIswMk2oYX377El3H32Luz4tMLM/Jc2tWYxlEYC6b3zkV9qT5169CCmDGEG+w+SC/nnHHX5gp
	x09CltJNiR1qnGMcB3PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd6YN-0002XH-LP; Mon, 25 May 2020 06:25:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6YB-0002Vt-E5; Mon, 25 May 2020 06:25:28 +0000
X-UUID: 14c4849fba09432d947b986e256a57d2-20200524
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=3hx+xuZwk+qJ8HxGZOVEgrk/RUaXq486bK4HGdRWFOY=; 
 b=vFQKB6uIpltNUP1R8bR+gKN4Z3eBtERsgIOhoVCsnC4fmBZoGA5mq7uvzd9fdfELiFFYuB+xAtBMFuBbBC0gnwOyMEFNxzizMuDAIEwUUdAnhYje6SVJEb4qnlk/BWAb/dPt9Kw8GA1lInFq7pFVCcz/pslO/hYAkwytA4RwycE=;
X-UUID: 14c4849fba09432d947b986e256a57d2-20200524
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1038143137; Sun, 24 May 2020 22:25:21 -0800
Received: from MTKMBS32N2.mediatek.inc (172.27.4.72) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 24 May 2020 23:16:20 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS32N2.mediatek.inc
 (172.27.4.72) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Mon, 25 May 2020 14:16:17 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 25 May 2020 14:16:16 +0800
Message-ID: <1590387275.13912.7.camel@mhfsdcap03>
Subject: Re: [PATCH v3 3/7] iommu/mediatek: Disable STANDARD_AXI_MODE in
 MISC_CTRL
From: Yong Wu <yong.wu@mediatek.com>
To: Chao Hao <chao.hao@mediatek.com>
Date: Mon, 25 May 2020 14:14:35 +0800
In-Reply-To: <20200509083654.5178-4-chao.hao@mediatek.com>
References: <20200509083654.5178-1-chao.hao@mediatek.com>
 <20200509083654.5178-4-chao.hao@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: A8DD666DEB4BBAC87549C627945CC7E41AC0342C681DB12F322F811B674E33472000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_232527_479794_1C3AD684 
X-CRM114-Status: GOOD (  15.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Jun Yan <jun.yan@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, 2020-05-09 at 16:36 +0800, Chao Hao wrote:
> In order to improve performance, we always disable STANDARD_AXI_MODE in
> MISC_CTRL.
> 
> Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> ---
>  drivers/iommu/mtk_iommu.c | 8 +++++++-
>  drivers/iommu/mtk_iommu.h | 1 +
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index e7e7c7695ed1..9ede327a418d 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -42,6 +42,8 @@
>  #define F_INVLD_EN1				BIT(1)
>  
>  #define REG_MMU_MISC_CTRL			0x048
> +#define F_MMU_STANDARD_AXI_MODE_BIT		(BIT(3) | BIT(19))
> +
>  #define REG_MMU_DCM_DIS				0x050
>  
>  #define REG_MMU_CTRL_REG			0x110
> @@ -585,7 +587,11 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
>  	}
>  	writel_relaxed(0, data->base + REG_MMU_DCM_DIS);
>  
> -	if (data->plat_data->reset_axi) {
> +	if (data->plat_data->has_misc_ctrl) {
> +		regval = readl_relaxed(data->base + REG_MMU_MISC_CTRL);
> +		regval &= ~F_MMU_STANDARD_AXI_MODE_BIT;
> +		writel_relaxed(regval, data->base + REG_MMU_MISC_CTRL);
> +	} else if (data->plat_data->reset_axi) {
>  		/* The register is called STANDARD_AXI_MODE in this case */
>  		writel_relaxed(0, data->base + REG_MMU_MISC_CTRL);
>  	}


0x48 is either STANDARD_AXI_MODE or MISC_CTRL.

Thus, 

if (data->plat_data->reset_axi) {
   xxx
} else {  /* MISC_CTRL */
   xxx
}

No need add "has_misc_ctrl".


> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index 1b6ea839b92c..d711ac630037 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -40,6 +40,7 @@ struct mtk_iommu_plat_data {
>  
>  	/* HW will use the EMI clock if there isn't the "bclk". */
>  	bool                has_bclk;
> +	bool		    has_misc_ctrl;
>  	bool                has_vld_pa_rng;
>  	bool                reset_axi;
>  	unsigned char       larbid_remap[MTK_LARB_NR_MAX];

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
