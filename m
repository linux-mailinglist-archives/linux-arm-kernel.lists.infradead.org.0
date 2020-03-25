Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BAD192DFB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 17:16:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w4r0mHkb6zhsGpcTwxfN6uT9hOY14TzXqdeHcnCPeTQ=; b=jcecU4lFqZQn4v
	3DsESGsxl/35SWYSVcxe23WMjnBM6TxMODCwckrYGy9rZ1XpB/VGb51xOrvPW/CFueX9A8kCA+0Ir
	rGSMqLN2MHAGigf5rgU9S7O/P0wI6LyOsnXxkKttbTRukdH5N4AnRZZ/qZaAe5HyoXZTtyxm3FZsZ
	kB43LYfz+OLSaHQfArqJwP0xTFY7sF9nVt4AHQvJIOsKyHNzCl6gd7c94ca4JYoX9+GfEZpKL7cV+
	4ufJQ9Ob9/mH6hk55L7fMd6sSt9tLVIpNnku9dq0tNLISCHTP3iV5pr/Z3fqHpdlMXqmB6oEm+8Aa
	ljMVGPqi7cRYURu8smgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH8hO-00025O-NZ; Wed, 25 Mar 2020 16:16:10 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH8hG-00024X-8s
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 16:16:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 826631FB;
 Wed, 25 Mar 2020 09:16:00 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9CDEA3F52E;
 Wed, 25 Mar 2020 09:15:56 -0700 (PDT)
Subject: Re: [RFC PATCH v4 0/6] arm64: tlb: add support for TTL feature
To: Zhenyu Ye <yezhenyu2@huawei.com>
References: <20200324134534.1570-1-yezhenyu2@huawei.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <aaf017a8-3658-fe4d-c0cf-2f45656020af@arm.com>
Date: Wed, 25 Mar 2020 16:15:58 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200324134534.1570-1-yezhenyu2@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_091602_355844_EF79C375 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

Hi Zhenyu,

On 3/24/20 1:45 PM, Zhenyu Ye wrote:
> In order to reduce the cost of TLB invalidation, the ARMv8.4 TTL
> feature allows TLBs to be issued with a level allowing for quicker
> invalidation.  This series provide support for this feature. 
> 
> Patch 1 and Patch 2 was provided by Marc on his NV series[1] patches,
> which detect the TTL feature and add __tlbi_level interface.

How does this interact with THP?
(I don't see anything on that in the series.)

With THP, there is no one answer to the size of mapping in a VMA.
This is a problem because the arm-arm has in "Translation table level
hints" in D5.10.2 of DDI0487E.a:
| If an incorrect value for the entry being invalidated by the
| instruction is specified in the TTL field, then no entries are
| required by the architecture to be invalidated from the TLB.

If we get it wrong, not TLB maintenance occurs!

Unless THP leaves its fingerprints on the vma, I think you can only do
this for VMA types that THP can't mess with. (see
transparent_hugepage_enabled())


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
