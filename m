Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C481F42C0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 19:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz7a2DD+Y4iu5VQUYdkUoqaG7CVKz7j0rXhLFwJTF2c=; b=iOXU3F42HMOH56
	aov1FC9Ops8rvrDzYBc31H+Sbzja6KUMsqudwIGkEi5WXXoK0wVzGhD0QwYlfODQue7gtnbgq9AlN
	cLBuvIK/48yvU8ShXZNuA1g8ki0spQovq8GqbPZx+z1fleLqcRp0nmshnHAPgXuG6S8ryuLXSczkP
	Z2WgoFLqxFakabnp8ihwY79s/iGr2uZmpS4OdWMnkFtlwt8JyKgM7dSmn01J6WI7XTQ0USZtecAWx
	YI09aUG52hv3TbxsbqHmSUQFD/YucPVx3o55wGaj2HKuCylssss6Ww0t+/TxtCDT2NZ5hoMIEhnhI
	xs1jcYs6te60e6dlCr3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiiLD-0005rd-7y; Tue, 09 Jun 2020 17:47:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiiL2-0005r6-Rj
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 17:47:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 45AD51F1;
 Tue,  9 Jun 2020 10:47:02 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A21CA3F73D;
 Tue,  9 Jun 2020 10:47:00 -0700 (PDT)
Date: Tue, 9 Jun 2020 18:46:54 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v2] arm64: acpi: fix UBSAN warning
Message-ID: <20200609174654.GA2994@e121166-lin.cambridge.arm.com>
References: <CAKwvOdnBhHnhUZ9MHgqEQ4nEyzHWUH+DPV-J0KoYyWNEnsDHbg@mail.gmail.com>
 <20200608203818.189423-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200608203818.189423-1-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_104704_981936_86E1EEF7 
X-CRM114-Status: GOOD (  17.07  )
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
Cc: linux-arm-kernel@lists.infradead.org, Will Deacon <will@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Enrico Weigelt <info@metux.net>,
 Ard Biesheuvel <ardb@kernel.org>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 08, 2020 at 01:38:17PM -0700, Nick Desaulniers wrote:
> Will reported a UBSAN warning:
> 
> UBSAN: null-ptr-deref in arch/arm64/kernel/smp.c:596:6
> member access within null pointer of type 'struct acpi_madt_generic_interrupt'
> CPU: 0 PID: 0 Comm: swapper Not tainted 5.7.0-rc6-00124-g96bc42ff0a82 #1
> Call trace:
>  dump_backtrace+0x0/0x384
>  show_stack+0x28/0x38
>  dump_stack+0xec/0x174
>  handle_null_ptr_deref+0x134/0x174
>  __ubsan_handle_type_mismatch_v1+0x84/0xa4
>  acpi_parse_gic_cpu_interface+0x60/0xe8
>  acpi_parse_entries_array+0x288/0x498
>  acpi_table_parse_entries_array+0x178/0x1b4
>  acpi_table_parse_madt+0xa4/0x110
>  acpi_parse_and_init_cpus+0x38/0x100
>  smp_init_cpus+0x74/0x258
>  setup_arch+0x350/0x3ec
>  start_kernel+0x98/0x6f4
> 
> This is from the use of the ACPI_OFFSET in
> arch/arm64/include/asm/acpi.h. Replace its use with offsetof from
> include/linux/stddef.h which should implement the same logic using
> __builtin_offsetof, so that UBSAN wont warn.
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
>  arch/arm64/include/asm/acpi.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>

> diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
> index b263e239cb59..a45366c3909b 100644
> --- a/arch/arm64/include/asm/acpi.h
> +++ b/arch/arm64/include/asm/acpi.h
> @@ -12,6 +12,7 @@
>  #include <linux/efi.h>
>  #include <linux/memblock.h>
>  #include <linux/psci.h>
> +#include <linux/stddef.h>
>  
>  #include <asm/cputype.h>
>  #include <asm/io.h>
> @@ -31,14 +32,14 @@
>   * is therefore used to delimit the MADT GICC structure minimum length
>   * appropriately.
>   */
> -#define ACPI_MADT_GICC_MIN_LENGTH   ACPI_OFFSET(  \
> +#define ACPI_MADT_GICC_MIN_LENGTH   offsetof(  \
>  	struct acpi_madt_generic_interrupt, efficiency_class)
>  
>  #define BAD_MADT_GICC_ENTRY(entry, end)					\
>  	(!(entry) || (entry)->header.length < ACPI_MADT_GICC_MIN_LENGTH || \
>  	(unsigned long)(entry) + (entry)->header.length > (end))
>  
> -#define ACPI_MADT_GICC_SPE  (ACPI_OFFSET(struct acpi_madt_generic_interrupt, \
> +#define ACPI_MADT_GICC_SPE  (offsetof(struct acpi_madt_generic_interrupt, \
>  	spe_interrupt) + sizeof(u16))
>  
>  /* Basic configuration for ACPI */
> -- 
> 2.27.0.278.ge193c7cf3a9-goog
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
