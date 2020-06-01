Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80ED21EA396
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 14:13:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QoZnqw3BcQmWdz34c4bfoU6QxTIPVK+xJ78v1pTG4QU=; b=ndvYMsIJ/qOP5T
	/OeR+ax4R60nlkZWdKCQCJzipHH72VUney5bE6u0puj2LIYpK4zuWTSg0PryVcRRo8AdOXDYX5Wcj
	+piCB4iz3vSYlqmHpcbzj51UwUk4aB2gvH/Abt22WywWInXG/VJsnuh34mdAO8cCFTlNd+HK/xs5T
	OXtpcbEq6c4YdcBHP0QLUeFW9q6qNL1oMLjv2CaFYQg7RgEAs8N0WL3UmBxI0JyRC6DlBc4jjLLn/
	65365I/sR4p/6XkM7QIPq5QJiglOuO63PcZ2hc4LooHb3cniMTUL7Oh2AZXpANWAwjdelkaS3MDKr
	oOLd90i+lbNQUku4MrGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfjK5-0003pL-2s; Mon, 01 Jun 2020 12:13:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfj9i-0001iI-Ng; Mon, 01 Jun 2020 12:03:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id c71so10402088wmd.5;
 Mon, 01 Jun 2020 05:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=sZjVNIjGP/Bx51vzpDlzDTMKkVd60HFTo8keDsMxiJw=;
 b=JKFU3FthowzwRxaiuvzjLOQw6xJuKeRX1pIe2uSalbgE5w8vqN0XSAsFXsmdYAcPoz
 HyBuG7yoD8SIAVhMuFcAFAL2X7xSmkziVDsXoNcH8OvB6O4DrsI92aU8CVqx5zBDoJtk
 KtoaXrG/fsVwYo4nv2VVo0eifmbVYcApuPcnX5zJ240Q2h0G0MM6oQkqupmSt0OOaDK5
 3k5vhigwXpi64lSvOEvDfNEHOTw9r9ToWpL8PQZGDHq23/jZaxEEuQ8hu/z4OToQELrV
 MSM5uzFtEhk3KKQNskK8WMGCe7fU3skKyF9xlJrIHrZHjDrdmlBw6R0bGfBu3ZiZDl/N
 PBZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=sZjVNIjGP/Bx51vzpDlzDTMKkVd60HFTo8keDsMxiJw=;
 b=Ux37yB3C13hA/H7wbrrhnjQFsU7xbY2VbPFZOERuNc3vCQp4tv0K4T2Td/z/BpuZIk
 5yS0sL9n+b2KLNVvUfPU77mWOt6KvApGJOE+r2jkfvbtmA7+eJ+TJPxlC7OAy1Y+Jt2Q
 7c0Zd2ISLbZcGOrX1Z8E5mFvCDi2mVXszUS4yX3W/3cpQGXi9hLTpjbMP+ZN9hG0Ng4Q
 qTRU6uPTWiluJVYq0tYTlAVAzmx4PdvtRjmcMQNf1oXSqumkljKdtzX7bvhD5nkIFAOA
 Vo+n3JWh6VIGKMsjntm2IbJcWaGNMyq51C2P2L5kWtx/WiGkpYMncgbdod2gvyL2VB4I
 oImQ==
X-Gm-Message-State: AOAM532TXIhvsu23B5LrV4U8em6BzkAOj3DRjGCQ2PoYKHUuAlNd1h5W
 0TMuTfQ4z7iwyzPz4Y+ad57AYJHyGSHBkDWrWwo=
X-Google-Smtp-Source: ABdhPJyD5FLC1UsAbK64ioTyzbnK7EkqGeH/L72vXQ2811vm0QyOeaErtoSCzdwkSLfY12Tse/LurC3Z+xnGaLZNCXw=
X-Received: by 2002:a1c:5a82:: with SMTP id
 o124mr21011494wmb.188.1591012980371; 
 Mon, 01 Jun 2020 05:03:00 -0700 (PDT)
MIME-Version: 1.0
References: <20200521093805.64398-1-chenzhou10@huawei.com>
In-Reply-To: <20200521093805.64398-1-chenzhou10@huawei.com>
From: Prabhakar Kushwaha <prabhakar.pkin@gmail.com>
Date: Mon, 1 Jun 2020 17:32:24 +0530
Message-ID: <CAJ2QiJ+1Hj2OQzpR5CfvLGMfTTbXAST94hsbfm0VcDmJKV3WTw@mail.gmail.com>
Subject: Re: [PATCH v8 0/5] support reserving crashkernel above 4G on arm64
 kdump
To: Chen Zhou <chenzhou10@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_050302_808482_65F51C5A 
X-CRM114-Status: GOOD (  21.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [prabhakar.pkin[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: horms@verge.net.au, John Donnelly <John.p.donnelly@oracle.com>,
 bhe@redhat.com, Will Deacon <will@kernel.org>, devicetree@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 kexec mailing list <kexec@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, robh+dt@kernel.org,
 mingo@redhat.com, arnd@arndb.de, guohanjun@huawei.com,
 Thomas Gleixner <tglx@linutronix.de>,
 Prabhakar Kushwaha <pkushwaha@marvell.com>, dyoung@redhat.com,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chen,

On Thu, May 21, 2020 at 3:05 PM Chen Zhou <chenzhou10@huawei.com> wrote:
>
> This patch series enable reserving crashkernel above 4G in arm64.
>
> There are following issues in arm64 kdump:
> 1. We use crashkernel=X to reserve crashkernel below 4G, which will fail
> when there is no enough low memory.
> 2. Currently, crashkernel=Y@X can be used to reserve crashkernel above 4G,
> in this case, if swiotlb or DMA buffers are required, crash dump kernel
> will boot failure because there is no low memory available for allocation.
>
> To solve these issues, introduce crashkernel=X,low to reserve specified
> size low memory.
> Crashkernel=X tries to reserve memory for the crash dump kernel under
> 4G. If crashkernel=Y,low is specified simultaneously, reserve spcified
> size low memory for crash kdump kernel devices firstly and then reserve
> memory above 4G.
>
> When crashkernel is reserved above 4G in memory, that is, crashkernel=X,low
> is specified simultaneously, kernel should reserve specified size low memory
> for crash dump kernel devices. So there may be two crash kernel regions, one
> is below 4G, the other is above 4G.
> In order to distinct from the high region and make no effect to the use of
> kexec-tools, rename the low region as "Crash kernel (low)", and add DT property
> "linux,low-memory-range" to crash dump kernel's dtb to pass the low region.
>
> Besides, we need to modify kexec-tools:
> arm64: kdump: add another DT property to crash dump kernel's dtb(see [1])
>
> The previous changes and discussions can be retrieved from:
>
> Changes since [v7]
> - Move x86 CRASH_ALIGN to 2M
> Suggested by Dave and do some test, move x86 CRASH_ALIGN to 2M.
> - Update Documentation/devicetree/bindings/chosen.txt
> Add corresponding documentation to Documentation/devicetree/bindings/chosen.txt suggested by Arnd.
> - Add Tested-by from Jhon and pk
>
> Changes since [v6]
> - Fix build errors reported by kbuild test robot.
>
> Changes since [v5]
> - Move reserve_crashkernel_low() into kernel/crash_core.c.
> - Delete crashkernel=X,high.
> - Modify crashkernel=X,low.
> If crashkernel=X,low is specified simultaneously, reserve spcified size low
> memory for crash kdump kernel devices firstly and then reserve memory above 4G.
> In addition, rename crashk_low_res as "Crash kernel (low)" for arm64, and then
> pass to crash dump kernel by DT property "linux,low-memory-range".
> - Update Documentation/admin-guide/kdump/kdump.rst.
>
> Changes since [v4]
> - Reimplement memblock_cap_memory_ranges for multiple ranges by Mike.
>
> Changes since [v3]
> - Add memblock_cap_memory_ranges back for multiple ranges.
> - Fix some compiling warnings.
>
> Changes since [v2]
> - Split patch "arm64: kdump: support reserving crashkernel above 4G" as
> two. Put "move reserve_crashkernel_low() into kexec_core.c" in a separate
> patch.
>
> Changes since [v1]:
> - Move common reserve_crashkernel_low() code into kernel/kexec_core.c.
> - Remove memblock_cap_memory_ranges() i added in v1 and implement that
> in fdt_enforce_memory_region().
> There are at most two crash kernel regions, for two crash kernel regions
> case, we cap the memory range [min(regs[*].start), max(regs[*].end)]
> and then remove the memory range in the middle.
>
> [1]: http://lists.infradead.org/pipermail/kexec/2020-May/025128.html
> [v1]: https://lkml.org/lkml/2019/4/2/1174
> [v2]: https://lkml.org/lkml/2019/4/9/86
> [v3]: https://lkml.org/lkml/2019/4/9/306
> [v4]: https://lkml.org/lkml/2019/4/15/273
> [v5]: https://lkml.org/lkml/2019/5/6/1360
> [v6]: https://lkml.org/lkml/2019/8/30/142
> [v7]: https://lkml.org/lkml/2019/12/23/411
>
> Chen Zhou (5):
>   x86: kdump: move reserve_crashkernel_low() into crash_core.c
>   arm64: kdump: reserve crashkenel above 4G for crash dump kernel
>   arm64: kdump: add memory for devices by DT property, low-memory-range
>   kdump: update Documentation about crashkernel on arm64
>   dt-bindings: chosen: Document linux,low-memory-range for arm64 kdump
>

We are getting "warn_alloc" [1] warning during boot of kdump kernel
with bootargs as [2] of primary kernel.
This error observed on ThunderX2  ARM64 platform.

It is observed with latest upstream tag (v5.7-rc3) with this patch set
 and https://lists.infradead.org/pipermail/kexec/2020-May/025128.html
Also **without** this patch-set
"https://www.spinics.net/lists/arm-kernel/msg806882.html"

This issue comes whenever crashkernel memory is reserved after 0xc000_0000.
More details discussed earlier in
https://www.spinics.net/lists/arm-kernel/msg806882.html without any
solution

This patch-set is expected to solve similar kind of issue.
i.e. low memory is only targeted for DMA, swiotlb; So above mentioned
observation should be considered/fixed. .

--pk

[1]
[   30.366695] DMI: Cavium Inc. Saber/Saber, BIOS
TX2-FW-Release-3.1-build_01-2803-g74253a541a mm/dd/yyyy
[   30.367696] NET: Registered protocol family 16
[   30.369973] swapper/0: page allocation failure: order:6,
mode:0x1(GFP_DMA), nodemask=(null),cpuset=/,mems_allowed=0
[   30.369980] CPU: 0 PID: 1 Comm: swapper/0 Not tainted 5.7.0-rc3+ #121
[   30.369981] Hardware name: Cavium Inc. Saber/Saber, BIOS
TX2-FW-Release-3.1-build_01-2803-g74253a541a mm/dd/yyyy
[   30.369984] Call trace:
[   30.369989]  dump_backtrace+0x0/0x1f8
[   30.369991]  show_stack+0x20/0x30
[   30.369997]  dump_stack+0xc0/0x10c
[   30.370001]  warn_alloc+0x10c/0x178
[   30.370004]  __alloc_pages_slowpath.constprop.111+0xb10/0xb50
[   30.370006]  __alloc_pages_nodemask+0x2b4/0x300
[   30.370008]  alloc_page_interleave+0x24/0x98
[   30.370011]  alloc_pages_current+0xe4/0x108
[   30.370017]  dma_atomic_pool_init+0x44/0x1a4
[   30.370020]  do_one_initcall+0x54/0x228
[   30.370027]  kernel_init_freeable+0x228/0x2cc
[   30.370031]  kernel_init+0x1c/0x110
[   30.370034]  ret_from_fork+0x10/0x18
[   30.370036] Mem-Info:
[   30.370064] active_anon:0 inactive_anon:0 isolated_anon:0
[   30.370064]  active_file:0 inactive_file:0 isolated_file:0
[   30.370064]  unevictable:0 dirty:0 writeback:0 unstable:0
[   30.370064]  slab_reclaimable:34 slab_unreclaimable:4438
[   30.370064]  mapped:0 shmem:0 pagetables:14 bounce:0
[   30.370064]  free:1537719 free_pcp:219 free_cma:0
[   30.370070] Node 0 active_anon:0kB inactive_anon:0kB
active_file:0kB inactive_file:0kB unevictable:0kB isolated(anon):0kB
isolated(file):0kB mapped:0kB dirty:0kB writeback:0kB shmem:0kB
shmem_thp: 0kB shmem_pmdmapped: 0kB anon_thp: 0kB writeback_tmp:0kB
unstable:0kB all_unreclaimable? no
[   30.370073] Node 1 active_anon:0kB inactive_anon:0kB
active_file:0kB inactive_file:0kB unevictable:0kB isolated(anon):0kB
isolated(file):0kB mapped:0kB dirty:0kB writeback:0kB shmem:0kB
shmem_thp: 0kB shmem_pmdmapped: 0kB anon_thp: 0kB writeback_tmp:0kB
unstable:0kB all_unreclaimable? no
[   30.370079] Node 0 DMA free:0kB min:0kB low:0kB high:0kB
reserved_highatomic:0KB active_anon:0kB inactive_anon:0kB
active_file:0kB inactive_file:0kB unevictable:0kB writepending:0kB
present:128kB managed:0kB mlocked:0kB kernel_stack:0kB pagetables:0kB
bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
[   30.370084] lowmem_reserve[]: 0 250 6063 6063
[   30.370090] Node 0 DMA32 free:256000kB min:408kB low:664kB
high:920kB reserved_highatomic:0KB active_anon:0kB inactive_anon:0kB
active_file:0kB inactive_file:0kB unevictable:0kB writepending:0kB
present:269700kB managed:256000kB mlocked:0kB kernel_stack:0kB
pagetables:0kB bounce:0kB free_pcp:0kB local_pcp:0kB free_cma:0kB
[   30.370094] lowmem_reserve[]: 0 0 5813 5813
[   30.370100] Node 0 Normal free:5894876kB min:9552kB low:15504kB
high:21456kB reserved_highatomic:0KB active_anon:0kB inactive_anon:0kB
active_file:0kB inactive_file:0kB unevictable:0kB writepending:0kB
present:8388608kB managed:5953112kB mlocked:0kB kernel_stack:21672kB
pagetables:56kB bounce:0kB free_pcp:876kB local_pcp:176kB free_cma:0kB
[   30.370104] lowmem_reserve[]: 0 0 0 0
[   30.370107] Node 0 DMA: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB
0*256kB 0*512kB 0*1024kB 0*2048kB 0*4096kB = 0kB
[   30.370113] Node 0 DMA32: 0*4kB 0*8kB 0*16kB 0*32kB 0*64kB 0*128kB
0*256kB 0*512kB 0*1024kB 1*2048kB (M) 62*4096kB (M) = 256000kB
[   30.370119] Node 0 Normal: 2*4kB (M) 3*8kB (ME) 2*16kB (UE) 3*32kB
(UM) 1*64kB (U) 2*128kB (M) 2*256kB (ME) 3*512kB (ME) 3*1024kB (ME)
3*2048kB (UME) 1436*4096kB (M) = 5893600kB
[   30.370129] Node 0 hugepages_total=0 hugepages_free=0
hugepages_surp=0 hugepages_size=1048576kB
[   30.370130] 0 total pagecache pages
[   30.370132] 0 pages in swap cache
[   30.370134] Swap cache stats: add 0, delete 0, find 0/0
[   30.370135] Free swap  = 0kB
[   30.370136] Total swap = 0kB
[   30.370137] 2164609 pages RAM
[   30.370139] 0 pages HighMem/MovableOnly
[   30.370140] 612331 pages reserved
[   30.370141] 0 pages hwpoisoned
[   30.370143] DMA: failed to allocate 256 KiB pool for atomic
coherent allocation

[2]
root@localhost$ dmesg | grep crash
[    0.000000] Reserving 250MB of low memory at 3724MB for crashkernel
(System low RAM: 2029MB)
[    0.000000] crashkernel reserved: 0x0000000e00000000 -
0x0000001000000000 (8192 MB)
[    0.000000] Kernel command line:
BOOT_IMAGE=(hd11,gpt2)/vmlinuz-5.7.0-rc3+
root=UUID=e5c34f86-6727-4668-81f9-f41433555df6 ro crashkernel=250M,low
crashkernel=8G nowatchdog console=ttyAMA0 default_hugepagesz=1G
hugepagesz=1G hugepages=2
[   44.019393]     crashkernel=8G

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
