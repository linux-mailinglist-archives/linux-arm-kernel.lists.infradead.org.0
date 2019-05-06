Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1234153D3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 20:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCFxhHXdaHDS7XyNgFgztoN1kV0OdVoWBiC6CbakXnQ=; b=BxyxYYiMtECD4Q
	GMwIQ4Vv8qvFufXaGDesY+zdhz3mjaw79tCORinf+qI3MTg1zIktVFVf0z6+wozJ327JO/0RxXSDt
	S3Psc5IA8X/td6KpYbsoaQlpbDPS3cJPBwKhQNoPKmami19b8Ft5zzHAqgmHXvvYr83XNTWsapfMX
	v4OgjbBTbuvOvYQYN2EoDV3gGHed/mBy13ZEn6n0hrFoRXqfIiPlBNpOT32/qFjY5euqa++FbW3sc
	PsxEc8rEKdKcoVR7dDnqCfam3CLBdtpItAfgTfH0r5SO4PBAmQ2fbsQSjKth5FYIetg/ead5/x7EL
	MB9o7Fo+5RIhoIn06BMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNieG-0002s8-Ge; Mon, 06 May 2019 18:47:36 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNieA-0002rm-2P
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 18:47:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D0493A78;
 Mon,  6 May 2019 11:47:27 -0700 (PDT)
Received: from brain-police (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 277923F5AF;
 Mon,  6 May 2019 11:47:25 -0700 (PDT)
Date: Mon, 6 May 2019 19:47:14 +0100
From: Will Deacon <will.deacon@arm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [RFC] munmap(64k) is much slower with patch set reduce
 synchronous TLB invalidation on ARM64 merged
Message-ID: <20190506184714.GE2875@brain-police>
References: <3a0e9ffc-315b-079f-bc0b-3ee3dca88905@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3a0e9ffc-315b-079f-bc0b-3ee3dca88905@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_114730_121120_0BE451FC 
X-CRM114-Status: GOOD (  15.70  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Linuxarm <linuxarm@huawei.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Zhouguanghui \(OS Kernel\)" <zhouguanghui1@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 04, 2019 at 07:44:59PM +0800, Hanjun Guo wrote:
> With patch set "Avoid synchronous TLB invalidation for intermediate
> page-table entries on arm64" was merged, munmap() for hugepage such as
> 2M will be much faster, but with following case, munmap(64k) will take
> much longer time than before:

I didn't find anything grepping for that subject. Could you provide a commit
ID instead, please?

> #define MEM_LEN_TEST			(0x10000UL)
> #define MEM_ADD_START			(0x8000fffef000UL)
> #define MEM1_ADD_START			(0x800000090000UL)
> 
> mem = (unsigned char *)mmap((void *)MEM_ADD_START, MEM_LEN_TEST, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
> 
> mem1 = (unsigned char *)mmap((void *)MEM1_ADD_START, MEM_LEN_TEST, PROT_READ | PROT_WRITE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
> 
> munmap(mem, MEM_LEN_TEST); // will take much longer time (from 50us to 230us on A55) than before
> 
> munmap(mem1, MEM_LEN_TEST);
> 
> munmap(mem, MEM_LEN_TEST) will finally call unmap_region() in the kernel,
> and in free_pgtables() will adjust the start and end in mmu_gather, so when
> running to __flush_tlb_range(), the (end - start) will more that 1G but less
> than 2G in this case, on the other hand, (MAX_TLBI_OPS * stride) will be 2G
> as the stride is 2M.
> 
> So in the end if ((end - start) > (MAX_TLBI_OPS * stride)) will not valid,
> and will take loops to invalidate the TLB for many times which is time consuming.
> 
> Can we make the (MAX_TLBI_OPS * stride) as constant such as 4M (which is the
> value before "Avoid synchronous TLB invalidation for intermediate page-table
> entries on arm64" merged)? or a smaller value for MAX_TLBI_OPS?

Changing MAX_TLBI_OPS will hurt the common case when tearing down PMD tables
with 4k pages, so I'm hesitant to change that again.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
