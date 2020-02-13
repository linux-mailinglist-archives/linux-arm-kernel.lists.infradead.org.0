Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0772915C9A7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:42:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyGscoIhDsMwMWEPBUpjteUbwGnpjN6o2zEaTPfeu0k=; b=f96CYsaeY+HRtj
	x8IhRqqNdt6/0wHOkoBtAYi0dn6KN1wW1TJ16TK6jFINmUNI4I9ecsVCMjeBcVs1265fmcnJak/k/
	mPAZINqDB2Hhu8ekqXli8RNd8RC7dx9OGZmZirF8am13+QfUiTP8572o96tZtb6mO4pdCPIiEXXZV
	2+k3Io5Bgt/XY4CNnLy8NeerREPICUd++rKsidYChMUWsJo68Ho5v76iVvllHvs5ui0K4WF0nqWTk
	WgNdCsnCet26xaoCejHnkKiH5DYfL8simSf6ZcnP4+4fZRpgO+Z5LJ6uoKnQa+g877ZoP6xVrMTR6
	AGRekCPE2ffOYNZvtAzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2IVf-0002N0-Ii; Thu, 13 Feb 2020 17:42:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2IVY-0002Mh-Us
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:42:38 +0000
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
 [209.85.128.53])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 313B92467B
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 17:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581615756;
 bh=YSmm2lBIWm3LKzikDi+llW6Wjihqs5oqOidqcHjtSZ8=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VWRk0LRkeLvDYBLCSuyYSkznOsqbOCQrKoK/s+FkktPR7u3JH46Z2JfqmhynsM4DN
 mgW6jf/Apu8+TJPeC57HQvkj5W1Pk9UuKex/i9GUwGyG5g6mSl2pNLgzzrc9/YoaI4
 NgnTbjjAJ2yVCTslqBGtqxqFJ5tPxqFcbwWHTD2U=
Received: by mail-wm1-f53.google.com with SMTP id q9so7203424wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:42:36 -0800 (PST)
X-Gm-Message-State: APjAAAWOzblmk/Ism1TbE9rq8KqyMCL3atVnclZE8snfsWVOm/pMwyrv
 tk1LYBQN+paeayyG8Eii/O6Y7KGyrbwGfSEMXomt+g==
X-Google-Smtp-Source: APXvYqxQhCmi4+iFWEDzfwOIQLMxCFEger8UR4/bRmdvMQJaLx8xoTGcC6WK8LU9jb/m+uTd/Z7pZ/k+vdI+T5IXK1A=
X-Received: by 2002:a1c:bc46:: with SMTP id m67mr6747975wmf.40.1581615754493; 
 Thu, 13 Feb 2020 09:42:34 -0800 (PST)
MIME-Version: 1.0
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213145928.7047-4-ardb@kernel.org>
 <20200213172355.GB1400002@rani.riverdale.lan>
In-Reply-To: <20200213172355.GB1400002@rani.riverdale.lan>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 13 Feb 2020 17:42:22 +0000
X-Gmail-Original-Message-ID: <CAKv+Gu8KX4wFOx-GObTt2Z7k5v+BG=s35S-sqfrXg93xJ6mFjw@mail.gmail.com>
Message-ID: <CAKv+Gu8KX4wFOx-GObTt2Z7k5v+BG=s35S-sqfrXg93xJ6mFjw@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] efi/x86: implement mixed mode boot without the
 handover protocol
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_094237_036704_17FE3822 
X-CRM114-Status: GOOD (  27.16  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, Alexander Graf <agraf@csgraf.de>,
 Daniel Kiper <daniel.kiper@oracle.com>, Matthew Garrett <mjg59@google.com>,
 Michael Brown <mbrown@fensystems.co.uk>, Hans de Goede <hdegoede@redhat.com>,
 Peter Jones <pjones@redhat.com>, Leif Lindholm <leif@nuviainc.com>,
 Laszlo Ersek <lersek@redhat.com>, Ingo Molnar <mingo@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 13 Feb 2020 at 18:23, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> On Thu, Feb 13, 2020 at 03:59:28PM +0100, Ard Biesheuvel wrote:
> > Add support for booting 64-bit x86 kernels from 32-bit firmware running
> > on 64-bit capable CPUs without requiring the bootloader to implement
> > the EFI handover protocol, allocate the setup block etc etc, all of
> > which can be done by the stub using code we have already implemented.
> >
> > Instead, create an ordinary EFI application entrypoint but implemented
> > in 32-bit code, so that it can be invoked by 32-bit firmware, and stash
> > the address of this 32-bit entrypoint in the .compat section where the
> > bootloader can find it.
> >
> > Note that we use the setup block embedded in the binary to go through
> > startup_32(), but it gets reallocated and copied in efi_pe_entry(),
> > using the same code that runs when the x86 kernel is booted in EFI
> > mode from native firmware. This requires the loaded image protocol to
> > be installed on the kernel image's EFI handle, and point to the kernel
> > image itself and not to its loader. This, in turn, requires the
> > bootloader to use the LoadImage() boot services to load the 64-bit
> > image from 32-bit firmware, which is in fact supported by firmware
> > based on EDK2. (Only StartImage() will fail, and instead, the newly
> > added entrypoint needs to be invoked)
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  arch/x86/boot/compressed/head_64.S | 61 +++++++++++++++++++-
> >  1 file changed, 59 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> > index a4f5561c1c0e..7baaf9c97f5a 100644
> > --- a/arch/x86/boot/compressed/head_64.S
> > +++ b/arch/x86/boot/compressed/head_64.S
> > @@ -207,8 +207,8 @@ SYM_FUNC_START(startup_32)
> >       cmp     $0, %edi
> >       jz      1f
> >       leal    efi64_stub_entry(%ebp), %eax
> > -     movl    %esi, %edx
> >       movl    efi32_boot_args+4(%ebp), %esi
> > +     movl    efi32_boot_args+8(%ebp), %edx   // saved bootparams pointer
> >  1:
> >  #endif
> >       pushl   %eax
> > @@ -233,6 +233,8 @@ SYM_FUNC_START(efi32_stub_entry)
> >  1:   pop     %ebp
> >       subl    $1b, %ebp
> >
> > +     movl    %esi, efi32_boot_args+8(%ebp)
> > +2:
>
> I think it would be easier to read if this were turned into a proper
> SYM_INNER_LABEL. You could then also just put efi32_pe_entry into the
> .text section instead of moving it to the end of .head.text with
> .subsection. Another option is to use a separate flag in .data to
> indicate that we entered via efi32_pe_entry, then you could just jump
> to efi32_stub_entry.
>

Indeed.

> >       movl    %ecx, efi32_boot_args(%ebp)
> >       movl    %edx, efi32_boot_args+4(%ebp)
> >       movb    $0, efi_is64(%ebp)
> > @@ -249,6 +251,49 @@ SYM_FUNC_START(efi32_stub_entry)
> >
> >       jmp     startup_32
> >  SYM_FUNC_END(efi32_stub_entry)
> > +
> > +#define ST32_boottime                60 // offsetof(efi_system_table_32_t, boottime)
> > +#define BS32_handle_protocol 88 // offsetof(efi_boot_services_32_t, handle_protocol)
> > +#define LI32_image_base              32 // offsetof(efi_loaded_image_32_t, image_base)
> > +
> > +     .subsection 1
> > +     .code32
> > +SYM_FUNC_START(efi32_pe_entry)
> > +     pushl   %ebp
> > +
> > +     call    3f
> > +3:   pop     %ebp
> > +     subl    $3b, %ebp
> > +
> > +     /* Get the loaded image protocol pointer from the image handle */
> > +     subl    $12, %esp                       // space for the loaded image pointer
> > +     pushl   %esp                            // pass its address
> > +     leal    5f(%ebp), %eax
> > +     pushl   %eax                            // pass the GUID address
> > +     pushl   28(%esp)                        // pass the image handle
> > +
> > +     movl    36(%esp), %eax                  // sys_table
> > +     movl    ST32_boottime(%eax), %eax       // sys_table->boottime
> > +     call    *BS32_handle_protocol(%eax)     // sys_table->boottime->handle_protocol
> > +     cmp     $0, %eax
> > +     jnz     4f
> > +
> > +     movl    32(%esp), %ecx                  // image_handle
> > +     movl    36(%esp), %edx                  // sys_table
> > +     movl    12(%esp), %esi                  // loaded_image
> > +     movl    LI32_image_base(%esi), %esi     // loaded_image->image_base
> > +     jmp     2b
> > +
> > +4:   addl    $24, %esp
> > +     popl    %ebp
> > +     ret
> > +SYM_FUNC_END(efi32_pe_entry)
> > +
> > +     /* EFI loaded image protocol GUID */
> > +5:   .long   0x5B1B31A1
> > +     .word   0x9562, 0x11d2
> > +     .byte   0x8E, 0x3F, 0x00, 0xA0, 0xC9, 0x69, 0x72, 0x3B
> > +     .previous
>
> Any reason for this not to live in .data (or .rodata)?

None other than laziness ...



> >  #endif
> >
> >       .code64
> > @@ -465,11 +510,23 @@ SYM_CODE_END(startup_64)
> >  SYM_FUNC_START(efi64_stub_entry)
> >  SYM_FUNC_START_ALIAS(efi_stub_entry)
> >       and     $~0xf, %rsp                     /* realign the stack */
> > +#ifdef CONFIG_EFI_MIXED
> > +     cmpl    $0, %edx
> > +     jz      0f
> > +#endif
> >       call    efi_main
> >       movq    %rax,%rsi
> >       movl    BP_code32_start(%esi), %eax
> >       leaq    startup_64(%rax), %rax
> >       jmp     *%rax
> > +
> > +#ifdef CONFIG_EFI_MIXED
> > +0:   movl    %edi, %ecx              // MS calling convention
> > +     movl    %esi, %edx
> > +     call    efi_pe_entry
> > +1:   hlt
> > +     jmp     1b
> > +#endif
> >  SYM_FUNC_END(efi64_stub_entry)
> >  SYM_FUNC_END_ALIAS(efi_stub_entry)
> >  #endif
> > @@ -641,7 +698,7 @@ SYM_DATA_START_LOCAL(gdt)
> >  SYM_DATA_END_LABEL(gdt, SYM_L_LOCAL, gdt_end)
> >
> >  #ifdef CONFIG_EFI_MIXED
> > -SYM_DATA_LOCAL(efi32_boot_args, .long 0, 0)
> > +SYM_DATA_LOCAL(efi32_boot_args, .long 0, 0, 0)
> >  SYM_DATA(efi_is64, .byte 1)
> >  #endif
> >
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
