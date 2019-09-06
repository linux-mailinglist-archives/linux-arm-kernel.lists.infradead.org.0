Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63232ABC21
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 17:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WIpjS2MnXv8qtYfiOl7qeAjEhWgEUddIcg2T9bKha5Q=; b=s9TijdGKdx3xko
	rs5MP4YgLFflV6N/UPZqIohTuIgGmvP8pZ1S+i4bbQYVmfsbRy0Q556lTmNk2RrcA+QDeCZBmzHXt
	ATEOVJS+WkgswNZecCf8dsdNg1kK8z723CzK0g0Os1nJV30youckK4UmKqdzXloQslYqsYnS2rjMf
	fKcN02OxS7oTytRAwv83qHGvqXP8LhKk/bpaSSNz7NKAsr5ZNwmqVrAkCl4erdP3MdckK+nTy+sI+
	b8GgzRZSPL8967JiJQNx4agQix9xPPn3q16pE6PLvHO2juSJvWP/sAznLRocH7vaE3mw9mO7g8a2x
	NZNFN5vs7c8FcxIPZHXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6G1k-0004ZX-7v; Fri, 06 Sep 2019 15:19:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i6G0Y-0003aj-7b; Fri, 06 Sep 2019 15:18:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A95341576;
 Fri,  6 Sep 2019 08:18:41 -0700 (PDT)
Received: from [10.1.196.105] (unknown [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8B82E3F59C;
 Fri,  6 Sep 2019 08:18:38 -0700 (PDT)
From: James Morse <james.morse@arm.com>
Subject: Re: [PATCH v3 07/17] arm64, hibernate: move page handling function to
 new trans_pgd.c
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20190821183204.23576-1-pasha.tatashin@soleen.com>
 <20190821183204.23576-8-pasha.tatashin@soleen.com>
Message-ID: <f1db863a-de57-2d1a-6bec-6020b2130964@arm.com>
Date: Fri, 6 Sep 2019 16:18:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190821183204.23576-8-pasha.tatashin@soleen.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_081842_559124_F7A462B1 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: sashal@kernel.org, mark.rutland@arm.com, vladimir.murzin@arm.com,
 corbet@lwn.net, marc.zyngier@arm.com, catalin.marinas@arm.com,
 bhsharma@redhat.com, kexec@lists.infradead.org, linux-kernel@vger.kernel.org,
 jmorris@namei.org, linux-mm@kvack.org, ebiederm@xmission.com,
 matthias.bgg@gmail.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 21/08/2019 19:31, Pavel Tatashin wrote:
> Now, that we abstracted the required functions move them to a new home.
> Later, we will generalize these function in order to be useful outside
> of hibernation.

> diff --git a/arch/arm64/mm/trans_pgd.c b/arch/arm64/mm/trans_pgd.c
> new file mode 100644
> index 000000000000..00b62d8640c2
> --- /dev/null
> +++ b/arch/arm64/mm/trans_pgd.c
> @@ -0,0 +1,211 @@
> +// SPDX-License-Identifier: GPL-2.0
> +
> +/*
> + * Copyright (c) 2019, Microsoft Corporation.
> + * Pavel Tatashin <patatash@linux.microsoft.com>

Hmmm, while line-count isn't a useful metric: this file contains 41% of the code that was
in hibernate.c, but has stripped the substantial copyright-pedigree that the hibernate
code had built up over the years.
(counting lines identified by 'cloc' as code, not comments or blank)

If you are copying or moving a non trivial quantity of code, you need to preserve the
copyright. Something like 'Derived from the arm64 hibernate support which has:'....


> + */
> +
> +/*
> + * Transitional tables are used during system transferring from one world to
> + * another: such as during hibernate restore, and kexec reboots. During these
> + * phases one cannot rely on page table not being overwritten.

I think you need to mention that hibernate and kexec are rewriting memory, and may
overwrite the live page tables, therefore ...


> + *
> + */
> +
> +#include <asm/trans_pgd.h>
> +#include <asm/pgalloc.h>
> +#include <asm/pgtable.h>
> +#include <linux/suspend.h>

#include <linux/bug.h>
#include <linux/mm.h>
#include <linux/mmzone.h>


> +static void _copy_pte(pte_t *dst_ptep, pte_t *src_ptep, unsigned long addr)
> +{
> +	pte_t pte = READ_ONCE(*src_ptep);
> +

> +	if (pte_valid(pte)) {

> +		/*
> +		 * Resume will overwrite areas that may be marked
> +		 * read only (code, rodata). Clear the RDONLY bit from
> +		 * the temporary mappings we use during restore.
> +		 */
> +		set_pte(dst_ptep, pte_mkwrite(pte));

> +	} else if (debug_pagealloc_enabled() && !pte_none(pte)) {

> +		/*
> +		 * debug_pagealloc will removed the PTE_VALID bit if
> +		 * the page isn't in use by the resume kernel. It may have
> +		 * been in use by the original kernel, in which case we need
> +		 * to put it back in our copy to do the restore.
> +		 *
> +		 * Before marking this entry valid, check the pfn should
> +		 * be mapped.
> +		 */

> +		BUG_ON(!pfn_valid(pte_pfn(pte)));


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
