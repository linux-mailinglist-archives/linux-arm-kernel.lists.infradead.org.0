Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01ADC1ABA18
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:39:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HVEcLRWW+6h7bAsEUoWA1LQwcVhXRdxmGiCXSa1gcnU=; b=OpPalbRwvQ73XY
	lxkTVpQ0UQd3zc7+6UZZiun4YefztR3BBBUAP0RPtd45OifCyDhyx38RspVm3qUejE7sEYiiUOSU5
	yG+OlNeyNPymOqxz3drKinp7cvt1dPMc+F+XmrCVUKSjlYSkGjVtAt5KWmhoWBwT0HKxRX0XzBgyD
	s1+ivr9GMnePg/zN8ArUCHZ7ZVB61KwI/of/BDGy5Dpr3OGd7Fp0xz0WSMy2eeFMtBLSMVtVDrHNH
	94PBpYIqITAglygsMENl/isdV8TumzWxHxhTnjXEGRbZsuIkxt5tZNsmZnQOigYZFQEstTRFTueCa
	TGqPrtDDsobYAODlXdgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOz6w-0003do-FM; Thu, 16 Apr 2020 07:38:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOz6p-0003dL-Ej
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:38:52 +0000
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com
 [209.85.166.173])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AEED420784
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 07:38:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587022728;
 bh=VV/3DC9vERvU4YrbpBLum76SN/pkTOMrb0l8+7m+IYc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=THez1ktQblEbH8mIOjliZ9nHegmEdCiCQOVY75ZyKMIONgngNQ3kLhYCOF/0qE3nL
 Kr2pWUkvMGr//TIo7flY+1AJ0u6LfKGLOKzRyVczRntnBOzY5OrMCZe7F8rY9K+xSz
 weDjNA049UXEK24cRxf1QWjTYH+GKtkLwk6TtoBA=
Received: by mail-il1-f173.google.com with SMTP id c17so5982596ilk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:38:48 -0700 (PDT)
X-Gm-Message-State: AGi0PuZZpucmlW+6LhufMYpTEAyN02Hpc0V2LnQd1vZbv0VGdNYvrBIY
 oBlZt0E+VHTk/rWw6KLKYBtt1itGLRaNPsOw/po=
X-Google-Smtp-Source: APiQypKwS2h8U391uzNKCmOqjuNNrE1w7gTx5KL56FsELQfE8h+3cnsyXXe3rqGBVOXTBgNa0YzocF8xftIYsai20hQ=
X-Received: by 2002:a92:c788:: with SMTP id c8mr9210476ilk.279.1587022728075; 
 Thu, 16 Apr 2020 00:38:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
 <20200415221520.2692512-6-nivedita@alum.mit.edu>
In-Reply-To: <20200415221520.2692512-6-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Apr 2020 09:38:36 +0200
X-Gmail-Original-Message-ID: <CAMj1kXFMMeYUPirY10JJfs31Z5GnHvUe=gLgG6SUJY9uWj588g@mail.gmail.com>
Message-ID: <CAMj1kXFMMeYUPirY10JJfs31Z5GnHvUe=gLgG6SUJY9uWj588g@mail.gmail.com>
Subject: Re: [PATCH 5/5] efi/x86: Check for bad relocations
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_003851_532875_50B06016 
X-CRM114-Status: GOOD (  18.65  )
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
> Add relocation checking for x86 as well to catch non-PC-relative
> relocations that require runtime processing, since the EFI stub does not
> do any runtime relocation processing.
>
> This will catch, for example, data relocations created by static
> initializers of pointers.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> ---
>  drivers/firmware/efi/libstub/Makefile | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> index 0bb2916eb12b..2aff59812a54 100644
> --- a/drivers/firmware/efi/libstub/Makefile
> +++ b/drivers/firmware/efi/libstub/Makefile
> @@ -96,6 +96,8 @@ STUBCOPY_RELOC-$(CONFIG_ARM)  := R_ARM_ABS
>  # .bss section here so it's easy to pick out in the linker script.
>  #
>  STUBCOPY_FLAGS-$(CONFIG_X86)   += --rename-section .bss=.bss.efistub,load,alloc
> +STUBCOPY_RELOC-$(CONFIG_X86_32) := 'R_X86_32_(8|16|32)'

This should be R_386_xxx

> +STUBCOPY_RELOC-$(CONFIG_X86_64) := 'R_X86_64_(8|16|32|32S|64)'
>

... and in general, I think we only need the native pointer sized ones, so

R_386_32
R_X86_64_64

>  $(obj)/%.stub.o: $(obj)/%.o FORCE
>         $(call if_changed,stubcopy)
> @@ -107,16 +109,14 @@ $(obj)/%.stub.o: $(obj)/%.o FORCE
>  # this time, use objcopy and leave all sections in place.
>  #
>
> -cmd_stubrelocs_check-y = /bin/true
> -
> -cmd_stubrelocs_check-$(CONFIG_EFI_ARMSTUB) =                           \
> +cmd_stubrelocs_check =                                                 \
>         $(STRIP) --strip-debug -o $@ $<;                                \
> -       if $(OBJDUMP) -r $@ | grep $(STUBCOPY_RELOC-y); then            \
> +       if $(OBJDUMP) -r $@ | grep -E $(STUBCOPY_RELOC-y); then         \

... which means we don't need to -E either

>                 echo "$@: absolute symbol references not allowed in the EFI stub" >&2; \
>                 /bin/false;                                             \
>         fi
>
>  quiet_cmd_stubcopy = STUBCPY $@
>        cmd_stubcopy =                                                   \
> -       $(cmd_stubrelocs_check-y);                                      \
> +       $(cmd_stubrelocs_check);                                        \
>         $(OBJCOPY) $(STUBCOPY_FLAGS-y) $< $@
> --
> 2.24.1
>

Could we fold this into the previous x86 patch, and drop the one that
splits off the relocation check from stubcpy?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
