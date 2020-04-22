Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C338D1B4C0B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 19:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7WlclNMz0hVmeOagf0bTDVePKIf4yDWhsmGnv2rJ6vU=; b=QLA
	KJGl77AVEq296mSb8QijPimhmMIaoFaxjfpTLHl6MOGqikbiof6CWaI2R2n+6U9LpiZ9zpCaWMaPd
	Vsjk0OIEx75iZqaCzRP/R/t53h0OEbRZIUfuA9p1bYzjJ+rIXeeaYWnfEawq8JfU87n6NW/S4YTra
	89KOjuBRXchD37WcSXqeimnRPUn7+m3VDSb7IkMjvbCXxiDqwOKkXJAcszb01CM7H8gpUll1bCZvb
	Sw49vfr74oSlRcosoUKqGlTo/BZr/xSL4Hx+QnkhXom8BshIcyVZaussGRu/VR/GEOhG0M4ZL/1vs
	Pt0DACYeCCUXhr0FwlliQpeYSZ+kpVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRJQh-0002Vp-97; Wed, 22 Apr 2020 17:44:59 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRJQV-0002Ub-Ti
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 17:44:49 +0000
Received: by mail-ot1-x341.google.com with SMTP id j26so2924390ots.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Apr 2020 10:44:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gateworks-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:from:date:message-id:subject:to;
 bh=mRd5xoNkv3Trti2SfbsSjTeB2/XVofxNoDWz+izXFQc=;
 b=nCNiGpyePGNuaI09XzX0u/Mk5Hcg5TagYiAhuGxB88QWQavvCD2R18I/tXdvcPJRta
 2T0GtGPxu3tlFmWKRVYFB7KsyvMLUWX1kpKBTwlhy/YwhbbIfE1mSJ92oRwOFYgvMi2/
 AuSshtQnlOI9bvh1tfrJXuRqRa/n5CpUd+dqkUA/6BvHjFY1sR/m7W7EOMrKMPm0qpk/
 VeGd+DJ+MyCb4w3wBc0DcUqKOrVFS+20xQU8zqnWpVGrlkM6omzjOh0O5Et+gNXIqe2W
 c4mhs+iUFA5ev7jlECJ81ELSEQKUzpBV4wO2UMTevauyR9LLYvkV4Pquzotydo/5cAPa
 8Z4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=mRd5xoNkv3Trti2SfbsSjTeB2/XVofxNoDWz+izXFQc=;
 b=b8Yfx0SPS8D2Zq59XZy9LMVPWApmLv4FFVVz28TMsFijNDHSjO0m3NJ3mcv/VDikT3
 aJoBP816JU6BdnWRDVFEZ31tWzzmMz0OV2bZPHuHh8pT7nxrDfqNL7f8zlNStDB+qigd
 hzv9TFvcivblF9pvn/RXrMMZGxyS/L9DZm2ruob/6U5bBlVEnmDn5Be9r+KU12v3wdzQ
 xUPpV0kF+8PSafFfDvFG1QJ9HAbtH5VltzQ03wDHbmCZwlubvK2nMKljKf0jqB9zvmXQ
 rkDSnsxCJiI6JW/D6Q/JE9bSxyznVxs2rZVtZM2LCSmLFXRodofstcnP6Dun9lUrDsY8
 yG7g==
X-Gm-Message-State: AGi0PuZEICj1W2nfDOtYwRc+RdCHL4Ff3ZCOjYUzJbgUrPx7UwZR2cYJ
 nBNX+Yy9Hug8gqLib7Kk19pAeVJ7ZH7CSm+IXVCCYA==
X-Google-Smtp-Source: APiQypK0SkV7CrSiESLRKKfMdyoU4UZfSXmavepxEB1eZRaajGyO/z/5o746qlHvZrdGh8ovQBAo0yfxs1yoLjIiaAw=
X-Received: by 2002:a9d:2f48:: with SMTP id h66mr170246otb.252.1587577485721; 
 Wed, 22 Apr 2020 10:44:45 -0700 (PDT)
MIME-Version: 1.0
From: Tim Harvey <tharvey@gateworks.com>
Date: Wed, 22 Apr 2020 10:44:33 -0700
Message-ID: <CAJ+vNU0x+Dd67thRXABKG1AmJW6Babs_XE2hG01yuV3L9meuWA@mail.gmail.com>
Subject: IMX8MM kernel panic on 5.5+ due to patch series 'Raspberry Pi 4 DMA
 addressing support'
To: Fabio Estevam <festevam@gmail.com>, Shawn Guo <shawnguo@kernel.org>, 
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>, 
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, Christoph Hellwig <hch@lst.de>,
 Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_104448_027889_7018C4E2 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Greetings,

I'm seeing a kernel panic on an IMX8MM board using defconfig starting
with the patch series 'Raspberry Pi 4 DMA addressing support':

734f924 mm: refresh ZONE_DMA and ZONE_DMA32 comments in 'enum zone_type'
1a8e1ce arm64: use both ZONE_DMA and ZONE_DMA32
a573cdd arm64: rename variables used to calculate ZONE_DMA32's size
ae970dc arm64: mm: use arm64_dma_phys_limit instead of calling
max_zone_dma_phys()

Strangely I don't see this panic on an ARM64 OcteonTX CPU (thunderx)
with defconfig so perhaps this has to do with some dt thing?

I find that a573cdd ("arm64: rename variables used to calculate
ZONE_DMA32's size") breaks building arm64 defconfig due to renaming of
arm64_dma_phys_limit to arm64_dma32_phys_limit but
arm64_dma_phys_limit still used in includ/asm/processor.h

The following patch resolves this build error and panic:
diff --git a/arch/arm64/include/asm/processor.h
b/arch/arm64/include/asm/processor.h
index 5623685..9057495 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -90,8 +90,8 @@
                                        base)
 #endif /* CONFIG_ARM64_FORCE_52BIT */

-extern phys_addr_t arm64_dma_phys_limit;
-#define ARCH_LOW_ADDRESS_LIMIT (arm64_dma_phys_limit - 1)
+extern phys_addr_t arm64_dma32_phys_limit;
+#define ARCH_LOW_ADDRESS_LIMIT (arm64_dma32_phys_limit - 1)

 struct debug_info {
 #ifdef CONFIG_HAVE_HW_BREAKPOINT

Anyone know why this isn't affecting all ARM64?

here is the panic:
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.7.0-rc2-00001-gcd0ff1c-dirty
(tharvey@tharvey) (gcc version 8.4.0 (Buildroot 2020.02.1), GNU ld
(GNU Binutils) 2.32) #31 SMP PREEMPT Tue Apr 21 11:10:32 PDT 2020
[    0.000000] Machine model: Gateworks Venice i.MX8MM board
[    0.000000] earlycon: ec_imx6q0 at MMIO 0x0000000030890000 (options '115200')
[    0.000000] printk: bootconsole [ec_imx6q0] enabled
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 32 MiB at 0x00000000be000000
[    0.000000] NUMA: No NUMA configuration found
[    0.000000] NUMA: Faking a node at [mem
0x0000000040000000-0x00000000bfffffff]
[    0.000000] NUMA: NODE_DATA [mem 0xbdbd6100-0xbdbd7fff]
[    0.000000] Zone ranges:
[    0.000000]   DMA      [mem 0x0000000040000000-0x000000007fffffff]
[    0.000000]   DMA32    [mem 0x0000000080000000-0x00000000bfffffff]
[    0.000000]   Normal   empty
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] Initmem setup node 0 [mem 0x0000000040000000-0x00000000bfffffff]
[    0.000000] On node 0 totalpages: 524288
[    0.000000]   DMA zone: 4096 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 262144 pages, LIFO batch:63
[    0.000000]   DMA32 zone: 4096 pages used for memmap
[    0.000000]   DMA32 zone: 262144 pages, LIFO batch:63
[    0.000000] psci: probing for conduit method from DT.
[    0.000000] psci: PSCIv1.1 detected in firmware.
[    0.000000] psci: Using standard PSCI v0.2 function IDs
[    0.000000] psci: MIGRATE_INFO_TYPE not supported.
[    0.000000] psci: SMC Calling Convention v1.1
[    0.000000] percpu: Embedded 23 pages/cpu s53784 r8192 d32232 u94208
[    0.000000] pcpu-alloc: s53784 r8192 d32232 u94208 alloc=23*4096
[    0.000000] pcpu-alloc: [0] 0 [0] 1 [0] 2 [0] 3
[    0.000000] Detected VIPT I-cache on CPU0
[    0.000000] CPU features: detected: ARM erratum 845719
[    0.000000] CPU features: detected: GIC system register CPU interface
[    0.000000] Speculative Store Bypass Disable mitigation not required
[    0.000000] Built 1 zonelists, mobility grouping on.  Total pages: 516096
[    0.000000] Policy zone: DMA32
[    0.000000] Kernel command line: console=ttymxc1,115200
earlycon=ec_imx6q,0x30890000,115200 debug
[    0.000000] Dentry cache hash table entries: 262144 (order: 9,
2097152 bytes, linear)
[    0.000000] Inode-cache hash table entries: 131072 (order: 8,
1048576 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] Unable to handle kernel paging request at virtual
address ffff00003de10000
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x96000047
[    0.000000]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.000000]   SET = 0, FnV = 0
[    0.000000]   EA = 0, S1PTW = 0
[    0.000000] Data abort info:
[    0.000000]   ISV = 0, ISS = 0x00000047
[    0.000000]   CM = 0, WnR = 1
[    0.000000] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000416e2000
[    0.000000] [ffff00003de10000] pgd=00000000bdff8003
[    0.000000] Unable to handle kernel paging request at virtual
address ffff00007dff8000
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x96000007
[    0.000000]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.000000]   SET = 0, FnV = 0
[    0.000000]   EA = 0, S1PTW = 0
[    0.000000] Data abort info:
[    0.000000]   ISV = 0, ISS = 0x00000007
[    0.000000]   CM = 0, WnR = 0
[    0.000000] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000416e2000
[    0.000000] [ffff00007dff8000] pgd=00000000bdff8003
[    0.000000] Unable to handle kernel paging request at virtual
address ffff00007dff8008
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x96000007
[    0.000000]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.000000]   SET = 0, FnV = 0
[    0.000000]   EA = 0, S1PTW = 0
[    0.000000] Data abort info:
[    0.000000]   ISV = 0, ISS = 0x00000007
[    0.000000]   CM = 0, WnR = 0
[    0.000000] swapper pgtable: 4k pages, 48-bit VAs, pgdp=00000000416e2000
[    0.000000] [ffff00007dff8008] pgd=00000000bdff8003
[    0.000000] Unable to handle kernel paging request at virtual
address ffff00007dff8008
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x96000007
...
[    0.000000] Kernel panic - not syncing: kernel stack overflow
[    0.000000] ---[ end Kernel panic - not syncing: kernel stack overflow ]---

Best Regards,

Tim

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
