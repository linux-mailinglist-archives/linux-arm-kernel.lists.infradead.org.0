Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAFCA1F4786
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 21:50:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dgDFHeKo9r21UMZzdZv6JRkX/AxnXvHdrLVMCzRFzuk=; b=eaAoDakr7AlsLrOrmDmOqQZMJ
	KoopLuJHLHBdzT3Ac2B09LPZ1zJtGFkiyuwBagfRUhJAvcnJ+PNMkjg5uyPOq+x3aA37vC83tmksN
	lftaD/lPD4mMhYKH/oVtwiWkOe22+AJPGqPKU9ScJvGonjEqpde7yDhWWAY2WDZCK6qZYddkLjmik
	cIxWpFmZj/E9FZ93hvbWcnBSPYmm9SFmTRtseSRGmVf3LJfa1qLKl3EGdED6i25yAEyA/mtEtmTeV
	IL4xeAzpFVe3sWBAv1u/b6KpV3NN+OwMlQYxobqn03MIZNi+OE9oaHYtyFwt3FObuX2WuxNHK3BcK
	oyF1IcMZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikGm-0000dd-9t; Tue, 09 Jun 2020 19:50:48 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikGf-0000ck-IL
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 19:50:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7C6F51F1;
 Tue,  9 Jun 2020 12:50:37 -0700 (PDT)
Received: from [192.168.122.166] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EAECE3F73D;
 Tue,  9 Jun 2020 12:50:36 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: acpi: fix UBSAN warning
To: Nick Desaulniers <ndesaulniers@google.com>, Will Deacon
 <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>
References: <CAKwvOdnBhHnhUZ9MHgqEQ4nEyzHWUH+DPV-J0KoYyWNEnsDHbg@mail.gmail.com>
 <20200608203818.189423-1-ndesaulniers@google.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <dfdbce19-74dd-40a6-b083-168406bc214e@arm.com>
Date: Tue, 9 Jun 2020 14:50:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200608203818.189423-1-ndesaulniers@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_125041_693261_42AD1EB0 
X-CRM114-Status: GOOD (  21.16  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ardb@kernel.org>, Allison Randal <allison@lohutok.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/8/20 3:38 PM, Nick Desaulniers wrote:
> Will reported a UBSAN warning:
> 
> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> member access within null pointer of type 'struct acpi_madt_generic_interrupt'
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
> Call trace:
>   dump_backtrace+0x0/0x384
>   show_stack+0x28/0x38
>   dump_stack+0xec/0x174
>   handle_null_ptr_deref+0x134/0x174
>   __ubsan_handle_type_mismatch_v1+0x84/0xa4
>   acpi_parse_gic_cpu_interface+0x60/0xe8
>   acpi_parse_entries_array+0x288/0x498
>   acpi_table_parse_entries_array+0x178/0x1b4
>   acpi_table_parse_madt+0xa4/0x110
>   acpi_parse_and_init_cpus+0x38/0x100
>   smp_init_cpus+0x74/0x258
>   setup_arch+0x350/0x3ec
>   start_kernel+0x98/0x6f4
> 
> This is from the use of the ACPI_OFFSET in
> arch/arm64/include/asm/acpi.h. Replace its use with offsetof from
> include/linux/stddef.h which should implement the same logic using
> __builtin_offsetof, so that UBSAN wont warn.

I looked at the longer thread about this, given that it appears to be a 
false positive with respect to the macro, I tend to prefer Ard's 
suggestion of just changing the offset value (1 should be sufficient 
rather than 0) to avoid this kind of problem in the future.

But either way, this change looks fine too.

Reviewed-by: Jeremy Linton <jeremy.linton@arm.com>

Thanks,

> 
> Link: https://lore.kernel.org/lkml/20200521100952.GA5360@willie-the-truck/
> Cc: stable@vger.kernel.org
> Reported-by: Will Deacon <will@kernel.org>
> Suggested-by: Ard Biesheuvel <ardb@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
> Changes V1 -> V2:
> * Just fix one of the two warnings, specific to arm64.
> * Put warning in commit message.
> 
>   arch/arm64/include/asm/acpi.h | 5 +++--
>   1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
> index b263e239cb59..a45366c3909b 100644
> --- a/arch/arm64/include/asm/acpi.h
> +++ b/arch/arm64/include/asm/acpi.h
> @@ -12,6 +12,7 @@
>   #include <linux/efi.h>
>   #include <linux/memblock.h>
>   #include <linux/psci.h>
> +#include <linux/stddef.h>
>   
>   #include <asm/cputype.h>
>   #include <asm/io.h>
> @@ -31,14 +32,14 @@
>    * is therefore used to delimit the MADT GICC structure minimum length
>    * appropriately.
>    */
> -#define ACPI_MADT_GICC_MIN_LENGTH   ACPI_OFFSET(  \
> +#define ACPI_MADT_GICC_MIN_LENGTH   offsetof(  \
>   	struct acpi_madt_generic_interrupt, efficiency_class)
>   
>   #define BAD_MADT_GICC_ENTRY(entry, end)					\
>   	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
>   	(unsigned long)(entry) + (entry)->header.length > (end))
>   
> -#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
> +#define ACPI_MADT_GICC_SPE  (offsetof(struct acpi_madt_generic_interrupt, \
>   	spe_interrupt) + sizeof(u16))
>   
>   /* Basic configuration for ACPI */
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
