Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95EB41938D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 07:46:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cUJkEQJI+JoWG6Md1M4LRg9jJ2Qvo/UwvsrH6zCyFOk=; b=Mn6S3EqLUsiGoh
	jKCORyPY2SjyN8DhpgREDafrhC+DDpzNbbp6JKHxGOAjULaCThmZFvnFK1MFqtYS3Wx8jILm80IyT
	NgYGENW6POOBfHcGuSPPHJQCKi4CCj4MCDIf2xVN5VMnRsQdRbEh2kE5yzxcHPKC2/z9AqNcf5XFh
	UPPfSOOL2r7Wkc+FTBxQ0UapHenzG+BAa5Qww/hw/VlQKPGWQ93vwz1K46oqZS10V/GK+hxtBGCK2
	rRlYXBsdSHWS70c7Oq1OazDQ2sFNAJEVOKmj7700F5wdEkLN+zjUktyaDOvnoGvie6XHmQu05ydQy
	tiRM1X2M26VA8IsQYUMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHMHb-0006l8-4I; Thu, 26 Mar 2020 06:46:27 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHMHS-0006jS-Lu
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 06:46:20 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id AB80A3012A2B4E7E1AE2;
 Thu, 26 Mar 2020 14:45:56 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS414-HUB.china.huawei.com
 (10.3.19.214) with Microsoft SMTP Server id 14.3.487.0; Thu, 26 Mar 2020
 14:45:48 +0800
Subject: Re: [RFC PATCH v4 0/6] arm64: tlb: add support for TTL feature
To: James Morse <james.morse@arm.com>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
 <aaf017a8-3658-fe4d-c0cf-2f45656020af@arm.com>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <7859561b-78b4-4a12-2642-3741d7d3e7b8@huawei.com>
Date: Thu, 26 Mar 2020 14:45:46 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <aaf017a8-3658-fe4d-c0cf-2f45656020af@arm.com>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_234618_891278_6C6E36E4 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, peterz@infradead.org, catalin.marinas@arm.com,
 linux-mm@kvack.org, guohanjun@huawei.com, will@kernel.org,
 linux-arch@vger.kernel.org, yuzhao@google.com, maz@kernel.org,
 steven.price@arm.com, arm@kernel.org, Dave.Martin@arm.com, arnd@arndb.de,
 suzuki.poulose@arm.com, npiggin@gmail.com, zhangshaokun@hisilicon.com,
 broonie@kernel.org, rostedt@goodmis.org, prime.zeng@hisilicon.com,
 tglx@linutronix.de, linux-arm-kernel@lists.infradead.org,
 xiexiangyou@huawei.com, linux-kernel@vger.kernel.org,
 aneesh.kumar@linux.ibm.com, akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 2020/3/26 0:15, James Morse wrote:
> Hi Zhenyu,
> 
> On 3/24/20 1:45 PM, Zhenyu Ye wrote:
>> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
>> feature allows TLBs to be issued with a level allowing for quicker
>> invalidation.  This series provide support for this feature. 
>>
>> Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
>> which detect the TTL feature and add __tlbi_level interface.
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

Thanks for your review.  With THP, we should update the TTL value
after the page collapse and merge.  If not sure what it should be,
we can set it to 0 to avoid "no TLB maintenance occur" problem.
The Table D5-53 in DDI0487E.a says:
| when TTL[1:0] is 0b00:
|   This value is reserved, and hardware should treat this as if TTL[3:2] is 0b00
| when TTL[3:2] is 0b00:
|   Hardware must assume that the entry can be from any level.

> Unless THP leaves its fingerprints on the vma, I think you can only do
> this for VMA types that THP can't mess with. (see
> transparent_hugepage_enabled())
> 

I will try to add struct mmu_gather to TLBI interfaces, which has enough
info to track tlb's level.  See in next patch version!


Thanks,
Zhenyu

.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
