Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 208BF16112F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:35:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uGj1oLpoK/M7dWp0ymmUrUXO8q46b2Cybv52N5yj5Y=; b=lfFN+EKGpKusuA
	yHE7tt3FlQwSayw1ZAiodckZXOigUzIggt2RQxrSRz8y8UnLVlayxUnuOtGhOnOqpTiltyhMrwWu7
	sYUepyRjznTJlfafMcoGFjyGpATOkiiqv0GqitVaVJRGQ5L01rJNjjDBZzzA3idv8EA0ULOC2C0Tu
	/LEzcvLVPJpxKTo9tJ5SLmEx6rGfatGP9K+fT+S0y6LbEH7Nu5FrxVShtxZtodQ5t2KmeWSNV4oIs
	mWg7tSvTDqcyb0Vvq1GzuEX4cDQj7PAWJ6etOQ4VAZUnCcEYnhpP0QAl3Ezff3WiQQ4/VDZVQJJuR
	nhrNueUa9TxiLvPtBJzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3egc-0001I9-KL; Mon, 17 Feb 2020 11:35:38 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3egT-0001GF-K3; Mon, 17 Feb 2020 11:35:30 +0000
X-UUID: e0ccc3be668542ce884c3f9c48a572b1-20200217
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=eP5l76kC+wYQ1SgKc3IwEHH0X8lfLQiaEbwRojJdv0w=; 
 b=PxgkLckJECq3POl9lr7b11FiX6J7VBJhpW9lzfhfyaeC8bClzLDomAHJJNbS0AGFXgqS3lT7bRVr/0XoIUCMxYVG6uTnEwRgFURys9PNNNS1h0ZfwzfIKjaNCvsn6+sMuCkpOKLdJdA5NuyTsBr1JQgK52yKnRv5goDgA1i82tY=;
X-UUID: e0ccc3be668542ce884c3f9c48a572b1-20200217
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 561370588; Mon, 17 Feb 2020 03:35:22 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 17 Feb 2020 03:35:41 -0800
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs05n1.mediatek.inc
 (172.21.101.15) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 17 Feb 2020 19:34:24 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 17 Feb 2020 19:35:55 +0800
Message-ID: <1581939298.4784.12.camel@mhfsdcap03>
Subject: Re: [PATCH 2/2] iommu/mediatek: add support for MT8167
From: Yong Wu <yong.wu@mediatek.com>
To: Fabien Parent <fparent@baylibre.com>
Date: Mon, 17 Feb 2020 19:34:58 +0800
In-Reply-To: <1581902146.28283.0.camel@mtksdaap41>
References: <20200103162632.109553-1-fparent@baylibre.com>
 <20200103162632.109553-2-fparent@baylibre.com>
 <1581902146.28283.0.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_033529_664293_A21BA71A 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, CK Hu <ck.hu@mediatek.com>,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabien,

Thanks very much for your patch.

On Mon, 2020-02-17 at 09:15 +0800, CK Hu wrote:
> +Yong.Wu.
> 
> On Fri, 2020-01-03 at 17:26 +0100, Fabien Parent wrote:
> > Add support for the IOMMU on MT8167
> > 
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 11 ++++++++++-
> >  drivers/iommu/mtk_iommu.h |  1 +
> >  2 files changed, 11 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 6fc1f5ecf91e..5fc6178a82dc 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -569,7 +569,8 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
> >  		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
> >  	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
> >  
> > -	if (data->plat_data->m4u_plat == M4U_MT8173)
> > +	if (data->plat_data->m4u_plat == M4U_MT8173 ||
> > +	    data->plat_data->m4u_plat == M4U_MT8167)

I didn't know mt8167 will do upstream. In my original thought, there is
only mt8173 use this setting and the later SoC won't use this, So I used
the "m4u_plat" directly here.

If we also need support mt8167, then CK's suggestion is reasonable. we
could add a new variable like "legacy_ivrp_paddr" from its register name
in a seperated patch, then support mt8167 in a new patch.

> >  		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
> >  	else
> >  		regval = lower_32_bits(data->protect_base) |
> > @@ -782,6 +783,13 @@ static const struct mtk_iommu_plat_data mt2712_data = {
> >  	.larbid_remap = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
> >  };
> >  
> > +static const struct mtk_iommu_plat_data mt8167_data = {
> > +	.m4u_plat     = M4U_MT8167,
> > +	.has_4gb_mode = true,
> > +	.reset_axi    = true,
> > +	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
> > +};
> > +
> >  static const struct mtk_iommu_plat_data mt8173_data = {
> >  	.m4u_plat     = M4U_MT8173,
> >  	.has_4gb_mode = true,
> > @@ -798,6 +806,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
> >  
> >  static const struct of_device_id mtk_iommu_of_ids[] = {
> >  	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
> > +	{ .compatible = "mediatek,mt8167-m4u", .data = &mt8167_data},
> >  	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
> >  	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
> >  	{}
> > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > index ea949a324e33..cb8fd5970cd4 100644
> > --- a/drivers/iommu/mtk_iommu.h
> > +++ b/drivers/iommu/mtk_iommu.h
> > @@ -30,6 +30,7 @@ struct mtk_iommu_suspend_reg {
> >  enum mtk_iommu_plat {
> >  	M4U_MT2701,
> >  	M4U_MT2712,
> > +	M4U_MT8167,
> >  	M4U_MT8173,
> >  	M4U_MT8183,
> >  };
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
