Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ED1FD731B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 12:24:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K+piegC16hXtENhA3nH2ssXL5jDJoInzFWILBMp54CM=; b=BiMB7hoJ4D8p3H
	U3QIcxdrL4MJApQt37Ygc0YQFBJxjBuK1n95oWiiTgnExILlT8tfbT/Y+wmZYql6U1JVv1ehL8bS6
	0DrzdV7pBoUSAbBYEup8Fz9JaTIg2OFO9SFnYCfjooAYwk8zjaUu7BkS3SPZAGWtSZA5Q3ztk0qiV
	GtxFyWIjvY2ZrCjF9YsNKC7T95TMMCG4qcDsW/btXb5D+H7MNURBJbLkfUaUpGEftP12MXgfKue2M
	B2HHzn/TMV/q0LU1Vf4huOUmM4c7/yiF99d9/vO9DZyTwGw7O6xWp1Dk/IQtc/zJD93RbgajWiniq
	q9EOzf42Ru24yefcIi3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKJzi-0002Qi-7l; Tue, 15 Oct 2019 10:23:58 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1iKJzW-0002Q7-UI; Tue, 15 Oct 2019 10:23:46 +0000
Date: Tue, 15 Oct 2019 03:23:46 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH RFC 4/5] dma/direct: check for overflows in ARM's
 dma_capable()
Message-ID: <20191015102346.GA9071@infradead.org>
References: <20191014183108.24804-1-nsaenzjulienne@suse.de>
 <20191014183108.24804-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014183108.24804-5-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
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
Cc: mbrugger@suse.com, linux-kernel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>, hch@infradead.org,
 iommu@lists.linux-foundation.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 08:31:06PM +0200, Nicolas Saenz Julienne wrote:
> The Raspberry Pi 4 has a 1GB ZONE_DMA area starting at address
> 0x00000000 and a mapping between physical and DMA memory offset by
> 0xc0000000.  It transpires that, on non LPAE systems, any attempt to
> translate physical addresses outside of ZONE_DMA will result in an
> overflow. The resulting DMA addresses will not be detected by arm's
> dma_capable() as they still fit in the device's DMA mask.
> 
> Fix this by failing to validate a DMA address smaller than the lowest
> possible DMA address.

I think the main problem here is that arm doesn't respect the
bus_dma_mask.  If you replace the arm version of dma_capable with
the generic one, does that fi the issue for you as well?

We need to untangle the various macros arm uses for the direct mapping
and eventually we should be able to use the linux/dma-direct.h helpers
directly.  Here is a branch with some simple preps I had.  Freshly
rebased, not actually tested:

http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/arm-generic-dma-preps

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
