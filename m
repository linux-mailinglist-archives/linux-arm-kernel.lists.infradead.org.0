Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 821331A383D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 18:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fu68kigLi/ON0JeheGvaHb597ud5/9rMSGGn5DkNkbk=; b=Pfa3CBLIv5JtPO
	Nto/60J6xxzJC5Yok5hXOVFIfOAqjdDdtRrSvyFy08PrNtEaS8p/wZSAQSvuOmBYZv5pYZMQlXTPp
	dvYn5cKXSh3aXKnbxnBHel1OprS9mZuceAVPxGKX903/gNOcLeAkVMB05cvcufbu8RvzszvKcESEd
	3GbaXfPxJA8Pgl/71Lv1wuxSpcvuf7ZmHhjNnefT/O+VFU9fEoMfj87otXn7x/qUK4x1gmqei2nG3
	ilLxN0bfmhyiOUkqiY5ltyK6QKpjCc73fyN/Zcg6O6B0y9dkoED1Li/bqqeXejKOaMZyrjqrChf/O
	Py9waL12zsV4TOpjKBaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMaO1-0003h7-81; Thu, 09 Apr 2020 16:50:41 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMaNt-0003gC-0y; Thu, 09 Apr 2020 16:50:33 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id B26BC3012D8;
 Thu,  9 Apr 2020 18:50:30 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 962822BA1D82B; Thu,  9 Apr 2020 18:50:30 +0200 (CEST)
Date: Thu, 9 Apr 2020 18:50:30 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Minchan Kim <minchan@kernel.org>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200409165030.GG20713@hirez.programming.kicks-ass.net>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
 <20200409160826.GC247701@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200409160826.GC247701@google.com>
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
 x86@kernel.org, Christoph Hellwig <hch@lst.de>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 sergey.senozhatsky@gmail.com, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 09, 2020 at 09:08:26AM -0700, Minchan Kim wrote:
> On Wed, Apr 08, 2020 at 01:59:08PM +0200, Christoph Hellwig wrote:
> > This allows to unexport map_vm_area and unmap_kernel_range, which are
> > rather deep internal and should not be available to modules.
> 
> Even though I don't know how many usecase we have using zsmalloc as
> module(I heard only once by dumb reason), it could affect existing
> users. Thus, please include concrete explanation in the patch to
> justify when the complain occurs.

The justification is 'we can unexport functions that have no sane reason
of being exported in the first place'.

The Changelog pretty much says that.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
