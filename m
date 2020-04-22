Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3D681B34E7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 04:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVJE5NzWw5q074UeY1eQuHwDYnf8iBdf6q6U2JAIPVA=; b=ILhmfu8tT80g1r
	YQivWo9a23iB8oa3PYR6o1ZI7edcZ439/fbF4tnm7jTUoNLQhXXCoJjhHcoOzHVZIUKXGF2ryx5e1
	IeRcQwhTgfTw0iLRMM9pTIZ/cxkuaHlape28rGcyw2iW9bSFlfihE7JcZAI4GtT3Wl97HB86+VAwk
	pVMYTEQmEFpmQTf14tZlJqNLbjYfcoRrwXbFqC6+aqMHb807h0vb5tx7nTID/r2HYtQI/h6KnGSlK
	YOGVBgFWYznsW7+a2TFZTandLv7We859XSXOLDkoDUB6u2G1b6lHMJnAu6pDDW5h2RTmbtjjd9cZk
	7DW4ilH2GXhgVS4KyYEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jR4ts-0001YW-Lp; Wed, 22 Apr 2020 02:14:08 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR4tj-0001Vw-CF
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 02:14:01 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 2520FFF88CC5973942B7;
 Wed, 22 Apr 2020 10:13:51 +0800 (CST)
Received: from [127.0.0.1] (10.173.220.25) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.487.0; Wed, 22 Apr 2020
 10:13:41 +0800
Subject: Re: [PATCH v1 1/6] arm64: Detect the ARMv8.4 TTL feature
To: Christoph Hellwig <hch@infradead.org>, Peter Zijlstra
 <peterz@infradead.org>
References: <20200403090048.938-1-yezhenyu2@huawei.com>
 <20200403090048.938-2-yezhenyu2@huawei.com>
 <20200421165346.GA11171@infradead.org>
 <20200421171328.GW20730@hirez.programming.kicks-ass.net>
 <20200421171641.GA25391@infradead.org>
From: Zhenyu Ye <yezhenyu2@huawei.com>
Message-ID: <62414595-298a-da11-28eb-36ad1dc59e65@huawei.com>
Date: Wed, 22 Apr 2020 10:13:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20200421171641.GA25391@infradead.org>
X-Originating-IP: [10.173.220.25]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_191359_602986_B68CA501 
X-CRM114-Status: GOOD (  10.04  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, linux-mm@kvack.org,
 guohanjun@huawei.com, will@kernel.org, linux-arch@vger.kernel.org,
 yuzhao@google.com, maz@kernel.org, steven.price@arm.com, arm@kernel.org,
 Dave.Martin@arm.com, arnd@arndb.de, suzuki.poulose@arm.com, npiggin@gmail.com,
 zhangshaokun@hisilicon.com, broonie@kernel.org, rostedt@goodmis.org,
 prime.zeng@hisilicon.com, kuhn.chenqun@huawei.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org, xiexiangyou@huawei.com,
 linux-kernel@vger.kernel.org, aneesh.kumar@linux.ibm.com,
 akpm@linux-foundation.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020/4/22 1:16, Christoph Hellwig wrote:
> On Tue, Apr 21, 2020 at 07:13:28PM +0200, Peter Zijlstra wrote:
>> On Tue, Apr 21, 2020 at 09:53:46AM -0700, Christoph Hellwig wrote:
>>> On Fri, Apr 03, 2020 at 05:00:43PM +0800, Zhenyu Ye wrote:
>>>> From: Marc Zyngier <maz@kernel.org>
>>>>
>>>> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
>>>> feature allows TLBs to be issued with a level allowing for quicker
>>>> invalidation.
>>>
>>> What does "issued with a level" mean?
>>
>> What I understood it to be is page-size based on page-table hierarchy.
>> Just like we have on x86, 4k, 2m, 1g etc..
>>
>> So where x86 INVLPG will tear down any sized page for the address given,
>> you can now day, kill me the PMD level translation for @addr.
>>
>> Power9 radix also has things like this.
> 
> Maybe this needs to be spelled out a little more?  The current commit
> log sounds like paper generated by a neural network.
>

Emm... This patch was synchronized from Marc's NV series [1].
"issued with a level" means the TLBs now can get which levels of
page tables the @addr is in. You can also understand it as
page-size as Peter said above, just like pud, pmd, pte...

Anyway, I will explain this in more detail.

Thanks,
Zhenyu


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
