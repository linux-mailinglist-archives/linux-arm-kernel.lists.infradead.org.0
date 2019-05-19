Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5322822971
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 01:58:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RHth4zcA6Mop8O9yAwKF05FHYtw8pbpQi9XC+Vcmupk=; b=DHEHmihqpk38qy
	fjEGrCovvShyFVShlBuE2y+tB/adol7jDxi3FIqM5smIi5PVZ7BNeY1sVG9TegDDjcNnDHG1/QESv
	PW4cVFc9dkUCzgIKIezJaNnOFaojmJlzUVt/8iOmMhmdr361VOFdnc5OZom9BbRi8eZBTxLVs5CRI
	/yFKQ30f0SqDlZ71yp3PdKXhsSPWEJRExt1XZ6idbHPGiD0vlc4Vkv5FKwrEo0eBE71BmiE2/p+Uz
	w5tfxMUKnErSAUdaBeV2Z8o9PXnnmUaGEyDcAY5Q7mSHBEqYqSFtgTplRjV3Cw1YKUiaUi7J+7ViX
	GHyp1kNdjfTLDIYfmhCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSVgu-0008Ju-7L; Sun, 19 May 2019 23:58:08 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSVgm-0008JT-Qz
 for linux-arm-kernel@lists.infradead.org; Sun, 19 May 2019 23:58:02 +0000
Received: by mail-qk1-x741.google.com with SMTP id a132so7738614qkb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 19 May 2019 16:58:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=doV3v4rh7HRUjJmLbCEHgl+MmgHA5lzEGEyVEOx1UDY=;
 b=HLIYYQBC1OSzB/VEFY3lneCtGDjIBYUYBOWMow+F6FQWpZbr05UH83MoQlJX3cvlF4
 LN1OOVQ7Cfe43RWifImVn1akors29h1C1fVZWa+Iw+C5UgIAItQgUVmgrc9nJDv+4hHq
 HCx2sicJNasbOPfqz1nAvp4HxTIwyNoTIGzcM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=doV3v4rh7HRUjJmLbCEHgl+MmgHA5lzEGEyVEOx1UDY=;
 b=E1VMzdKplN80FWF/QO4NiXZi4DcP5oFnKxTO9sgRHvkp8ZcTjvIlXwKR/PnS9rO/n3
 UV2rTGu3ALKc+Wxy+ooFhN4DTbdOLocizMlgU9obFWnjXdLNXEylA/GpPu4wH7bfGcil
 LC2hQq0jMzutsnxaT3gfowZ6Q7cp6DygQ99VtLfPO+JtSwSAEOeIk3++ryWDGv5ciLEf
 xn8qyfnLE8ZtM4v72vpcp1I1ihf/f6V6cyj6kYXoQW3MIsaK9n2VHcGa2EWiJQlXKIh4
 S/tvxBA6pbr/5WTJy9zH8aVQ3+yVjoKJaunfwk+z3ZxASDZvtImokvGzTlGH0geJqilK
 QbAg==
X-Gm-Message-State: APjAAAVs5rwSc0i1vu8RnYuTiA0H5tIb1Sya8nfrti/oMM6JW8t5x9A+
 G6NkgGCzRYN9hrcYJGVwUM1y8+ipyqkGwxRAcZjr3A==
X-Google-Smtp-Source: APXvYqz+TXeYWMr7RQzoFtrV4mkErBeVaXoHL1oYIIA6PtSpcn5DA5jnt/IgKPeQCwUwN8PmuOmcCFULHhoCEqyY5NM=
X-Received: by 2002:a37:952:: with SMTP id 79mr52690407qkj.201.1558310279581; 
 Sun, 19 May 2019 16:57:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190519160446.320-1-hsinyi@chromium.org>
In-Reply-To: <20190519160446.320-1-hsinyi@chromium.org>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Mon, 20 May 2019 07:57:48 +0800
Message-ID: <CANMq1KC74peKmwdHzb83n2kyXgqarAiu1PGnPCNLYtrdYJF77A@mail.gmail.com>
Subject: Re: [PATCH v4 1/3] amr64: map FDT as RW for early_init_dt_scan()
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_165800_877326_8CA3BF9D 
X-CRM114-Status: GOOD (  19.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yu Zhao <yuzhao@google.com>, Kees Cook <keescook@chromium.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Stephen Boyd <swboyd@chromium.org>,
 Will Deacon <will.deacon@arm.com>, lkml <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Jun Yao <yaojun8558363@gmail.com>,
 Miles Chen <miles.chen@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 James Morse <james.morse@arm.com>, Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Laura Abbott <labbott@redhat.com>,
 Frank Rowand <frowand.list@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

s/amr64/arm64/ in the commit title.

On Mon, May 20, 2019 at 1:09 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Currently in arm64, FDT is mapped to RO before it's passed to
> early_init_dt_scan(). However, there might be some code that needs
> to modify FDT during init.

I'd give a specific example (i.e. mention the next commit that
introduces rng-seed).

> Map FDT to RW until unflatten DT.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> change log v2->v4:
> * v3 abandoned
> * add an arg pgprot_t to fixmap_remap_fdt()
> ---
>  arch/arm64/include/asm/mmu.h | 2 +-
>  arch/arm64/kernel/setup.c    | 5 ++++-
>  arch/arm64/mm/mmu.c          | 4 ++--
>  3 files changed, 7 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/include/asm/mmu.h b/arch/arm64/include/asm/mmu.h
> index 67ef25d037ea..4499cb00ece7 100644
> --- a/arch/arm64/include/asm/mmu.h
> +++ b/arch/arm64/include/asm/mmu.h
> @@ -137,7 +137,7 @@ extern void init_mem_pgprot(void);
>  extern void create_pgd_mapping(struct mm_struct *mm, phys_addr_t phys,
>                                unsigned long virt, phys_addr_t size,
>                                pgprot_t prot, bool page_mappings_only);
> -extern void *fixmap_remap_fdt(phys_addr_t dt_phys);
> +extern void *fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot);
>  extern void mark_linear_text_alias_ro(void);
>
>  #define INIT_MM_CONTEXT(name)  \
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 413d566405d1..064df3de1d14 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -181,7 +181,7 @@ static void __init smp_build_mpidr_hash(void)
>
>  static void __init setup_machine_fdt(phys_addr_t dt_phys)
>  {
> -       void *dt_virt = fixmap_remap_fdt(dt_phys);
> +       void *dt_virt = fixmap_remap_fdt(dt_phys, PAGE_KERNEL);
>         const char *name;
>
>         if (!dt_virt || !early_init_dt_scan(dt_virt)) {
> @@ -320,6 +320,9 @@ void __init setup_arch(char **cmdline_p)
>         /* Parse the ACPI tables for possible boot-time configuration */
>         acpi_boot_table_init();
>
> +       /* remap fdt to RO */
> +       fixmap_remap_fdt(__fdt_pointer, PAGE_KERNEL_RO);
> +
>         if (acpi_disabled)
>                 unflatten_device_tree();
>
> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> index a170c6369a68..29648e86f7e5 100644
> --- a/arch/arm64/mm/mmu.c
> +++ b/arch/arm64/mm/mmu.c
> @@ -940,12 +940,12 @@ void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size, pgprot_t prot)
>         return dt_virt;
>  }
>
> -void *__init fixmap_remap_fdt(phys_addr_t dt_phys)
> +void *__init fixmap_remap_fdt(phys_addr_t dt_phys, pgprot_t prot)
>  {
>         void *dt_virt;
>         int size;
>
> -       dt_virt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO);
> +       dt_virt = __fixmap_remap_fdt(dt_phys, &size, prot);
>         if (!dt_virt)
>                 return NULL;
>
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
