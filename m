Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2556130C86
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 04:25:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fnFirhQzPDvJSV5DARXIaJwdiff7dX5sj3CCM7lVnJM=; b=e35Myt0DSkK9iJ
	FyGyb/5XlWXuONE6Fx0frA3vKhcTg09LvMDdegwOdBPsGxe/p2A7L/iXGOeTUTSMdOcNo45ha0AQr
	p01N0o3hWMzEn/HmCSCD13Pe2xauP0QVbcpj0uljk1cEDQWBa1YIOoeZrZAwxSByyDh0E2hHCr1Ok
	il848X9QCgYc/Q8ZU+njrHFeIZa98uzVOfy5Nd/cV2asbTxeHDkB3+PxZDkKTdDSBOZzaf9BCYWgR
	o9i5fBRAPupNpD/MwADRQLKyWsUETFEjozm+ffGXrtbcBiRlG+3m/2Y/SwjSMsWoOusvz2gkhkfoo
	//2Czdyj7lUtkA/xmxPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioJ13-0006ci-Em; Mon, 06 Jan 2020 03:25:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioJ0q-0005em-68; Mon, 06 Jan 2020 03:25:05 +0000
X-UUID: 7f93e302ccbf4be2932481abc75f1351-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=RDSho2ud9PkHmo+SliyxkimBGlr7TcmW+AJEdhiBnZU=; 
 b=gGXhHvdn6IEqW4MMtZ/uMz9roTigWtx+W6NAewHZn4n1fkM06PCs0Aq2Q63g/wxau/QPEXq37eRvjUyxYcA9kWY12WDVwE0qukyU5Nj2RMMSzNdO+y+IVHkAlKif3yQ1tJzo8YlGWkRaJXuf387J9hLh2dvhw+0ZBtv4L/B+pTE=;
X-UUID: 7f93e302ccbf4be2932481abc75f1351-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2102494528; Sun, 05 Jan 2020 19:24:56 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 19:22:38 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by mtkcas08.mediatek.inc
 (172.21.101.126) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Mon, 6 Jan 2020 11:20:16 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 6 Jan 2020 11:19:00 +0800
Message-ID: <1578280829.5196.4.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] iommu/mediatek: add support for MT8167
From: CK Hu <ck.hu@mediatek.com>
To: Fabien Parent <fparent@baylibre.com>
Date: Mon, 6 Jan 2020 11:20:29 +0800
In-Reply-To: <20200103162632.109553-2-fparent@baylibre.com>
References: <20200103162632.109553-1-fparent@baylibre.com>
 <20200103162632.109553-2-fparent@baylibre.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_192504_245003_16B2F49B 
X-CRM114-Status: GOOD (  15.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, joro@8bytes.org,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Fabien:

On Fri, 2020-01-03 at 17:26 +0100, Fabien Parent wrote:
> Add support for the IOMMU on MT8167
> 
> Signed-off-by: Fabien Parent <fparent@baylibre.com>
> ---
>  drivers/iommu/mtk_iommu.c | 11 ++++++++++-
>  drivers/iommu/mtk_iommu.h |  1 +
>  2 files changed, 11 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> index 6fc1f5ecf91e..5fc6178a82dc 100644
> --- a/drivers/iommu/mtk_iommu.c
> +++ b/drivers/iommu/mtk_iommu.c
> @@ -569,7 +569,8 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
>  		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
>  	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
>  
> -	if (data->plat_data->m4u_plat == M4U_MT8173)
> +	if (data->plat_data->m4u_plat == M4U_MT8173 ||
> +	    data->plat_data->m4u_plat == M4U_MT8167)

I do not like to use m4u_plat for the variant of each SoC. If you use
m4u_plat, you could drop has_4gb_mode, reset_axi, larbid_remap because
you could use m4u_plat to decide the behavior of these variable but the
code would be so dirty. So I think you should drop m4u_plat and use a
variable to identify this behavior.

Regards,
CK

>  		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
>  	else
>  		regval = lower_32_bits(data->protect_base) |
> @@ -782,6 +783,13 @@ static const struct mtk_iommu_plat_data mt2712_data = {
>  	.larbid_remap = {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
>  };
>  
> +static const struct mtk_iommu_plat_data mt8167_data = {
> +	.m4u_plat     = M4U_MT8167,
> +	.has_4gb_mode = true,
> +	.reset_axi    = true,
> +	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
> +};
> +
>  static const struct mtk_iommu_plat_data mt8173_data = {
>  	.m4u_plat     = M4U_MT8173,
>  	.has_4gb_mode = true,
> @@ -798,6 +806,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
>  
>  static const struct of_device_id mtk_iommu_of_ids[] = {
>  	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
> +	{ .compatible = "mediatek,mt8167-m4u", .data = &mt8167_data},
>  	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
>  	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
>  	{}
> diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> index ea949a324e33..cb8fd5970cd4 100644
> --- a/drivers/iommu/mtk_iommu.h
> +++ b/drivers/iommu/mtk_iommu.h
> @@ -30,6 +30,7 @@ struct mtk_iommu_suspend_reg {
>  enum mtk_iommu_plat {
>  	M4U_MT2701,
>  	M4U_MT2712,
> +	M4U_MT8167,
>  	M4U_MT8173,
>  	M4U_MT8183,
>  };

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
