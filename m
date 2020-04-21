Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F05F1B2DE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:14:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pkaUGFeuDvEEiJ8EpkjD1D9GL3/5vcKI4dmWj3LwBt4=; b=edlRoVZAzxy2FT
	4YYQnCaDZIxaESzsEooZrIkEcrJ+Jp34jfSQRD5A4wwDewdkKjf8ixNwS6FUqDe+ivbryMDL1V6z1
	RUy+wVsWf195YIRut15hKXya3l5t/WnvmSOtVMMtz/VYu46NZ36g8EZYfH8fAn1cb+2qJNnUSyVEk
	UO1csvFCfoFi76h6kSRPVf3UukXMP5IYScr9OwBHJu0eV2ysSN55r4VZSW8LsG7qorMgsZFzpvfG7
	A07VKzYoWxiYw/iySXw3EUpiIbCht3h7zjk6B2SuG45QB1d4l7eiTxeRNl7z7REimK5xSnh1hQHcw
	C6CXRUDTT0pPEPg+MZYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwSw-0003QB-1k; Tue, 21 Apr 2020 17:13:46 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwSj-0003Ot-Rh; Tue, 21 Apr 2020 17:13:34 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 1C6FC30275A;
 Tue, 21 Apr 2020 19:13:28 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id DAF202BAF0F4F; Tue, 21 Apr 2020 19:13:28 +0200 (CEST)
Date: Tue, 21 Apr 2020 19:13:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Christoph Hellwig <hch@infradead.org>
Subject: Re: [PATCH v1 1/6] arm64: Detect the ARMv8.4 TTL feature
Message-ID: <20200421171328.GW20730@hirez.programming.kicks-ass.net>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-2-yezhenyu2@huawei.com>
 <20200421165346.GA11171@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200421165346.GA11171@infradead.org>
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
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 21, 2020 at 09:53:46AM -0700, Christoph Hellwig wrote:
> On Fri, Apr 03, 2020 at 05:00:43PM +0800, Zhenyu Ye wrote:
> > From: Marc Zyngier <maz@kernel.org>
> > 
> > In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
> > feature allows TLBs to be issued with a level allowing for quicker
> > invalidation.
> 
> What does "issued with a level" mean?

What I understood it to be is page-size based on page-table hierarchy.
Just like we have on x86, 4k, 2m, 1g etc..

So where x86 INVLPG will tear down any sized page for the address given,
you can now day, kill me the PMD level translation for @addr.

Power9 radix also has things like this.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
