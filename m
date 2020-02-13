Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E2F15C962
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 18:24:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+89Vr9OWh3ZnhK5bHHnWkielhPPi3aiPe/DYg0QPy8=; b=ojs8UQYOeZFm5K
	hFJ5DuTStHvKh/BXF2viHsisCqWcKzOOinPP6xy0sDYVJDieNXTYP0RYhmN5tdsSpCjvKtQ1s5/Gf
	K4VFsMnwYhkEpc+nVsewDd/HcYWp2+DvpNMydQmVWirxdtxiJCoxYpIzGGXJ6tbAv15xwwjc5TfeQ
	Xehi2DKM67aHq1XZesWjy5iKfg1rKXsWWHmf3xKjEadFFtHGU8YnfNJkIqM/i+8SR44rxZ/ujJHRH
	nv7OzHxgnO6GiiWD7RdPnltyL8KwawQGsFBvKQwqcO6QEdi724hKtIcO3n4UmNbLXdRZeCDC3RuOK
	0o6jFyGfJ6sN3C4GOXHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2IDf-0004Pf-Vk; Thu, 13 Feb 2020 17:24:07 +0000
Received: from mail-qv1-xf44.google.com ([2607:f8b0:4864:20::f44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2IDY-0004Oe-1A
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 17:24:01 +0000
Received: by mail-qv1-xf44.google.com with SMTP id db9so2973780qvb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 13 Feb 2020 09:23:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:date:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Uba02VIX/C0Frj0j7I16HwaI3Hbvy0Vf3JMX/9eIS6A=;
 b=I38bdbKisVG3FTeOz2MJaimQaT1y1HZldtFzksGbOFF+Z5nWMjflZJpZU6wIjIV+Qh
 iwciBOsCOzjPays8f5sRvCoKDXHRIRmrXe8nGvO806i/E6/sNBalLFBNIBB3FUZh7QVc
 C2cVlCoHqqPt372nCaaMAGN0YHoIITtQvG+XDkJwCkGW1mONkUoCVsylB5Aa5hW67R0O
 kyQF9ynpl3RhSaOUSssZz1rtS5vpMsm74wubA5I+/hcZZ9sb1Z2MTBU4IybaSr5Ti1yw
 nq4yhVjGclcVzWibbz0/OehiFusMeQzMMaEtB1TU66+V2tY6xrMu+aEZD02SEXKPTz8R
 1h0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=Uba02VIX/C0Frj0j7I16HwaI3Hbvy0Vf3JMX/9eIS6A=;
 b=E7KKBd1DT/MfA9YWJMel3vOAF7aMxS3JS/4OV/axu4oKYMPpMtFyrodIoYie35UsDT
 IcPeFx1TPFR+I26d8IsBc4Yh7ct+HJO7P4WpZvGdWunm9m8xK2UwSv/r66/f1pUeOuqo
 cJoV0I+iat2ILFHOqjKsbErxB3EZMmlGEGfLmWhYpuvH5ERrcWG+I4mtPYG3+X2+CdDZ
 b8gH5KYzBBAMgZ+C5x5CwRKbSW8qBnKY3WFu/L+OFXpcoGjex425beSdR5KDeqhuhFBy
 ln8cGuyHLhuNkPgbdleWvk8mzxc8ANARml2i6B7W3jiAYix58zw7AqobLBnWnAc698gY
 r0kA==
X-Gm-Message-State: APjAAAWIzlojZU9EqqrPhRLgkphNBT53T3kiixdCdMVwRoYYZ84XqE0T
 RR/tPC83IZEnsnfNr0OZRFmzlijwwrk=
X-Google-Smtp-Source: APXvYqxs2+qCVfaT92TdjwoDMRfjNXou2eOdzsvPwwFJoRT7sTg7X8aHmcGq41uURgIocaLLIuA1Pg==
X-Received: by 2002:a05:6214:1874:: with SMTP id
 eh20mr25207896qvb.122.1581614637515; 
 Thu, 13 Feb 2020 09:23:57 -0800 (PST)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
 by smtp.gmail.com with ESMTPSA id p126sm68170qkd.108.2020.02.13.09.23.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 13 Feb 2020 09:23:57 -0800 (PST)
From: Arvind Sankar <nivedita@alum.mit.edu>
X-Google-Original-From: Arvind Sankar <arvind@rani.riverdale.lan>
Date: Thu, 13 Feb 2020 12:23:55 -0500
To: Ard Biesheuvel <ardb@kernel.org>
Subject: Re: [RFC PATCH 3/3] efi/x86: implement mixed mode boot without the
 handover protocol
Message-ID: <20200213172355.GB1400002@rani.riverdale.lan>
References: <20200213145928.7047-1-ardb@kernel.org>
 <20200213145928.7047-4-ardb@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213145928.7047-4-ardb@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_092400_075631_71C6EFCB 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niveditas98[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [niveditas98[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-efi@vger.kernel.org, agraf@csgraf.de, daniel.kiper@oracle.com,
 mjg59@google.com, mbrown@fensystems.co.uk, hdegoede@redhat.com,
 nivedita@alum.mit.edu, pjones@redhat.com, leif@nuviainc.com, lersek@redhat.com,
 mingo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 03:59:28PM +0100, Ard Biesheuvel wrote:
> Add support for booting 64-bit x86 kernels from 32-bit firmware running
> on 64-bit capable CPUs without requiring the bootloader to implement
> the EFI handover protocol, allocate the setup block etc etc, all of
> which can be done by the stub using code we have already implemented.
> 
> Instead, create an ordinary EFI application entrypoint but implemented
> in 32-bit code, so that it can be invoked by 32-bit firmware, and stash
> the address of this 32-bit entrypoint in the .compat section where the
> bootloader can find it.
> 
> Note that we use the setup block embedded in the binary to go through
> startup_32(), but it gets reallocated and copied in efi_pe_entry(),
> using the same code that runs when the x86 kernel is booted in EFI
> mode from native firmware. This requires the loaded image protocol to
> be installed on the kernel image's EFI handle, and point to the kernel
> image itself and not to its loader. This, in turn, requires the
> bootloader to use the LoadImage() boot services to load the 64-bit
> image from 32-bit firmware, which is in fact supported by firmware
> based on EDK2. (Only StartImage() will fail, and instead, the newly
> added entrypoint needs to be invoked)
> 
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> ---
>  arch/x86/boot/compressed/head_64.S | 61 +++++++++++++++++++-
>  1 file changed, 59 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/x86/boot/compressed/head_64.S b/arch/x86/boot/compressed/head_64.S
> index a4f5561c1c0e..7baaf9c97f5a 100644
> --- a/arch/x86/boot/compressed/head_64.S
> +++ b/arch/x86/boot/compressed/head_64.S
> @@ -207,8 +207,8 @@ SYM_FUNC_START(startup_32)
>  	cmp	$0, %edi
>  	jz	1f
>  	leal	efi64_stub_entry(%ebp), %eax
> -	movl	%esi, %edx
>  	movl	efi32_boot_args+4(%ebp), %esi
> +	movl	efi32_boot_args+8(%ebp), %edx	// saved bootparams pointer
>  1:
>  #endif
>  	pushl	%eax
> @@ -233,6 +233,8 @@ SYM_FUNC_START(efi32_stub_entry)
>  1:	pop	%ebp
>  	subl	$1b, %ebp
>  
> +	movl	%esi, efi32_boot_args+8(%ebp)
> +2:

I think it would be easier to read if this were turned into a proper
SYM_INNER_LABEL. You could then also just put efi32_pe_entry into the
.text section instead of moving it to the end of .head.text with
.subsection. Another option is to use a separate flag in .data to
indicate that we entered via efi32_pe_entry, then you could just jump
to efi32_stub_entry.

>  	movl	%ecx, efi32_boot_args(%ebp)
>  	movl	%edx, efi32_boot_args+4(%ebp)
>  	movb	$0, efi_is64(%ebp)
> @@ -249,6 +251,49 @@ SYM_FUNC_START(efi32_stub_entry)
>  
>  	jmp	startup_32
>  SYM_FUNC_END(efi32_stub_entry)
> +
> +#define ST32_boottime		60 // offsetof(efi_system_table_32_t, boottime)
> +#define BS32_handle_protocol	88 // offsetof(efi_boot_services_32_t, handle_protocol)
> +#define LI32_image_base		32 // offsetof(efi_loaded_image_32_t, image_base)
> +
> +	.subsection 1
> +	.code32
> +SYM_FUNC_START(efi32_pe_entry)
> +	pushl	%ebp
> +
> +	call	3f
> +3:	pop	%ebp
> +	subl	$3b, %ebp
> +
> +	/* Get the loaded image protocol pointer from the image handle */
> +	subl	$12, %esp			// space for the loaded image pointer
> +	pushl	%esp				// pass its address
> +	leal	5f(%ebp), %eax
> +	pushl	%eax				// pass the GUID address
> +	pushl	28(%esp)			// pass the image handle
> +
> +	movl	36(%esp), %eax			// sys_table
> +	movl	ST32_boottime(%eax), %eax	// sys_table->boottime
> +	call	*BS32_handle_protocol(%eax)	// sys_table->boottime->handle_protocol
> +	cmp	$0, %eax
> +	jnz	4f
> +
> +	movl	32(%esp), %ecx			// image_handle
> +	movl	36(%esp), %edx			// sys_table
> +	movl	12(%esp), %esi			// loaded_image
> +	movl	LI32_image_base(%esi), %esi	// loaded_image->image_base
> +	jmp	2b
> +
> +4:	addl	$24, %esp
> +	popl	%ebp
> +	ret
> +SYM_FUNC_END(efi32_pe_entry)
> +
> +	/* EFI loaded image protocol GUID */
> +5:	.long	0x5B1B31A1
> +	.word	0x9562, 0x11d2
> +	.byte	0x8E, 0x3F, 0x00, 0xA0, 0xC9, 0x69, 0x72, 0x3B
> +	.previous

Any reason for this not to live in .data (or .rodata)?
>  #endif
>  
>  	.code64
> @@ -465,11 +510,23 @@ SYM_CODE_END(startup_64)
>  SYM_FUNC_START(efi64_stub_entry)
>  SYM_FUNC_START_ALIAS(efi_stub_entry)
>  	and	$~0xf, %rsp			/* realign the stack */
> +#ifdef CONFIG_EFI_MIXED
> +	cmpl	$0, %edx
> +	jz	0f
> +#endif
>  	call	efi_main
>  	movq	%rax,%rsi
>  	movl	BP_code32_start(%esi), %eax
>  	leaq	startup_64(%rax), %rax
>  	jmp	*%rax
> +
> +#ifdef CONFIG_EFI_MIXED
> +0:	movl	%edi, %ecx		// MS calling convention
> +	movl	%esi, %edx
> +	call	efi_pe_entry
> +1:	hlt
> +	jmp	1b
> +#endif
>  SYM_FUNC_END(efi64_stub_entry)
>  SYM_FUNC_END_ALIAS(efi_stub_entry)
>  #endif
> @@ -641,7 +698,7 @@ SYM_DATA_START_LOCAL(gdt)
>  SYM_DATA_END_LABEL(gdt, SYM_L_LOCAL, gdt_end)
>  
>  #ifdef CONFIG_EFI_MIXED
> -SYM_DATA_LOCAL(efi32_boot_args, .long 0, 0)
> +SYM_DATA_LOCAL(efi32_boot_args, .long 0, 0, 0)
>  SYM_DATA(efi_is64, .byte 1)
>  #endif
>  
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
