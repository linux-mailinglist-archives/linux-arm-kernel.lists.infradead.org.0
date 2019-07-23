Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E2670F39
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 04:43:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g31v9FbE9w5M67KPhJiOmTDuWkL7lX6WRFQutv6SF2k=; b=u71YrndmMeeWsM
	uTEoLqBALGppchsg2IdMq26HhACM5wmHlVQu+sbArYr29JY3YtILtv5d9tEws/RUXO2fG53eRPiGW
	SHfSGeMn8dJ+PmE4Z5TnSH+mJT+eATd2X+RadVO04SNcA3djim8RG7ZTjGg8shr5fjdv6MgP23GPc
	AYJOkJO0JleZ929EbYKUV/uyNqkJ3LIvcy55X6y1CfbJzO09D2j+9sUON8m61CaFebHp8RER1D+yR
	OeAJ71W7xgARS579VzfvWsA/tbOEa6N2oKElKqCqs5BR64uWl57GRE8KcabPMTU7n30S0UWxxJnQt
	zt6pczEQBqYxHwHVdP/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkm6-0001pi-6m; Tue, 23 Jul 2019 02:43:34 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpklb-0001o6-Kv
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 02:43:05 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 35986DA5A63EAACD6368;
 Tue, 23 Jul 2019 10:42:57 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.439.0; Tue, 23 Jul 2019
 10:42:55 +0800
Subject: Re: [PATCH 0/3] arm64: Allow early timestamping of kernel log
To: Marc Zyngier <marc.zyngier@arm.com>, Thomas Gleixner <tglx@linutronix.de>, 
 John Stultz <john.stultz@linaro.org>, Pavel Tatashin
 <pasha.tatashin@soleen.com>, Petr Mladek <pmladek@suse.com>, "Sergey
 Senozhatsky" <sergey.senozhatsky@gmail.com>, Steven Rostedt
 <rostedt@goodmis.org>, Will Deacon <will.deacon@arm.com>, Catalin Marinas
 <catalin.marinas@arm.com>, Mark Rutland <mark.rutland@arm.com>
References: <20190722103330.255312-1-marc.zyngier@arm.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <83634882-a528-a05d-f38c-cd0f58d1e6ee@huawei.com>
Date: Tue, 23 Jul 2019 10:42:15 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190722103330.255312-1-marc.zyngier@arm.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_194303_890417_00B563C7 
X-CRM114-Status: GOOD (  14.82  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/7/22 18:33, Marc Zyngier wrote:
> So far, we've let the arm64 kernel start its meaningful time stamping
> of the kernel log pretty late, which is caused by sched_clock() being
> initialised rather late compared to other architectures.
> 
> Pavel Tatashin proposed[1] to move the initialisation of sched_clock
> much earlier, which I had objections to. The reason for initialising
> sched_clock late is that a number of systems have broken counters, and
> we need to apply all kind of terrifying workarounds to avoid time
> going backward on the affected platforms. Being able to identify the
> right workaround comes pretty late in the kernel boot, and providing
> an unreliable sched_clock, even for a short period of time, isn't an
> appealing prospect.
> 
> To address this, I'm proposing that we allow an architecture to chose
> to (1) divorce time stamping and sched_clock during the early phase of
> booting, and (2) inherit the time stamping clock as the new epoch the
> first time a sched_sched clock gets registered.
> 
> (1) would allow arm64 to provide a time stamping clock, however
> unreliable it might be, while (2) would allow sched_clock to provide
> time stamps that are continuous with the time-stamping clock.
> 
> The last patch in the series adds the necessary logic to arm64,
> allowing the (potentially unreliable) time stamping of early kernel
> messages.
> 
> Tested on a bunch of arm64 systems, both bare-metal and in VMs. Boot
> tested on a x86 guest.

This makes the boot log more useful and I can debug some time consuming
issue easier before the arch timer initialization, tested on my ARM64
server, I can see the timestamping from the start [1],

Tested-by: Hanjun Guo <guohanjun@huawei.com>

Thanks
Hanjun

[1]:
[    0.000000] Booting Linux on physical CPU 0x0000080000 [0x481fd010]
[    0.000000] Linux version 5.2.0+ (root@localhost.localdomain) (gcc version 9.0.1 20190312 (Red Hat 9.0.1-0.10) (GCC)) #45 SMP Tue Jul 23 09:17:48 CST 2019
[    0.000000] Using timestamp clock @100MHz
[    0.000074] efi: Getting EFI parameters from FDT:
[    0.000082] efi: EFI v2.70 by EDK II
[    0.000083] efi:  ACPI 2.0=0x3a300000  SMBIOS 3.0=0x39f80000  MEMATTR=0x30996018  MEMRESERVE=0x30997e18
[    0.000122] crashkernel reserved: 0x000000000ba00000 - 0x000000002ba00000 (512 MB)
[    0.000126] cma: Failed to reserve 512 MiB
[    0.185111] ACPI: Early table checksum verification disabled
[    0.185115] ACPI: RSDP 0x000000003A300000 000024 (v02 HISI  )
[    0.185120] ACPI: XSDT 0x000000003A270000 00009C (v01 HISI   HIP08    00000000      01000013)
[    0.185127] ACPI: FACP 0x0000000039B10000 000114 (v06 HISI   HIP08    00000000 HISI 20151124)
[    0.185134] ACPI: DSDT 0x0000000039AB0000 0084E4 (v02 HISI   HIP08    00000000 INTL 20181213)
[    0.185139] ACPI: PCCT 0x0000000039FB0000 00008A (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185143] ACPI: SSDT 0x0000000039F90000 01021A (v02 HISI   HIP07    00000000 INTL 20181213)
[    0.185147] ACPI: BERT 0x0000000039F50000 000030 (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185150] ACPI: HEST 0x0000000039F30000 000308 (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185154] ACPI: ERST 0x0000000039EF0000 000230 (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185158] ACPI: EINJ 0x0000000039EE0000 000170 (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185162] ACPI: SLIT 0x0000000039B30000 00003C (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185166] ACPI: GTDT 0x0000000039B00000 00007C (v02 HISI   HIP08    00000000 HISI 20151124)
[    0.185169] ACPI: MCFG 0x0000000039AF0000 00003C (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185173] ACPI: SPCR 0x0000000039AE0000 000050 (v02 HISI   HIP08    00000000 HISI 20151124)
[    0.185177] ACPI: SRAT 0x0000000039AD0000 0007D0 (v03 HISI   HIP08    00000000 HISI 20151124)
[    0.185181] ACPI: APIC 0x0000000039AC0000 001E6C (v04 HISI   HIP08    00000000 HISI 20151124)
[    0.185185] ACPI: IORT 0x0000000039AA0000 001310 (v00 HISI   HIP08    00000000 INTL 20181213)
[    0.185189] ACPI: PPTT 0x0000000030970000 0031B0 (v01 HISI   HIP08    00000000 HISI 20151124)
[    0.185196] ACPI: SPCR: console: pl011,mmio32,0x94080000,115200
[    0.185208] ACPI: SRAT: Node 0 PXM 0 [mem 0x2080000000-0x2fffffffff]
[    0.185210] ACPI: SRAT: Node 1 PXM 1 [mem 0x3000000000-0x3fffffffff]
[    0.185212] ACPI: SRAT: Node 0 PXM 0 [mem 0x00000000-0x7fffffff]
[    0.185213] ACPI: SRAT: Node 2 PXM 2 [mem 0x202000000000-0x202fffffffff]
[    0.185215] ACPI: SRAT: Node 3 PXM 3 [mem 0x203000000000-0x203fffffffff]
[    0.185221] NUMA: NODE_DATA [mem 0x2fffffe3c0-0x2fffffffff]
[    0.185224] NUMA: NODE_DATA [mem 0x3fffffe3c0-0x3fffffffff]
[    0.185226] NUMA: NODE_DATA [mem 0x202fffffe3c0-0x202fffffffff]
[    0.185229] NUMA: NODE_DATA [mem 0x203ffdfde3c0-0x203ffdfdffff]



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
