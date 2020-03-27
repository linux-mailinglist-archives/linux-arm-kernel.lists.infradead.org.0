Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E721A194E2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 01:43:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cjAuTPklUDEN3Cj1rtoeL7BBGSv82kRXzpiU1G8ZCHc=; b=rp1ybEZUxx90/X
	tATj0CRvNgXSuOL1Q/m8NH8dRHoReJMLLgeGO7zi/L6DcBC96Jry4VhsmzHdA4qMvyN81tY7AnRXX
	186HK2PQu13JkY2SbM4IxqCc1qs/YzGFju0FoB4Lm9vz9COk5FOcATWQPvqlUn4lXJ24GFKphlth3
	0Ay/Vk3cC4peNZCh5GimLnxZwnt6pPPeBGoNm0B7WDdYXY5zWmhLWRnY93h8defBepeVhHAqLZAWq
	k78WFNaD4QpEQT/BxpSrYSBTcK31c021TpsQHqfFkOiqOccvb9D/Hkt6iDRRT8YaiphhXgoD6d44l
	dadVcqibW9pRNR+BT2FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHd5t-0004CZ-Vt; Fri, 27 Mar 2020 00:43:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHd5j-0004B7-Vb; Fri, 27 Mar 2020 00:43:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6F46E30E;
 Thu, 26 Mar 2020 17:43:16 -0700 (PDT)
Received: from [10.163.1.31] (unknown [10.163.1.31])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 627833F52E;
 Thu, 26 Mar 2020 17:43:13 -0700 (PDT)
Subject: Re: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded
 kexec image
To: James Morse <james.morse@arm.com>, kexec@lists.infradead.org,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org
References: <20200326180730.4754-1-james.morse@arm.com>
 <20200326180730.4754-2-james.morse@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <c4764e40-96d5-e2e4-6479-dc8d167e25e0@arm.com>
Date: Fri, 27 Mar 2020 06:13:06 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200326180730.4754-2-james.morse@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_174320_105717_E0BB8926 
X-CRM114-Status: GOOD (  24.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Bhupesh Sharma <bhsharma@redhat.com>, Will Deacon <will@kernel.org>,
 Eric Biederman <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 03/26/2020 11:37 PM, James Morse wrote:
> An image loaded for kexec is not stored in place, instead its segments
> are scattered through memory, and are re-assembled when needed. In the
> meantime, the target memory may have been removed.
> 
> Because mm is not aware that this memory is still in use, it allows it
> to be removed.

Why the isolation process does not fail when these pages are currently
being used by kexec ?

> 
> Add a memory notifier to prevent the removal of memory regions that
> overlap with a loaded kexec image segment. e.g., when triggered from the
> Qemu console:
> | kexec_core: memory region in use
> | memory memory32: Offline failed.

Yes this is definitely an added protection for these kexec loaded kernels
memory areas from being offlined but I would have expected the preceding
offlining to have failed as well.

> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  kernel/kexec_core.c | 56 +++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
> index c19c0dad1ebe..ba1d91e868ca 100644
> --- a/kernel/kexec_core.c
> +++ b/kernel/kexec_core.c
> @@ -12,6 +12,7 @@
>  #include <linux/slab.h>
>  #include <linux/fs.h>
>  #include <linux/kexec.h>
> +#include <linux/memory.h>
>  #include <linux/mutex.h>
>  #include <linux/list.h>
>  #include <linux/highmem.h>
> @@ -22,10 +23,12 @@
>  #include <linux/elf.h>
>  #include <linux/elfcore.h>
>  #include <linux/utsname.h>
> +#include <linux/notifier.h>
>  #include <linux/numa.h>
>  #include <linux/suspend.h>
>  #include <linux/device.h>
>  #include <linux/freezer.h>
> +#include <linux/pfn.h>
>  #include <linux/pm.h>
>  #include <linux/cpu.h>
>  #include <linux/uaccess.h>
> @@ -1219,3 +1222,56 @@ void __weak arch_kexec_protect_crashkres(void)
>  
>  void __weak arch_kexec_unprotect_crashkres(void)
>  {}
> +
> +/*
> + * If user-space wants to offline memory that is in use by a loaded kexec
> + * image, it should unload the image first.
> + */

Probably this would need kexec user manual and related system call man pages
update as well.

> +static int mem_remove_cb(struct notifier_block *nb, unsigned long action,
> +			 void *data)
> +{
> +	int rv = NOTIFY_OK, i;
> +	struct memory_notify *arg = data;
> +	unsigned long pfn = arg->start_pfn;
> +	unsigned long nr_segments, sstart, send;
> +	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
> +
> +	might_sleep();

Required ?

> +
> +	if (action != MEM_GOING_OFFLINE)
> +		return NOTIFY_DONE;
> +
> +	mutex_lock(&kexec_mutex);
> +	if (kexec_image) {
> +		nr_segments = kexec_image->nr_segments;
> +
> +		for (i = 0; i < nr_segments; i++) {
> +			sstart = PFN_DOWN(kexec_image->segment[i].mem);
> +			send = PFN_UP(kexec_image->segment[i].mem +
> +				      kexec_image->segment[i].memsz);
> +
> +			if ((pfn <= sstart && sstart < end_pfn) ||
> +			    (pfn <= send && send < end_pfn)) {
> +				pr_warn("Memory region in use\n");
> +				rv = NOTIFY_BAD;
> +				break;
> +			}
> +		}
> +	}
> +	mutex_unlock(&kexec_mutex);
> +
> +	return rv;

Variable 'rv' is redundant, should use NOTIFY_[BAD|OK] directly instead.

> +}
> +
> +static struct notifier_block mem_remove_nb = {
> +	.notifier_call = mem_remove_cb,
> +};
> +
> +static int __init register_mem_remove_cb(void)
> +{
> +	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))

Should not all these new code here be wrapped with CONFIG_MEMORY_HOTREMOVE
to reduce the scope as well as final code size when the config is disabled.

> +		return register_memory_notifier(&mem_remove_nb);
> +
> +	return 0;
> +}
> +device_initcall(register_mem_remove_cb);
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
