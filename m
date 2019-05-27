Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC4E52AED3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 08:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hkC1vdR0n9QZNi0mQuuZbOfVd8x9pHxopwMHsVzEAIM=; b=ufHv0ouwGADSHm
	D6+m/lCL8kO5OYIKtvxWYy7Jcl9SQBAu8erOzSyafVt740fJ0anev/6EUZCDTXzUlenshvLXiaGoC
	9TcaWNSQ7I9/XmERSOtYsrhLYjskP+pbf1kAI5RA/62C0g1xMs1jHrt37rZkinzNaiHUMft5SWHjp
	22A3/GK5nx27DDmu6m4x7nJLs7EbMwL1FVqiKNFgz6iIu1Mi9PmlAeXwWwfgN+5M5VicOOtl1W0iZ
	ZUQT34qLnBbzij04mAX4nI/ZcMaArUFckedbTSr6XuLcg73diC3WrZeC+gBJWZc//BgTL86MS6xcp
	JngXIW8iPGl9TFLlFXTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9IO-0002J0-U2; Mon, 27 May 2019 06:39:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9IH-0002IW-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 06:39:38 +0000
Received: from localhost (unknown [171.61.91.186])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BCD6A2054F;
 Mon, 27 May 2019 06:39:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558939176;
 bh=JT4KTsrIWgsbKhkPbSLThrwY2+w4AOrCa0jWApt18+k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=xP5ZOf0b4QiCw7NzBzQbzedrrWapYQKtZu//RoV7n6FD1I16KTQuswyZBWZHiHBHT
 I/lzbXFeC9Gg60JZUSxntpdJbi/m5DTKF71SwHwsE6GxgHiwQ0EADV5P8TMPINwCub
 zrbrDDzMTqbdN5dpVnFhfGWQ6DH6rrEbfQi4B2p0=
Date: Mon, 27 May 2019 12:09:32 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Subject: Re: [PATCH v3 0/2] dmaengine: ti: edma: Polled completion support
Message-ID: <20190527063932.GE15118@vkoul-mobl>
References: <20190521093646.21836-1-peter.ujfalusi@ti.com>
 <19b0d346-5249-e832-8eea-685c8e7706e2@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <19b0d346-5249-e832-8eea-685c8e7706e2@ti.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_233937_207317_5A9069D2 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 23-05-19, 13:57, Peter Ujfalusi wrote:
> Vinod,
> 
> On 21/05/2019 12.36, Peter Ujfalusi wrote:
> > Hi,
> > 
> > Changes since v2:
> > - Fix typo in the comment for patch 0
> > 
> > Changes since v1:
> > - Cleanup patch for the array register handling
> > - typo fixed in patch2 commit message
> > 
> > The code around the array register access was pretty confusing for the first
> > look, so clean them up first then use the cleaner way in the polled handling.
> > 
> > When a DMA client driver decides that it is not providing callback for
> > completion of a transfer (and/or does not set the DMA_PREP_INTERRUPT) but
> > it will poll the status of the transfer (in case of short memcpy for
> > example) we will not get interrupt for the completion of the transfer and
> > will not mark the transaction as done.
> > 
> > Check the event registers (ER and EER) and if the channel is inactive then
> > return wioth DMA_COMPLETE to let the client know that the transfer is
> > completed.
> 
> Please do not pick this up yet, I got report that it might cause side
> effect which I need to debug to understand.

OK dropped for queue

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
