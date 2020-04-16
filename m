Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 706A31ABA4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 09:52:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P69cVDOSLNZk9IQY59rvtTev5J11fryJfJ+OPDvPEIQ=; b=l1vSKTfjX6x0Tn
	oRiz0EvFRie2LCdYaCqsuFOkOxBsPSHgqvE/JAsd+VqqPzMn7spB2sfiRzK2bAJGZbM1bGL65qiKB
	kUFwjBY8LyYzG8Zt5xOLu01UC1Ko/p8KIVnrYk5aw0xfB9ruen1Hs4WZSeXXyUnTCHde/ZSxW6eKp
	s9nVfnI/GqhnR6qAvxS16yEuchdG+DSppDLjtMdw12G3tsUDJ4EMR9hw1Yqe2AV2WYfjv09ABjZT7
	OLKyst8VeghbggQhc+UET2/JWRTZLV0fRmolTMkKiEnT9leeij538cIBokWejFwAyUV556IrVKWoh
	UJTINNOGERvJXexQJYgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzJv-0006Jm-6G; Thu, 16 Apr 2020 07:52:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzJZ-0006Cv-PP
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 07:52:03 +0000
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com
 [209.85.166.174])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0F74C215A4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 07:52:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587023521;
 bh=NzufprrHci2GBeQE1qpA00pu7UAi24+J7DgAw5oPGZ0=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=oRSdIqNWm9ATCg8yqzgmrw8l8CYbf65jBu9uZKgq+iwZxJIcwTSulmjsHzpf8OUHL
 nyhyNAGv/MNGwIn5osMdBAXk5EkSuESUkiCS0DihTRypaMsvMSEBXbMB5q6R0voiaT
 jbRchVAXmycHMWvCrDmXbbZhmfXFzORo9QrvaRis=
Received: by mail-il1-f174.google.com with SMTP id z13so5984828ilp.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Apr 2020 00:52:01 -0700 (PDT)
X-Gm-Message-State: AGi0PuYWRM9jNnxt01MyGeC5kKb2YdydeBpefaMxoEF7j9htBg8mOAbx
 E7vQebXVFqVr2Mt46HWvT00moVDUu5sC+53Wn1g=
X-Google-Smtp-Source: APiQypL8wZ1+/gPrARSHoOw22uYvZMX8vTjJfW+r7Ld7iynuANQPH2+X6T4B9lPgKHbp8eTj+URL23FOS6APKKT7dXY=
X-Received: by 2002:a92:991c:: with SMTP id p28mr4998325ili.258.1587023520423; 
 Thu, 16 Apr 2020 00:52:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200415221520.2692512-1-nivedita@alum.mit.edu>
 <20200415221520.2692512-5-nivedita@alum.mit.edu>
In-Reply-To: <20200415221520.2692512-5-nivedita@alum.mit.edu>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 16 Apr 2020 09:51:49 +0200
X-Gmail-Original-Message-ID: <CAMj1kXERKP2x6=wgdgyRtr5Rh-116bwwvVy4zgHAH=Hy9QsOew@mail.gmail.com>
Message-ID: <CAMj1kXERKP2x6=wgdgyRtr5Rh-116bwwvVy4zgHAH=Hy9QsOew@mail.gmail.com>
Subject: Re: [PATCH 4/5] efi: Kill __efistub_global
To: Arvind Sankar <nivedita@alum.mit.edu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_005201_950570_4895C36C 
X-CRM114-Status: GOOD (  15.77  )
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
> Now that both arm and x86 are using the linker script to place the EFI
> stub's global variables in the correct section, remove __efistub_global.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>

Reviewed-by: Ard Biesheuvel <ardb@kernel.org>

> ---
>  drivers/firmware/efi/libstub/arm-stub.c        |  4 ++--
>  drivers/firmware/efi/libstub/efi-stub-helper.c | 15 +++++++--------
>  drivers/firmware/efi/libstub/efistub.h         |  2 --
>  drivers/firmware/efi/libstub/gop.c             |  2 +-
>  drivers/firmware/efi/libstub/x86-stub.c        |  2 +-
>  5 files changed, 11 insertions(+), 14 deletions(-)
>
> diff --git a/drivers/firmware/efi/libstub/arm-stub.c b/drivers/firmware/efi/libstub/arm-stub.c
> index 99a5cde7c2d8..bf42d6c742a8 100644
> --- a/drivers/firmware/efi/libstub/arm-stub.c
> +++ b/drivers/firmware/efi/libstub/arm-stub.c
> @@ -36,9 +36,9 @@
>  #endif
>
>  static u64 virtmap_base = EFI_RT_VIRTUAL_BASE;
> -static bool __efistub_global flat_va_mapping;
> +static bool flat_va_mapping;
>
> -static efi_system_table_t *__efistub_global sys_table;
> +static efi_system_table_t *sys_table;
>
>  __pure efi_system_table_t *efi_system_table(void)
>  {
> diff --git a/drivers/firmware/efi/libstub/efi-stub-helper.c b/drivers/firmware/efi/libstub/efi-stub-helper.c
> index c6092b6038cf..14e56a64f208 100644
> --- a/drivers/firmware/efi/libstub/efi-stub-helper.c
> +++ b/drivers/firmware/efi/libstub/efi-stub-helper.c
> @@ -12,14 +12,13 @@
>
>  #include "efistub.h"
>
> -static bool __efistub_global efi_nochunk;
> -static bool __efistub_global efi_nokaslr;
> -static bool __efistub_global efi_noinitrd;
> -static bool __efistub_global efi_quiet;
> -static bool __efistub_global efi_novamap;
> -static bool __efistub_global efi_nosoftreserve;
> -static bool __efistub_global efi_disable_pci_dma =
> -                                       IS_ENABLED(CONFIG_EFI_DISABLE_PCI_DMA);
> +static bool efi_nochunk;
> +static bool efi_nokaslr;
> +static bool efi_noinitrd;
> +static bool efi_quiet;
> +static bool efi_novamap;
> +static bool efi_nosoftreserve;
> +static bool efi_disable_pci_dma = IS_ENABLED(CONFIG_EFI_DISABLE_PCI_DMA);
>
>  bool __pure nochunk(void)
>  {
> diff --git a/drivers/firmware/efi/libstub/efistub.h b/drivers/firmware/efi/libstub/efistub.h
> index 49651e20bb9f..f96c56596034 100644
> --- a/drivers/firmware/efi/libstub/efistub.h
> +++ b/drivers/firmware/efi/libstub/efistub.h
> @@ -25,8 +25,6 @@
>  #define EFI_ALLOC_ALIGN                EFI_PAGE_SIZE
>  #endif
>
> -#define __efistub_global
> -
>  extern bool __pure nochunk(void);
>  extern bool __pure nokaslr(void);
>  extern bool __pure noinitrd(void);
> diff --git a/drivers/firmware/efi/libstub/gop.c b/drivers/firmware/efi/libstub/gop.c
> index fa05a0b0adfd..216327d0b034 100644
> --- a/drivers/firmware/efi/libstub/gop.c
> +++ b/drivers/firmware/efi/libstub/gop.c
> @@ -32,7 +32,7 @@ static struct {
>                         u8 depth;
>                 } res;
>         };
> -} cmdline __efistub_global = { .option = EFI_CMDLINE_NONE };
> +} cmdline = { .option = EFI_CMDLINE_NONE };
>
>  static bool parse_modenum(char *option, char **next)
>  {
> diff --git a/drivers/firmware/efi/libstub/x86-stub.c b/drivers/firmware/efi/libstub/x86-stub.c
> index 7583e908852f..aedac3af4b5c 100644
> --- a/drivers/firmware/efi/libstub/x86-stub.c
> +++ b/drivers/firmware/efi/libstub/x86-stub.c
> @@ -20,7 +20,7 @@
>  /* Maximum physical address for 64-bit kernel with 4-level paging */
>  #define MAXMEM_X86_64_4LEVEL (1ull << 46)
>
> -static efi_system_table_t *sys_table __efistub_global;
> +static efi_system_table_t *sys_table;
>  extern const bool efi_is64;
>  extern u32 image_offset;
>
> --
> 2.24.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
