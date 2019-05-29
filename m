Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 139942E493
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 20:36:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ciBGJgfDzcMFfVFCfVWytB07d+xITSZ7ppZdc4zVDv8=; b=ZQBuWxf1RLeBk3ajwVdkjIaSw
	IYBnunGGTX6qxgAFP1UAnQeiICupqOLIGwMJNyCNCOTpDtp+ul8kRITbobXHqRMjKbErXdZYxvdis
	KTTUIXGdBHlglSG7D2LORDN9yn4+Z/zpKb4RTbKECGBGsMbNasoJJr/dENagfRxPFq3EJfe/ED6st
	h7trgVXY4E5ajrTa5h+alHawC1knNPOCjwr9TcQEpmP0DDPdPXA8hxEbPw9b0yoIciaLczuLyfmE4
	mtTklBU2RHMBpC40s0RuDkFT4TLoN5+sn3aPlKBFnjgqZHVsqesgyPEM49YNqqOrA1NoYAYEC8nas
	Lu79ZYVVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW3Qf-0007oX-Mv; Wed, 29 May 2019 18:36:01 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW3QW-0007no-S7
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 18:35:55 +0000
Received: by mail-ed1-x543.google.com with SMTP id e24so5190992edq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 May 2019 11:35:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hzHFg0X0e5EBNP6OhRJYQ6NON1lmWJKhlkAE/eWh8DU=;
 b=sP73m29VmczkqOsg69DyQ7Oa1zXrO1gxUswKVlg+9SlKu+TU6InEbC0PPv8QSu1D5q
 9T0XQH/wi5WhjjR2Aec2xE58hEuEHqTyjdSltrfy9TiIxSn01MHNISG32F57JJqSoD3p
 QZIvLi9Z8EO6lNPzlgqwfxxnSBRVlH/F/RpB1Z3oagd4RiVlaXujegWECmHQ0F2/AjvT
 oQtlkS4TACWolVZPrgOhNCYFXVpg5vbCeDs/NQ4y3nfRIFwPUTMlZF2IolMonFLENAak
 XR6Z2f6e92FBFHM8LIasxLHhnXIUXlII8sor2Oi4OaqNOIZW0zyFPPxZAukItBCO9sFY
 WfCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hzHFg0X0e5EBNP6OhRJYQ6NON1lmWJKhlkAE/eWh8DU=;
 b=M9frfO4uYr+A+nZ91trQOyjfDR80wUKdtX0dpLfaQqXUaIRTrgAj5GTOR+NHI0AeVk
 PDWtb1AGn5b/6DHb0PEsJgcWRIL38nodH2FrbA5rwJHPP2koe44uY7bbITxzHRMGlJev
 ROxTkKRd96nwkEqnHMMjSwJjBG3I3GFubwCRckf9N69/gs4Ds96tJ+2/wU4rRtHcBOLg
 MV15g/2g6RlqvkclZjC+UmjPRrPCqkosBWnwdyA5QdeLDJ4IKtLc/d2PpgZ08bg+B4jR
 FzZPp+RKfJF6Tp+kG7V5GYMnn6mHldkL1B06LsPlLzOZU+MRXlSKfOAt9Cltvf/IRxYo
 qAIQ==
X-Gm-Message-State: APjAAAVbl4mTGygmErU+bgtixjIg7DEXSeoHxpVxE4QnEdSKgp2V+xEm
 eaB8xtzp4gTkkudeYA7RwkU=
X-Google-Smtp-Source: APXvYqwh56aYpJ7h78d1xcxNGKoCh+56tD3flsB4J1iGgf7l4IJaeVpbh0JpdVhiUCn8rX3bMjzbsA==
X-Received: by 2002:a50:ba13:: with SMTP id
 g19mr137097778edc.236.1559154950585; 
 Wed, 29 May 2019 11:35:50 -0700 (PDT)
Received: from archlinux-epyc ([2a01:4f9:2b:2b15::2])
 by smtp.gmail.com with ESMTPSA id s57sm63401edd.54.2019.05.29.11.35.47
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 29 May 2019 11:35:49 -0700 (PDT)
Date: Wed, 29 May 2019 11:35:46 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nicolin Chen <nicoleotsuka@gmail.com>
Subject: Re: [PATCH v3 1/2] dma-contiguous: Abstract
 dma_{alloc,free}_contiguous()
Message-ID: <20190529183546.GA12747@archlinux-epyc>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190524040633.16854-2-nicoleotsuka@gmail.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
In-Reply-To: <20190524040633.16854-2-nicoleotsuka@gmail.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_113552_953357_2D5E3202 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (natechancellor[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, hch@lst.de, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org, linux@armlinux.org.uk,
 clang-built-linux@googlegroups.com, treding@nvidia.com,
 linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Nicolin,

On Thu, May 23, 2019 at 09:06:32PM -0700, Nicolin Chen wrote:
> Both dma_alloc_from_contiguous() and dma_release_from_contiguous()
> are very simply implemented, but requiring callers to pass certain
> parameters like count and align, and taking a boolean parameter to
> check __GFP_NOWARN in the allocation flags. So every function call
> duplicates similar work:
>   /* A piece of example */
>   unsigned long order = get_order(size);
>   size_t count = size >> PAGE_SHIFT;
>   page = dma_alloc_from_contiguous(dev, count, order, gfp & __GFP_NOWARN);
>   [...]
>   dma_release_from_contiguous(dev, page, size >> PAGE_SHIFT);
> 
> Additionally, as CMA can be used only in the context which permits
> sleeping, most of callers do a gfpflags_allow_blocking() check and
> a corresponding fallback allocation of normal pages upon any false
> result:
>   /* A piece of example */
>   if (gfpflags_allow_blocking(flag))
>       page = dma_alloc_from_contiguous();
>   if (!page)
>       page = alloc_pages();
>   [...]
>   if (!dma_release_from_contiguous(dev, page, count))
>       __free_pages(page, get_order(size));
> 
> So this patch simplifies those function calls by abstracting these
> operations into the two new functions: dma_{alloc,free}_contiguous.
> 
> As some callers of dma_{alloc,release}_from_contiguous() might be
> complicated, this patch just implements these two new functions to
> kernel/dma/direct.c only as an initial step.
> 
> Suggested-by: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Nicolin Chen <nicoleotsuka@gmail.com>
> ---

This commit is causing boot failures in QEMU on x86_64 defconfig:

https://travis-ci.com/ClangBuiltLinux/continuous-integration/jobs/203825363

Attached is a bisect log and a boot log with GCC (just to show it is not
a compiler thing).

My QEMU command line is:

qemu-system-x86_64 -m 512m \
                   -drive file=images/x86_64/rootfs.ext4,format=raw,if=ide \
                   -append 'console=ttyS0 root=/dev/sda' \
                   -nographic \
                   -kernel arch/x86_64/boot/bzImage

and the rootfs is available here:

https://github.com/ClangBuiltLinux/continuous-integration/raw/master/images/x86_64/rootfs.ext4

I haven't seen a report on this yet so apologize if there is already a
fix in the works. Let me know if you need anythnig from me.

Cheers,
Nathan

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="bisect.log"

git bisect start
# good: [9fb67d643f6f1892a08ee3a04ea54022d1060bb0] Merge tag 'pinctrl-v5.2-2' of git://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl
git bisect good 9fb67d643f6f1892a08ee3a04ea54022d1060bb0
# bad: [9a15d2e3fd03e38a6ee7d7bc34d28bb7340f05f2] Add linux-next specific files for 20190529
git bisect bad 9a15d2e3fd03e38a6ee7d7bc34d28bb7340f05f2
# bad: [eb756b9cce06b6c30b478a7ead67ddc0aa52b421] Merge remote-tracking branch 'crypto/master'
git bisect bad eb756b9cce06b6c30b478a7ead67ddc0aa52b421
# bad: [ffd5fc17ee0cd5f90258a8d4e0b87af913943f72] Merge remote-tracking branch 'xtensa/xtensa-for-next'
git bisect bad ffd5fc17ee0cd5f90258a8d4e0b87af913943f72
# bad: [df846fa0031f0e11dbfd5dd7c959cb45b3c0b3e2] Merge remote-tracking branch 'actions/for-next'
git bisect bad df846fa0031f0e11dbfd5dd7c959cb45b3c0b3e2
# good: [673e28ea2b579adcec369cd7f7295142a6b7e017] Merge remote-tracking branch 'usb.current/usb-linus'
git bisect good 673e28ea2b579adcec369cd7f7295142a6b7e017
# good: [d4f1f6efe84b20ff5f3a4874c580c2bee6cba68a] Merge remote-tracking branch 'kvms390-fixes/master'
git bisect good d4f1f6efe84b20ff5f3a4874c580c2bee6cba68a
# bad: [d0756fb0025937a5ed866d27f4452c66b066c089] Merge remote-tracking branch 'dma-mapping/for-next'
git bisect bad d0756fb0025937a5ed866d27f4452c66b066c089
# good: [49af21d0007414838a27eb4ade21277350e8ef1d] Merge remote-tracking branch 'drm-misc-fixes/for-linux-next-fixes'
git bisect good 49af21d0007414838a27eb4ade21277350e8ef1d
# good: [8680aa5a58abfe6087a3d8248c02232d3e05dc80] iommu/dma: Don't remap CMA unnecessarily
git bisect good 8680aa5a58abfe6087a3d8248c02232d3e05dc80
# good: [efd9f10b70689fdeacadc95b6e0ea6dc311fa64f] iommu/dma: Refactor iommu_dma_mmap
git bisect good efd9f10b70689fdeacadc95b6e0ea6dc311fa64f
# good: [b5f75a3639ff3b547e4eee7671e4321a429747a6] arm64: switch copyright boilerplace to SPDX in dma-mapping.c
git bisect good b5f75a3639ff3b547e4eee7671e4321a429747a6
# bad: [fdaeec198ada8c48bff03c85fab542e5b241f5bc] dma-contiguous: add dma_{alloc,free}_contiguous() helpers
git bisect bad fdaeec198ada8c48bff03c85fab542e5b241f5bc
# good: [a84cc69eb53715d37242a21ada398b0d8cd316fc] arm64: trim includes in dma-mapping.c
git bisect good a84cc69eb53715d37242a21ada398b0d8cd316fc
# first bad commit: [fdaeec198ada8c48bff03c85fab542e5b241f5bc] dma-contiguous: add dma_{alloc,free}_contiguous() helpers

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset=us-ascii
Content-Disposition: attachment; filename="boot.log"
Content-Transfer-Encoding: quoted-printable

=1Bc=1B[?7l=1B[2J=1B[0mSeaBIOS (version 1.12.0-20181126_142135-anatol)=0D=0D
=0D
=0D
iPXE (http://ipxe.org) 00:03.0 C980 PCI2.10 PnP PMM+1FF92110+1FEF2110 C980=
=0D=0D
Press Ctrl-B to configure iPXE (PCI 00:03.0)...=0D                         =
                                                      =0D=0D
=0D
=0D
Booting from ROM..=1Bc=1B[?7l=1B[2J=1B[0m.=0D[    0.000000] Linux version 5=
=2E2.0-rc2-next-20190529 (nathan@archlinux-epyc) (gcc version 8.3.0 (GCC)) =
#1 SMP Wed May 29 11:26:28 MST 2019=0D=0D
[    0.000000] Command line: root=3D/dev/sda console=3DttyS0 =0D=0D
[    0.000000] x86/fpu: Supporting XSAVE feature 0x001: 'x87 floating point=
 registers'=0D=0D
[    0.000000] x86/fpu: Supporting XSAVE feature 0x002: 'SSE registers'=0D=
=0D
[    0.000000] x86/fpu: Supporting XSAVE feature 0x004: 'AVX registers'=0D=
=0D
[    0.000000] x86/fpu: xstate_offset[2]:  576, xstate_sizes[2]:  256=0D=0D
[    0.000000] x86/fpu: Enabled xstate features 0x7, context size is 832 by=
tes, using 'standard' format.=0D=0D
[    0.000000] BIOS-provided physical RAM map:=0D=0D
[    0.000000] BIOS-e820: [mem 0x0000000000000000-0x000000000009fbff] usabl=
e=0D=0D
[    0.000000] BIOS-e820: [mem 0x000000000009fc00-0x000000000009ffff] reser=
ved=0D=0D
[    0.000000] BIOS-e820: [mem 0x00000000000f0000-0x00000000000fffff] reser=
ved=0D=0D
[    0.000000] BIOS-e820: [mem 0x0000000000100000-0x000000001ffdffff] usabl=
e=0D=0D
[    0.000000] BIOS-e820: [mem 0x000000001ffe0000-0x000000001fffffff] reser=
ved=0D=0D
[    0.000000] BIOS-e820: [mem 0x00000000feffc000-0x00000000feffffff] reser=
ved=0D=0D
[    0.000000] BIOS-e820: [mem 0x00000000fffc0000-0x00000000ffffffff] reser=
ved=0D=0D
[    0.000000] NX (Execute Disable) protection: active=0D=0D
[    0.000000] SMBIOS 2.8 present.=0D=0D
[    0.000000] DMI: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.12.0-201=
81126_142135-anatol 04/01/2014=0D=0D
[    0.000000] tsc: Fast TSC calibration using PIT=0D=0D
[    0.000000] tsc: Detected 1999.996 MHz processor=0D=0D
[    0.001281] last_pfn =3D 0x1ffe0 max_arch_pfn =3D 0x400000000=0D=0D
[    0.001327] x86/PAT: Configuration [0-7]: WB  WC  UC- UC  WB  WP  UC- WT=
  =0D=0D
[    0.003614] found SMP MP-table at [mem 0x000f5cc0-0x000f5ccf]=0D=0D
[    0.003654] check: Scanning 1 areas for low memory corruption=0D=0D
[    0.003674] Using GB pages for direct mapping=0D=0D
[    0.003756] ACPI: Early table checksum verification disabled=0D=0D
[    0.003788] ACPI: RSDP 0x00000000000F5AF0 000014 (v00 BOCHS )=0D=0D
[    0.003793] ACPI: RSDT 0x000000001FFE156F 000030 (v01 BOCHS  BXPCRSDT 00=
000001 BXPC 00000001)=0D=0D
[    0.003798] ACPI: FACP 0x000000001FFE144B 000074 (v01 BOCHS  BXPCFACP 00=
000001 BXPC 00000001)=0D=0D
[    0.003802] ACPI: DSDT 0x000000001FFE0040 00140B (v01 BOCHS  BXPCDSDT 00=
000001 BXPC 00000001)=0D=0D
[    0.003804] ACPI: FACS 0x000000001FFE0000 000040=0D=0D
[    0.003806] ACPI: APIC 0x000000001FFE14BF 000078 (v01 BOCHS  BXPCAPIC 00=
000001 BXPC 00000001)=0D=0D
[    0.003808] ACPI: HPET 0x000000001FFE1537 000038 (v01 BOCHS  BXPCHPET 00=
000001 BXPC 00000001)=0D=0D
[    0.004087] No NUMA configuration found=0D=0D
[    0.004088] Faking a node at [mem 0x0000000000000000-0x000000001ffdffff]=
=0D=0D
[    0.004091] NODE_DATA(0) allocated [mem 0x1ffdc000-0x1ffdffff]=0D=0D
[    0.004328] Zone ranges:=0D=0D
[    0.004330]   DMA      [mem 0x0000000000001000-0x0000000000ffffff]=0D=0D
[    0.004331]   DMA32    [mem 0x0000000001000000-0x000000001ffdffff]=0D=0D
[    0.004332]   Normal   empty=0D=0D
[    0.004332] Movable zone start for each node=0D=0D
[    0.004333] Early memory node ranges=0D=0D
[    0.004334]   node   0: [mem 0x0000000000001000-0x000000000009efff]=0D=0D
[    0.004335]   node   0: [mem 0x0000000000100000-0x000000001ffdffff]=0D=0D
[    0.004612] Zeroed struct page in unavailable ranges: 98 pages=0D=0D
[    0.004613] Initmem setup node 0 [mem 0x0000000000001000-0x000000001ffdf=
fff]=0D=0D
[    0.006924] ACPI: PM-Timer IO Port: 0x608=0D=0D
[    0.006930] ACPI: LAPIC_NMI (acpi_id[0xff] dfl dfl lint[0x1])=0D=0D
[    0.006958] IOAPIC[0]: apic_id 0, version 17, address 0xfec00000, GSI 0-=
23=0D=0D
[    0.006960] ACPI: INT_SRC_OVR (bus 0 bus_irq 0 global_irq 2 dfl dfl)=0D=
=0D
[    0.006961] ACPI: INT_SRC_OVR (bus 0 bus_irq 5 global_irq 5 high level)=
=0D=0D
[    0.006962] ACPI: INT_SRC_OVR (bus 0 bus_irq 9 global_irq 9 high level)=
=0D=0D
[    0.006963] ACPI: INT_SRC_OVR (bus 0 bus_irq 10 global_irq 10 high level=
)=0D=0D
[    0.006964] ACPI: INT_SRC_OVR (bus 0 bus_irq 11 global_irq 11 high level=
)=0D=0D
[    0.006967] Using ACPI (MADT) for SMP configuration information=0D=0D
[    0.006968] ACPI: HPET id: 0x8086a201 base: 0xfed00000=0D=0D
[    0.006974] smpboot: Allowing 1 CPUs, 0 hotplug CPUs=0D=0D
[    0.006982] PM: Registered nosave memory: [mem 0x00000000-0x00000fff]=0D=
=0D
[    0.006983] PM: Registered nosave memory: [mem 0x0009f000-0x0009ffff]=0D=
=0D
[    0.006983] PM: Registered nosave memory: [mem 0x000a0000-0x000effff]=0D=
=0D
[    0.006984] PM: Registered nosave memory: [mem 0x000f0000-0x000fffff]=0D=
=0D
[    0.006986] [mem 0x20000000-0xfeffbfff] available for PCI devices=0D=0D
[    0.006989] clocksource: refined-jiffies: mask: 0xffffffff max_cycles: 0=
xffffffff, max_idle_ns: 1910969940391419 ns=0D=0D
[    0.100715] setup_percpu: NR_CPUS:64 nr_cpumask_bits:64 nr_cpu_ids:1 nr_=
node_ids:1=0D=0D
[    0.101067] percpu: Embedded 51 pages/cpu s170968 r8192 d29736 u2097152=
=0D=0D
[    0.101083] node[0] zonelist: 0:DMA32 0:DMA =0D=0D
[    0.101086] Built 1 zonelists, mobility grouping on.  Total pages: 12887=
3=0D=0D
[    0.101087] Policy zone: DMA32=0D=0D
[    0.101089] Kernel command line: root=3D/dev/sda console=3DttyS0 =0D=0D
[    0.102238] Memory: 486332K/523768K available (14340K kernel code, 1311K=
 rwdata, 3128K rodata, 1308K init, 1276K bss, 37436K reserved, 0K cma-reser=
ved)=0D=0D
[    0.102591] SLUB: HWalign=3D64, Order=3D0-3, MinObjects=3D0, CPUs=3D1, N=
odes=3D1=0D=0D
[    0.102930] rcu: Hierarchical RCU implementation.=0D=0D
[    0.102931] rcu: 	RCU event tracing is enabled.=0D=0D
[    0.102932] rcu: 	RCU restricting CPUs from NR_CPUS=3D64 to nr_cpu_ids=
=3D1.=0D=0D
[    0.102933] rcu: RCU calculated value of scheduler-enlistment delay is 1=
00 jiffies.=0D=0D
[    0.102934] rcu: Adjusting geometry for rcu_fanout_leaf=3D16, nr_cpu_ids=
=3D1=0D=0D
[    0.103054] NR_IRQS: 4352, nr_irqs: 256, preallocated irqs: 16=0D=0D
[    0.103367] random: get_random_bytes called from start_kernel+0x2c4/0x49=
8 with crng_init=3D0=0D=0D
[    0.110098] Console: colour VGA+ 80x25=0D=0D
[    0.176180] printk: console [ttyS0] enabled=0D=0D
[    0.176728] ACPI: Core revision 20190509=0D=0D
[    0.177463] clocksource: hpet: mask: 0xffffffff max_cycles: 0xffffffff, =
max_idle_ns: 19112604467 ns=0D=0D
[    0.178714] APIC: Switch to symmetric I/O mode setup=0D=0D
[    0.180399] ..TIMER: vector=3D0x30 apic1=3D0 pin1=3D2 apic2=3D-1 pin2=3D=
-1=0D=0D
[    0.185697] clocksource: tsc-early: mask: 0xffffffffffffffff max_cycles:=
 0x39a8554e05d, max_idle_ns: 881590540420 ns=0D=0D
[    0.187046] Calibrating delay loop (skipped), value calculated using tim=
er frequency.. 3999.99 BogoMIPS (lpj=3D1999996)=0D=0D
[    0.188046] pid_max: default: 32768 minimum: 301=0D=0D
[    0.189060] LSM: Security Framework initializing=0D=0D
[    0.189653] SELinux:  Initializing.=0D=0D
[    0.190054] *** VALIDATE SELinux ***=0D=0D
[    0.190556] Dentry cache hash table entries: 65536 (order: 7, 524288 byt=
es)=0D=0D
[    0.191100] Inode-cache hash table entries: 32768 (order: 6, 262144 byte=
s)=0D=0D
[    0.192058] Mount-cache hash table entries: 1024 (order: 1, 8192 bytes)=
=0D=0D
[    0.193047] Mountpoint-cache hash table entries: 1024 (order: 1, 8192 by=
tes)=0D=0D
[    0.194137] *** VALIDATE proc ***=0D=0D
[    0.195066] *** VALIDATE cgroup1 ***=0D=0D
[    0.195530] *** VALIDATE cgroup2 ***=0D=0D
[    0.196165] Last level iTLB entries: 4KB 512, 2MB 255, 4MB 127=0D=0D
[    0.197046] Last level dTLB entries: 4KB 512, 2MB 255, 4MB 127, 1GB 0=0D=
=0D
[    0.197853] Spectre V2 : Mitigation: Full AMD retpoline=0D=0D
[    0.198045] Spectre V2 : Spectre v2 / SpectreRSB mitigation: Filling RSB=
 on context switch=0D=0D
[    0.199046] Spectre V2 : mitigation: Enabling conditional Indirect Branc=
h Prediction Barrier=0D=0D
[    0.200046] Speculative Store Bypass: Mitigation: Speculative Store Bypa=
ss disabled via prctl and seccomp=0D=0D
[    0.205525] Freeing SMP alternatives memory: 40K=0D=0D
[    0.206148] smpboot: CPU0: AMD EPYC 7401P 24-Core Processor (family: 0x1=
7, model: 0x1, stepping: 0x2)=0D=0D
[    0.207115] Performance Events: Fam17h core perfctr, AMD PMU driver.=0D=
=0D
[    0.207932] ... version:                0=0D=0D
[    0.208047] ... bit width:              48=0D=0D
[    0.208573] ... generic registers:      6=0D=0D
[    0.209047] ... value mask:             0000ffffffffffff=0D=0D
[    0.209714] ... max period:             00007fffffffffff=0D=0D
[    0.210046] ... fixed-purpose events:   0=0D=0D
[    0.210556] ... event mask:             000000000000003f=0D=0D
[    0.211077] rcu: Hierarchical SRCU implementation.=0D=0D
[    0.211716] Decoding supported only on Scalable MCA processors.=0D=0D
[    0.212065] smp: Bringing up secondary CPUs ...=0D=0D
[    0.212640] smp: Brought up 1 node, 1 CPU=0D=0D
[    0.213047] smpboot: Max logical packages: 1=0D=0D
[    0.213588] smpboot: Total of 1 processors activated (3999.99 BogoMIPS)=
=0D=0D
[    0.214176] devtmpfs: initialized=0D=0D
[    0.214753] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xfffffff=
f, max_idle_ns: 1911260446275000 ns=0D=0D
[    0.215050] futex hash table entries: 256 (order: 2, 16384 bytes)=0D=0D
[    0.215897] PM: RTC time: 18:27:49, date: 2019-05-29=0D=0D
[    0.216386] NET: Registered protocol family 16=0D=0D
[    0.217012] audit: initializing netlink subsys (disabled)=0D=0D
[    0.217253] cpuidle: using governor menu=0D=0D
[    0.218179] ACPI: bus type PCI registered=0D=0D
[    0.218756] PCI: Using configuration type 1 for base access=0D=0D
[    0.219047] PCI: Using configuration type 1 for extended access=0D=0D
[    0.220053] audit: type=3D2000 audit(1559154469.038:1): state=3Dinitiali=
zed audit_enabled=3D0 res=3D1=0D=0D
[    0.222328] HugeTLB registered 2.00 MiB page size, pre-allocated 0 pages=
=0D=0D
[    0.223111] cryptomgr_test (20) used greatest stack depth: 15520 bytes l=
eft=0D=0D
[    0.224013] kworker/u2:0 (22) used greatest stack depth: 14664 bytes lef=
t=0D=0D
[    0.224111] kworker/u2:0 (26) used greatest stack depth: 14216 bytes lef=
t=0D=0D
[    0.225711] ACPI: Added _OSI(Module Device)=0D=0D
[    0.226051] ACPI: Added _OSI(Processor Device)=0D=0D
[    0.226618] ACPI: Added _OSI(3.0 _SCP Extensions)=0D=0D
[    0.227047] ACPI: Added _OSI(Processor Aggregator Device)=0D=0D
[    0.227737] ACPI: Added _OSI(Linux-Dell-Video)=0D=0D
[    0.228071] ACPI: Added _OSI(Linux-Lenovo-NV-HDMI-Audio)=0D=0D
[    0.228741] ACPI: Added _OSI(Linux-HPI-Hybrid-Graphics)=0D=0D
[    0.229545] ACPI: 1 ACPI AML tables successfully acquired and loaded=0D=
=0D
[    0.231171] ACPI: Interpreter enabled=0D=0D
[    0.231666] ACPI: (supports S0 S3 S4 S5)=0D=0D
[    0.232048] ACPI: Using IOAPIC for interrupt routing=0D=0D
[    0.232683] PCI: Using host bridge windows from ACPI; if necessary, use =
"pci=3Dnocrs" and report a bug=0D=0D
[    0.233119] ACPI: Enabled 2 GPEs in block 00 to 0F=0D=0D
[    0.235370] ACPI: PCI Root Bridge [PCI0] (domain 0000 [bus 00-ff])=0D=0D
[    0.236052] acpi PNP0A03:00: _OSC: OS supports [ExtendedConfig ASPM Cloc=
kPM Segments MSI HPX-Type3]=0D=0D
[    0.237078] PCI host bridge to bus 0000:00=0D=0D
[    0.237602] pci_bus 0000:00: root bus resource [io  0x0000-0x0cf7 window=
]=0D=0D
[    0.238048] pci_bus 0000:00: root bus resource [io  0x0d00-0xffff window=
]=0D=0D
[    0.238942] pci_bus 0000:00: root bus resource [mem 0x000a0000-0x000bfff=
f window]=0D=0D
[    0.239048] pci_bus 0000:00: root bus resource [mem 0x20000000-0xfebffff=
f window]=0D=0D
[    0.240014] pci_bus 0000:00: root bus resource [mem 0x100000000-0x17ffff=
fff window]=0D=0D
[    0.240047] pci_bus 0000:00: root bus resource [bus 00-ff]=0D=0D
[    0.240789] pci 0000:00:00.0: [8086:1237] type 00 class 0x060000=0D=0D
[    0.241446] pci 0000:00:01.0: [8086:7000] type 00 class 0x060100=0D=0D
[    0.242459] pci 0000:00:01.1: [8086:7010] type 00 class 0x010180=0D=0D
[    0.244902] pci 0000:00:01.1: reg 0x20: [io  0xc040-0xc04f]=0D=0D
[    0.245838] pci 0000:00:01.1: legacy IDE quirk: reg 0x10: [io  0x01f0-0x=
01f7]=0D=0D
[    0.246049] pci 0000:00:01.1: legacy IDE quirk: reg 0x14: [io  0x03f6]=
=0D=0D
[    0.246897] pci 0000:00:01.1: legacy IDE quirk: reg 0x18: [io  0x0170-0x=
0177]=0D=0D
[    0.247047] pci 0000:00:01.1: legacy IDE quirk: reg 0x1c: [io  0x0376]=
=0D=0D
[    0.248021] pci 0000:00:01.3: [8086:7113] type 00 class 0x068000=0D=0D
[    0.248360] pci 0000:00:01.3: quirk: [io  0x0600-0x063f] claimed by PIIX=
4 ACPI=0D=0D
[    0.249053] pci 0000:00:01.3: quirk: [io  0x0700-0x070f] claimed by PIIX=
4 SMB=0D=0D
[    0.250137] pci 0000:00:02.0: [1234:1111] type 00 class 0x030000=0D=0D
[    0.252059] pci 0000:00:02.0: reg 0x10: [mem 0xfd000000-0xfdffffff pref]=
=0D=0D
[    0.256072] pci 0000:00:02.0: reg 0x18: [mem 0xfebf0000-0xfebf0fff]=0D=0D
[    0.263058] pci 0000:00:02.0: reg 0x30: [mem 0xfebe0000-0xfebeffff pref]=
=0D=0D
[    0.264378] pci 0000:00:03.0: [8086:100e] type 00 class 0x020000=0D=0D
[    0.266050] pci 0000:00:03.0: reg 0x10: [mem 0xfebc0000-0xfebdffff]=0D=0D
[    0.268049] pci 0000:00:03.0: reg 0x14: [io  0xc000-0xc03f]=0D=0D
[    0.274058] pci 0000:00:03.0: reg 0x30: [mem 0xfeb80000-0xfebbffff pref]=
=0D=0D
[    0.276310] ACPI: PCI Interrupt Link [LNKA] (IRQs 5 *10 11)=0D=0D
[    0.277301] ACPI: PCI Interrupt Link [LNKB] (IRQs 5 *10 11)=0D=0D
[    0.278248] ACPI: PCI Interrupt Link [LNKC] (IRQs 5 10 *11)=0D=0D
[    0.279247] ACPI: PCI Interrupt Link [LNKD] (IRQs 5 10 *11)=0D=0D
[    0.280166] ACPI: PCI Interrupt Link [LNKS] (IRQs *9)=0D=0D
[    0.281410] pci 0000:00:02.0: vgaarb: setting as boot VGA device=0D=0D
[    0.282044] pci 0000:00:02.0: vgaarb: VGA device added: decodes=3Dio+mem=
,owns=3Dio+mem,locks=3Dnone=0D=0D
[    0.282056] pci 0000:00:02.0: vgaarb: bridge control possible=0D=0D
[    0.283054] vgaarb: loaded=0D=0D
[    0.284164] SCSI subsystem initialized=0D=0D
[    0.285174] ACPI: bus type USB registered=0D=0D
[    0.286088] usbcore: registered new interface driver usbfs=0D=0D
[    0.287074] usbcore: registered new interface driver hub=0D=0D
[    0.288087] usbcore: registered new device driver usb=0D=0D
[    0.289088] pps_core: LinuxPPS API ver. 1 registered=0D=0D
[    0.290054] pps_core: Software ver. 5.3.6 - Copyright 2005-2007 Rodolfo =
Giometti <giometti@linux.it>=0D=0D
[    0.291064] PTP clock support registered=0D=0D
[    0.292127] EDAC MC: Ver: 3.0.0=0D=0D
[    0.293326] Advanced Linux Sound Architecture Driver Initialized.=0D=0D
[    0.294072] PCI: Using ACPI for IRQ routing=0D=0D
[    0.295369] NetLabel: Initializing=0D=0D
[    0.296052] NetLabel:  domain hash size =3D 128=0D=0D
[    0.297050] NetLabel:  protocols =3D UNLABELED CIPSOv4 CALIPSO=0D=0D
[    0.298079] NetLabel:  unlabeled traffic allowed by default=0D=0D
[    0.299200] hpet0: at MMIO 0xfed00000, IRQs 2, 8, 0=0D=0D
[    0.300053] hpet0: 3 comparators, 64-bit 100.000000 MHz counter=0D=0D
[    0.306070] clocksource: Switched to clocksource tsc-early=0D=0D
[    0.379516] VFS: Disk quotas dquot_6.6.0=0D=0D
[    0.380072] VFS: Dquot-cache hash table entries: 512 (order 0, 4096 byte=
s)=0D=0D
[    0.380975] *** VALIDATE hugetlbfs ***=0D=0D
[    0.381470] pnp: PnP ACPI init=0D=0D
[    0.382179] pnp: PnP ACPI: found 6 devices=0D=0D
[    0.388273] clocksource: acpi_pm: mask: 0xffffff max_cycles: 0xffffff, m=
ax_idle_ns: 2085701024 ns=0D=0D
[    0.389427] pci_bus 0000:00: resource 4 [io  0x0000-0x0cf7 window]=0D=0D
[    0.390251] pci_bus 0000:00: resource 5 [io  0x0d00-0xffff window]=0D=0D
[    0.391054] pci_bus 0000:00: resource 6 [mem 0x000a0000-0x000bffff windo=
w]=0D=0D
[    0.391914] pci_bus 0000:00: resource 7 [mem 0x20000000-0xfebfffff windo=
w]=0D=0D
[    0.392777] pci_bus 0000:00: resource 8 [mem 0x100000000-0x17fffffff win=
dow]=0D=0D
[    0.393680] NET: Registered protocol family 2=0D=0D
[    0.394330] tcp_listen_portaddr_hash hash table entries: 256 (order: 0, =
4096 bytes)=0D=0D
[    0.395302] TCP established hash table entries: 4096 (order: 3, 32768 by=
tes)=0D=0D
[    0.396246] TCP bind hash table entries: 4096 (order: 4, 65536 bytes)=0D=
=0D
[    0.397089] TCP: Hash tables configured (established 4096 bind 4096)=0D=
=0D
[    0.397884] UDP hash table entries: 256 (order: 1, 8192 bytes)=0D=0D
[    0.398624] UDP-Lite hash table entries: 256 (order: 1, 8192 bytes)=0D=0D
[    0.399421] NET: Registered protocol family 1=0D=0D
[    0.400031] RPC: Registered named UNIX socket transport module.=0D=0D
[    0.400773] RPC: Registered udp transport module.=0D=0D
[    0.401367] RPC: Registered tcp transport module.=0D=0D
[    0.401958] RPC: Registered tcp NFSv4.1 backchannel transport module.=0D=
=0D
[    0.402824] pci 0000:00:01.0: PIIX3: Enabling Passive Release=0D=0D
[    0.403549] pci 0000:00:00.0: Limiting direct PCI/PCI transfers=0D=0D
[    0.404288] pci 0000:00:01.0: Activating ISA DMA hang workarounds=0D=0D
[    0.405080] pci 0000:00:02.0: Video device with shadowed ROM at [mem 0x0=
00c0000-0x000dffff]=0D=0D
[    0.406129] PCI: CLS 0 bytes, default 64=0D=0D
[    0.406744] check: Scanning for low memory corruption every 60 seconds=
=0D=0D
[    0.407727] Initialise system trusted keyrings=0D=0D
[    0.408320] workingset: timestamp_bits=3D56 max_order=3D17 bucket_order=
=3D0=0D=0D
[    0.410320] NFS: Registering the id_resolver key type=0D=0D
[    0.410953] Key type id_resolver registered=0D=0D
[    0.411481] Key type id_legacy registered=0D=0D
[    0.412107] Key type asymmetric registered=0D=0D
[    0.412623] Asymmetric key parser 'x509' registered=0D=0D
[    0.413235] Block layer SCSI generic (bsg) driver version 0.4 loaded (ma=
jor 251)=0D=0D
[    0.414152] io scheduler mq-deadline registered=0D=0D
[    0.414715] io scheduler kyber registered=0D=0D
[    0.415305] input: Power Button as /devices/LNXSYSTM:00/LNXPWRBN:00/inpu=
t/input0=0D=0D
[    0.416234] ACPI: Power Button [PWRF]=0D=0D
[    0.416819] Serial: 8250/16550 driver, 4 ports, IRQ sharing enabled=0D=0D
[    0.440750] 00:05: ttyS0 at I/O 0x3f8 (irq =3D 4, base_baud =3D 115200) =
is a 16550A=0D=0D
[    0.441978] Non-volatile memory driver v1.3=0D=0D
[    0.442575] Linux agpgart interface v0.103=0D=0D
[    0.444240] loop: module loaded=0D=0D
[    0.444948] ata_piix 0000:00:01.1: failed to start port 0 (errno=3D-12)=
=0D=0D
[    0.445938] ata_piix: probe of 0000:00:01.1 failed with error -12=0D=0D
[    0.446748] e100: Intel(R) PRO/100 Network Driver, 3.5.24-k2-NAPI=0D=0D
[    0.447504] e100: Copyright(c) 1999-2006 Intel Corporation=0D=0D
[    0.448196] e1000: Intel(R) PRO/1000 Network Driver - version 7.3.21-k8-=
NAPI=0D=0D
[    0.449116] e1000: Copyright (c) 1999-2006 Intel Corporation.=0D=0D
[    0.462026] PCI Interrupt Link [LNKC] enabled at IRQ 11=0D=0D
[    0.764450] e1000 0000:00:03.0 eth0: (PCI:33MHz:32-bit) 52:54:00:12:34:5=
6=0D=0D
[    0.765305] e1000 0000:00:03.0 eth0: Intel(R) PRO/1000 Network Connectio=
n=0D=0D
[    0.766192] e1000e: Intel(R) PRO/1000 Network Driver - 3.2.6-k=0D=0D
[    0.766955] e1000e: Copyright(c) 1999 - 2015 Intel Corporation.=0D=0D
[    0.767732] sky2: driver version 1.30=0D=0D
[    0.768275] ehci_hcd: USB 2.0 'Enhanced' Host Controller (EHCI) Driver=
=0D=0D
[    0.769128] ehci-pci: EHCI PCI platform driver=0D=0D
[    0.769710] ohci_hcd: USB 1.1 'Open' Host Controller (OHCI) Driver=0D=0D
[    0.770503] ohci-pci: OHCI PCI platform driver=0D=0D
[    0.771081] uhci_hcd: USB Universal Host Controller Interface driver=0D=
=0D
[    0.771910] usbcore: registered new interface driver usblp=0D=0D
[    0.772628] usbcore: registered new interface driver usb-storage=0D=0D
[    0.773424] i8042: PNP: PS/2 Controller [PNP0303:KBD,PNP0f13:MOU] at 0x6=
0,0x64 irq 1,12=0D=0D
[    0.775080] serio: i8042 KBD port at 0x60,0x64 irq 1=0D=0D
[    0.775729] serio: i8042 AUX port at 0x60,0x64 irq 12=0D=0D
[    0.776961] input: AT Translated Set 2 keyboard as /devices/platform/i80=
42/serio0/input/input1=0D=0D
[    0.779751] rtc_cmos 00:00: RTC can wake from S4=0D=0D
[    0.780682] rtc_cmos 00:00: registered as rtc0=0D=0D
[    0.781298] rtc_cmos 00:00: alarms up to one day, y3k, 114 bytes nvram, =
hpet irqs=0D=0D
[    0.782350] device-mapper: ioctl: 4.40.0-ioctl (2019-01-18) initialised:=
 dm-devel@redhat.com=0D=0D
[    0.783478] hidraw: raw HID events driver (C) Jiri Kosina=0D=0D
[    0.784247] usbcore: registered new interface driver usbhid=0D=0D
[    0.784940] usbhid: USB HID core driver=0D=0D
[    0.785877] Initializing XFRM netlink socket=0D=0D
[    0.786497] NET: Registered protocol family 10=0D=0D
[    0.787219] Segment Routing with IPv6=0D=0D
[    0.787713] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver=0D=0D
[    0.788537] NET: Registered protocol family 17=0D=0D
[    0.789122] Key type dns_resolver registered=0D=0D
[    0.789708] mce: Using 10 MCE banks=0D=0D
[    0.790165] sched_clock: Marking stable (714371390, 75773427)->(92556849=
1, -135423674)=0D=0D
[    0.791221] registered taskstats version 1=0D=0D
[    0.791733] Loading compiled-in X.509 certificates=0D=0D
[    0.792509] PM:   Magic number: 3:11:495=0D=0D
[    0.793015] printk: console [netcon0] enabled=0D=0D
[    0.793565] netconsole: network logging started=0D=0D
[    0.794166] cfg80211: Loading compiled-in X.509 certificates for regulat=
ory database=0D=0D
[    0.795403] cfg80211: Loaded X.509 cert 'sforshee: 00b28ddf47aef9cea7'=
=0D=0D
[    0.796230] ALSA device list:=0D=0D
[    0.796679]   No soundcards found.=0D=0D
[    0.797386] platform regulatory.0: Direct firmware load for regulatory.d=
b failed with error -2=0D=0D
[    0.798530] cfg80211: failed to load regulatory.db=0D=0D
[    1.380351] input: ImExPS/2 Generic Explorer Mouse as /devices/platform/=
i8042/serio1/input/input3=0D=0D
[    1.383202] md: Waiting for all devices to be available before autodetec=
t=0D=0D
[    1.385280] md: If you don't use raid, use raid=3Dnoautodetect=0D=0D
[    1.387215] md: Autodetecting RAID arrays.=0D=0D
[    1.388498] md: autorun ...=0D=0D
[    1.389381] md: ... autorun DONE.=0D=0D
[    1.390461] VFS: Cannot open root device "sda" or unknown-block(0,0): er=
ror -6=0D=0D
[    1.392649] Please append a correct "root=3D" boot option; here are the =
available partitions:=0D=0D
[    1.395141] Kernel panic - not syncing: VFS: Unable to mount root fs on =
unknown-block(0,0)=0D=0D
[    1.397600] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.2.0-rc2-next-201=
90529 #1=0D=0D
[    1.399793] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS =
1.12.0-20181126_142135-anatol 04/01/2014=0D=0D
[    1.402816] Call Trace:=0D=0D
[    1.403577]  dump_stack+0x46/0x60=0D=0D
[    1.404586]  panic+0xf6/0x2b7=0D=0D
[    1.405512]  mount_block_root+0x191/0x23b=0D=0D
[    1.406724]  ? do_early_param+0x89/0x89=0D=0D
[    1.407881]  mount_root+0x10a/0x128=0D=0D
[    1.408952]  prepare_namespace+0x130/0x166=0D=0D
[    1.410195]  kernel_init_freeable+0x1df/0x1ea=0D=0D
[    1.411501]  ? rest_init+0x9a/0x9a=0D=0D
[    1.412533]  kernel_init+0x5/0xf6=0D=0D
[    1.413536]  ret_from_fork+0x22/0x40=0D=0D
[    1.417612] Kernel Offset: 0x800000 from 0xffffffff81000000 (relocation =
range: 0xffffffff80000000-0xffffffffbfffffff)=0D=0D
[    1.420749] ---[ end Kernel panic - not syncing: VFS: Unable to mount ro=
ot fs on unknown-block(0,0) ]---=0D=0D

--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--envbJBWh7q8WU6mo--

