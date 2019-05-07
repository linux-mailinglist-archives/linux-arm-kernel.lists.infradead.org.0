Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77FE2158C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 07:08:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0xR93c/CvDFt/eFNXKAGl32zSoEJOwvLaQBOYVT0e6w=; b=ghkj5yo7Tmi6nQ
	Str2vN93xniv6bsLZu4oEc0fy3LxlLJNo3mTBYK6ZYxAaESSjBISN1ntFsBfPkJ9LPKt+tO1+io1u
	sZBFFuMQRnRq4kpjvUToNA2JrWmrpxZ0O/p2gYnz4b0qdoAzLa8/vr5Azu63J9fkba6P8+dEIntvV
	GnUQVYP9oIrN6AS5MFaOKPJuNnwhEqLZegDyyM+/YZQuKSofyoJVFEZQIGIByhKHGzKVxJD4nEQxr
	6JD+puOnJ5AXxzARtAnDqBqvKih8qWXd7+IQUTw2Rxd3iafJV7YuV1S5VxxIrB7HeZb6FbHfsHZIc
	NjWqg46KykTBTtRN57lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNsKm-0007vM-Eh; Tue, 07 May 2019 05:08:08 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNsKf-0007uc-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 05:08:03 +0000
Received: by mail-qt1-x843.google.com with SMTP id t1so605616qtc.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 22:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XFWNJh8Q67igevp3wGeWjad6EnoMTokEua3uDsOHdyc=;
 b=FWU2ckqSzrtkezLe5i9S7DhYYZxFLuwSlgKhkpbkwrD1ArbxVNuvN7yK/FkqAxpraK
 U7g1w6q5r686tRdRVc+zVc4z5gxUl6fK1PTaK/2TP2SEJzwQTP3uog8xJFI1hnjY+W1/
 vFD/gWov2BcerLdSKb9MhJFoUUAaIXsTIREHY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XFWNJh8Q67igevp3wGeWjad6EnoMTokEua3uDsOHdyc=;
 b=fpO5OBiFrvPJ5tW3eB5MSy3glTkMgkiYhImOvyimCH/+ITMwLp32Ok+79Tn+Y97fnZ
 waTryFHDEsgTFLmAYhtBKYL5JlNArBe05NaCtqhOI+GX2lDWK1cYbWjaiAw8YQL2GV6j
 Q4f1CVhxTjelkq8/w59gLuLcvMJt/B36AHkDc4JriSoy0SGsY5wXDPDXKDmaIvfp0YPC
 dan+B+xkRV6QjlAfxfrrXOf8hlWrzuy2kuMeIJ93/aEkOtg0ONKsH0YK3cz6fUV1NZ/2
 9vp6AKI3Og9LtqJW44To6QmsU5aHTdgw1RirWC5PZD7j2CtxBKzb09bW05T3FztCP94q
 GOHA==
X-Gm-Message-State: APjAAAWKskfyWXC3TD8487P9DZ1BVZ5JyfWLi7dFfgrV5Rjtf+4g8G3a
 weaa9XLWRUl3jGpiReL8a9qnAFnhv0fPX7hSgpPR6ajwtFU=
X-Google-Smtp-Source: APXvYqyqgf+inXjhIv4SWh98ejK1sBShVQi8TKhwrV5Ewd9dAEqv+4GfSUwGADj50buZ8JcfocZen86m+oo25/Bd1gU=
X-Received: by 2002:ac8:2963:: with SMTP id z32mr25018141qtz.236.1557205680295; 
 Mon, 06 May 2019 22:08:00 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
In-Reply-To: <20190507045433.542-1-hsinyi@chromium.org>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 7 May 2019 13:07:34 +0800
Message-ID: <CAJMQK-hc8WLmxr0YVCu-czL6pXfhgG83=4gvL4=ozQyLd73Q-A@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_220801_848944_845F80BF 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 Michal Hocko <mhocko@suse.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Mike Rapoport <rppt@linux.ibm.com>,
 Rob Herring <robh+dt@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 7, 2019 at 12:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> that can be passed to kernel called very early to increase device
> randomness. Bootloader should provide this entropy and the value is
> read from /chosen/rng-seed in DT.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>
> ---
>  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
>  arch/arm64/kernel/setup.c                    |  2 ++
>  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
>  include/linux/of_fdt.h                       |  1 +
>  4 files changed, 50 insertions(+)
>
> diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> index 45e79172a646..bfd360691650 100644
> --- a/Documentation/devicetree/bindings/chosen.txt
> +++ b/Documentation/devicetree/bindings/chosen.txt
> @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
>  the Linux EFI stub (which will populate the property itself, using
>  EFI_RNG_PROTOCOL).
>
> +rng-seed
> +-----------
> +
> +This property served as an entropy to add device randomness. It is parsed
> +as a 64 byte value, e.g.
> +
> +/ {
> +       chosen {
> +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> +       };
> +};
> +
> +This random value should be provided by bootloader.
> +
>  stdout-path
>  -----------
>
> diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> index 413d566405d1..ade4261516dd 100644
> --- a/arch/arm64/kernel/setup.c
> +++ b/arch/arm64/kernel/setup.c
> @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
>         early_fixmap_init();
>         early_ioremap_init();
>
> +       early_init_dt_rng_seed(__fdt_pointer);
Currently this can only be called before setup_machine_fdt(). Since
setup_machine_fdt() called fixmap_remap_fdt() //
__fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL_RO), we can't modify DT
after that. And rng-seed needs to be wiped out after read.
Another option is to called earlier, at arch/arm64/kernel/head.S,
similar to kaslr_early_init.

> +
>         setup_machine_fdt(__fdt_pointer);
>
>         parse_early_param();
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index de893c9616a1..74e2c0c80b91 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -22,6 +22,7 @@
>  #include <linux/slab.h>
>  #include <linux/libfdt.h>
>  #include <linux/debugfs.h>
> +#include <linux/random.h>
>  #include <linux/serial_core.h>
>  #include <linux/sysfs.h>
>
> @@ -1117,6 +1118,38 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
>         return 1;
>  }
>
> +extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
> +                                      pgprot_t prot);
> +
> +void __init early_init_dt_rng_seed(u64 dt_phys)
> +{
> +       void *fdt;
> +       int node, size, i;
> +       fdt64_t *prop;
> +       u64 rng_seed[8];
> +
> +       fdt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
> +       if (!fdt)
> +               return;
> +
> +       node = fdt_path_offset(fdt, "/chosen");
> +       if (node < 0)
> +               return;
> +
> +       prop = fdt_getprop_w(fdt, node, "rng-seed", &size);
> +       if (!prop || size != sizeof(u64) * 8)
> +               return;
> +
> +       for (i = 0; i < 8; i++) {
> +               rng_seed[i] = fdt64_to_cpu(*(prop + i));
> +               /* clear seed so it won't be found. */
> +               *(prop + i) = 0;
> +       }
> +       add_device_randomness(rng_seed, size);
> +
> +       return;
> +}
> +
>  #ifndef MIN_MEMBLOCK_ADDR
>  #define MIN_MEMBLOCK_ADDR      __pa(PAGE_OFFSET)
>  #endif
> diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
> index a713e5d156d8..a4548dd6351e 100644
> --- a/include/linux/of_fdt.h
> +++ b/include/linux/of_fdt.h
> @@ -71,6 +71,7 @@ extern uint32_t of_get_flat_dt_phandle(unsigned long node);
>
>  extern int early_init_dt_scan_chosen(unsigned long node, const char *uname,
>                                      int depth, void *data);
> +extern void early_init_dt_rng_seed(u64 dt_phys);
>  extern int early_init_dt_scan_memory(unsigned long node, const char *uname,
>                                      int depth, void *data);
>  extern int early_init_dt_scan_chosen_stdout(void);
> --
> 2.20.1
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
