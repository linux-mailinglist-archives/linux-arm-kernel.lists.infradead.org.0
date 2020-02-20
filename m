Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EDAEB16670E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 20:20:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MYFQTHrAbEuJg5IbqPSKZJSnXexGoE0qQChM+i9Plio=; b=e6TcnRnwUh3OyI
	NmpJs7/3fAgGCd9OkaAWe/hZv0Cp+NGrC1uKmDqv7mLAl1XfBx6UTZAB8qrzrmHyQDVVE3/Dqln74
	a7utnkcEMq5wspOLLwPmSifBU8I0ZnVBKtlc47wLPKPWaYesqzb4SxLj0VtENZ6Fo8rs3iRQkBlgS
	C5GD3sTOmkYbgfKMJ3iFi+KJoEx9c2D7O3xEepXU0T8FXEf27OQCPbHGsQYXdJA8e14iDsEn79fxM
	a05NvLnwfVji+4MuMUuCeSxeJO2lPpYn67caJmHLEWLI2GGFfpQfiLElfPgIfBD8RiTAmN7KRUAOz
	2Ca+SrWjrMtbVF/Txc4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4rNR-0002qS-8C; Thu, 20 Feb 2020 19:20:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4rNG-0002kd-W4
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 19:20:41 +0000
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com
 [209.85.221.47])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D0EB2465D
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 19:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582226435;
 bh=9XIl5ovh+Mq6+7j1ySklcg5PWlw92losoNB9itx97nA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=omf1ISMvZfoKd9Xg0u5sK9WQviQgF0417fFfH11NemL+8FeUR8h+uZdY6KP0CWlAt
 3tnMJK7JrFFC0N7q6jU/u2duFahRm/FxeNrGXygCTWZeWeRJ3XLgWBrgNdrZsrfQuy
 7dBw0MazwJgm+HA0+6BZU5jcKGs+3L2toaGMGj5c=
Received: by mail-wr1-f47.google.com with SMTP id n10so5951953wrm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 11:20:35 -0800 (PST)
X-Gm-Message-State: APjAAAWo1Cn0Ce6xBxUSXghpIfavdA1HrDTXxC28m73VVBGe9WOUeO+v
 fkudWdqz98QG4y60BQCvvQQgzzFsU5BkhVxUBCO7tQ==
X-Google-Smtp-Source: APXvYqxe4ffo9FwZjLNYfsV3U6pN/uIxKS2PHA9ccwQA2N/730lqg1D88SUzzDJh9AUQw89Kfe0F/weZiICcaDVy1hU=
X-Received: by 2002:a5d:5188:: with SMTP id k8mr43830506wrv.151.1582226433448; 
 Thu, 20 Feb 2020 11:20:33 -0800 (PST)
MIME-Version: 1.0
References: <20200219152440.11561-1-ardb@kernel.org>
 <20200219152440.11561-4-ardb@kernel.org>
 <20200220183001.GE23627@bivouac.eciton.net>
In-Reply-To: <20200220183001.GE23627@bivouac.eciton.net>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 20 Feb 2020 20:20:22 +0100
X-Gmail-Original-Message-ID: <CAKv+Gu-VCFT8G8knvCkBtUZ1uVnMzyA8G1dWJc4aeKNBJ8GqUg@mail.gmail.com>
Message-ID: <CAKv+Gu-VCFT8G8knvCkBtUZ1uVnMzyA8G1dWJc4aeKNBJ8GqUg@mail.gmail.com>
Subject: Re: [PATCH 3/3] efi/arm: rewrite FDT param discovery routines
To: Leif Lindholm <leif@nuviainc.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_112039_077211_241ECF14 
X-CRM114-Status: GOOD (  29.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Atish Patra <atish.patra@wdc.com>, linux-efi <linux-efi@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 20 Feb 2020 at 19:30, Leif Lindholm <leif@nuviainc.com> wrote:
>
> On Wed, Feb 19, 2020 at 16:24:40 +0100, Ard Biesheuvel wrote:
> > The efi_get_fdt_params() routine uses the early OF device tree
> > traversal helpers, that iterate over each node in the DT and invoke
> > a caller provided callback that can inspect the node's contents and
> > look for the required data. This requires a special param struct to
> > be passed around, with pointers into param enumeration structs that
> > contain (and duplicate) property names and offsets into yet another
> > struct that carries the collected data.
> >
> > Since we know the data we look for is either under /hypervisor/uefi
> > or under /chosen, it is much simpler to use the libfdt routines
> > directly, and try to grab a reference to either node directly, and
> > read each property in sequence.
> >
> > Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
> > ---
> >  drivers/firmware/efi/fdtparams.c | 203 ++++++++------------
> >  1 file changed, 85 insertions(+), 118 deletions(-)
> >
> > diff --git a/drivers/firmware/efi/fdtparams.c b/drivers/firmware/efi/fdtparams.c
> > index 7a384b307c56..23af4062e913 100644
> > --- a/drivers/firmware/efi/fdtparams.c
> > +++ b/drivers/firmware/efi/fdtparams.c
> > @@ -5,154 +5,121 @@
> >  #include <linux/module.h>
> >  #include <linux/init.h>
> >  #include <linux/efi.h>
> > -#include <linux/of.h>
> > +#include <linux/libfdt.h>
> >  #include <linux/of_fdt.h>
> >
> > -#include <asm/early_ioremap.h>
> > +#include <asm/unaligned.h>
> >
> > -#define UEFI_PARAM(name, prop, field)                           \
> > -     {                                                  \
> > -             { name },                                  \
> > -             { prop },                                  \
> > -             offsetof(struct efi_fdt_params, field),    \
> > -             sizeof_field(struct efi_fdt_params, field) \
> > -     }
> > -
> > -struct efi_fdt_params {
> > -     u64 system_table;
> > -     u64 mmap;
> > -     u32 mmap_size;
> > -     u32 desc_size;
> > -     u32 desc_ver;
> > -};
> > -
> > -struct params {
> > -     const char name[32];
> > -     const char propname[32];
> > -     int offset;
> > -     int size;
> > +enum {
> > +     SYSTAB,
> > +     MMBASE,
> > +     MMSIZE,
> > +     DCSIZE,
> > +     DCVERS,
> >  };
> >
> > -static __initdata struct params fdt_params[] = {
> > -     UEFI_PARAM("System Table", "linux,uefi-system-table", system_table),
> > -     UEFI_PARAM("MemMap Address", "linux,uefi-mmap-start", mmap),
> > -     UEFI_PARAM("MemMap Size", "linux,uefi-mmap-size", mmap_size),
> > -     UEFI_PARAM("MemMap Desc. Size", "linux,uefi-mmap-desc-size", desc_size),
> > -     UEFI_PARAM("MemMap Desc. Version", "linux,uefi-mmap-desc-ver", desc_ver)
> > +static __initconst const char name[][22] = {
>
> I was going to complain about that 22, and I still think it looks a
> bit iffy, but I can't find a compiler that doesn't throw a warning if
> the value changes, so I guess I'm being over sensitive.
>

Yeah, 32 is just as arbitrary, and wastes more space :-)

> > +     [SYSTAB] = "System Table         ",
> > +     [MMBASE] = "MemMap Address       ",
> > +     [MMSIZE] = "MemMap Size          ",
> > +     [DCSIZE] = "MemMap Desc. Size    ",
> > +     [DCVERS] = "MemMap Desc. Version ",
> >  };
> >
> > -static __initdata struct params xen_fdt_params[] = {
> > -     UEFI_PARAM("System Table", "xen,uefi-system-table", system_table),
> > -     UEFI_PARAM("MemMap Address", "xen,uefi-mmap-start", mmap),
> > -     UEFI_PARAM("MemMap Size", "xen,uefi-mmap-size", mmap_size),
> > -     UEFI_PARAM("MemMap Desc. Size", "xen,uefi-mmap-desc-size", desc_size),
> > -     UEFI_PARAM("MemMap Desc. Version", "xen,uefi-mmap-desc-ver", desc_ver)
> > -};
> > -
> > -#define EFI_FDT_PARAMS_SIZE  ARRAY_SIZE(fdt_params)
> > -
> > -static __initdata struct {
> > -     const char *uname;
> > -     const char *subnode;
> > -     struct params *params;
> > +static __initconst const struct {
> > +     const char      path[17];
> > +     const char      params[5][26];
>
> And I guess the same is true here, but the 5 *could* theoretically be
> replaced by a compile-time calculation of DCVERS - SYSTAB + 1. That
> may not be less error prone however. Finishing the enum on a
> somethingMAX entry might make it slightly better?
>

Yeah that make sense - I'll change that.

> But the error checking isn't really what I'm after, but getting rid of
> the opaqueness. Could we have comments about which specific string
> lengths we're matching against here for us bears of very little brain?
>

Sure.


> >  } dt_params[] = {
> > -     { "hypervisor", "uefi", xen_fdt_params },
> > -     { "chosen", NULL, fdt_params },
> > -};
> > -
> > -struct param_info {
> > -     int found;
> > -     void *params;
> > -     const char *missing;
> > +#ifdef CONFIG_XEN
> > +     {
> > +             "/hypervisor/uefi",
> > +             {
> > +                     [SYSTAB] = "xen,uefi-system-table",
> > +                     [MMBASE] = "xen,uefi-mmap-start",
> > +                     [MMSIZE] = "xen,uefi-mmap-size",
> > +                     [DCSIZE] = "xen,uefi-mmap-desc-size",
> > +                     [DCVERS] = "xen,uefi-mmap-desc-ver",
> > +             }
> > +     },
> > +#endif
> > +     {
> > +             "/chosen",
> > +             {
> > +                     [SYSTAB] = "linux,uefi-system-table",
> > +                     [MMBASE] = "linux,uefi-mmap-start",
> > +                     [MMSIZE] = "linux,uefi-mmap-size",
> > +                     [DCSIZE] = "linux,uefi-mmap-desc-size",
> > +                     [DCVERS] = "linux,uefi-mmap-desc-ver",
> > +             }
> > +     }
> >  };
> >
> > -static int __init __find_uefi_params(unsigned long node,
> > -                                  struct param_info *info,
> > -                                  struct params *params)
> > +static int __init efi_get_fdt_prop(const void *fdt, int node, int dtp, int pp,
> > +                                void *var, int size)
> >  {
> >       const void *prop;
> > -     void *dest;
> > +     int len;
> >       u64 val;
> > -     int i, len;
> >
> > -     for (i = 0; i < EFI_FDT_PARAMS_SIZE; i++) {
> > -             prop = of_get_flat_dt_prop(node, params[i].propname, &len);
> > -             if (!prop) {
> > -                     info->missing = params[i].name;
> > -                     return 0;
> > -             }
> > -
> > -             dest = info->params + params[i].offset;
> > -             info->found++;
> > +     prop = fdt_getprop(fdt, node, dt_params[dtp].params[pp], &len);
> > +     if (!prop) {
> > +             pr_err("Can't find property '%s' in device tree!\n",
> > +                    dt_params[dtp].params[pp]);
> > +             return 1;
> > +     }
> >
> > -             val = of_read_number(prop, len / sizeof(u32));
> > +     val = (len == 4) ? (u64)be32_to_cpup(prop) : get_unaligned_be64(prop);
> >
> > -             if (params[i].size == sizeof(u32))
> > -                     *(u32 *)dest = val;
> > -             else
> > -                     *(u64 *)dest = val;
> > +     if (size == 8)
> > +             *(u64 *)var = val;
> > +     else
> > +             *(u32 *)var = (val <= U32_MAX) ? val : U32_MAX; // saturate
> >
> > -             if (efi_enabled(EFI_DBG))
> > -                     pr_info("  %s: 0x%0*llx\n", params[i].name,
> > -                             params[i].size * 2, val);
> > -     }
> > +     if (efi_enabled(EFI_DBG))
> > +             pr_info("  %s: 0x%0*llx\n", name[pp], size * 2, val);
> >
> > -     return 1;
> > +     return 0;
> >  }
> >
> > -static int __init fdt_find_uefi_params(unsigned long node, const char *uname,
> > -                                    int depth, void *data)
> > +u64 __init efi_get_fdt_params(struct efi_memory_map_data *mm)
> >  {
> > -     struct param_info *info = data;
> > +     const void *fdt = initial_boot_params;
> > +     unsigned long systab;
> > +     struct {
> > +             void    *var;
> > +             int     size;
> > +     } target[] = {
> > +             [SYSTAB] = { &systab,           sizeof(systab) },
> > +             [MMBASE] = { &mm->phys_map,     sizeof(mm->phys_map) },
> > +             [MMSIZE] = { &mm->size,         sizeof(mm->size) },
> > +             [DCSIZE] = { &mm->desc_size,    sizeof(mm->desc_size) },
> > +             [DCVERS] = { &mm->desc_version, sizeof(mm->desc_version) },
> > +     };
> >       int i;
> >
> > +     BUILD_BUG_ON(ARRAY_SIZE(target) != ARRAY_SIZE(name));
> > +     BUILD_BUG_ON(ARRAY_SIZE(target) != ARRAY_SIZE(dt_params[0].params));
> > +
> >       for (i = 0; i < ARRAY_SIZE(dt_params); i++) {
> > -             const char *subnode = dt_params[i].subnode;
> > +             int node;
> > +             int j;
> >
> > -             if (depth != 1 || strcmp(uname, dt_params[i].uname) != 0) {
> > -                     info->missing = dt_params[i].params[0].name;
> > +             node = fdt_path_offset(fdt, dt_params[i].path);
> > +             if (node < 0)
> >                       continue;
> > -             }
> >
> > -             if (subnode) {
> > -                     int err = of_get_flat_dt_subnode_by_name(node, subnode);
> > +             if (efi_enabled(EFI_DBG))
> > +                     pr_info("Getting UEFI parameters from %s in DT:\n",
> > +                             dt_params[i].path);
> >
> > -                     if (err < 0)
> > +             for (j = 0; j < ARRAY_SIZE(target); j++) {
> > +                     if (efi_get_fdt_prop(fdt, node, i, j, target[j].var,
> > +                                          target[j].size)) {
> >                               return 0;
> > -
> > -                     node = err;
> > +                     }
> >               }
> > -
> > -             return __find_uefi_params(node, info, dt_params[i].params);
> > +             return systab;
> >       }
> > -
> > +     pr_info("UEFI not found.\n");
> >       return 0;
> >  }
> > -
> > -u64 __init efi_get_fdt_params(struct efi_memory_map_data *memmap)
> > -{
> > -     struct efi_fdt_params params;
> > -     struct param_info info;
> > -     int ret;
> > -
> > -     pr_info("Getting EFI parameters from FDT:\n");
> > -
> > -     info.found = 0;
> > -     info.params = &params;
> > -
> > -     ret = of_scan_flat_dt(fdt_find_uefi_params, &info);
> > -     if (!info.found) {
> > -             pr_info("UEFI not found.\n");
> > -             return 0;
> > -     } else if (!ret) {
> > -             pr_err("Can't find '%s' in device tree!\n", info.missing);
> > -             return 0;
> > -     }
> > -
> > -     memmap->desc_version    = params.desc_ver;
> > -     memmap->desc_size       = params.desc_size;
> > -     memmap->size            = params.mmap_size;
> > -     memmap->phys_map        = params.mmap;
> > -
> > -     return params.system_table;
> > -}
> > --
> > 2.17.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
