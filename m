Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2606AF880A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 06:35:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EIJo+lYFg+xv8hZZEC+PpdSF1Ycq43naa3+dTTI2eg=; b=OKO/a+a25IbfsK
	bzqoLOOjsUofxfR82TbAjEh1gx4ZsgBCyIB0i7zYrUDo/9ncuB6XZjCnV3mYAwkuRHfspEK4I4eFV
	6bjxnMiLWMtwPBVopsvARnL55tpftvWVYddzARyWhjCNKoK9VAv+yhcZGfPxE6Fci0WfI9Pog+c2v
	HVF2SlqiR1AekD8nyX36hs33vDUQrirdi3zZ2NpO2/OCJF7JgtDgaoYBMjkLKN41l77Q/kKtLWakc
	Nwb06/CpT16zZxNPxU/Li0xtKmGwF57JZsA1Hiqlbt58MGTOOAytdS+y8k5MEDEnIfHwhao9FkLy2
	2gsGxSE2PHOMvUo6V2cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUOpR-0004q9-Dr; Tue, 12 Nov 2019 05:35:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUOpD-0004pH-Tv
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 05:34:49 +0000
Received: from localhost (unknown [122.167.70.123])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 80D8D2084F;
 Tue, 12 Nov 2019 05:34:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573536887;
 bh=Jb7dYixP6yIjsrokC6NTgrZ/74+6EVtRM48rK5FZNvY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=swnFRxTopGg49WadsvYOwM4ZljN75NOKNOp1Z9e5BW0FyYQHYvejgIuS/T6ZaeS+f
 gxIT4lF0hqOk50dDZyDJJSafiZ3bZ8R9mleb8cOsMrZAepP86BKYPsfg0wzquvM826
 YuIVlpKmlK7CHZSlLwZbDQfxBtffsMv1FmSgU/Ak=
Date: Tue, 12 Nov 2019 11:04:40 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v4 10/15] dmaengine: ti: New driver for K3 UDMA -
 split#2: probe/remove, xlate and filter_fn
Message-ID: <20191112053440.GV952516@vkoul-mobl>
References: <20191101084135.14811-1-peter.ujfalusi@ti.com>
 <20191101084135.14811-11-peter.ujfalusi@ti.com>
 <20191111053301.GO952516@vkoul-mobl>
 <9b0f8bec-4964-8136-4173-7b45e479c0c5@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9b0f8bec-4964-8136-4173-7b45e479c0c5@ti.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_213447_983748_88282149 
X-CRM114-Status: GOOD (  16.66  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [122.167.70.123 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, robh+dt@kernel.org, ssantosh@kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11-11-19, 11:16, Peter Ujfalusi wrote:
> 
> 
> On 11/11/2019 7.33, Vinod Koul wrote:
> > On 01-11-19, 10:41, Peter Ujfalusi wrote:
> > 
> >> +static bool udma_dma_filter_fn(struct dma_chan *chan, void *param)
> >> +{
> >> +	struct psil_endpoint_config *ep_config;
> >> +	struct udma_chan *uc;
> >> +	struct udma_dev *ud;
> >> +	u32 *args;
> >> +
> >> +	if (chan->device->dev->driver != &udma_driver.driver)
> >> +		return false;
> >> +
> >> +	uc = to_udma_chan(chan);
> >> +	ud = uc->ud;
> >> +	args = param;
> >> +	uc->remote_thread_id = args[0];
> >> +
> >> +	if (uc->remote_thread_id & K3_PSIL_DST_THREAD_ID_OFFSET)
> >> +		uc->dir = DMA_MEM_TO_DEV;
> >> +	else
> >> +		uc->dir = DMA_DEV_TO_MEM;
> > 
> > Can you explain this a bit?
> 
> The UDMAP in K3 works between two PSI-L endpoint. The source and
> destination needs to be paired to allow data flow.
> Source thread IDs are in range of 0x0000 - 0x7fff, while destination
> thread IDs are 0x8000 - 0xffff.
> 
> If the remote thread ID have the bit 31 set (0x8000) then the transfer
> is MEM_TO_DEV and I need to pick one unused tchan for it. If the remote
> is the source then it can be handled by rchan.
> 
> dmas = <&main_udmap 0xc400>, <&main_udmap 0x4400>;
> dma-names = "tx", "rx";
> 
> 0xc400 is a destination thread ID, so it is MEM_TO_DEV
> 0x4400 is a source thread ID, so it is DEV_TO_MEM
> 
> Even in MEM_TO_MEM case I need to pair two UDMAP channels:
> UDMAP source threads are starting at offset 0x1000, UDMAP destination
> threads are 0x9000+

Okay so a channel is set for a direction until teardown. Also this and
other patch comments are quite useful, can we add them here?

> Changing direction runtime is hardly possible as it would involve
> tearing down the channel, removing interrupts, destroying rings,
> removing the PSI-L pairing and redoing everything.

okay I would expect the prep_ to check for direction and reject the call
if direction is different.

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
