Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8DEA13DCCA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 15:00:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ruw66THGCg6QhzXSfemxd1HOMrA/RFlBtRr+mMxvSUo=; b=c8+gTmqKw0zFe8
	fU8r7npFe+SfERe8j5DknNErTfYAji9KTIE8Ww7FcCZ2SJaDs3m2EYKFN+F8LqLHHoIr5PxtCGX2C
	0FznuQyD5qxyGzX6mFumTg106DCVUKAzZGf6snQnPhE7PRHn/RI7zYWQx/cXAcNAdlhhuCSCivMAu
	X6LCwKdYfQwlsY8DVS+ZOvgO4ZCMc1TE+qpynObkWqt0lKhW+BnoYiGR4RIvFgbTjVg7SNnWdE6gY
	iSMmXUQ8bJ3lA6Zbj/7/tRSjpPpj0vVdGHinM7QBDkDtxRM4Ia4m20VlOTj2yeZxBznXin1/e9RjS
	id/mFQj+xKP2QMND1QHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5go-0004S0-Rr; Thu, 16 Jan 2020 14:00:02 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5gT-0004Eu-BR
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:59:45 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 3E74999BCA8C9E8F7944;
 Thu, 16 Jan 2020 21:59:36 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS401-HUB.china.huawei.com
 (10.3.19.201) with Microsoft SMTP Server id 14.3.439.0; Thu, 16 Jan 2020
 21:59:30 +0800
Subject: Re: [PATCH v5] arm64: Implement optimised checksum routine
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>
References: <44e00660247f8f39354ba8918071d6cff0d90612.1579106209.git.robin.murphy@arm.com>
 <20200116105534.GC14761@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <78c68b7c-e115-8c90-0ef7-4436cad142bc@hisilicon.com>
Date: Thu, 16 Jan 2020 21:59:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20200116105534.GC14761@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_055941_559752_257CADF2 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, ard.biesheuvel@linaro.org, zhaoyuke@huawei.com,
 linux-arm-kernel@lists.infradead.org, huanglingyan2@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 2020/1/16 18:55, Will Deacon wrote:
> On Wed, Jan 15, 2020 at 04:42:39PM +0000, Robin Murphy wrote:
>> Apparently there exist certain workloads which rely heavily on software
>> checksumming, for which the generic do_csum() implementation becomes a
>> significant bottleneck. Therefore let's give arm64 its own optimised
>> version - for ease of maintenance this foregoes assembly or intrisics,
>> and is thus not actually arm64-specific, but does rely heavily on C
>> idioms that translate well to the A64 ISA and the typical load/store
>> capabilities of most ARMv8 CPU cores.
>>
>> The resulting increase in checksum throughput scales nicely with buffer
>> size, tending towards 4x for a small in-order core (Cortex-A53), and up
>> to 6x or more for an aggressive big core (Ampere eMAG).
>>
>> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
>>
>> ---
>>
>> I rigged up a simple userspace test to run the generic and new code for
>> various buffer lengths at aligned and unaligned offsets; data is average
>> runtime in nanoseconds.
> 
> Shaokun, Yuke -- please can you give this a spin and let us know how it
> works for you? If it looks good, then I can queue it up today/tomorrow.
> 

Lingyan has tested this patch, the result is as follow:
1000loop  general(ns)     csum_hly_128B.c(ns) csum_robin_v5.s(ns)
   64B:      48510               40730          37440
  256B:     104180               59330          50210
 1023B:     328580              124600          89960
 1024B:     327880              125300          88520
 1500B:     466440              165090         113560
 2048B:     632060              212470         158320
 4095B:    1219850              393080         263940
 4096B:    1222740              399200         262550

It's better than Lingyan's patch v4, Thanks for Robin's work.

If you are happy, please feel free to add:
Reported-by: Lingyan Huang <huanglingyan2@huawei.com>
Tested-by: Lingyan Huang <huanglingyan2@huawei.com>

Thanks,
Shaokun

> Thanks,
> 
> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
