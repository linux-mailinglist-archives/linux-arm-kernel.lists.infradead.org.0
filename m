Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F04281ABA48
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:51:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgi2n1yBH7tOZmj1QqhxW04pK5bzyOwSEj1oPv6iDeo=; b=MQnWSNA2KtSSuj
	kD3znyE67peJygiIatuEu1l7cPM6ANZUDL0LyxUAj0ZA2YjkqoaJdkYNXepAJ5c+W2LS8aD8JPaDU
	vQl2boKF0qioO+7phJ7lVmYdYSPPR+Gg513WquENnCOUkzWDHsPMYK1ZY8tLWXJi7aKU9Ziu7F2fu
	wsypUcSQjO44HoWZIRI1DQFqTN3mnCwjENmvH84zr+LKGwIKrrGjaD/fnvgjowTp3Nsz2tY/v89Gd
	MszwK6oEA3C0ueouiUWbswhwNabSm4amkBO1O0oGtCpqjxJrd5OwxFtYzUe47eivFspVMStIfoZsx
	Cimuk/9t/3L1rZ90axSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzIX-0005Yp-7Z; Thu, 16 Apr 2020 07:50:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzIP-0005YJ-J8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:50:50 +0000
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com
 [209.85.166.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 221B021569
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 07:50:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587023449;
 bh=OFHqz9GYYZNwc+I9swBEm5dzUhRk5QACD1V1CxcDFlo=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=KZcD59NIBi3fSTJa9R3dm9SUE41lbsKpYBdDP7DYKp2lCFhz+WVORehUZFIWPY6cj
 0vgcsAVA8xIEXgiwx8uUO3ae0nXXWMHi0nDPOF8S5JPQCg391UW8ZSfOp4iYiysmLv
 Xl/X7Mvexhs6KXq+jLXS8bmun/3zNDOV3gU6qZec=
Received: by mail-il1-f171.google.com with SMTP id u5so6030961ilb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:50:49 -0700 (PDT)
X-Gm-Message-State: AGi0Puacylc/udti2uMp+5h+ItZia/skHfVuwxyJR1JwxwieT4xta6So
 9GBWR4H8RkDmGRCkhypxCpLKPscHdRWrwV28IyU=
X-Google-Smtp-Source: APiQypI5ojUj0Vjwe5ylB1JFpUhtyPIygOqNmKrjZ41jxKYyJbInoum3YZtcRuho0AfeBevcdVTm443eRLyhFE/uFFQ=
X-Received: by 2002:a92:aa0f:: with SMTP id j15mr9438871ili.211.1587023448452; 
 Thu, 16 Apr 2020 00:50:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
 <20200415221520.2692512-2-nivedita@alum.mit.edu>
In-Reply-To: <20200415221520.2692512-2-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Apr 2020 09:50:36 +0200
X-Gmail-Original-Message-ID: <CAMj1kXE7aNm5XWrB2PkEedXA02gGmpcPW7rjziAXeTSPL_786A@mail.gmail.com>
Message-ID: <CAMj1kXE7aNm5XWrB2PkEedXA02gGmpcPW7rjziAXeTSPL_786A@mail.gmail.com>
Subject: Re: [PATCH 1/5] efi/arm: Remove __efistub_global annotation
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_005049_673954_A3089352 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-efi <linux-efi@vger.kernel.org>, X86 ML <x86@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 Apr 2020 at 00:15, Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> Instead of using __efistub_global to force variables into the .data
> section, leave them in the .bss but pull the EFI stub's .bss section
> into .data in the linker script for the compressed kernel.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  arch/arm/boot/compressed/vmlinux.lds.S | 2 +-
>  drivers/firmware/efi/libstub/Makefile  | 7 ++++---
>  drivers/firmware/efi/libstub/efistub.h | 2 +-
>  3 files changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/boot/compressed/vmlinux.lds.S b/arch/arm/boot/compressed/vmlinux.lds.S
> index b247f399de71..b6793c7932a9 100644
> --- a/arch/arm/boot/compressed/vmlinux.lds.S
> +++ b/arch/arm/boot/compressed/vmlinux.lds.S
> @@ -78,7 +78,7 @@ SECTIONS
>       * The EFI stub always executes from RAM, and runs strictly before the
>       * decompressor, so we can make an exception for its r/w data, and keep it
>       */
> -    *(.data.efistub)
> +    *(.data.efistub .bss.efistub)
>      __pecoff_data_end = .;
>
>      /*
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 094eabdecfe6..45ffe0822df1 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -100,8 +100,9 @@ quiet_cmd_stubcopy = STUBCPY $@
>
>  #
>  # ARM discards the .data section because it disallows r/w data in the
> -# decompressor. So move our .data to .data.efistub, which is preserved
> -# explicitly by the decompressor linker script.
> +# decompressor. So move our .data to .data.efistub and .bss to .bss.efistub,
> +# which are preserved explicitly by the decompressor linker script.
>  #
> -STUBCOPY_FLAGS-$(CONFIG_ARM)   += --rename-section .data=.data.efistub
> +STUBCOPY_FLAGS-$(CONFIG_ARM)   += --rename-section .data=.data.efistub \
> +                                  --rename-section .bss=.bss.efistub,load,alloc
>  STUBCOPY_RELOC-$(CONFIG_ARM)   := R_ARM_ABS
> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> index bd0b86b63936..a92d42ffd9f7 100644
> --- a/drivers/firmware/efi/libstub/efistub.h
> +++ b/drivers/firmware/efi/libstub/efistub.h
> @@ -25,7 +25,7 @@
>  #define EFI_ALLOC_ALIGN                EFI_PAGE_SIZE
>  #endif
>
> -#if defined(CONFIG_ARM) || defined(CONFIG_X86)
> +#if defined(CONFIG_X86)
>  #define __efistub_global       __section(.data)
>  #else
>  #define __efistub_global
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
