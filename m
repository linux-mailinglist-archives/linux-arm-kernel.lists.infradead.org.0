Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B8CA999FF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 19:11:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCraIHwxRpzWC+OX9K1QZ8WUqSmWL0bWmwdK6SuwK10=; b=Req5c2itFAWtzl
	6jsulZtz+cjDh0rpfehRfHHDg9bQdCORwTY29/ilur14nbzMwJr7CkAPAAZjK1ap792py9IhU5qYj
	DzLEazPSLJPr+qj3hxHUowTiuieOMXfWTV7LLhxc+QfAWgfLDUXl0DdpfcMsqf7XhRZOznhCdq0Gk
	QjyHlbK6YSTqFOFaaW85xl2RFX4axp1n93o3qniqqrJCed08K7jW3p5a70iYmd8e3T67lIw9AJ2Bq
	oBocO+BXxGi8AZOUk2KVBpShAT+//LcJgxgXHTo7sk1nk8RRgrCWgFcaB6JvaFXIfBtgD44y2AMVb
	8VFPYnOhuS49VlL/+jKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0qcK-0007vI-45; Thu, 22 Aug 2019 17:11:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0qc9-0007u5-PT
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 17:11:10 +0000
Received: from localhost (wsip-184-188-36-2.sd.sd.cox.net [184.188.36.2])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 821062089E;
 Thu, 22 Aug 2019 17:11:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566493868;
 bh=Eu5zYHsgZr/DzgkYZtrV8Xf3yPbZrB6F/5Aa3SVutiA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YgpviCCuEYOqne1wsEWgd6l+Gzkw+5xYBwggmYQtDll2PjCPqB1qmScWDXN1P/B5K
 B/RNg/icssWR6AjcDPdeqSlGGxWCAS2rl4YBtOQnalt5AVfZm3e4ze3if6d5gFRY2x
 +KvCpV/lo8jNDpZObQ1PLinLdtTKiva/GCEIEsL4=
Date: Thu, 22 Aug 2019 10:11:08 -0700
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: next take at setting up a dma mask by default for platform
 devices v2
Message-ID: <20190822171108.GA17471@kroah.com>
References: <20190816062435.881-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190816062435.881-1-hch@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_101109_846583_9DCC24D9 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, Gavin Li <git@thegavinli.com>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, Geoff Levand <geoff@infradead.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-usb@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
 iommu@lists.linux-foundation.org,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 linux-m68k@lists.linux-m68k.org, Alan Stern <stern@rowland.harvard.edu>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Minas Harutyunyan <hminas@synopsys.com>, Shawn Guo <shawnguo@kernel.org>,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org,
 Laurentiu Tudor <laurentiu.tudor@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 08:24:29AM +0200, Christoph Hellwig wrote:
> Hi all,
> 
> this is another attempt to make sure the dma_mask pointer is always
> initialized for platform devices.  Not doing so lead to lots of
> boilerplate code, and makes platform devices different from all our
> major busses like PCI where we always set up a dma_mask.  In the long
> run this should also help to eventually make dma_mask a scalar value
> instead of a pointer and remove even more cruft.
> 
> The bigger blocker for this last time was the fact that the usb
> subsystem uses the presence or lack of a dma_mask to check if the core
> should do dma mapping for the driver, which is highly unusual.  So we
> fix this first.  Note that this has some overlap with the pending
> desire to use the proper dma_mmap_coherent helper for mapping usb
> buffers.  The first two patches have already been queued up by Greg
> and are only included for completeness.

Note to everyone.  The first two patches in this series is already in
5.3-rc5.

I've applied the rest of the series to my usb-next branch (with the 6th
patch landing there later today.)  They are scheduled to be merge to
Linus in 5.4-rc1.

Christoph, thanks so much for these cleanups.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
