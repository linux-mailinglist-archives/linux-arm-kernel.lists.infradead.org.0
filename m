Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4119D1FABA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jun 2020 10:52:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bs/6XwIvQdjuDpbtFIYfqTdo70jEjclQzcPoiraEQNM=; b=DEUh0n9Sh+VhyY
	UWgzzcAN/R3MarpkcGe2YhcU8+7k+jlGP1H1AzeXOPGIeuVyUyy1vb68EOTC7+/czjH9xDnM6HhAe
	PmS1B0efyf1ompWYrKka5sWx/Wgjvcx7JKrR47L8r/vueFjrhFymLKLc+tWPt+pbSJE90l8DeYr1/
	dYdpH1uVokS55ybFSbkbp7fuKJ42uZ6t/nfuA5+OogTW/6kTMRWMChLpgAuIHI+9WQd1hbWJalYb5
	zvV7B/WolVnO9NtNAGttR/yaDUFxCnP797vnAmeKYz3PxjlwZqWaEU59NdCwST/66MBUZrGTSW9WG
	1BVsJsZgvTenf2M4U4TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7KJ-0005Xe-PU; Tue, 16 Jun 2020 08:52:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7K4-0005XA-Np
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jun 2020 08:52:02 +0000
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com
 [209.85.167.170])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5784F207DD
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 08:52:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592297520;
 bh=HVnkSxL07rOjHn/lQgCSuSHeHcVBUmjS/zZsOF7uNj8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LKPwjnyT9lpq28Nl1V6oZg4c/jFwGyYsa92TEbEvmUlpPSxXxAnt7wdqrpgKzuoFP
 4epP0mL4FGRf8sGdE+LbpBq7qL7EP17qNKIVbnnE8Xk/H5znH85L/QwF9h+GCSzhfu
 QOWfR3AaAfZzsD/hKMZkk4zPw33J5IbwX/tZmnOE=
Received: by mail-oi1-f170.google.com with SMTP id d67so18543231oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jun 2020 01:52:00 -0700 (PDT)
X-Gm-Message-State: AOAM531nE8qY07SCIpM63i+fYfPfx6Tqo7we9QCuCgpoNdPz35YEy/Qi
 NAgAFGM70ZSLot2Ce4/6JytxH+lD1pdAJgUhltI=
X-Google-Smtp-Source: ABdhPJw7fz4HOlWlb/E5NMD1TTYrZiliCaxWCludPAV9CJXa1sgf3ijYVWxWHF0bfHTKswSjp2qg/6gV8Fa95Dv7Dz8=
X-Received: by 2002:aca:d0d:: with SMTP id 13mr2630895oin.174.1592297519566;
 Tue, 16 Jun 2020 01:51:59 -0700 (PDT)
MIME-Version: 1.0
References: <20200616085050.994094-1-ardb@kernel.org>
In-Reply-To: <20200616085050.994094-1-ardb@kernel.org>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 16 Jun 2020 10:51:48 +0200
X-Gmail-Original-Message-ID: <CAMj1kXG9mY2SoHoHuvjhHB3SHPCq6-zEQZBqU1LX57fL-Gy__Q@mail.gmail.com>
Message-ID: <CAMj1kXG9mY2SoHoHuvjhHB3SHPCq6-zEQZBqU1LX57fL-Gy__Q@mail.gmail.com>
Subject: Re: [PATCH v3] efi/libstub: arm: Print CPU boot mode and MMU state at
 boot
To: linux-efi <linux-efi@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_015200_817352_C071EEF8 
X-CRM114-Status: GOOD (  25.83  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Leif Lindholm <leif@nuviainc.com>, Heinrich Schuchardt <xypron.glpk@gmx.de>,
 Samer.El-Haj-Mahmoud@arm.com, Grant Likely <grant.likely@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jun 2020 at 10:50, Ard Biesheuvel <ardb@kernel.org> wrote:
>
> On 32-bit ARM, we may boot at HYP mode, or with the MMU and caches off
> (or both), even though the EFI spec does not actually support this.
> While booting at HYP mode is something we might tolerate, fiddling
> with the caches is a more serious issue, as disabling the caches is
> tricky to do safely from C code, and running without the Dcache makes
> it impossible to support unaligned memory accesses, which is another
> explicit requirement imposed by the EFI spec.
>
> So take note of the CPU mode and MMU state in the EFI stub diagnostic
> output so that we can easily diagnose any issues that may arise from
> this. E.g.,
>
>   EFI stub: Entering in SVC mode with MMU enabled
>
> Also, capture the CPSR and SCTLR system register values at EFI stub
> entry, and after ExitBootServices() returns, and check whether the
> MMU and Dcache were disabled at any point. If this is the case, a
> diagnostic message like the following will be emitted:
>
>   efi: [Firmware Bug]: EFI stub was entered with MMU and Dcache disabled, please fix your firmware!
>   efi: CPSR at EFI stub entry        : 0x600001d3
>   efi: SCTLR at EFI stub entry       : 0x00c51838
>   efi: CPSR after ExitBootServices() : 0x600001d3
>   efi: SCTLR after ExitBootServices(): 0x00c50838
>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
> Adding Grant and Samer to cc, as this may be something that should be taken
> into account in the EBBR context? Note that this affects 64-bit only.
>

Affects *32* bit only


>  arch/arm/include/asm/efi.h                |  7 +++
>  drivers/firmware/efi/arm-init.c           | 37 ++++++++++++--
>  drivers/firmware/efi/libstub/arm32-stub.c | 52 +++++++++++++++++++-
>  drivers/firmware/efi/libstub/efi-stub.c   |  3 ++
>  drivers/firmware/efi/libstub/efistub.h    |  2 +
>  include/linux/efi.h                       |  1 +
>  6 files changed, 98 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm/include/asm/efi.h b/arch/arm/include/asm/efi.h
> index 84dc0ba822f5..5dcf3c6011b7 100644
> --- a/arch/arm/include/asm/efi.h
> +++ b/arch/arm/include/asm/efi.h
> @@ -87,4 +87,11 @@ static inline unsigned long efi_get_max_initrd_addr(unsigned long dram_base,
>         return dram_base + SZ_512M;
>  }
>
> +struct efi_arm_entry_state {
> +       u32     cpsr_before_ebs;
> +       u32     sctlr_before_ebs;
> +       u32     cpsr_after_ebs;
> +       u32     sctlr_after_ebs;
> +};
> +
>  #endif /* _ASM_ARM_EFI_H */
> diff --git a/drivers/firmware/efi/arm-init.c b/drivers/firmware/efi/arm-init.c
> index c697e70ca7e7..4d1c272a4f79 100644
> --- a/drivers/firmware/efi/arm-init.c
> +++ b/drivers/firmware/efi/arm-init.c
> @@ -52,9 +52,11 @@ static phys_addr_t __init efi_to_phys(unsigned long addr)
>  }
>
>  static __initdata unsigned long screen_info_table = EFI_INVALID_TABLE_ADDR;
> +static __initdata unsigned long cpu_state_table = EFI_INVALID_TABLE_ADDR;
>
>  static const efi_config_table_type_t arch_tables[] __initconst = {
>         {LINUX_EFI_ARM_SCREEN_INFO_TABLE_GUID, &screen_info_table},
> +       {LINUX_EFI_ARM_CPU_STATE_TABLE_GUID, &cpu_state_table},
>         {}
>  };
>
> @@ -116,7 +118,8 @@ static int __init uefi_init(u64 efi_system_table)
>                 goto out;
>         }
>         retval = efi_config_parse_tables(config_tables, systab->nr_tables,
> -                                        arch_tables);
> +                                        IS_ENABLED(CONFIG_ARM) ? arch_tables
> +                                                               : NULL);
>
>         early_memunmap(config_tables, table_size);
>  out:
> @@ -238,9 +241,37 @@ void __init efi_init(void)
>
>         init_screen_info();
>
> +#ifdef CONFIG_ARM
>         /* ARM does not permit early mappings to persist across paging_init() */
> -       if (IS_ENABLED(CONFIG_ARM))
> -               efi_memmap_unmap();
> +       efi_memmap_unmap();
> +
> +       if (cpu_state_table != EFI_INVALID_TABLE_ADDR) {
> +               struct efi_arm_entry_state *state;
> +               bool dump_state = true;
> +
> +               state = early_memremap_ro(cpu_state_table,
> +                                         sizeof(struct efi_arm_entry_state));
> +               if (state == NULL) {
> +                       pr_warn("Unable to map CPU entry state table.\n");
> +                       return;
> +               }
> +
> +               if ((state->sctlr_before_ebs & 1) == 0)
> +                       pr_warn(FW_BUG "EFI stub was entered with MMU and Dcache disabled, please fix your firmware!\n");
> +               else if ((state->sctlr_after_ebs & 1) == 0)
> +                       pr_warn(FW_BUG "ExitBootServices() returned with MMU and Dcache disabled, please fix your firmware!\n");
> +               else
> +                       dump_state = false;
> +
> +               if (dump_state || efi_enabled(EFI_DBG)) {
> +                       pr_info("CPSR at EFI stub entry        : 0x%08x\n", state->cpsr_before_ebs);
> +                       pr_info("SCTLR at EFI stub entry       : 0x%08x\n", state->sctlr_before_ebs);
> +                       pr_info("CPSR after ExitBootServices() : 0x%08x\n", state->cpsr_after_ebs);
> +                       pr_info("SCTLR after ExitBootServices(): 0x%08x\n", state->sctlr_after_ebs);
> +               }
> +               early_memunmap(state, sizeof(struct efi_arm_entry_state));
> +       }
> +#endif
>  }
>
>  static bool efifb_overlaps_pci_range(const struct of_pci_range *range)
> diff --git a/drivers/firmware/efi/libstub/arm32-stub.c b/drivers/firmware/efi/libstub/arm32-stub.c
> index 40243f524556..60783228db6e 100644
> --- a/drivers/firmware/efi/libstub/arm32-stub.c
> +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> @@ -7,10 +7,49 @@
>
>  #include "efistub.h"
>
> +static efi_guid_t cpu_state_guid = LINUX_EFI_ARM_CPU_STATE_TABLE_GUID;
> +
> +struct efi_arm_entry_state *efi_entry_state;
> +
> +static void get_cpu_state(u32 *cpsr, u32 *sctlr)
> +{
> +       asm("mrs %0, cpsr" : "=r"(*cpsr));
> +       if ((*cpsr & MODE_MASK) == HYP_MODE)
> +               asm("mrc p15, 4, %0, c1, c0, 0" : "=r"(*sctlr));
> +       else
> +               asm("mrc p15, 0, %0, c1, c0, 0" : "=r"(*sctlr));
> +}
> +
>  efi_status_t check_platform_features(void)
>  {
> +       efi_status_t status;
> +       u32 cpsr, sctlr;
>         int block;
>
> +       get_cpu_state(&cpsr, &sctlr);
> +
> +       efi_info("Entering in %s mode with MMU %sabled\n",
> +                ((cpsr & MODE_MASK) == HYP_MODE) ? "HYP" : "SVC",
> +                (sctlr & 1) ? "en" : "dis");
> +
> +       status = efi_bs_call(allocate_pool, EFI_LOADER_DATA,
> +                            sizeof(*efi_entry_state),
> +                            (void **)&efi_entry_state);
> +       if (status != EFI_SUCCESS) {
> +               efi_err("allocate_pool() failed\n");
> +               return status;
> +       }
> +
> +       efi_entry_state->cpsr_before_ebs = cpsr;
> +       efi_entry_state->sctlr_before_ebs = sctlr;
> +
> +       status = efi_bs_call(install_configuration_table, &cpu_state_guid,
> +                            efi_entry_state);
> +       if (status != EFI_SUCCESS) {
> +               efi_err("install_configuration_table() failed\n");
> +               goto free_state;
> +       }
> +
>         /* non-LPAE kernels can run anywhere */
>         if (!IS_ENABLED(CONFIG_ARM_LPAE))
>                 return EFI_SUCCESS;
> @@ -19,9 +58,20 @@ efi_status_t check_platform_features(void)
>         block = cpuid_feature_extract(CPUID_EXT_MMFR0, 0);
>         if (block < 5) {
>                 efi_err("This LPAE kernel is not supported by your CPU\n");
> -               return EFI_UNSUPPORTED;
> +               status = EFI_UNSUPPORTED;
> +               goto free_state;
>         }
>         return EFI_SUCCESS;
> +
> +free_state:
> +       efi_bs_call(free_pool, efi_entry_state);
> +       return status;
> +}
> +
> +void efi_handle_post_ebs_state(void)
> +{
> +       get_cpu_state(&efi_entry_state->cpsr_after_ebs,
> +                     &efi_entry_state->sctlr_after_ebs);
>  }
>
>  static efi_guid_t screen_info_guid = LINUX_EFI_ARM_SCREEN_INFO_TABLE_GUID;
> diff --git a/drivers/firmware/efi/libstub/efi-stub.c b/drivers/firmware/efi/libstub/efi-stub.c
> index e97370bdfdb0..3318ec3f8e5b 100644
> --- a/drivers/firmware/efi/libstub/efi-stub.c
> +++ b/drivers/firmware/efi/libstub/efi-stub.c
> @@ -329,6 +329,9 @@ efi_status_t __efiapi efi_pe_entry(efi_handle_t handle,
>         if (status != EFI_SUCCESS)
>                 goto fail_free_initrd;
>
> +       if (IS_ENABLED(CONFIG_ARM))
> +               efi_handle_post_ebs_state();
> +
>         efi_enter_kernel(image_addr, fdt_addr, fdt_totalsize((void *)fdt_addr));
>         /* not reached */
>
> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> index bcd8c0a785f0..6217ce647ebf 100644
> --- a/drivers/firmware/efi/libstub/efistub.h
> +++ b/drivers/firmware/efi/libstub/efistub.h
> @@ -771,4 +771,6 @@ efi_status_t efi_load_initrd(efi_loaded_image_t *image,
>                              unsigned long soft_limit,
>                              unsigned long hard_limit);
>
> +void efi_handle_post_ebs_state(void);
> +
>  #endif
> diff --git a/include/linux/efi.h b/include/linux/efi.h
> index c3449c9699d0..bb35f3305e55 100644
> --- a/include/linux/efi.h
> +++ b/include/linux/efi.h
> @@ -350,6 +350,7 @@ void efi_native_runtime_setup(void);
>   * associated with ConOut
>   */
>  #define LINUX_EFI_ARM_SCREEN_INFO_TABLE_GUID   EFI_GUID(0xe03fc20a, 0x85dc, 0x406e,  0xb9, 0x0e, 0x4a, 0xb5, 0x02, 0x37, 0x1d, 0x95)
> +#define LINUX_EFI_ARM_CPU_STATE_TABLE_GUID     EFI_GUID(0xef79e4aa, 0x3c3d, 0x4989,  0xb9, 0x02, 0x07, 0xa9, 0x43, 0xe5, 0x50, 0xd2)
>  #define LINUX_EFI_LOADER_ENTRY_GUID            EFI_GUID(0x4a67b082, 0x0a4c, 0x41cf,  0xb6, 0xc7, 0x44, 0x0b, 0x29, 0xbb, 0x8c, 0x4f)
>  #define LINUX_EFI_RANDOM_SEED_TABLE_GUID       EFI_GUID(0x1ce1e5bc, 0x7ceb, 0x42f2,  0x81, 0xe5, 0x8a, 0xad, 0xf1, 0x80, 0xf5, 0x7b)
>  #define LINUX_EFI_TPM_EVENT_LOG_GUID           EFI_GUID(0xb7799cb0, 0xeca2, 0x4943,  0x96, 0x67, 0x1f, 0xae, 0x07, 0xb7, 0x47, 0xfa)
> --
> 2.27.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
