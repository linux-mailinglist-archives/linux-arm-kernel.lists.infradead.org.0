Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987A072A2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 10:33:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W1z+NDFxkP/UgEanew/6Ppn465Y73HBrtMkLFQjnbGU=; b=ZOQWrsfy6ngU/e
	ZoPegED+vEpAHt2vKtTr82WSw3UDdJ6tP4Y6SRwJbZjC0Jczv+cqUIi7ZKw4ou8r+pVVmlinUKq4/
	Pu0yoKn5406RWzm2LKswFoO8e8voWteCFTW7SnNUlBd8z/AbgN9SzJ8qyOgcGM6fT1b0B3PoW4x5F
	G8xeLV0s05GaN+sYqljnzCXpHjxu1PsvMsyebngoqF1wkQPm0C8RG1IBohhhxDyb4PfafHdn/qyKi
	nGG0sBqxXgRiwjAjMfvWpjSuth9ZT6LCKhHLplnWHs63znEkY3n4pQ2sdthBedCJERsPbvwBPdjYy
	uTKVYSC+2gt+N+Z+E83w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqCic-0004Bq-S4; Wed, 24 Jul 2019 08:33:51 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCiC-00040i-0o
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 08:33:25 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D5579585EAE5EF849C02;
 Wed, 24 Jul 2019 16:33:18 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Wed, 24 Jul 2019
 16:33:16 +0800
Subject: Re: [PATCH v12 2/2] mm: page_alloc: reduce unnecessary binary search
 in memblock_next_valid_pfn
To: Mike Rapoport <rppt@linux.ibm.com>
References: <1563861073-47071-1-git-send-email-guohanjun@huawei.com>
 <1563861073-47071-3-git-send-email-guohanjun@huawei.com>
 <20190723083353.GC4896@rapoport-lnx>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <868f90c7-a728-9eb3-7529-f5a8a501a76a@huawei.com>
Date: Wed, 24 Jul 2019 16:33:01 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190723083353.GC4896@rapoport-lnx>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_013324_307096_5A77597D 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Jia He <hejianet@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/7/23 16:33, Mike Rapoport wrote:
> On Tue, Jul 23, 2019 at 01:51:13PM +0800, Hanjun Guo wrote:
>> From: Jia He <hejianet@gmail.com>
>>
>> After skipping some invalid pfns in memmap_init_zone(), there is still
>> some room for improvement.
>>
>> E.g. if pfn and pfn+1 are in the same memblock region, we can simply pfn++
>> instead of doing the binary search in memblock_next_valid_pfn.
>>
>> Furthermore, if the pfn is in a gap of two memory region, skip to next
>> region directly to speedup the binary search.
> How much speed up do you see with this improvements relatively to simple
> binary search in memblock_next_valid_pfn()?

The major speedup on my platform is the previous patch in this patch set,
not this one, I think it's related to sparse memory mode for different
platforms.

Thanks
Hanjun

>   


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
