Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 804EA12D79C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 10:40:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YASehlivMwLEqyLLLa8RvMlEOW2mx5Yfbot80YHnYB4=; b=rSws/Fs293YLf6
	As8Lb6q73lUD8mV9wEtXOKj25/XDzJsLrX3cqfKlX8MldfDegkWJaoF0OomWY3s2SscWBs50/gGBQ
	fIhwYx6RR1q96Y/hrL57bjDh7uR+1kuei+1gk+lr6De2OAC9sQ/8/BMsOyukToSjuqkoUck8CuM95
	NMn437FcgadLwV267N3HVfX3W1tVWsRLar9NUql9mMNuN+hsOfsDwSQ271w7Dd8HxmZjBxoHety6l
	Whg+Gzb22tELrWYhI7iCPj/Ua657dyp2YmPQRKKq3pbMWekr2AY/as5w+UPogtlrDnryrB2X292AW
	ltxbLmSrOL1MwOWZ6tyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imE0u-0003rx-UW; Tue, 31 Dec 2019 09:40:32 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imE0j-0003pB-58; Tue, 31 Dec 2019 09:40:22 +0000
X-UUID: 634a73618ae144bd8fdb2283650f74dc-20191231
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=EWgLWzIEGVc+n5/bGxe6G7fqAIYcTKrSyKvFxLFVniQ=; 
 b=RU5MmrftnXRk0INYLt23nURiXYsaoydt0ASL3Vr1mwm7bK+grGcin8Gh1iq5O+rCykUq6ZLW78PgnwXmoWAg/Z+sBbgBKNMDfAqFZeOxWfVrmQ118vGpQ+VG+9wRQ14ypfbpwK37paYUIMueOh/SYqni2ukR3Ngbi/bUvDiFiAE=;
X-UUID: 634a73618ae144bd8fdb2283650f74dc-20191231
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 858323671; Tue, 31 Dec 2019 01:40:09 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 01:40:25 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 31 Dec 2019 17:40:06 +0800
Received: from [10.15.20.246] (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 31 Dec 2019 17:39:33 +0800
Message-ID: <1577785148.30177.5.camel@mbjsdccf07>
Subject: Re: [RESEND,PATCH 03/13] iommu/mediatek: Add mtk_iommu_pgtable
 structure
From: chao hao <Chao.Hao@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>
Date: Tue, 31 Dec 2019 17:39:08 +0800
In-Reply-To: <1576498396.28043.78.camel@mhfsdcap03>
References: <20191104115238.2394-1-chao.hao@mediatek.com>
 <20191104115238.2394-4-chao.hao@mediatek.com>
 <1576498396.28043.78.camel@mhfsdcap03>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_014021_209492_7105752A 
X-CRM114-Status: GOOD (  32.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Cui Zhang <cui.zhang@mediatek.com>, Jun Yan <jun.yan@mediatek.com>,
 wsd_upstream@mediatek.com, Joerg Roedel <joro@8bytes.org>,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Miles Chen <miles.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org,
 Guangming Cao <guangming.cao@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 2019-12-16 at 20:13 +0800, Yong Wu wrote:
> On Mon, 2019-11-04 at 19:52 +0800, Chao Hao wrote:
> > Start with this patch, we will change the SW architecture
> > to support multiple domains. SW architecture will has a big change,
> > so we need to modify a little bit by more than one patch.
> > The new SW overall architecture is as below:
> > 
> > 				iommu0   iommu1
> > 				  |	    |
> > 				  -----------
> > 					|
> > 				mtk_iommu_pgtable
> > 					|
> > 			------------------------------------------
> > 			|		     |			 |
> > 		mtk_iommu_domain1   mtk_iommu_domain2  mtk_iommu_domain3
> > 			|                    |                   |
> > 		iommu_group1         iommu_group2           iommu_group3
> > 			|                    |                   |
> > 		iommu_domain1       iommu_domain2	    iommu_domain3
> > 			|                    |                   |
> > 		iova region1(normal)  iova region2(CCU)    iova region3(VPU)
> > 
> > For current structure, no matter how many iommus there are,
> > they use the same page table to simplify the usage of module.
> > In order to make the software architecture more explicit, this
> > patch will create a global mtk_iommu_pgtable structure to describe
> > page table and all the iommus use it.
> 
> Thanks for the hard work of this file. Actually this patch and the later
> ones confuse me. Why do you make this flow change? 
> for making the code "more explicit" or for adding multi-domain support
> in 13/13.
> 
> IMHO, the change is unnecessary.
> a) For me, this change has no improvement. currently we use a global
> mtk_iommu_get_m4u_data to get the M4U data. I will be very glad if you
> could get rid of it. But in this patchset, You use a another global
> mtk_iommu_pgtable to instead. For me. It has no improvement.

Thanks for you advice!

For current SW arch, all the IOMMU HW use the same page table, we can
use a global mtk_iommu_pgtable to discribe the information of page table
and all the IOMMU attach it, I think that it is more clear and
unambiguous. For beginners, it maybe more easily explicable? 

> 
> b) This patchset break the original flow. device_group give you a
> software chance for initializing, then you move pagetable allocating
> code into it. But it isn't device_group job.
> 

As is shown above diagram, mtk_iommu_pgtable includes iommu_group and
iommu_domain,so we need to allocate mtk_iommu_pgtable and initialize it
in device_group firstly,and then execute the original flow, it only
changes place for creating mtk_iommu_pgtable and don't break original
device_group flow.




> I can not decide if your flow is right. But if you only want to add
> support multi-domain, I guess you could extend the current "m4u_group"
> to a array "m4u_group[N]". It may be more simple. To make mt6779
> progress easily, I suggest you can use this way to support multi-domain
> firstly. Then you could send this new mtk_iommu_pgtable patchset for the
> code "more explicit" if you insist.
> 
> > The diagram is as below:
> > 
> > 	mtk_iommu_data1(MM)       mtk_iommu_data2(APU)
> > 		|			   |
> > 		|			   |
> > 		------mtk_iommu_pgtable-----
> > 
> > We need to create global mtk_iommu_pgtable to include all the iova
> > regions firstly and special iova regions by divided based on it,
> > so the information of pgtable needs to be created in device_group.
> > 
> > Signed-off-by: Chao Hao <chao.hao@mediatek.com>
> > ---
> >  drivers/iommu/mtk_iommu.c | 84 +++++++++++++++++++++++++++++++++++++++
> >  drivers/iommu/mtk_iommu.h |  1 +
> >  2 files changed, 85 insertions(+)
> > 
> > diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
> > index f2847e661137..fcbde6b0f58d 100644
> > --- a/drivers/iommu/mtk_iommu.c
> > +++ b/drivers/iommu/mtk_iommu.c
> > @@ -123,6 +123,12 @@ struct mtk_iommu_domain {
> >  	struct iommu_domain		domain;
> >  };
> >  
> > +struct mtk_iommu_pgtable {
> > +	struct io_pgtable_cfg	cfg;
> > +	struct io_pgtable_ops	*iop;
> > +};
> > +
> > +static struct mtk_iommu_pgtable *share_pgtable;
> >  static const struct iommu_ops mtk_iommu_ops;
> >  
> >  /*
> > @@ -170,6 +176,11 @@ static struct mtk_iommu_data *mtk_iommu_get_m4u_data(void)
> >  	return NULL;
> >  }
> >  
> > +static struct mtk_iommu_pgtable *mtk_iommu_get_pgtable(void)
> > +{
> > +	return share_pgtable;
> > +}
> > +
> >  static struct mtk_iommu_domain *to_mtk_domain(struct iommu_domain *dom)
> >  {
> >  	return container_of(dom, struct mtk_iommu_domain, domain);
> > @@ -322,6 +333,13 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
> >  {
> >  	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> >  
> > +	if (data->pgtable) {
> > +		dom->cfg = data->pgtable->cfg;
> > +		dom->iop = data->pgtable->iop;
> > +		dom->domain.pgsize_bitmap = data->pgtable->cfg.pgsize_bitmap;
> > +		return 0;
> > +	}
> > +
> >  	dom->cfg = (struct io_pgtable_cfg) {
> >  		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
> >  			IO_PGTABLE_QUIRK_NO_PERMS |
> > @@ -345,6 +363,61 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
> >  	return 0;
> >  }
> >  
> > +static struct mtk_iommu_pgtable *create_pgtable(struct mtk_iommu_data *data)
> > +{
> > +	struct mtk_iommu_pgtable *pgtable;
> > +
> > +	pgtable = kzalloc(sizeof(*pgtable), GFP_KERNEL);
> > +	if (!pgtable)
> > +		return ERR_PTR(-ENOMEM);
> > +
> > +	pgtable->cfg = (struct io_pgtable_cfg) {
> > +		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
> > +			IO_PGTABLE_QUIRK_NO_PERMS |
> > +			IO_PGTABLE_QUIRK_TLBI_ON_MAP |
> > +			IO_PGTABLE_QUIRK_ARM_MTK_EXT,
> > +		.pgsize_bitmap = mtk_iommu_ops.pgsize_bitmap,
> > +		.ias = 32,
> > +		.oas = 34,
> > +		.tlb = &mtk_iommu_flush_ops,
> > +		.iommu_dev = data->dev,
> > +	};
> > +
> > +	pgtable->iop = alloc_io_pgtable_ops(ARM_V7S, &pgtable->cfg, data);
> > +	if (!pgtable->iop) {
> > +		dev_err(data->dev, "Failed to alloc io pgtable\n");
> > +		return ERR_PTR(-EINVAL);
> > +	}
> > +
> > +	dev_info(data->dev, "%s create pgtable done\n", __func__);
> > +
> > +	return pgtable;
> > +}
> > +
> > +static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
> > +				    struct device *dev)
> > +{
> > +	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
> > +
> > +	/* create share pgtable */
> > +	if (!pgtable) {
> > +		pgtable = create_pgtable(data);
> > +		if (IS_ERR(pgtable)) {
> > +			dev_err(data->dev, "Failed to create pgtable\n");
> > +			return -ENOMEM;
> > +		}
> > +
> > +		share_pgtable = pgtable;
> > +	}
> > +
> > +	/* binding to pgtable */
> > +	data->pgtable = pgtable;
> > +
> > +	dev_info(data->dev, "m4u%d attach_pgtable done!\n", data->m4u_id);
> > +
> > +	return 0;
> > +}
> > +
> >  static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
> >  {
> >  	struct mtk_iommu_domain *dom;
> > @@ -508,10 +581,21 @@ static void mtk_iommu_remove_device(struct device *dev)
> >  static struct iommu_group *mtk_iommu_device_group(struct device *dev)
> >  {
> >  	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
> > +	struct mtk_iommu_pgtable *pgtable;
> > +	int ret = 0;
> >  
> >  	if (!data)
> >  		return ERR_PTR(-ENODEV);
> >  
> > +	pgtable = data->pgtable;
> > +	if (!pgtable) {
> > +		ret = mtk_iommu_attach_pgtable(data, dev);
> > +		if (ret) {
> > +			dev_err(data->dev, "Failed to device_group\n");
> > +			return NULL;
> > +		}
> > +	}
> > +
> >  	/* All the client devices are in the same m4u iommu-group */
> >  	if (!data->m4u_group) {
> >  		data->m4u_group = iommu_group_alloc();
> > diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
> > index 132dc765a40b..dd5f19f78b62 100644
> > --- a/drivers/iommu/mtk_iommu.h
> > +++ b/drivers/iommu/mtk_iommu.h
> > @@ -61,6 +61,7 @@ struct mtk_iommu_data {
> >  	struct clk			*bclk;
> >  	phys_addr_t			protect_base; /* protect memory base */
> >  	struct mtk_iommu_suspend_reg	reg;
> > +	struct mtk_iommu_pgtable	*pgtable;
> >  	struct mtk_iommu_domain		*m4u_dom;
> >  	struct iommu_group		*m4u_group;
> >  	bool                            enable_4GB;
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
