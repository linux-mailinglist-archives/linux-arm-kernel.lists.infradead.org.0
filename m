Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E0537650B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 14:01:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CE7FgRM5UkkPdSyArRiSA8gA/hI0np/ziWU9eT4x9NE=; b=AwQ2/TXCRKfhwl
	nQJbv5ZPn5NEgKL5ulmKlyxkrAd7dvUmrFo5+r9ENX1z96D34p+1pn07HhqDMbzcQR4MW3mE3qghY
	Mc8iyTfyfemqPXuO8eiJ59vkJV2R6WYBEDDXt8PAmk1/AlvRFhf5WAyp5x6lRF15Uc7x9g4VbQLpi
	NFRfNh6hV6mLGb4gYawDPSHgg9QmKIm7UltvVMAxRBmxgjmG1ArIKqsAFVUT++mYe3Cn/+jNsR8m+
	hQc22Ib1JNvqZsvN7cc3hE5n/f+RoP8qD+vTc/7YvGasqFzGkTVqRGlrV7qo/9Lp/2TrxqdKaOcco
	UNDcWhNg+l0k7SxwyFUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyuk-00012d-CL; Fri, 26 Jul 2019 12:01:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqytV-0000Z5-Ry; Fri, 26 Jul 2019 12:00:19 +0000
X-UUID: f74ca5a795fc4520b17e7559c17224fc-20190726
X-UUID: f74ca5a795fc4520b17e7559c17224fc-20190726
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1020859658; Fri, 26 Jul 2019 04:00:02 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 05:00:00 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 19:59:46 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 26 Jul 2019 19:59:46 +0800
Message-ID: <1564142386.1212.621.camel@mtksdccf07>
Subject: Re: [RFC, v3 9/9] media: platform: Add Mediatek ISP P1 shared
 memory device
From: Jungo Lin <jungo.lin@mediatek.com>
To: Robin Murphy <robin.murphy@arm.com>
Date: Fri, 26 Jul 2019 19:59:46 +0800
In-Reply-To: <4460bc91-352a-7f3a-cbed-1b95e743ca8c@arm.com>
References: <jungo.lin@mediatek.com>
 <20190611035344.29814-1-jungo.lin@mediatek.com>
 <20190611035344.29814-10-jungo.lin@mediatek.com>
 <20190701072532.GB137710@chromium.org>
 <1562297618.1212.46.camel@mtksdccf07>
 <CAAFQd5BaTQ-Q7gsE0X+d4_81OZq9WHaCYkmALt7_4A1JFo=_8g@mail.gmail.com>
 <1562313579.1212.73.camel@mtksdccf07>
 <CAAFQd5AaNFpMGCVJREY85n8UetEwd99TOka8-ECoLzMbMkos_g@mail.gmail.com>
 <1563870117.1212.455.camel@mtksdccf07>
 <CAAFQd5Bh80N+cMhz=eyHUGJLaE5uuypOawQvHrTgGSMDvmcpLA@mail.gmail.com>
 <20190726074116.GA19745@infradead.org>
 <CAAFQd5CXwRm-3jD+rfNNDNLH=gT_i0QYSAG3XBo3SJnPTY56_w@mail.gmail.com>
 <4460bc91-352a-7f3a-cbed-1b95e743ca8c@arm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_050018_047198_C100F8CC 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org,
 Sean Cheng =?UTF-8?Q?=28=E9=84=AD=E6=98=87=E5=BC=98=29?=
 <sean.cheng@mediatek.com>,
 Frederic Chen =?UTF-8?Q?=28=E9=99=B3=E4=BF=8A=E5=85=83=29?=
 <frederic.chen@mediatek.com>,
 Rynn Wu =?UTF-8?Q?=28=E5=90=B3=E8=82=B2=E6=81=A9=29?= <rynn.wu@mediatek.com>,
 srv_heupstream <srv_heupstream@mediatek.com>, Rob Herring <robh@kernel.org>,
 Joerg Roedel <joro@8bytes.org>,
 Ryan Yu =?UTF-8?Q?=28=E4=BD=99=E5=AD=9F=E4=BF=AE=29?= <ryan.yu@mediatek.com>,
 Frankie Chiu =?UTF-8?Q?=28=E9=82=B1=E6=96=87=E5=87=B1=29?=
 <frankie.chiu@mediatek.com>,
 "list@263.net:IOMMU DRIVERS" <iommu@lists.linux-foundation.org>,
 Tomasz Figa <tfiga@chromium.org>, Christoph Hellwig <hch@infradead.org>,
 Matthias
 Brugger <matthias.bgg@gmail.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, ddavenport@chromium.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Linux
 Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin:

On Fri, 2019-07-26 at 12:04 +0100, Robin Murphy wrote:
> On 26/07/2019 08:42, Tomasz Figa wrote:
> > On Fri, Jul 26, 2019 at 4:41 PM Christoph Hellwig <hch@infradead.org> wrote:
> >>
> >> On Fri, Jul 26, 2019 at 02:15:14PM +0900, Tomasz Figa wrote:
> >>> Could you try dma_get_sgtable() with the SCP struct device and then
> >>> dma_map_sg() with the P1 struct device?
> >>
> >> Please don't do that.  dma_get_sgtable is a pretty broken API (see
> >> the common near the arm implementation) and we should not add more
> >> users of it.  If you want a piece of memory that can be mapped to
> >> multiple devices allocate it using alloc_pages and then just map
> >> it to each device.
> > 
> > Thanks for taking a look at this thread.
> > 
> > Unfortunately that wouldn't work. We have a specific reserved memory
> > pool that is the only memory area accessible to one of the devices.
> > Any idea how to handle this?
> 
> If it's reserved in the sense of being outside struct-page-backed 
> "kernel memory", then provided you have a consistent CPU physical 
> address it might be reasonable for other devices to access it via 
> dma_map_resource().
> 
> Robin.

Thank you for your suggestion.

After revising to use dma_map_resource(), it is worked. Below is the
current implementation. Pleas kindly help us to check if there is any
misunderstanding.

#define MTK_ISP_COMPOSER_MEM_SIZE		0x200000

	/*
	 * Allocate coherent reserved memory for SCP firmware usage.
	 * The size of SCP composer's memory is fixed to 0x200000
	 * for the requirement of firmware.
	 */
	ptr = dma_alloc_coherent(p1_dev->cam_dev.smem_dev,
				 MTK_ISP_COMPOSER_MEM_SIZE, &addr, GFP_KERNEL);
	if (!ptr) {
		dev_err(dev, "failed to allocate compose memory\n");
		return -ENOMEM;
	}
	p1_dev->composer_scp_addr = addr;
	p1_dev->composer_virt_addr = ptr;
	dev_dbg(dev, "scp addr:%pad va:%pK\n", &addr, ptr);

	/*
	 * This reserved memory is also be used by ISP P1 HW.
	 * Need to get iova address for ISP P1 DMA.
	 */
	addr = dma_map_resource(dev, addr, MTK_ISP_COMPOSER_MEM_SIZE,
				DMA_BIDIRECTIONAL, DMA_ATTR_SKIP_CPU_SYNC);
	if (dma_mapping_error(dev, addr)) {
		dev_err(dev, "Failed to map scp iova\n");
		ret = -ENOMEM;
		goto fail_free_mem;
	}
	p1_dev->composer_iova = addr;
	dev_info(dev, "scp iova addr:%pad\n", &addr);

Moreover, appropriate Tomasz & Christoph's help on this issue.

Best regards,

Jungo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
