Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 715C716214E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:03:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O2cFux2gBSHANHoAn6VuDBdcgcAxSoRTD09dCFjguNA=; b=NTQjMLDdYt1Nkd
	qxF2ghUHV+dOFduS1JOYdLkCM0CAxdNvr5is3fPNrX/eFuouvi2WtJGb9E3tiX3OcaeT6ZhHQ1uDu
	o7hzfsWmwP5MxRv8+HsY+4eNreswa+q2aN9xtDSqiaWU1JW8nmsLhvVdB85a4+IhSJC+tx4jhGAaB
	nLl0QBEshiPwSk4cXHgjSLlUSjVghJqU7mf+C3x3+6TZHS0B0qBItmt4BhK9bKvB9mTnX5Kn0DGm2
	IM7mfSpNKb2uxFztQVnpO452G2HBpNKPdszokyn4jum5PPeSOxxbHWKvGx3DNyHvV2tVfv7f4cSkL
	/iU2VF+woCKw+Dc2tjGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3wv9-00018d-HB; Tue, 18 Feb 2020 07:03:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3wuz-00018J-FK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 07:03:44 +0000
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com
 [209.85.128.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 650AC207FD
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 07:03:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582009420;
 bh=1WA0m23TW555wnRvoWZVCMDKlGdZR9kf0VBWzZbOicg=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=zPzGwdjdaOTwAXS0dpdREdh1gS4ZWu9FKHVbsblPwHnj4xB9NeeJI6EBbl71BekgK
 SnCClfFFayO/DT05V44d/2qpH6a/qmpr60tfQ6lJpSkamzks8otA3d88xJ7FHOAeNb
 b+EbN086p82WQVS4mmXSoN9EMrYXToCizFwyr9CQ=
Received: by mail-wm1-f45.google.com with SMTP id b17so1647197wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Feb 2020 23:03:40 -0800 (PST)
X-Gm-Message-State: APjAAAWO86CI94ZK3wq9hrTR6IoLLQ+aMkmZg1fMk0zx1DCzFnYBfnup
 rdVH/KPdzZyLgeyJ0BXRzBKWpjMaJnWesyjn6BVENw==
X-Google-Smtp-Source: APXvYqzV97jUpnUq/y00YC1yv5rO/aS3rjiO1bfDgxlVHRpbbdIBLd5ZgEN6U1TmcH2QFOy0sV+iVneVc9sD3246aKU=
X-Received: by 2002:a7b:cc81:: with SMTP id p1mr1266407wma.62.1582009418545;
 Mon, 17 Feb 2020 23:03:38 -0800 (PST)
MIME-Version: 1.0
References: <20200217124904.16331-1-ardb@kernel.org>
 <bf031d41c75a1834820332d7973fda132a6fceb5.camel@wdc.com>
In-Reply-To: <bf031d41c75a1834820332d7973fda132a6fceb5.camel@wdc.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Tue, 18 Feb 2020 08:03:27 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-Yq_x2LTePp_ZUmBVG4Yq2VD6A6Zj0mw_vuJ=WfCWt=Q@mail.gmail.com>
Message-ID: <CAKv+Gu-Yq_x2LTePp_ZUmBVG4Yq2VD6A6Zj0mw_vuJ=WfCWt=Q@mail.gmail.com>
Subject: Re: [PATCH] efi/libstub/arm: make efi_entry() an ordinary PE/COFF
 entrypoint
To: Atish Patra <Atish.Patra@wdc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_230342_160844_1D06D93B 
X-CRM114-Status: GOOD (  39.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "leif@nuviainc.com" <leif@nuviainc.com>,
 "linux-efi@vger.kernel.org" <linux-efi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 18 Feb 2020 at 02:53, Atish Patra <Atish.Patra@wdc.com> wrote:
>
> On Mon, 2020-02-17 at 13:49 +0100, Ard Biesheuvel wrote:
> > Expose efi_entry() as the PE/COFF entrypoint directly, instead of
> > jumping into a wrapper that fiddles with stack buffers and other
> > stuff that the compiler is much better at. The only reason this
> > code exists is to obtain a pointer to the base of the image, but
> > we can get the same value from the loaded_image protocol, which
> > we already need for other reasons anyway.
> >
> > Update the return type as well, to make it consistent with what
> > is required for a PE/COFF executable entrypoint.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> > Apologies to Atish for making him track a moving target, but this is
> > another
> > bit of cleanup work that I would like to merge before taking the
> > RISC-V
> > changes on top.
> >
>
> And I thought I am done rebasing my patches ;). Jokes apart, this is
> actually much cleaner approach in retrieving image base and parsing DT
> compared to what I currently have for RISC-V.
>
>
> > On RISC-V, I would expect efi_enter_kernel() to be implemented as a C
> > routine
> > that finds the hart id in the DT (which is passed as an argument),
> > and pass
> > it to the startup code of the kernel proper.
> >
>
> Yes. I probably won't need efi-entry.S for RISC-V at all which
> simplifies the RISC-V implementation. Yay!!
>

Glad to hear that.

> Is there a tree with this patch ? I tried to find it in your kernel.org
> repo but couldn't find it. As there are 3 efi related patch set in
> flight, I am not sure about the order in which they should be applied.
>
>

Please rebase onto

https://git.kernel.org/pub/scm/linux/kernel/git/efi/efi.git/log/?h=next


> >  arch/arm/boot/compressed/efi-header.S     |  2 +-
> >  arch/arm/boot/compressed/head.S           | 44 +++-----------
> >  arch/arm64/kernel/efi-entry.S             | 64 +++-----------------
> >  arch/arm64/kernel/efi-header.S            |  2 +-
> >  drivers/firmware/efi/libstub/arm-stub.c   | 37 +++++------
> >  drivers/firmware/efi/libstub/arm32-stub.c |  1 +
> >  drivers/firmware/efi/libstub/arm64-stub.c |  3 +-
> >  7 files changed, 42 insertions(+), 111 deletions(-)
> >
> > diff --git a/arch/arm/boot/compressed/efi-header.S
> > b/arch/arm/boot/compressed/efi-header.S
> > index a5983588f96b..e38fbda02b93 100644
> > --- a/arch/arm/boot/compressed/efi-header.S
> > +++ b/arch/arm/boot/compressed/efi-header.S
> > @@ -60,7 +60,7 @@ optional_header:
> >               .long   __pecoff_code_size              @ SizeOfCode
> >               .long   __pecoff_data_size              @
> > SizeOfInitializedData
> >               .long   0                               @
> > SizeOfUninitializedData
> > -             .long   efi_stub_entry - start          @
> > AddressOfEntryPoint
> > +             .long   efi_entry - start               @
> > AddressOfEntryPoint
> >               .long   start_offset                    @ BaseOfCode
> >               .long   __pecoff_data_start - start     @ BaseOfData
> >
> > diff --git a/arch/arm/boot/compressed/head.S
> > b/arch/arm/boot/compressed/head.S
> > index 088b0a060876..941cd28a13c3 100644
> > --- a/arch/arm/boot/compressed/head.S
> > +++ b/arch/arm/boot/compressed/head.S
> > @@ -1437,50 +1437,22 @@ __enter_kernel:
> >  reloc_code_end:
> >
> >  #ifdef CONFIG_EFI_STUB
> > -             .align  2
> > -_start:              .long   start - .
> > -
> > -ENTRY(efi_stub_entry)
> > -             @ allocate space on stack for passing current zImage
> > address
> > -             @ and for the EFI stub to return of new entry point of
> > -             @ zImage, as EFI stub may copy the kernel. Pointer
> > address
> > -             @ is passed in r2. r0 and r1 are passed through from
> > the
> > -             @ EFI firmware to efi_entry
> > -             adr     ip, _start
> > -             ldr     r3, [ip]
> > -             add     r3, r3, ip
> > -             stmfd   sp!, {r3, lr}
> > -             mov     r2, sp                  @ pass zImage address
> > in r2
> > -             bl      efi_entry
> > -
> > -             @ Check for error return from EFI stub. r0 has FDT
> > address
> > -             @ or error code.
> > -             cmn     r0, #1
> > -             beq     efi_load_fail
> > -
> > -             @ Preserve return value of efi_entry() in r4
> > -             mov     r4, r0
> > +ENTRY(efi_enter_kernel)
> > +             mov     r4, r0                  @ preserve entrypoint
> > +             mov     r5, r1                  @ preserve DT pointer
> >               bl      cache_clean_flush
> >               bl      cache_off
> >
> >               @ Set parameters for booting zImage according to boot
> > protocol
> > -             @ put FDT address in r2, it was returned by efi_entry()
> > -             @ r1 is the machine type, and r0 needs to be 0
> >               mov     r0, #0
> >               mov     r1, #0xFFFFFFFF
> > -             mov     r2, r4
> > +             mov     r2, r5
> >
> > -             @ Branch to (possibly) relocated zImage that is in [sp]
> > -             ldr     lr, [sp]
> > +             @ Branch to (possibly) relocated zImage @ [r4]
> >               ldr     ip, =start_offset
> > -             add     lr, lr, ip
> > -             mov     pc, lr                          @ no mode
> > switch
> > -
> > -efi_load_fail:
> > -             @ Return EFI_LOAD_ERROR to EFI firmware on error.
> > -             ldr     r0, =0x80000001
> > -             ldmfd   sp!, {ip, pc}
> > -ENDPROC(efi_stub_entry)
> > +             add     r4, r4, ip
> > +             mov     pc, r4                  @ no mode switch
> > +ENDPROC(efi_enter_kernel)
> >  #endif
> >
> >               .align
> > diff --git a/arch/arm64/kernel/efi-entry.S b/arch/arm64/kernel/efi-
> > entry.S
> > index 304d5b02ca67..49e3b1ad1b36 100644
> > --- a/arch/arm64/kernel/efi-entry.S
> > +++ b/arch/arm64/kernel/efi-entry.S
> > @@ -10,55 +10,18 @@
> >
> >  #include <asm/assembler.h>
> >
> > -#define EFI_LOAD_ERROR 0x8000000000000001
> > -
> >       __INIT
> >
> > -     /*
> > -      * We arrive here from the EFI boot manager with:
> > -      *
> > -      *    * CPU in little-endian mode
> > -      *    * MMU on with identity-mapped RAM
> > -      *    * Icache and Dcache on
> > -      *
> > -      * We will most likely be running from some place other than
> > where
> > -      * we want to be. The kernel image wants to be placed at
> > TEXT_OFFSET
> > -      * from start of RAM.
> > -      */
> > -ENTRY(entry)
> > -     /*
> > -      * Create a stack frame to save FP/LR with extra space
> > -      * for image_addr variable passed to efi_entry().
> > -      */
> > -     stp     x29, x30, [sp, #-32]!
> > -     mov     x29, sp
> > -
> > -     /*
> > -      * Call efi_entry to do the real work.
> > -      * x0 and x1 are already set up by firmware. Current runtime
> > -      * address of image is calculated and passed via *image_addr.
> > -      *
> > -      * unsigned long efi_entry(void *handle,
> > -      *                         efi_system_table_t *sys_table,
> > -      *                         unsigned long *image_addr) ;
> > -      */
> > -     adr_l   x8, _text
> > -     add     x2, sp, 16
> > -     str     x8, [x2]
> > -     bl      efi_entry
> > -     cmn     x0, #1
> > -     b.eq    efi_load_fail
> > -
> > +ENTRY(efi_enter_kernel)
> >       /*
> >        * efi_entry() will have copied the kernel image if necessary
> > and we
> > -      * return here with device tree address in x0 and the kernel
> > entry
> > -      * point stored at *image_addr. Save those values in registers
> > which
> > -      * are callee preserved.
> > +      * end up here with device tree address in x1 and the kernel
> > entry
> > +      * point stored in x0. Save those values in registers which are
> > +      * callee preserved.
> >        */
> > -     mov     x20, x0         // DTB address
> > -     ldr     x0, [sp, #16]   // relocated _text address
> > +     mov     x20, x1                 // DTB address
> >       ldr     w21, =stext_offset
> > -     add     x21, x0, x21
> > +     add     x21, x0, x21            // relocated Image address
> >
> >       /*
> >        * Calculate size of the kernel Image (same for original and
> > copy).
> > @@ -80,9 +43,8 @@ ENTRY(entry)
> >        * entries for the VA range of the current image, so no
> > maintenance is
> >        * necessary.
> >        */
> > -     adr     x0, entry
> > -     adr     x1, entry_end
> > -     sub     x1, x1, x0
> > +     adr     x0, efi_enter_kernel
> > +     mov     x1, efi_enter_kernel_size
> >       bl      __flush_dcache_area
> >
> >       /* Turn off Dcache and MMU */
> > @@ -110,11 +72,5 @@ ENTRY(entry)
> >       mov     x2, xzr
> >       mov     x3, xzr
> >       br      x21
> > -
> > -efi_load_fail:
> > -     mov     x0, #EFI_LOAD_ERROR
> > -     ldp     x29, x30, [sp], #32
> > -     ret
> > -
> > -entry_end:
> > -ENDPROC(entry)
> > +ENDPROC(efi_enter_kernel)
> > +     .set    efi_enter_kernel_size, . - efi_enter_kernel
> > diff --git a/arch/arm64/kernel/efi-header.S b/arch/arm64/kernel/efi-
> > header.S
> > index a7cfacce3e15..40c704c5d3a5 100644
> > --- a/arch/arm64/kernel/efi-header.S
> > +++ b/arch/arm64/kernel/efi-header.S
> > @@ -27,7 +27,7 @@ optional_header:
> >       .long   __initdata_begin - efi_header_end       // SizeOfCode
> >       .long   __pecoff_data_size                      //
> > SizeOfInitializedData
> >       .long   0                                       //
> > SizeOfUninitializedData
> > -     .long   __efistub_entry - _head                 //
> > AddressOfEntryPoint
> > +     .long   __efistub_efi_entry - _head             //
> > AddressOfEntryPoint
> >       .long   efi_header_end - _head                  // BaseOfCode
> >
> >  extra_header_fields:
> > diff --git a/drivers/firmware/efi/libstub/arm-stub.c
> > b/drivers/firmware/efi/libstub/arm-stub.c
> > index 56e475c1aa55..439c094f7bf2 100644
> > --- a/drivers/firmware/efi/libstub/arm-stub.c
> > +++ b/drivers/firmware/efi/libstub/arm-stub.c
> > @@ -133,17 +133,20 @@ efi_status_t handle_kernel_image(unsigned long
> > *image_addr,
> >                                unsigned long *reserve_size,
> >                                unsigned long dram_base,
> >                                efi_loaded_image_t *image);
> > +
> > +void __noreturn efi_enter_kernel(unsigned long entrypoint, unsigned
> > long fdt);
> > +
> >  /*
> >   * EFI entry point for the arm/arm64 EFI stubs.  This is the
> > entrypoint
> >   * that is described in the PE/COFF header.  Most of the code is the
> > same
> >   * for both archictectures, with the arch-specific code provided in
> > the
> >   * handle_kernel_image() function.
> >   */
> > -unsigned long efi_entry(void *handle, efi_system_table_t
> > *sys_table_arg,
> > -                            unsigned long *image_addr)
> > +efi_status_t efi_entry(efi_handle_t handle, efi_system_table_t
> > *sys_table_arg)
> >  {
> >       efi_loaded_image_t *image;
> >       efi_status_t status;
> > +     unsigned long image_addr;
> >       unsigned long image_size = 0;
> >       unsigned long dram_base;
> >       /* addr/point and size pairs for memory management*/
> > @@ -153,7 +156,6 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >       unsigned long fdt_size = 0;
> >       char *cmdline_ptr = NULL;
> >       int cmdline_size = 0;
> > -     unsigned long new_fdt_addr;
> >       efi_guid_t loaded_image_proto = LOADED_IMAGE_PROTOCOL_GUID;
> >       unsigned long reserve_addr = 0;
> >       unsigned long reserve_size = 0;
> > @@ -165,8 +167,10 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >       sys_table = sys_table_arg;
> >
> >       /* Check if we were booted by the EFI firmware */
> > -     if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE)
> > +     if (sys_table->hdr.signature != EFI_SYSTEM_TABLE_SIGNATURE) {
> > +             status = EFI_INVALID_PARAMETER;
> >               goto fail;
> > +     }
> >
> >       status = check_platform_features();
> >       if (status != EFI_SUCCESS)
> > @@ -187,6 +191,7 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >       dram_base = get_dram_base();
> >       if (dram_base == EFI_ERROR) {
> >               pr_efi_err("Failed to find DRAM base\n");
> > +             status = EFI_LOAD_ERROR;
> >               goto fail;
> >       }
> >
> > @@ -198,6 +203,7 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >       cmdline_ptr = efi_convert_cmdline(image, &cmdline_size,
> > ULONG_MAX);
> >       if (!cmdline_ptr) {
> >               pr_efi_err("getting command line via
> > LOADED_IMAGE_PROTOCOL\n");
> > +             status = EFI_OUT_OF_RESOURCES;
> >               goto fail;
> >       }
> >
> > @@ -213,7 +219,7 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >
> >       si = setup_graphics();
> >
> > -     status = handle_kernel_image(image_addr, &image_size,
> > +     status = handle_kernel_image(&image_addr, &image_size,
> >                                    &reserve_addr,
> >                                    &reserve_size,
> >                                    dram_base, image);
> > @@ -260,7 +266,7 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >               pr_efi("Generating empty DTB\n");
> >
> >       if (!noinitrd()) {
> > -             max_addr = efi_get_max_initrd_addr(dram_base,
> > *image_addr);
> > +             max_addr = efi_get_max_initrd_addr(dram_base,
> > image_addr);
> >               status = efi_load_initrd_dev_path(&initrd_addr,
> > &initrd_size,
> >                                                 max_addr);
> >               if (status == EFI_SUCCESS) {
> > @@ -311,33 +317,30 @@ unsigned long efi_entry(void *handle,
> > efi_system_table_t *sys_table_arg,
> >
> >       install_memreserve_table();
> >
> > -     new_fdt_addr = fdt_addr;
> >       status = allocate_new_fdt_and_exit_boot(handle,
> > -                             &new_fdt_addr,
> > efi_get_max_fdt_addr(dram_base),
> > +                             &fdt_addr,
> > efi_get_max_fdt_addr(dram_base),
> >                               initrd_addr, initrd_size, cmdline_ptr,
> >                               fdt_addr, fdt_size);
> > +     if (status != EFI_SUCCESS)
> > +             goto fail_free_initrd;
> >
> > -     /*
> > -      * If all went well, we need to return the FDT address to the
> > -      * calling function so it can be passed to kernel as part of
> > -      * the kernel boot protocol.
> > -      */
> > -     if (status == EFI_SUCCESS)
> > -             return new_fdt_addr;
> > +     efi_enter_kernel(image_addr, fdt_addr);
> > +     /* not reached */
> >
> > +fail_free_initrd:
> >       pr_efi_err("Failed to update FDT and exit boot services\n");
> >
> >       efi_free(initrd_size, initrd_addr);
> >       efi_free(fdt_size, fdt_addr);
> >
> >  fail_free_image:
> > -     efi_free(image_size, *image_addr);
> > +     efi_free(image_size, image_addr);
> >       efi_free(reserve_size, reserve_addr);
> >  fail_free_cmdline:
> >       free_screen_info(si);
> >       efi_free(cmdline_size, (unsigned long)cmdline_ptr);
> >  fail:
> > -     return EFI_ERROR;
> > +     return status;
> >  }
> >
> >  /*
> > diff --git a/drivers/firmware/efi/libstub/arm32-stub.c
> > b/drivers/firmware/efi/libstub/arm32-stub.c
> > index 7b2a6382b647..113298b8ea65 100644
> > --- a/drivers/firmware/efi/libstub/arm32-stub.c
> > +++ b/drivers/firmware/efi/libstub/arm32-stub.c
> > @@ -227,6 +227,7 @@ efi_status_t handle_kernel_image(unsigned long
> > *image_addr,
> >        * Relocate the zImage, so that it appears in the lowest 128 MB
> >        * memory window.
> >        */
> > +     *image_addr = image->image_base;
> >       *image_size = image->image_size;
> >       status = efi_relocate_kernel(image_addr, *image_size,
> > *image_size,
> >                                    kernel_base +
> > MAX_UNCOMP_KERNEL_SIZE, 0, 0);
> > diff --git a/drivers/firmware/efi/libstub/arm64-stub.c
> > b/drivers/firmware/efi/libstub/arm64-stub.c
> > index 719d03a64329..9254cd8ab2d3 100644
> > --- a/drivers/firmware/efi/libstub/arm64-stub.c
> > +++ b/drivers/firmware/efi/libstub/arm64-stub.c
> > @@ -43,7 +43,6 @@ efi_status_t handle_kernel_image(unsigned long
> > *image_addr,
> >  {
> >       efi_status_t status;
> >       unsigned long kernel_size, kernel_memsize = 0;
> > -     void *old_image_addr = (void *)*image_addr;
> >       unsigned long preferred_offset;
> >       u64 phys_seed = 0;
> >
> > @@ -141,7 +140,7 @@ efi_status_t handle_kernel_image(unsigned long
> > *image_addr,
> >               }
> >               *image_addr = *reserve_addr + TEXT_OFFSET;
> >       }
> > -     memcpy((void *)*image_addr, old_image_addr, kernel_size);
> > +     memcpy((void *)*image_addr, image->image_base, kernel_size);
> >
> >       return EFI_SUCCESS;
> >  }
>
> --
> Regards,
> Atish

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
