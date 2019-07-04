Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE1095F78A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 13:54:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wh3qRf9FS/V7AioomkZAhPdbBiSuZtgkqAHYhwukiz8=; b=sO7VuIGL+u7hCz
	95D5Gc3Ylv22OW0haIVVjpHEoCMANEzSrKYWXrRd31irfgV75PG+BfIK2LgyapX0AfHYecqYs2Z+m
	FygC02QXzhRNZjK1wytzJtZ/ADdD92vr5Yk0I9Cslv8pk8spy2r+4qccZiWlLEy3o3DeOca+lRA8G
	SbLtkAaVOBT2US4p9oiA0oMK9zJ1pDzum9YRnGR7rcfxyREkgFEAoBVYyTuZ06jP/GSCf4KKfCxNn
	1axx74uR57+aJjOTFlHRvKUxonQoUD5JXZ/PyhtqWvyTN1mv5ZP7vdhKTelwSXeyy3ir96DecLJ1v
	SgO3bfM719KvfeplUe8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj0K7-00024L-Mq; Thu, 04 Jul 2019 11:54:47 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj0Jp-00023U-V2
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 11:54:31 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 705D03083394;
 Thu,  4 Jul 2019 11:54:28 +0000 (UTC)
Received: from carbon (ovpn-200-17.brq.redhat.com [10.40.200.17])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 99A408E61A;
 Thu,  4 Jul 2019 11:54:15 +0000 (UTC)
Date: Thu, 4 Jul 2019 13:54:14 +0200
From: Jesper Dangaard Brouer <brouer@redhat.com>
To: Jose Abreu <Jose.Abreu@synopsys.com>
Subject: Re: [PATCH net-next 3/3] net: stmmac: Introducing support for Page
 Pool
Message-ID: <20190704135414.0dd5df76@carbon>
In-Reply-To: <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
References: <cover.1562149883.git.joabreu@synopsys.com>
 <1b254bb7fc6044c5e6e2fdd9e00088d1d13a808b.1562149883.git.joabreu@synopsys.com>
 <20190704120018.4523a119@carbon>
 <BN8PR12MB3266BC5322AADFAC49D9BAFAD3FA0@BN8PR12MB3266.namprd12.prod.outlook.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Thu, 04 Jul 2019 11:54:28 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_045430_093856_BE76D856 
X-CRM114-Status: GOOD (  25.51  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Joao Pinto <Joao.Pinto@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, brouer@redhat.com,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S . Miller" <davem@davemloft.net>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 4 Jul 2019 10:13:37 +0000
Jose Abreu <Jose.Abreu@synopsys.com> wrote:

> From: Jesper Dangaard Brouer <brouer@redhat.com>
> 
> > The page_pool DMA mapping cannot be "kept" when page traveling into the
> > network stack attached to an SKB.  (Ilias and I have a long term plan[1]
> > to allow this, but you cannot do it ATM).  
> 
> The reason I recycle the page is this previous call to:
> 
> 	skb_copy_to_linear_data()
> 
> So, technically, I'm syncing to CPU the page(s) and then memcpy to a 
> previously allocated SKB ... So it's safe to just recycle the mapping I 
> think.

I didn't notice the skb_copy_to_linear_data(), will copy the entire
frame, thus leaving the page unused and avail for recycle.

Then it looks like you are doing the correct thing.  I will appreciate
if you could add a comment above the call like:

   /* Data payload copied into SKB, page ready for recycle */
   page_pool_recycle_direct(rx_q->page_pool, buf->page);


> Its kind of using bounce buffers and I do see performance gain in this 
> (I think the reason is because my setup uses swiotlb for DMA mapping).
> 
> Anyway, I'm open to some suggestions on how to improve this ...

I was surprised to see page_pool being used outside the surrounding XDP
APIs (included/net/xdp.h).  For you use-case, where you "just" use
page_pool as a driver-local fast recycle-allocator for RX-ring that
keeps pages DMA mapped, it does make a lot of sense.  It simplifies the
driver a fair amount:

  3 files changed, 63 insertions(+), 144 deletions(-)

Thanks for demonstrating a use-case for page_pool besides XDP, and for
simplifying a driver with this.


> > Also remember that the page_pool requires you driver to do the
> > DMA-sync operation.  I see a dma_sync_single_for_cpu(), but I
> > didn't see a dma_sync_single_for_device() (well, I noticed one
> > getting removed). (For some HW Ilias tells me that the
> > dma_sync_single_for_device can be elided, so maybe this can still
> > be correct for you).  
> 
> My HW just needs descriptors refilled which are in different coherent 
> region so I don't see any reason for dma_sync_single_for_device() ...

For you use-case, given you are copying out the data, and not writing
into it, then I don't think you need to do sync for device (before
giving the device the page again for another RX-ring cycle).

The way I understand the danger: if writing to the DMA memory region,
and not doing the DMA-sync for-device, then the HW/coherency-system can
write-back the memory later.  Which creates a race with the DMA-device,
if it is receiving a packet and is doing a write into same DMA memory
region.  Someone correct me if I misunderstood this...

-- 
Best regards,
  Jesper Dangaard Brouer
  MSc.CS, Principal Kernel Engineer at Red Hat
  LinkedIn: http://www.linkedin.com/in/brouer

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
