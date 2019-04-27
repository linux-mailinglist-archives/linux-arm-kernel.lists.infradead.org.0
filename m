Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834E6B3FD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Apr 2019 18:46:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6p0hIYjN5kgZUQgWqjpeRDdbp83StsowY7fFAlbreuc=; b=BMJGIWO9Iwpgob
	BfgKuDO6QDRIAj0wxboY5NegTDYlIN7z1b12u7XVnpp0QP8USJMsTkEwbbnx5k+ymS3T5DHTs0+WZ
	scv/CzX9pvVWw/OWykR80tj5ZUpEKy4Y00MBorAQGHXq4vkN/hjYulpez1KgGKqfo9H8LJczTyXKC
	GbMg5pP/BPa/4714CJrlSywQvB2vPJUTR4WbMafPVqCWbPeNKDjCJ1vwh92aDRE74QKsnyaVkDBqM
	7WOgzPUmWD/eVVCaAQTqoiEHhU2hQq/Dav6/oh8thsKsbgkVJlvNjw75lzBgQrrU/BC08L67OuSTn
	+46yB/t2bK2woGyOLlQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKQSx-0004Wm-J9; Sat, 27 Apr 2019 16:46:19 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.90_1 #2 (Red
 Hat Linux)) id 1hKQSr-0004Wb-09; Sat, 27 Apr 2019 16:46:13 +0000
Date: Sat, 27 Apr 2019 09:46:12 -0700
From: Christoph Hellwig <hch@infradead.org>
To: laurentiu.tudor@nxp.com
Subject: Re: [PATCH v2 7/9] dpaa_eth: fix iova handling for contiguous frames
Message-ID: <20190427164612.GA12450@infradead.org>
References: <20190427071031.6563-1-laurentiu.tudor@nxp.com>
 <20190427071031.6563-8-laurentiu.tudor@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190427071031.6563-8-laurentiu.tudor@nxp.com>
User-Agent: Mutt/1.9.2 (2017-12-15)
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
Cc: madalin.bucur@nxp.com, netdev@vger.kernel.org, roy.pledge@nxp.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 iommu@lists.linux-foundation.org, camelia.groza@nxp.com,
 linuxppc-dev@lists.ozlabs.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Apr 27, 2019 at 10:10:29AM +0300, laurentiu.tudor@nxp.com wrote:
> From: Laurentiu Tudor <laurentiu.tudor@nxp.com>
> 
> The driver relies on the no longer valid assumption that dma addresses
> (iovas) are identical to physical addressees and uses phys_to_virt() to
> make iova -> vaddr conversions. Fix this by adding a function that does
> proper iova -> phys conversions using the iommu api and update the code
> to use it.
> Also, a dma_unmap_single() call had to be moved further down the code
> because iova -> vaddr conversions were required before the unmap.
> For now only the contiguous frame case is handled and the SG case is
> split in a following patch.
> While at it, clean-up a redundant dpaa_bpid2pool() and pass the bp
> as parameter.

Err, this is broken.  A driver using the DMA API has no business
call IOMMU APIs.  Just save the _virtual_ address used for the mapping
away and use that again.  We should not go through crazy gymnastics
like this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
