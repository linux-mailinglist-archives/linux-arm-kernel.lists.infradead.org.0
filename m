Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 248CE12D0D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 13:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LjD0rB+NNaLq/u7+heaje0PIyAKLVBFwXCWnVCXZK1Y=; b=iu21/K4n0w49Ex
	not3TitU7QFuAZ60QyDj8s4+MbzkhCAkDy8hym0uwEw3CPeerh1XFZsqnChZMeDSYHa9fxjpfvTtc
	ycMtcH216K6EM7r4596tWVTSoTYejfbIyB16s52i/PfRs1H3IehWkQnlxQ9krPaPHfThnOO2KEtRg
	rupSvebzI8kRZMt8d5JlTQr5d9ak+k2Jmu5QmTQ1uLd+4htsU0qwXbOKmeB8Y+QwMFfEI/K+ntaL8
	b8bTybzsJjmPXaTuFG9WX5PRTHyWnsbgA09uadAz5aw8p5RxbfHc6sg+4ygONPf/qA9pofiXS39KB
	wiBfZ3l5jGnW63Kc6ghw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMWqt-0007iS-Q4; Fri, 03 May 2019 11:59:43 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMWqn-0007hw-4H
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 11:59:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 0F59368AFE; Fri,  3 May 2019 13:59:19 +0200 (CEST)
Date: Fri, 3 May 2019 13:59:18 +0200
From: Christoph Hellwig <hch@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: implement generic dma_map_ops for IOMMUs v4
Message-ID: <20190503115918.GA19657@lst.de>
References: <20190430105214.24628-1-hch@lst.de> <20190502132208.GA3069@lst.de>
 <20190503114731.GH55449@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503114731.GH55449@arrakis.emea.arm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_045937_316308_91534E56 
X-CRM114-Status: GOOD (  12.07  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Tom Lendacky <thomas.lendacky@amd.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 03, 2019 at 12:47:31PM +0100, Catalin Marinas wrote:
> On Thu, May 02, 2019 at 03:22:08PM +0200, Christoph Hellwig wrote:
> > can you quickly look over the arm64 parts?  I'd really like to still
> > get this series in for this merge window as it would conflict with
> > a lot of dma-mapping work for next merge window, and we also have
> > the amd and possibly intel iommu conversions to use it waiting.
> 
> Done. They look fine to me.

Ok, great.  Although I have to admit I feel about uneasy about
merging them for 5.2 unless Linus ends up doing an rc8.  I plan to
pull the prep_coherent patch into the dma-mapping tree as we'll
need it as a prepation for other things as well, and then we can
just have an immutable tree with the dma-iommu changes, so that
it doesn't block other DMA mapping changes that will touch this
code as well.

> 
> -- 
> Catalin
---end quoted text---

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
