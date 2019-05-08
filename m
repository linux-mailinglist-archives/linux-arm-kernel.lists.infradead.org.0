Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC4C16FD2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 06:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YG3xiMUDT/c5K8+Org22JU5KE+ZX3Zcx3moZV+MNgck=; b=OJ2LnZjxg5BAMb
	c1dtqi0XmyLo5Dx66kbr9+s0NngjKTMQAkmagjO3eYvGnohyDY+XCgdO/qQ5/2/DA+5R5DAZ97OiC
	/k1b9UW5ng5Vi0KsJAHte+ewfLXhwTY76hadGOspF9C+tPDcLveIgfQAi2HT4RPYPN2KQ7Jn70ZOo
	fPiPKZtUXqnoeeRdbQXYf6XnAQbcT+r2qsDw8t2s5mKvSrObbyy9f8vdcp/3sI9zVGnwC8Snu3421
	BIY3Q/mt61nZ6ENXM2NayRZN3M4//i4HbC86w0layikgaLbcypkRw9FGb07BkgHn0HxBwFIIwgcI3
	lZ7a1ZBxe+lyrrfrL4Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hODso-0000VV-S7; Wed, 08 May 2019 04:08:42 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hODsg-0000Ug-Qr
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 04:08:36 +0000
Received: by mail-qt1-x844.google.com with SMTP id c13so21698183qtn.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 21:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=yWv0q/m4CXezpbIlYfskiZo9emgFBrM3RwTHD33KBco=;
 b=kVKVo365dv38tjyldZmSX4x+Gspo1e9OHAtatit3DPIngDXLiouFZhBbwxWfVK/oy9
 9wtAKu2Va6gUaMEQ3PQVQMPOev3ZlUBZq4wb+aJNnCNGofPOK2hZFUbPqi26RSZmJpHG
 1Q4n64GatxtWH1Pv+cmP5qnFg55BYBEkVbzCo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=yWv0q/m4CXezpbIlYfskiZo9emgFBrM3RwTHD33KBco=;
 b=DYsfFAideyqcTzbl/Cnj5t2VSXVtEtg+UH+TJ9J8sxdvZn6Tp1Z3bLB5/BKvDJMnSA
 zwHb8HmWHYyMzbS8TSTgC3QvLc8JxgzWiTScpbUpsH+n/AzRECszKVolJ3iEbRmpoQLH
 rcgWdnslg4GClf70vbdTGIM9LB+i3DOf0torFXlWoaSDI32N7BvOylM3ILkVNSz0v6gt
 U1C8UkFfjfo9AfJqHy4EI0iVbv+UBynyCc6Lr0OQFVFOD2wxq514UhMuqPfFZbbDvtcf
 LC0SK+o5IQB/yeSOCJ5QL3uoVCqUozub4f8tRVAL9viRi+D+J0/nQ69jCQFj0Aa39T14
 k0Sw==
X-Gm-Message-State: APjAAAXEQoE96kZG0zeNKyHNnXwA5lIi4Jgj5mqGzdEOTBoHOgfY3Vhp
 sTl5lzRl3x2/zQSWJXxx9xJjWJAnxtzC607LyGyazw==
X-Google-Smtp-Source: APXvYqxxxSmkf9PLSz/RDL1+3qpHbxikmXEsEiHYdT0nA1jOcbmVTTLhIDmlXHumkunAFeJn7KLh/deR6khriZKWfRQ=
X-Received: by 2002:ad4:534b:: with SMTP id v11mr29123667qvs.31.1557288510019; 
 Tue, 07 May 2019 21:08:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org>
 <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
In-Reply-To: <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 8 May 2019 12:08:03 +0800
Message-ID: <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_210834_874871_0923DEA3 
X-CRM114-Status: GOOD (  27.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
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

On Wed, May 8, 2019 at 3:47 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> +boot-architecture list as there was some discussion about this IIRC.
>
> On Mon, May 6, 2019 at 11:54 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> >
> > Introducing a chosen node, rng-seed, which is an 64 bytes entropy
> > that can be passed to kernel called very early to increase device
> > randomness. Bootloader should provide this entropy and the value is
> > read from /chosen/rng-seed in DT.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> >
> > ---
> >  Documentation/devicetree/bindings/chosen.txt | 14 +++++++++
>
> Actually, this file has been converted to json-schema and lives
> here[1]. I need to remove this one (or leave it with a reference to
> the new one).
>
> >  arch/arm64/kernel/setup.c                    |  2 ++
> >  drivers/of/fdt.c                             | 33 ++++++++++++++++++++
> >  include/linux/of_fdt.h                       |  1 +
> >  4 files changed, 50 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/chosen.txt b/Documentation/devicetree/bindings/chosen.txt
> > index 45e79172a646..bfd360691650 100644
> > --- a/Documentation/devicetree/bindings/chosen.txt
> > +++ b/Documentation/devicetree/bindings/chosen.txt
> > @@ -28,6 +28,20 @@ mode) when EFI_RNG_PROTOCOL is supported, it will be overwritten by
> >  the Linux EFI stub (which will populate the property itself, using
> >  EFI_RNG_PROTOCOL).
> >
> > +rng-seed
> > +-----------
> > +
> > +This property served as an entropy to add device randomness. It is parsed
> > +as a 64 byte value, e.g.
>
> Why only 64-bytes?
We can also not specify size and read what bootloader can provide.
>
> > +
> > +/ {
> > +       chosen {
> > +               rng-seed = <0x31951b3c 0xc9fab3a5 0xffdf1660 ...>
> > +       };
> > +};
> > +
> > +This random value should be provided by bootloader.
> > +
> >  stdout-path
> >  -----------
> >
> > diff --git a/arch/arm64/kernel/setup.c b/arch/arm64/kernel/setup.c
> > index 413d566405d1..ade4261516dd 100644
> > --- a/arch/arm64/kernel/setup.c
> > +++ b/arch/arm64/kernel/setup.c
> > @@ -292,6 +292,8 @@ void __init setup_arch(char **cmdline_p)
> >         early_fixmap_init();
> >         early_ioremap_init();
> >
> > +       early_init_dt_rng_seed(__fdt_pointer);
> > +
>
> I'm trying to reduce or eliminate all these early_init_dt_* calls.
>
> Why is this arch specific and why can't this be done after
> unflattening? It doesn't look like add_device_randomness() needs
> anything early.
Currently unflattening is called after setup_machine_fdt(), which
called fixmap_remap_fdt() //__fixmap_remap_fdt(dt_phys, &size,
PAGE_KERNEL_RO), and we can't modify DT after that since it's read
only. But we need to clear (eg. write 0 to it) the rng-seed after
reading from DT.
>
> >         setup_machine_fdt(__fdt_pointer);
> >
> >         parse_early_param();
> > diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> > index de893c9616a1..74e2c0c80b91 100644
> > --- a/drivers/of/fdt.c
> > +++ b/drivers/of/fdt.c
> > @@ -22,6 +22,7 @@
> >  #include <linux/slab.h>
> >  #include <linux/libfdt.h>
> >  #include <linux/debugfs.h>
> > +#include <linux/random.h>
> >  #include <linux/serial_core.h>
> >  #include <linux/sysfs.h>
> >
> > @@ -1117,6 +1118,38 @@ int __init early_init_dt_scan_chosen(unsigned long node, const char *uname,
> >         return 1;
> >  }
> >
> > +extern void *__init __fixmap_remap_fdt(phys_addr_t dt_phys, int *size,
> > +                                      pgprot_t prot);
> > +
> > +void __init early_init_dt_rng_seed(u64 dt_phys)
> > +{
> > +       void *fdt;
> > +       int node, size, i;
> > +       fdt64_t *prop;
> > +       u64 rng_seed[8];
> > +
> > +       fdt = __fixmap_remap_fdt(dt_phys, &size, PAGE_KERNEL);
> > +       if (!fdt)
> > +               return;
> > +
> > +       node = fdt_path_offset(fdt, "/chosen");
> > +       if (node < 0)
> > +               return;
> > +
> > +       prop = fdt_getprop_w(fdt, node, "rng-seed", &size);
> > +       if (!prop || size != sizeof(u64) * 8)
> > +               return;
> > +
> > +       for (i = 0; i < 8; i++) {
> > +               rng_seed[i] = fdt64_to_cpu(*(prop + i));
> > +               /* clear seed so it won't be found. */
> > +               *(prop + i) = 0;
> > +       }
> > +       add_device_randomness(rng_seed, size);
> > +
> > +       return;
> > +}
> > +
> >  #ifndef MIN_MEMBLOCK_ADDR
> >  #define MIN_MEMBLOCK_ADDR      __pa(PAGE_OFFSET)
> >  #endif
> > diff --git a/include/linux/of_fdt.h b/include/linux/of_fdt.h
> > index a713e5d156d8..a4548dd6351e 100644
> > --- a/include/linux/of_fdt.h
> > +++ b/include/linux/of_fdt.h
> > @@ -71,6 +71,7 @@ extern uint32_t of_get_flat_dt_phandle(unsigned long node);
> >
> >  extern int early_init_dt_scan_chosen(unsigned long node, const char *uname,
> >                                      int depth, void *data);
> > +extern void early_init_dt_rng_seed(u64 dt_phys);
> >  extern int early_init_dt_scan_memory(unsigned long node, const char *uname,
> >                                      int depth, void *data);
> >  extern int early_init_dt_scan_chosen_stdout(void);
> > --
> > 2.20.1
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
