Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A5E179064
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 13:30:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I6u88n+hL6xSj4QN2UxURN4FOl3ayrNAbgt26CokO2w=; b=MOigLocfKZAqZr
	dfx4lutbRIDBeHiJv2HfCENLv/LbO6YArJBD54u+SAdz+Qf+0TDLbyrWwzyRzYACk0p7FMAiktY6/
	qmYfUC9PtvqDA5ck0cWtT246NtXOMFolQkenXipjk+SnfLceZfzJfXyL4XBtR+kUE39vMy+/lxsnx
	3ws6ZjDZKNCrFRQJzAZnNrcadqf158qsj4Ci0voWoEKSpl+0RSgXaLhe6rqRCaP/LvGKaimusCYXx
	MAqYhCfjyaFF4jLBixsr50/ekN62M184I2uN9St5ONOcxXTJZlV0lvloOle7oNWBzU/WEXSwpA6Nf
	kD4c5mzm/dWJ+j3EJN1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9T9v-000111-AL; Wed, 04 Mar 2020 12:29:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9T9n-0000ze-8c; Wed, 04 Mar 2020 12:29:48 +0000
X-UUID: 817ecdea70ae4dc796a95c5249680b17-20200304
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hUGYRcp79nujMp8CJYYSA+RvajWD2N45GZbZUHTBZnU=; 
 b=IddU/DlZSXXFw1EUrAP469n+GZNlpN+nzgGE3K3en+IF0e5ppljZWJBXdOWt90V79AdR3w2R4Zv2eS9Wqa6cF51PJjKo+VFNvSh9vjd5zmrlyvHNZ1ZDIWNU9s/p65phrgcSU3h6ExdSJuA0xEZ+2tVQeB1Hpp8i2gmHqJj8Umc=;
X-UUID: 817ecdea70ae4dc796a95c5249680b17-20200304
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1587666652; Wed, 04 Mar 2020 04:29:44 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 04:29:41 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 4 Mar 2020 20:28:17 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 4 Mar 2020 20:28:39 +0800
Message-ID: <1583324972.4784.24.camel@mhfsdcap03>
Subject: Re: [PATCH v2 2/3] iommu/mediatek: add pdata member for legacy ivrp
 paddr
From: Yong Wu <yong.wu@mediatek.com>
To: Fabien Parent <fparent@baylibre.com>
Date: Wed, 4 Mar 2020 20:29:32 +0800
In-Reply-To: <1583324597.4784.23.camel@mhfsdcap03>
References: <20200302112152.2887131-1-fparent@baylibre.com>
 <20200302112152.2887131-2-fparent@baylibre.com>
 <1583324597.4784.23.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 031010B90B15B5E0A03BD5360C9733A8E74D3311E1BEF4AF91EC3A67C5B8F8BA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_042947_314341_10F71C90 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: anan.sun@mediatek.com, devicetree@vger.kernel.org, joro@8bytes.org,
 youlin.pei@mediatek.com, linux-kernel@vger.kernel.org, matthias.bgg@gmail.com,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 ck.hu@mediatek.com, scott.wang@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-03-04 at 20:23 +0800, Yong Wu wrote:
> On Mon, 2020-03-02 at 12:21 +0100, Fabien Parent wrote:
> > Add a new platform data member in order to select which IVRP_PADDR
> > format is used by an SoC.
> > 
> > Signed-off-by: Fabien Parent <fparent@baylibre.com>
> > ---
> > 
> > v2: new patch
> > 
> > ---
> >  drivers/iommu/mtk_iommu.c | 3 ++-
> >  drivers/iommu/mtk_iommu.h | 1 +
> >  2 files changed, 3 insertions(+), 1 deletion(-)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index 95945f467c03..78cb14ab7dd0 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -569,7 +569,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
> >  		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
> >  	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
> >  
> > -	if (data->plat_data->m4u_plat == M4U_MT8173)
> > +	if (data->plat_data->has_legacy_ivrp_paddr)
> >  		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
> >  	else
> >  		regval = lower_32_bits(data->protect_base) |
> > @@ -786,6 +786,7 @@ static const struct mtk_iommu_plat_data mt8173_data = {
> >  	.m4u_plat     = M4U_MT8173,
> >  	.has_4gb_mode = true,
> >  	.has_bclk     = true,
> > +	.has_legacy_ivrp_paddr = true;

,

> >  	.reset_axi    = true,
> >  	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
> >  };
> > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > index ea949a324e33..4696ba027a71 100644
> > --- a/drivers/iommu/mtk_iommu.h
> > +++ b/drivers/iommu/mtk_iommu.h
> > @@ -42,6 +42,7 @@ struct mtk_iommu_plat_data {
> >  	bool                has_bclk;
> >  	bool                has_vld_pa_rng;
> >  	bool                reset_axi;
> > +	bool                has_legacy_ivrp_paddr;
> 
> I'd like to put this before "has_vld_pa_rng" alphabetically.
> 
> Other than this,
> 
> Reviewed-by: Yong Wu <yong.wu@mediatek.com>
> 
> >  	unsigned char       larbid_remap[MTK_LARB_NR_MAX];
> >  };
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
