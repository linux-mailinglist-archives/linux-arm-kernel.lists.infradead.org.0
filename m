Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCB802BEA4
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 07:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r0QcDP/H3zqoR18/SUvB/y9xO5wVGreOiynZoyQ0zUE=; b=KIZXl6P4UfDRZL
	3FkPZYCDPnmlgVYEoZruVvVRN0iN1qvXZEtgcPqiJmO/6LZQbUkxdIJkfBbWtVsR1nBuRgvH3DA+C
	ob/xUmhR6yUlm4bfgHDeVvQf/Szg95xvygXsi7jwqGZSoIPXZjFFWkkP781Ctv/EVb29z70dB8SSh
	fkHoYH9VPt/uUqtUS30hpBHxgTqamIogwdTF25SU6xIAaxawGhk2LGO9Fo5ZqNFQ2I+dPe95pyUtw
	ZpaQ0QwWfxZXHCT6/OkpvvcQtKRJISPrBjGDtdJgwI0rFjkzBECIGYf4DrrhonP3y4aASpR47mzRG
	SFD6fdF1vpXflaYZBITA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVUlv-0001n9-Ny; Tue, 28 May 2019 05:35:39 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVUln-0001lh-Tn
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 05:35:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DB1C8A78;
 Mon, 27 May 2019 22:35:25 -0700 (PDT)
Received: from [10.162.40.141] (p8cg001049571a15.blr.arm.com [10.162.40.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 004CB3F690; Mon, 27 May 2019 22:35:21 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: module: create module allocations without exec
 permissions
To: Ard Biesheuvel <ard.biesheuvel@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190523102256.29168-2-ard.biesheuvel@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <d82eb4fe-8113-3f8e-f465-26679ebae2df@arm.com>
Date: Tue, 28 May 2019 11:05:33 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190523102256.29168-2-ard.biesheuvel@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_223531_968573_7CB341D9 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/23/2019 03:52 PM, Ard Biesheuvel wrote:
> Now that the core code manages the executable permissions of code
> regions of modules explicitly, it is no longer necessary to create

I guess the permission transition for various module sections happen
through module_enable_[ro|nx]() after allocating via module_alloc().

> the module vmalloc regions with RWX permissions, and we can create
> them with RW- permissions instead, which is preferred from a
> security perspective.

Makes sense. Will this be followed in all architectures now ?

> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
> ---
>  arch/arm64/kernel/module.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
> index 2e4e3915b4d0..88f0ed31d9aa 100644
> --- a/arch/arm64/kernel/module.c
> +++ b/arch/arm64/kernel/module.c
> @@ -41,7 +41,7 @@ void *module_alloc(unsigned long size)
>  
>  	p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
>  				module_alloc_base + MODULES_VSIZE,
> -				gfp_mask, PAGE_KERNEL_EXEC, 0,
> +				gfp_mask, PAGE_KERNEL, 0,
>  				NUMA_NO_NODE, __builtin_return_address(0));
>  
>  	if (!p && IS_ENABLED(CONFIG_ARM64_MODULE_PLTS) &&
> @@ -57,7 +57,7 @@ void *module_alloc(unsigned long size)
>  		 */
>  		p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
>  				module_alloc_base + SZ_4G, GFP_KERNEL,
> -				PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
> +				PAGE_KERNEL, 0, NUMA_NO_NODE,
>  				__builtin_return_address(0));
>  
>  	if (p && (kasan_module_alloc(p, size) < 0)) {
> 

Which just makes sure that PTE_PXN never gets dropped while creating
these mappings.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
