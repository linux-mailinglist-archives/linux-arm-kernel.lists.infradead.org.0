Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6760516BA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:47:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CmgpWiJ4I0GE/lZUhVPfBh/YC0FMZs5gUpDFz3lylTc=; b=UM9KxGb90Kc7DP
	3TpLPyI+tR6j/OOMuGMOd/A0HFJ+lWPz494yxFSpKQjYNFPRd+nVIiQ/T0djieTfm26Ctspfrf8CF
	LKYAAmp0IRouhHcON0zpKm54exuV/fWA8LMh6VFYGhXcWNYjTTWsHPVm0xkIveYwVCfful7veHZvT
	/6XxZwTI7zROFkJhf9u7Mf3Ln7Ya08m8vDVLhbSfpA9fjZQMc+vxXmUonB0i3xCc4yn4iPN86g9J6
	2lvrpB6NTl4M3nqnIe2IHaHaNs1DQkkbAAgnpLShGW7yX7As8MUXCn8Uc6m5H3tQvWDGAgu5j5BCO
	pPP32DAnRrjflvqILCNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO641-0001LW-Va; Tue, 07 May 2019 19:47:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO63t-0001L2-52
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:47:38 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 89A2B21479
 for <linux-arm-kernel@lists.infradead.org>;
 Tue,  7 May 2019 19:47:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557258456;
 bh=H9Pa58GpFX4BokZ1UWZ8tTsFNDuLeFOIEWPBcJy1heE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=LkL+jhljELw+1Vjy7SQO2B7SG/ZFkBAa66k5eCcSYVMV8KkTPmaFy0x2zCQw1NIku
 iYKl3D0T+eWNhu1FYvlzM8Wz3tpXXQTbhxBG2r4mGRDmAEQY8BP5vzqJ0DkALLJ1uN
 wiiQwrL5TQYgFWKI3NTFoUzsA/gc6WuFuDOxOM4k=
Received: by mail-qt1-f177.google.com with SMTP id a17so6374833qth.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:47:36 -0700 (PDT)
X-Gm-Message-State: APjAAAUkwQqqrzcx5g4sLSj3yfypvHsimwpO6LGqA+cMdmQi8iRItv5U
 NOofEyfwepgN6dojeEu2mtBWzgVWXvlQiXGGtw==
X-Google-Smtp-Source: APXvYqy49GlAiANz6VDO2OHCA7oetEwsRwSl/TppflexiHOPW7nabAFldrLAb3/DPpRad19efNzXP4bp5t0xr+vd/14=
X-Received: by 2002:ac8:66d3:: with SMTP id m19mr27729011qtp.359.1557258455708; 
 Tue, 07 May 2019 12:47:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
In-Reply-To: <20190507045433.542-1-hsinyi@chromium.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Tue, 7 May 2019 14:47:00 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
Message-ID: <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Hsin-Yi Wang <hsinyi@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_124737_233565_62C57148 
X-CRM114-Status: GOOD (  25.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Architecture Mailman List <boot-architecture@lists.linaro.org>,
 Michal Hocko <mhocko@suse.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <andrew.murray@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>, Stephen Boyd <swboyd@chromium.org>,
 Frank Rowand <frowand.list@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

+boot-architecture list as there was some discussion about this IIRC.

On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
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

Actually, this file has been converted to json-schema and lives
here[1]. I need to remove this one (or leave it with a reference to
the new one).

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

Why only 64-bytes?

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
> +

I'm trying to reduce or eliminate all these early_init_dt_* calls.

Why is this arch specific and why can't this be done after
unflattening? It doesn't look like add_device_randomness() needs
anything early.

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
