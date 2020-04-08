Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C2751A21F8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 14:25:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ED65c3lkbDINd6aAyIaK0jotciAMIAEzobq+Klri4/0=; b=ltKTsgpO+eqoOF
	5Gf3l5wB2CUxaymxdzzBwNNE1jWwvmz+85V07VIXpTZ/jMJf09cls8Ub4LR6G+MM44gkdqzXyiwjZ
	enQ0Q3ATQ4aKe+F+ZExDV7+NjLo+XTuUJ0KEzpuPBRUH+G2eTzzbVOzVpQSPkknSbKHSQ4kF9qSm8
	3i2mqM1C9PA9kch5Bsz7LF7jVeWos6MoLcMGDAh8+AgnMTIyU716LbanVwNmz2JILvDmXQkDB8gWl
	AMMD+LYOi3iyFgRTr5ezlsuVAzSG61vfu0KfaIdXI8+8feQD/a/tknvZPI7N1U6Eh5/iUVPqVVT9/
	lATK3LiIFmiKilRmWE1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9lh-0002Ss-It; Wed, 08 Apr 2020 12:25:21 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9lR-0001yD-VO
 for linux-arm-kernel@bombadil.infradead.org; Wed, 08 Apr 2020 12:25:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=7Zn3+mRH+PPxg4lfhT29xWKaDYKNW3X7ClOJo4l/mhI=; b=hR+APYPn4qf6/AfXml5kyb0qcP
 V8wEdWOLbEZNmFaTiQ2UeSmHXcuij5eNxrY9thz2k4jvGG1jN0iA25HRNzWfBhU2oBvyerv4zQ/sN
 FOQW6ZyVJcXPI7YZo0n52lmciZe+6TIbYlobXKiyRAbPh1OtukE4wXj1l8s8xo5ESVBJabBbvK4TZ
 OJsQVfctMQ+6rLnYDXm5xFzxrUu+GEC92g9J7raz3AbyePtFxfHqt4/dvPu8TIhiRIvcrn9Mhis9G
 GuL+c0JOXyi9ryNMynez0bJMTjgJloauImGZwQf1d3PZ587V2aWWKogtmLIYkYUpr/ITsFCj8oxCu
 o1KSHQ+Q==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9lQ-0001k8-35; Wed, 08 Apr 2020 12:25:04 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 833F5300478;
 Wed,  8 Apr 2020 14:25:01 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 702412BA90A66; Wed,  8 Apr 2020 14:25:01 +0200 (CEST)
Date: Wed, 8 Apr 2020 14:25:01 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: decruft the vmalloc API
Message-ID: <20200408122501.GA20713@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-1-hch@lst.de>
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

On Wed, Apr 08, 2020 at 01:58:58PM +0200, Christoph Hellwig wrote:
> Hi all,
> 
> Peter noticed that with some dumb luck you can toast the kernel address
> space with exported vmalloc symbols.
> 
> I used this as an opportunity to decruft the vmalloc.c API and make it
> much more systematic.  This also removes any chance to create vmalloc
> mappings outside the designated areas or using executable permissions
> from modules.  Besides that it removes more than 300 lines of code.
> 

Looks great, thanks for doing this!

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
