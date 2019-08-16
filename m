Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA8C9010B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 14:01:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mxyEfJVKZROHrBnFF2DrfB6+AkGXHkRsHfvn9O/baNc=; b=eOCAesyZgMdn7j9/vn/CYPe28
	z9wipW/djbjSd4q7hHxHMlmRT3v+ILldtf0K0olFoAfsFN+8wAPu2ndtePllrwHPZg3ZhwP77X0Ei
	eavm+/fpSw7oNf6fYF5PyX1rWwyTaPCEQl6E97RhxHayiE8DHjBSF36b0KzK0KoHvKNQBtHIM0v03
	iVzpPqbM0POiSF2HHUn0oGAAnWtlc4ZYlDgdrM6sMJKvJsq9wmZ06aFTvJUWQ/npSqomMkYBu+16n
	txHFayotxRZZiXvcKpTUdKo8RSPyZr0JjHpCHhiiT+yPS8gsOZIRxnd2MPoQQbm/N5gHOE1noOULg
	mAIgxSAiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyauz-0004YQ-06; Fri, 16 Aug 2019 12:01:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hyaun-0004Xy-De; Fri, 16 Aug 2019 12:01:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2534528;
 Fri, 16 Aug 2019 05:01:03 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1DCC43F706;
 Fri, 16 Aug 2019 05:01:02 -0700 (PDT)
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
To: Philipp Richter <richterphilipp.pops@gmail.com>
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
Date: Fri, 16 Aug 2019 13:01:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_050105_553409_0F490422 
X-CRM114-Status: GOOD (  18.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: heiko@sntech.de, catalin.marinas@arm.com, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org, andre.przywara@arm.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/08/2019 17:00, Philipp Richter wrote:
> Reading from the raw eMMC block /dev/mmcblkp1 I can also produce a panic :
> 
> sudo dd if=/dev/mmcblk1 of=/dev/null bs=1M status=progress
> 2846883840 bytes (2.8 GB, 2.7 GiB) copied, 23 s, 124 MB/s

Hmm, I'm running Arch with the same stock kernel on my RK3328 box, and 
that doesn't seem to have an problem:

-----
[root@nemulon-9 ~]# dd if=/dev/mmcblk1 of=/dev/null bs=1M status=progress
15408824320 bytes (15 GB, 14 GiB) copied, 125 s, 123 MB/s
14800+0 records in
14800+0 records out
15518924800 bytes (16 GB, 14 GiB) copied, 125.868 s, 123 MB/s
[root@nemulon-9 ~]# dd if=/dev/mmcblk1 of=/dev/null bs=1M status=progress
15437135872 bytes (15 GB, 14 GiB) copied, 125 s, 123 MB/s
14800+0 records in
14800+0 records out
15518924800 bytes (16 GB, 14 GiB) copied, 125.655 s, 124 MB/s
[root@nemulon-9 ~]# dd if=/dev/mmcblk1 of=/dev/null bs=1M status=progress
15446573056 bytes (15 GB, 14 GiB) copied, 125 s, 124 MB/s
14800+0 records in
14800+0 records out
15518924800 bytes (16 GB, 14 GiB) copied, 125.576 s, 124 MB/s
[root@nemulon-9 ~]# dd if=/dev/mmcblk1 of=/dev/null bs=1M status=progress
15411970048 bytes (15 GB, 14 GiB) copied, 125 s, 123 MB/s
14800+0 records in
14800+0 records out
15518924800 bytes (16 GB, 14 GiB) copied, 125.844 s, 123 MB/s
[root@nemulon-9 ~]#
-----

and FWIW this box is running a far more antique Rock64 firmware:

-----
DDR version 1.06 20170424
In
LPDDR3
786MHz
Bus Width=32 Col=11 Bank=8 Row=15/15 CS=2 Die Bus-Width=32 Size=4096MB
ddrconfig:7
OUT
Boot1 Release Time: 2017-05-18, version: 2.43
ChipType = 0x11, 127
WR_REL_SET is 0 4
SdmmcInit=2 0
BootCapSize=2000
UserCapSize=14800MB
FwPartOffset=2000 , 2000
SdmmcInit=0 2
StorageInit ok = 23274
Raw SecureMode = 0
SecureInit read PBA: 0x4
SecureInit read PBA: 0x404
SecureInit read PBA: 0x804
SecureInit read PBA: 0xc04
SecureInit read PBA: 0x1004
SecureInit ret = 0, SecureMode = 0
LoadTrustBL
No find bl30.bin
No find bl32.bin
Load uboot, ReadLba = 2000
Load OK, addr=0x200000, size=0x9268c
RunBL31 0x10000
NOTICE:  BL31: v1.3(debug):f947c7e
NOTICE:  BL31: Built : 09:28:45, May 31 2017
NOTICE:  BL31:Rockchip release version: v1.3
INFO:    ARM GICv2 driver initialized
INFO:    Using opteed sec cpu_context!
INFO:    boot cpu mask: 1
INFO:    plat_rockchip_pmu_init: pd status 0xe
INFO:    BL31: Initializing runtime services
WARNING: No OPTEE provided by BL2 boot loader, Booting device without 
OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
ERROR:   Error initializing runtime service opteed_fast
INFO:    BL31: Preparing for EL3 exit to normal world
INFO:    Entry point address = 0x200000
INFO:    SPSR = 0x3c9


U-Boot 2017.09-rc4-g22993de (Sep 14 2017 - 21:57:17 +0000), Build: 
jenkins-linux-build-rock-64-118

Model: Pine64 Rock64
DRAM:  4 GiB
MMC:   rksdmmc@ff500000: 1, rksdmmc@ff520000: 0
Card did not respond to voltage select!
mmc_init: -95, time 9
*** Warning - No block device, using default environment
----

[ of course it's not a Rock64 at all, but I'm lazy, that was the only 
prebuilt image available at the time, and the differences aren't major 
enough to prevent SD/eMMC booting :) ]

> ============
> [  428.794747] dwmmc_rockchip ff520000.dwmmc: Unexpected command
> timeout, state 3
> [  428.984736] dwmmc_rockchip ff520000.dwmmc: Unexpected command
> timeout, state 3
> [  429.174738] dwmmc_rockchip ff520000.dwmmc: Unexpected command
> timeout, state 3
> [  429.179323] Internal error: synchronous external abort: 96000210
> [#1] SMP
> [  429.179934] Modules linked in: wireguard(O) ip6_udp_tunnel
> udp_tunnel lz4 lz4_compress iptable_filter iptable_raw xt_owner
> iptable_nat xt_connmark iptable_mangle bpfilter rc_cec
> snd_soc_hdmi_codec dw_hdmi_i2s_audio dw_hdmi_cec
> snd_soc_audio_graph_cc
> [  429.186527] CPU: 0 PID: 1079 Comm: bash Tainted: G           O
> 5.2.8-1-ARCH #1
> [  429.187193] Hardware name: Pine64 Rock64 (DT)
> [  429.187576] pstate: 20000005 (nzCv daif -PAN -UAO)
> [  429.188007] pc : copy_page_range+0x124/0x3d0
> [  429.188386] lr : dup_mm+0x3fc/0x478
> [  429.188692] sp : ffff00001277bb80
> [  429.188982] x29: ffff00001277bb80 x28: ffff8000dd17e450
> [  429.189446] x27: ffff8000dd17e470 x26: ffff8000dd17e460
> [  429.189912] x25: 0000aaaac4a01000 x24: ffff8000dca92a00
> [  429.190376] x23: ffff8000dd1fdf80 x22: ffff8000dd30c8a0
> [  429.190840] x21: ffff8000dca92a00 x20: ffff8000dd30c8a0
> [  429.191306] x19: ffff8000dd1fdf80 x18: 0000000000000000
> [  429.191771] x17: 0000000000000000 x16: 0000000000000000
> [  429.192236] x15: 0000000000000000 x14: ffff8000dd2b86d0
> [  429.192700] x13: 00000000000000f8 x12: 0000000000000000
> [  429.193165] x11: 0000000000000000 x10: ffff8000e44bde01
> [  429.193630] x9 : 0000000000100871 x8 : 0000000000000000
> [  429.194095] x7 : ffff8000e4481760 x6 : 0000000000000000
> [  429.194560] x5 : 0000aaaac49fc000 x4 : ffff0000102905c0
> [  429.195026] x3 : 0000000000000000 x2 : ffff800009c74aa8
> [  429.195491] x1 : 0000aaaac4a00fff x0 : ffff800009c74aa8
> [  429.195959] Call trace:
> [  429.196178]  copy_page_range+0x124/0x3d0
> [  429.196521]  dup_mm+0x3fc/0x478
> [  429.196801]  copy_process.isra.4.part.5+0x143c/0x1450
> [  429.197244]  _do_fork+0xec/0x410
> [  429.197529]  __arm64_sys_clone+0x2c/0x38
> [  429.197877]  el0_svc_handler+0xa4/0x180
> [  429.198215]  el0_svc+0x8/0xc
> [  429.198474] Code: 360812e0 f9403fe0 b4000ac0 f9403fe0 (f9400000)

This one's particularly interesting since it's synchronous. That code 
dump implies that an "ldr x0, [x0]" is faulting, when x0 holds a linear 
map address (i.e. directly correlated to a physical address).

> [  429.199008] ---[ end trace 04beba7bac629e3f ]---
> [  429.200049] SError Interrupt on CPU1, code 0xbf000002 -- SError
> [  429.200052] CPU: 1 PID: 669 Comm: systemd-journal Tainted: G      D
>     O      5.2.8-1-ARCH #1
> [  429.200054] Hardware name: Pine64 Rock64 (DT)
> [  429.200055] pstate: 20000005 (nzCv daif -PAN -UAO)
> [  429.200056] pc : allocate_slab+0x1d0/0x570
> [  429.200058] lr : allocate_slab+0x1e0/0x570
> [  429.200059] sp : ffff000011d8baa0
> [  429.200060] x29: ffff000011d8baa0 x28: 0000000000000003
> [  429.200063] x27: ffff7e0000276800 x26: ffff800009da6e00
> [  429.200068] x25: 0000000000000009 x24: 0000000000007bc0
> [  429.200071] x23: 0000000000000003 x22: 0000000000000003
> [  429.200075] x21: ffff800009da0000 x20: 0000000000005280
> [  429.200079] x19: ffff8000b3fa3980 x18: 0000000000000000
> [  429.200082] x17: 0000000000000000 x16: 0000000000000000
> [  429.200086] x15: 0000000000000000 x14: 0000000000000000
> [  429.200090] x13: 0000000000000000 x12: 0000000000000000
> [  429.200094] x11: 0000000000000000 x10: 0000000000000000
> [  429.200098] x9 : 0000000000000000 x8 : 0000000000000000
> [  429.200102] x7 : 00000000fee00000 x6 : 0000000000000018
> [  429.200106] x5 : 0000000000000040 x4 : 0000000000210d00
> [  429.200110] x3 : 0000000000000dc0 x2 : 0000000005a79795
> [  429.200112] x1 : 0000000000000000 x0 : ffff8000f2f35a80
> [  429.200117] Kernel panic - not syncing: Asynchronous SError
> Interrupt

This is less revealing, but the fact that x21 and x26 are holding 
pointers to a relatively similar area of RAM does raise an eyebrow.

[...]
>> [12624.268933] SError Interrupt on CPU0, code 0xbf000002 -- SError
>> [12624.268940] CPU: 0 PID: 14170 Comm: kworker/u8:4 Tainted: G
>>    O      5.2.8-1-ARCH #1
>> [12624.268942] Hardware name: Pine64 Rock64 (DT)
>> [12624.268944] Workqueue: btrfs-endio btrfs_endio_helper [btrfs]
>> [12624.268946] pstate: 20000005 (nzCv daif -PAN -UAO)
>> [12624.268948] pc : __memcpy+0x118/0x180
>> [12624.268950] lr : btrfs_decompress_buf2page+0x124/0x228 [btrfs]
>> [12624.268951] sp : ffff00001c28bb40
>> [12624.268952] x29: ffff00001c28bb40 x28: ffff8000f2a2b870
>> [12624.268955] x27: 0000000000001000 x26: ffff7e0000270200
>> [12624.268958] x25: 0000000000001000 x24: 000000000001f000
>> [12624.268961] x23: 0000000000000000 x22: 000000000001f000
>> [12624.268964] x21: ffff8000fde46040 x20: 0000000000140000
>> [12624.268967] x19: 0000000000001000 x18: ffff8000e830aef5
>> [12624.268970] x17: 0000000000000ad3 x16: 0000000000000003
>> [12624.268973] x15: 0000000000000002 x14: a8c37bfd9101e042
>> [12624.268976] x13: a9425bf552800021 x12: a94153f3f0000b62
>> [12624.268979] x11: f9400a80900011a4 x10: aa1603e3d63f0260
>> [12624.268982] x9 : 9101c04252800021 x8 : 910003fda9b97bfd
>> [12624.268985] x7 : d61f0080f9475c84 x6 : ffff800009c08390
>> [12624.268988] x5 : ffff800065005050 x4 : 0000000000000000
>> [12624.268990] x3 : 0000000000140000 x2 : 0000000000000c00
>> [12624.268993] x1 : ffff8000dac023d0 x0 : ffff800009c08000
>> [12624.268997] Kernel panic - not syncing: Asynchronous SError Interrupt

In this case, I know that x6 is the destination pointer for the memcpy 
routine, and the memcpy from the first log also looks similar:

 > [  334.414179] x7 : 911b47420a1c00a2 x6 : ffff800009c01150

Again, all within a few MB of that same region. Given that we're a few 
hundred bytes into the copy both times, this could well represent the 
point where the first dirtied cachelines start to get written back, 
provoking the bus error from the memory controller and thus an async SError.

This does start to smell like some issue with that particular area of 
physical memory - either because it's been marked as Secure-only by 
firmware and the controller configured to abort Non-Secure accesses, or 
possibly because of an actual DRAM failure. The next thing I'd do is 
have a play around with the "memtest=..." kernel parameter to see if 
that can consistently find a problem, and see if the firmware change 
that Heiko pointed out makes any difference.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
