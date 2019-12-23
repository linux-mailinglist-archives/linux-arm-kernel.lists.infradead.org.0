Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8031294FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:26:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsrwerCfVVhtTy0ai4yldeuSVV0vVRM1/LS1A5H+lyM=; b=YuX2f80QLgMvEh
	xf9MDFi61iLIJ+im8N7GVHc0Hqx+EA1YcrAwkfDxmPWSz6knjpSfRr5ISTpsH1I7rtZwtgpuFaalq
	t/f4gk+3k5qIalIEb8GpDPE9iyveJIDxg90j/OwLxoO8sYf0WezBf3vVJVCDwosfMcyjpqnJeQk4K
	uY3dM7rWOhLNIVXhPcww4x1o/eVGnWYloOpV9lgGqo13JpsHw9GjzDErufAjwgJEwMgIBPr9Hqong
	TjUiNu80OhP7j+UQS+JB7wbbwsfVP4BlPvVmSd8IFf+6t+AjTWs/GBXK6CboadB4+fiGjkE0okOlR
	CaNNy4Azw2YevoSPTHpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLrG-0004rq-09; Mon, 23 Dec 2019 11:26:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLr1-0004rH-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:26:29 +0000
Received: from localhost (unknown [223.226.34.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 83040207FF;
 Mon, 23 Dec 2019 11:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1577100387;
 bh=U674jlYACjQhhGCy4e3+CzEaPgiSjsEmvjKCwhbFzqw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eroF/x42FAFqJKFuiVMDn5gYmfp+YgrmPRGgnjhd4c9dKvwJB7A1iMuS5bamcLlIk
 HL+DKo0W06Yey+iPDZ+l97Ca4a9P+7vi679IhZ4hpHK7VfFnZH0qIxJFFHZ0ydILBj
 9puTCrdym62yreuoQBN3bvWGm7HublXnyBDANolg=
Date: Mon, 23 Dec 2019 16:56:23 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v7 09/12] dmaengine: ti: New driver for K3 UDMA
Message-ID: <20191223112623.GF2536@vkoul-mobl>
References: <20191209094332.4047-1-peter.ujfalusi@ti.com>
 <20191209094332.4047-10-peter.ujfalusi@ti.com>
 <20191223073425.GV2536@vkoul-mobl>
 <ea473fed-276f-6b71-070b-02ab1f51ed89@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ea473fed-276f-6b71-070b-02ab1f51ed89@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_032627_825111_43687DC7 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: nm@ti.com, devicetree@vger.kernel.org, grygorii.strashko@ti.com,
 vigneshr@ti.com, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-12-19, 10:59, Peter Ujfalusi wrote:

> >> +static void udma_reset_counters(struct udma_chan *uc)
> >> +{
> >> +	u32 val;
> >> +
> >> +	if (uc->tchan) {
> >> +		val = udma_tchanrt_read(uc->tchan, UDMA_TCHAN_RT_BCNT_REG);
> >> +		udma_tchanrt_write(uc->tchan, UDMA_TCHAN_RT_BCNT_REG, val);
> > 
> > so you read back from UDMA_TCHAN_RT_BCNT_REG and write same value to
> > it??
> 
> Yes, that's correct. This is how we can reset it. The counter is
> decremented with the value you have written to the register.

aha, with so many read+write back I would have added a helper.. Not a
big deal though can be updated later

> >> +static struct udma_desc *udma_alloc_tr_desc(struct udma_chan *uc,
> >> +					    size_t tr_size, int tr_count,
> >> +					    enum dma_transfer_direction dir)
> >> +{
> >> +	struct udma_hwdesc *hwdesc;
> >> +	struct cppi5_desc_hdr_t *tr_desc;
> >> +	struct udma_desc *d;
> >> +	u32 reload_count = 0;
> >> +	u32 ring_id;
> >> +
> >> +	switch (tr_size) {
> >> +	case 16:
> >> +	case 32:
> >> +	case 64:
> >> +	case 128:
> >> +		break;
> >> +	default:
> >> +		dev_err(uc->ud->dev, "Unsupported TR size of %zu\n", tr_size);
> >> +		return NULL;
> >> +	}
> >> +
> >> +	/* We have only one descriptor containing multiple TRs */
> >> +	d = kzalloc(sizeof(*d) + sizeof(d->hwdesc[0]), GFP_ATOMIC);
> > 
> > this is invoked from prep_ so should use GFP_NOWAIT, we dont use
> > GFP_ATOMIC :)
> 
> Ok. btw: EDMA and sDMA driver is using GFP_ATOMIC :o

heh, we made sure to document this bit :)

> >> +static int udma_configure_statictr(struct udma_chan *uc, struct udma_desc *d,
> >> +				   enum dma_slave_buswidth dev_width,
> >> +				   u16 elcnt)
> >> +{
> >> +	if (uc->ep_type != PSIL_EP_PDMA_XY)
> >> +		return 0;
> >> +
> >> +	/* Bus width translates to the element size (ES) */
> >> +	switch (dev_width) {
> >> +	case DMA_SLAVE_BUSWIDTH_1_BYTE:
> >> +		d->static_tr.elsize = 0;
> >> +		break;
> >> +	case DMA_SLAVE_BUSWIDTH_2_BYTES:
> >> +		d->static_tr.elsize = 1;
> >> +		break;
> >> +	case DMA_SLAVE_BUSWIDTH_3_BYTES:
> >> +		d->static_tr.elsize = 2;
> >> +		break;
> >> +	case DMA_SLAVE_BUSWIDTH_4_BYTES:
> >> +		d->static_tr.elsize = 3;
> >> +		break;
> >> +	case DMA_SLAVE_BUSWIDTH_8_BYTES:
> >> +		d->static_tr.elsize = 4;
> > 
> > seems like ffs(dev_width) to me?
> 
> Not really:
> ffs(DMA_SLAVE_BUSWIDTH_1_BYTE) = 1
> ffs(DMA_SLAVE_BUSWIDTH_2_BYTES) = 2
> ffs(DMA_SLAVE_BUSWIDTH_3_BYTES) = 1

I missed this!

> ffs(DMA_SLAVE_BUSWIDTH_4_BYTES) = 3
> ffs(DMA_SLAVE_BUSWIDTH_8_BYTES) = 4

Otherwise you are ffs() - 1

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
