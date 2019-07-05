Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FF7260720
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 16:03:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVdOebZEESG58M+TJTw/bebsfAvY9+vNCEbxRqnEJ4s=; b=HDuX12naXrbHWS
	w87s/zfYOc2V9yRW2kMx7EUjHw2H2wha02AwZ97a1PY1Q7W4n8SVdXHK2LJKtCO66VVT9ujGPs8kf
	lJZzjNNtBJ1i8oHi4HEvwHjDSSIv1VzumdbJhPgSeA1lNoMjLwf8LcBCFJq8E7aFb1jB3uo//zxRs
	TZydED/FuoEXXDmsrMkZoSynNAy2wal6KFdyKi3iZeURathsxVi/o70fR7pVK8Vesww8i3BSu9RJa
	+1lHgaE7mIOmjfDPAeF2bGt/rJok/qzaOdmRizKqMgzbqwQQ8J1RMQwj91YjfjHXVHSEMZXLfroxN
	qCbbzrqSgZ/cmS82kgZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjOo2-00073n-Nc; Fri, 05 Jul 2019 14:03:18 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjOfp-000544-QV; Fri, 05 Jul 2019 13:54:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=MIME-Version:Content-Transfer-Encoding:
 Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hyudu+hNNSmtU4eC9sn2X8JbiWNZ+/c2Se38zvMvqEE=; b=CrZsFedOrrfOfur4bWmBSfR2Wg
 iNS/Nc8ubW13Igr2B2PAeUaXF9yzg7mG2aKOjYyCURQaRteV3O5SBTDPJOAvuzi5cmqcVBQJ33BPm
 veKVir37xEt3e4BvhDpjq26vkATWCgPhqDlr5QN8spBPYwGMvJDWSbUnfY1e1Rzw3/1b3t1K+z5C/
 GJulrPD2XPfJw716h0f5TffUsuYB/YK5XvXCKTDm5VGqgUzyB76U4fCNxQomPCBouQCbbIf16AKTc
 YqR5MYzZjq+pJaJNEkG0BpuBxVA1qbcgMQN8fpnc1By39RjvGdh/VAOmAWNhA9bzQ7n0SZrvcYKfD
 pDxwkseQ==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjJ9o-0004d0-P7; Fri, 05 Jul 2019 08:01:28 +0000
X-UUID: 7c1c13ac422641fa922e06f1d471fa6b-20190704
X-UUID: 7c1c13ac422641fa922e06f1d471fa6b-20190704
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 969946169; Thu, 04 Jul 2019 23:59:43 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 5 Jul 2019 00:59:41 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 5 Jul 2019 15:59:39 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 5 Jul 2019 15:59:39 +0800
Message-ID: <1562313579.1212.73.camel@mtksdccf07>
Subject: Re: [RFC,v3 9/9] media: platform: Add Mediatek ISP P1 shared memory
 device
From: Jungo Lin <jungo.lin@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Fri, 5 Jul 2019 15:59:39 +0800
In-Reply-To: <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_090125_103672_56AFF3A6 
X-CRM114-Status: GOOD (  22.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (0.0 points, 5.0 required)
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
Cc: devicetree@vger.kernel.org,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <sean.cheng@mediatek.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Ryan Yu =?UTF-8?Q?=28=E4=BD=99=E5=AD=9F=E4=BF=AE=29?= <ryan.yu@mediatek.com>,
 Frankie Chiu =?UTF-8?Q?=28=E9=82=B1=E6=96=87=E5=87=B1=29?=
 <frankie.chiu@mediatek.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Laurent
 Pinchart <laurent.pinchart@ideasonboard.com>, ddavenport@chromium.org,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>, Joerg
 Roedel <joro@8bytes.org>," <linux-arm-kernel@lists.infradead.org>, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tomasz:

On Fri, 2019-07-05 at 13:22 +0900, Tomasz Figa wrote:
> Hi Jungo,
> 
> On Fri, Jul 5, 2019 at 12:33 PM Jungo Lin <jungo.lin@mediatek.com> wrote:
> >
> > Hi Tomasz,

[snip]

> > After applying your suggestion in SCP device driver, we could remove
> > mtk_cam-smem.h/c. Currently, we use dma_alloc_coherent with SCP device
> > to get SCP address. We could touch the buffer with this SCP address in
> > SCP processor.
> >
> > After that, we use dma_map_page_attrs with P1 device which supports
> > IOMMU domain to get IOVA address. For this address, we will assign
> > it to our ISP HW device to proceed.
> >
> > Below is the snippet for ISP P1 compose buffer initialization.
> >
> >         ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
> >                                  MAX_COMPOSER_SIZE, &addr, GFP_KERNEL);
> >         if (!ptr) {
> >                 dev_err(dev, "failed to allocate compose memory\n");
> >                 return -ENOMEM;
> >         }
> >         isp_ctx->scp_mem_pa = addr;
> 
> addr contains a DMA address, not a physical address. Could we call it
> scp_mem_dma instead?
> 
> >         dev_dbg(dev, "scp addr:%pad\n", &addr);
> >
> >         /* get iova address */
> >         addr = dma_map_page_attrs(dev, phys_to_page(addr), 0,
> 
> addr is a DMA address, so phys_to_page() can't be called on it. The
> simplest thing here would be to use dma_map_single() with ptr as the
> CPU address expected.
> 

We have changed to use ma_map_single() with ptr, but encounter IOMMU
error. From the debug log of iommu_dma_map_page[3], we got
0x0000000054800000 instead of expected address: 0x0000000050800000[2].
There is a address offset(0x4000000). If we change to use
dma_map_page_attrs with phys_to_page(addr), the address is correct as we
expected[2]. Do you have any suggestion on this issue? Do we miss
something?

[1]
[    1.344786] __dma_alloc_from_coherent: 0x800000 PAGE_SHIFT:12
device_base:0x0000000050000000 dma:0x0000000050800000
virt_base:ffffff8014000000 va:ffffff8014800000

[    1.346890] mtk-cam 1a000000.camisp: scp addr:0x0000000050800000
va:ffffff8014800000

[    1.347864] iommu_dma_map_page:0x0000000054800000 offset:0
[    1.348562] mtk-cam 1a000000.camisp: iova addr:0x00000000fde00000

[2]
[    1.346738] __dma_alloc_from_coherent: 0x800000 PAGE_SHIFT:12
device_base:0x0000000050000000 dma:0x0000000050800000
virt_base:ffffff8014000000 va:ffffff8014800000
[    1.348841] mtk-cam 1a000000.camisp: scp addr:0x0000000050800000
va:ffffff8014800000
[    1.349816] iommu_dma_map_page:0x0000000050800000 offset:0
[    1.350514] mtk-cam 1a000000.camisp: iova addr:0x00000000fde00000


[3]
dma_addr_t iommu_dma_map_page(struct device *dev, struct page *page,
		unsigned long offset, size_t size, int prot)
{
	phys_addr_t phys = page_to_phys(page);
	pr_err("iommu_dma_map_page:%pa offset:%lu\n", &phys, offset);

	return __iommu_dma_map(dev, page_to_phys(page) + offset, size, prot,
			iommu_get_dma_domain(dev));
}

[snip]

Best regards,

Jungo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
