Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B76192E6F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:42:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSMqSdKblEN7v9doekCOusaVwkUZVDNuntytEy+ko9I=; b=RUmsAATzS+ooX3
	u7y3Vc3yVb7bmhGeELM5jQJNsvl3Mqmbwx935ZUkhjky7yuL4gvBY6LezhNehrOFGU1W/jnaxaayj
	kJRXcYLMUVgYk9N8HCpKdAZ4O6TjBgUVRWfhiaBqlxHFluWymI2nFyvU6PI0HxCTU+HWKdOYnqjqK
	vNsNgw/cVEzskMdCRlj4PFGgk3EDsXmv1+5Mg8tabz2jtTADkW9RZG+3Ns1KQXoXzws7vEkyS0cRd
	HfJSFPPjUa/2wycGxOsuekEho2k+PEa8kxjiQl2AN7coDqIRcBGQ4WClzozGeJ30S94Ffg/eHV5F5
	MhKViFSBNEUXkCk9p4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH96J-0004Ta-UY; Wed, 25 Mar 2020 16:41:55 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH96B-0004TC-6K; Wed, 25 Mar 2020 16:41:47 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 813823010CF;
 Wed, 25 Mar 2020 17:41:44 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 665E829A7FACF; Wed, 25 Mar 2020 17:41:44 +0100 (CET)
Date: Wed, 25 Mar 2020 17:41:44 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: James Morse <james.morse@arm.com>
Subject: Re: [RFC PATCH v4 0/6] arm64: tlb: add support for TTL feature
Message-ID: <20200325164144.GB20696@hirez.programming.kicks-ass.net>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <aaf017a8-3658-fe4d-c0cf-2f45656020af@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaf017a8-3658-fe4d-c0cf-2f45656020af@arm.com>
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, suzuki.poulose@arm.com,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 Zhenyu Ye <yezhenyu2@huawei.com>, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 25, 2020 at 04:15:58PM +0000, James Morse wrote:
> Hi Zhenyu,
> 
> On 3/24/20 1:45 PM, Zhenyu Ye wrote:
> > In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
> > feature allows TLBs to be issued with a level allowing for quicker
> > invalidation.  This series provide support for this feature. 
> > 
> > Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
> > which detect the TTL feature and add __tlbi_level interface.
> 
> How does this interact with THP?
> (I don't see anything on that in the series.)
> 
> With THP, there is no one answer to the size of mapping in a VMA.
> This is a problem because the arm-arm has in "Translation table level
> hints" in D5.10.2 of DDI0487E.a:
> | If an incorrect value for the entry being invalidated by the
> | instruction is specified in the TTL field, then no entries are
> | required by the architecture to be invalidated from the TLB.
> 
> If we get it wrong, not TLB maintenance occurs!
> 
> Unless THP leaves its fingerprints on the vma, I think you can only do
> this for VMA types that THP can't mess with. (see
> transparent_hugepage_enabled())

The convention way to deal with that is to issue the TBLI for all
possible sizes.

Power9 has all this, please look there.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
