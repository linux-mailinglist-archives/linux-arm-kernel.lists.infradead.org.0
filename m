Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3BE82C113
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:20:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SKwLCt9Zeu0tsDTgPS818e0Fk/TLMsLs2WodmhoDsVc=; b=cGR/zAHy2qBlMX
	zM73KRanCK61FxQfa/YSmlGFUmvX6dr1ywdaus20Q71x0LXgYyo4nl/xkRs4eJU3/ceWeKjQDlrE6
	EAVpWTYZAakUlnKGGirkW8YdbJdqyZGgtR+wYX0csyNkToIdtpLuqF6CEv7k/sNUw1I7SLOmrQsAc
	qDTtDakZ3t0pD0WcHymc3LaIJMYDRB3dcTOt9OALrXBjbb4b2VQiD5/5wiQbOceHnCzbMVx0oF4Se
	Ptlu9YadE2GaVhZEUhTl2+NKGwYS/lr1dc1epKGmUMGz6WS0kCSqkJ/Nxl0wrkktWzjHTABi1Wsfj
	w2gvhvj/JxzmpbfUEA9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXLY-0002eV-4g; Tue, 28 May 2019 08:20:36 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXLR-0002e7-0m
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 08:20:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 82DCE341;
 Tue, 28 May 2019 01:20:28 -0700 (PDT)
Received: from [10.162.40.141] (p8cg001049571a15.blr.arm.com [10.162.40.141])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 6B8A83F59C; Tue, 28 May 2019 01:20:24 -0700 (PDT)
Subject: Re: [PATCH 3/4] arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe
 instruction pages
To: Ard Biesheuvel <ard.biesheuvel@arm.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190523102256.29168-4-ard.biesheuvel@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <e10f0e6c-2669-8e1e-1b28-ed7816e0b248@arm.com>
Date: Tue, 28 May 2019 13:50:36 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20190523102256.29168-4-ard.biesheuvel@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_012029_067628_001B401C 
X-CRM114-Status: GOOD (  20.72  )
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
> In order to avoid transient inconsistencies where freed code pages
> are remapped writable while stale TLB entries still exist on other
> cores, mark the kprobes text pages with the VM_FLUSH_RESET_PERMS
> attribute. This instructs the core vmalloc code not to defer the
> TLB flush when this region is unmapped and returned to the page
> allocator.

Makes sense.

> 
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
> ---
>  arch/arm64/kernel/probes/kprobes.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/probes/kprobes.c b/arch/arm64/kernel/probes/kprobes.c
> index 2509fcb6d404..036cfbf9682a 100644
> --- a/arch/arm64/kernel/probes/kprobes.c
> +++ b/arch/arm64/kernel/probes/kprobes.c
> @@ -131,8 +131,10 @@ void *alloc_insn_page(void)
>  	void *page;
>  
>  	page = vmalloc_exec(PAGE_SIZE);
> -	if (page)
> +	if (page) {
>  		set_memory_ro((unsigned long)page, 1);
> +		set_vm_flush_reset_perms(page);
> +	}

Looks good. It seems there might be more users who would like to set
VM_FLUSH_RESET_PERMS right after their allocation for the same reason.
Hence would not it help to have a variant like vmalloc_exec_reset() or
such which will tag vm_struct->flags with VM_FLUSH_RESET_PERMS right
after it's allocation without requiring the caller to do the same.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
