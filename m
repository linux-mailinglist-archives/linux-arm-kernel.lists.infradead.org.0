Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25DBD1A21BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:21:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XM1hDGR6PHSs7Ys4ByB1mdlpuf8W1P0OOieiVo8RBZg=; b=CGwNXNKaSTJSOP
	Ek4FMKFrQ08ne/nQy4O9+LbRzFKqsQ05kjcTdG0izvWPf9mxVjDNXOnJBa+VlwsoiKaN+70NiFd6K
	7BS5N4F6rXoiQZ4BQpr0vrDDZmyyAPijR1Yd2xkqXvQ+w8l4dU4T2W93bBrIlyRvD0WxIW9tOrhZH
	CxjCyKXnyceS9Y+tt5wXiEyBy/1I34ju2ah3vZEmdMebMWA+psD8o8sdRLHrCMMRIoAOxi9nLWcnb
	W0H8Cst7pTcOnrASNncILxl9SuoYPTpc1YyWkv0/D8YJXchmXFQgVe0h2j1RmhsvZ3/1FVSNSRlxj
	g4n+9kAenlJL2yVNMWDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9ho-0008J2-Fc; Wed, 08 Apr 2020 12:21:20 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9hi-0008IS-Ru
 for linux-arm-kernel@bombadil.infradead.org; Wed, 08 Apr 2020 12:21:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=3ZqnNnyTvHfqcEkmuTyQ2LPQ2OpYuhXibwpvxMqZKrM=; b=Wq6VQLh7N6K0YWKu3Ue3rhR1W6
 uPBkkMsNf6/oDdxLwjvSEebhtXDxpta8ctMX3AXxxQtPmAR2J+2NvjDAQ2GuZQbEgQcRFIs0Uh8a4
 q/KDbO0lwFUvtXqown2kw13Y2h8hXVn8KbPRn0q+BAyo1R4JeWx6mLApKc3oAhNA7djcKdAw1oQbM
 KRmYIUtFQOJZvRFNoOcseeSgBXpm6Sgnq9wqzvLPflPkgGLBpryMqX12jZ7xIgN+vL/xiKvc+GPAO
 H86wFLe8WEU+0qO5K7uXu5rgIXC3C0pN4XcAwuVMP5rzFHvMEfrrCJTR2fn2NFfwMo4f+UhEJBb/M
 0BvJqDAg==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9hd-0001dI-4e; Wed, 08 Apr 2020 12:21:09 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CE886307972;
 Wed,  8 Apr 2020 14:21:04 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id B4EEE2B2354E8; Wed,  8 Apr 2020 14:21:04 +0200 (CEST)
Date: Wed, 8 Apr 2020 14:21:04 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 17/28] mm: remove the prot argument from vm_map_ram
Message-ID: <20200408122104.GZ20713@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-18-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-18-hch@lst.de>
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Laura Abbott <labbott@redhat.com>,
 Nitin Gupta <ngupta@vflare.org>, Daniel Vetter <daniel@ffwll.ch>,
 Haiyang Zhang <haiyangz@microsoft.com>, linaro-mm-sig@lists.linaro.org,
 bpf@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:59:15PM +0200, Christoph Hellwig wrote:
> This is always GFP_KERNEL - for long term mappings with other properties
> vmap should be used.

 PAGE_KERNEL != GFP_KERNEL :-)

> -	return vm_map_ram(mock->pages, mock->npages, 0, PAGE_KERNEL);
> +	return vm_map_ram(mock->pages, mock->npages, 0);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
