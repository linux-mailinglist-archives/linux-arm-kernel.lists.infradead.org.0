Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D20178E16
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 11:13:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=36e1bCfrxPeOqVx/2iZW80xSCnzd0m2ThTc3+eZZGOY=; b=fkQ4bhN2q7xecB
	gTXDfkgQwiwg0RWq5dhSy5Gdl12IihqjadcdnQSy8ZA4fHxZFkByE9fugd/3SnMvRjl+ztudRkx+4
	uUkl+b+TN7zUtSEG2aDJf556c6tScXlN1mAA+Ade7Ql4FKzlMMhVQA2EqWB0EhdM9hGLvMt5vGoUO
	EDitctGvUHXdgaMxcCCs0+mbU93ZI+Pwpft7Q32Ry8LkPeMAgJwHVMfT5QQOVAzvfUTtdRdvTM+x0
	9kHsSdgOeSOX4KEwnQrtSR48uKXGMoYeu4+qXMAmyEFPcM7mI71NlOb7FqVK8g/WZCJTJf8SlJSzU
	FnR6Xp1G+5LLYviMbY9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9R1S-0004nd-JG; Wed, 04 Mar 2020 10:13:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9R1M-0004mf-Lx
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Mar 2020 10:12:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC46B30E;
 Wed,  4 Mar 2020 02:12:50 -0800 (PST)
Received: from [10.1.195.32] (e112269-lin.cambridge.arm.com [10.1.195.32])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 037CD3F534;
 Wed,  4 Mar 2020 02:12:47 -0800 (PST)
Subject: Re: [PATCH V14 1/2] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
To: Anshuman Khandual <anshuman.khandual@arm.com>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "akpm@linux-foundation.org" <akpm@linux-foundation.org>,
 Catalin Marinas <Catalin.Marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "rppt@linux.ibm.com" <rppt@linux.ibm.com>
References: <1583296123-18546-1-git-send-email-anshuman.khandual@arm.com>
 <1583296123-18546-2-git-send-email-anshuman.khandual@arm.com>
From: Steven Price <steven.price@arm.com>
Message-ID: <91e4cbd0-0f1d-30c6-2796-d2fb91ba6720@arm.com>
Date: Wed, 4 Mar 2020 10:12:46 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1583296123-18546-2-git-send-email-anshuman.khandual@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_021256_764069_B8E9E62A 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "ira.weiny@intel.com" <ira.weiny@intel.com>,
 "david@redhat.com" <david@redhat.com>,
 "mgorman@techsingularity.net" <mgorman@techsingularity.net>,
 Steve Capper <Steve.Capper@arm.com>, Robin Murphy <Robin.Murphy@arm.com>,
 "broonie@kernel.org" <broonie@kernel.org>, "cai@lca.pw" <cai@lca.pw>,
 Ard Biesheuvel <Ard.Biesheuvel@arm.com>,
 "arunks@codeaurora.org" <arunks@codeaurora.org>,
 "dan.j.williams@intel.com" <dan.j.williams@intel.com>,
 "logang@deltatee.com" <logang@deltatee.com>,
 Valentin Schneider <Valentin.Schneider@arm.com>,
 Suzuki Poulose <Suzuki.Poulose@arm.com>,
 "osalvador@suse.de" <osalvador@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/03/2020 04:28, Anshuman Khandual wrote:
> The arm64 page table dump code can race with concurrent modification of the
> kernel page tables. When a leaf entries are modified concurrently, the dump
> code may log stale or inconsistent information for a VA range, but this is
> otherwise not harmful.
> 
> When intermediate levels of table are freed, the dump code will continue to
> use memory which has been freed and potentially reallocated for another
> purpose. In such cases, the dump code may dereference bogus addresses,
> leading to a number of potential problems.
> 
> Intermediate levels of table may by freed during memory hot-remove,
> which will be enabled by a subsequent patch. To avoid racing with
> this, take the memory hotplug lock when walking the kernel page table.
> 
> Acked-by: David Hildenbrand <david@redhat.com>
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> Signed-off-by: Anshuman Khandual <anshuman.khandual@arm.com>

Reviewed-by: Steven Price <steven.price@arm.com>

Thanks,

Steve

> ---
>  arch/arm64/mm/ptdump_debugfs.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
> index 1f2eae3e988b..d29d722ec3ec 100644
> --- a/arch/arm64/mm/ptdump_debugfs.c
> +++ b/arch/arm64/mm/ptdump_debugfs.c
> @@ -1,5 +1,6 @@
>  // SPDX-License-Identifier: GPL-2.0
>  #include <linux/debugfs.h>
> +#include <linux/memory_hotplug.h>
>  #include <linux/seq_file.h>
>  
>  #include <asm/ptdump.h>
> @@ -7,7 +8,10 @@
>  static int ptdump_show(struct seq_file *m, void *v)
>  {
>  	struct ptdump_info *info = m->private;
> +
> +	get_online_mems();
>  	ptdump_walk(m, info);
> +	put_online_mems();
>  	return 0;
>  }
>  DEFINE_SHOW_ATTRIBUTE(ptdump);
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
