Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0839B9107A
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 15:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wIgUIHHihv3xjLI/ogOgpb6FLmu/QOCQ9d08iiR4g+k=; b=ClkboXCQccWCr4
	TCKvvWbnUzSME4ASPrpny7cvvWneHr7A2P7avoRdHCcgwxmiv2+qC+dlEPIFRDv7y+Rzmp2gsq2IO
	T+wcqAQGRMrwp0lBioz6MeSgfQmESKKjzkpP8OsvTp3z3JCinFe0KM5Dv2aPVrYiYtXCKHaLz/f83
	k+YDRpCktrzoxmI1tnRNVu1dHjLoQn+mW92E0EhHxe0mtUhOX3Es0pWGUH28hr9C6HMAbyyT8EdZt
	mE6d0WPYTHxdmO2H0cz5Qeh2jPCyIOvUjQcoBy4Lruhj7YWXhOlkculcfxDot0dm3glbYNgWLJ5c/
	H1dBjsIU89jHPTJVzwzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyyW9-0001u8-FY; Sat, 17 Aug 2019 13:13:13 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyyVq-0001tN-Vh; Sat, 17 Aug 2019 13:12:56 +0000
Received: by mail-wr1-x435.google.com with SMTP id r3so4164784wrt.3;
 Sat, 17 Aug 2019 06:12:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=AsQSo3zOtsysO9iXtl2E8c9JilVuuSxSoutMQAx9708=;
 b=OQ7kccZcjUHZW8xnPbPqToC4kczjVVpQLKz2+4x7ytpWNEm16M3UW9RVCVEey6n6b6
 gtoqws7IC0rHLD5xnWorBW9JV60RoVqvdJL9BTcvAyOMSiBfOI/98PUzbRvOQQnti6uS
 j4r4AeJNwIj9XufmfgG1QyO6hLE7baAh1GaiHtpB8E14Ds2a+Fret34dRVUygz99oZMf
 rre1HXROf2mWJkNv5hBau8WJ4CE+D02tSIgSFus+zr3wDYZLAQOSfzVWJVYPKRN7PCNv
 Ak6ru6mP9oyn0ao4PuiFGsK1Ull6FTMBM49mUrqFx85GyutjrcH2/zD//sDQ/cGTy3R+
 cdPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=AsQSo3zOtsysO9iXtl2E8c9JilVuuSxSoutMQAx9708=;
 b=iWKzI9Q3nxwWT1+q2Neet6xf7Bp9xhN6EzDlQd9NYtbnYR1ERW+DJEo/Wcn/3PsX8g
 c8HoM7ReE6wUWhJKPx3QVf3ORiqjbQLJ1cJKZhdkhmpyFyqusUYwRqbaHwnw1v0RI4zp
 Pb5IsR+wvaolEccgj5I3vAP8YA9oXwWCKpmUAKXJxYmFytL3hytZkU2doWK7i95U/dQz
 he9QiS1iF3IZ7loNSGE05AiSu5iKLA2f83DQtrbmUNhQ8NSg0C9/JmO1SXEM56614U4u
 TTStA0l3XrUnM00jbu9k7NmMxkpjEaMu4njc+32+/CMC1vQ8Pdvh9kEbG1fMHgZaf2VT
 Vw+g==
X-Gm-Message-State: APjAAAWzi6VrUcZNUTodwvktadBjGP00CJ+jLXV8eUWsnXND4cqr/+p3
 pUuAJx/R/MX+DNTO6mBVE+os04S11NWF99VdcpdUeNB/IHNmlg==
X-Google-Smtp-Source: APXvYqzT/g8z+Tqh4CgX/aJ0hJ6PQxq+htff1Ke4EisfOS2QS9+4s3r6tNpC3ic4tBeD1lCYcLpgjGe9ZUK7p6iFZSU=
X-Received: by 2002:adf:eac3:: with SMTP id o3mr15128336wrn.264.1566047572645; 
 Sat, 17 Aug 2019 06:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <CA+Vb7hpe_USzdCuTBHd8V-t6YeQ0oApiBrvM-D43JuhJda6eyQ@mail.gmail.com>
 <20190815122151.bg7it6ptxwcn2vif@willie-the-truck>
 <8253b02c-0431-6b01-6af4-6132eb992925@arm.com>
 <CA+Vb7hpi=pCC9viiof8y85Kw_vCawWQ0B6kGFALgxtZfCKoaTw@mail.gmail.com>
 <CA+Vb7hqPvDtv0ahjxa_gM68qsws6-dmtiOPmG6-WB+HZEC=4aw@mail.gmail.com>
 <2facb3cb-388a-87ee-4d87-717dd65825ae@arm.com>
 <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
In-Reply-To: <CA+Vb7hpjX=yzVJj+BguvzwtyASCGUTwx_OXWfBuEoLO_RicMBQ@mail.gmail.com>
From: Philipp Richter <richterphilipp.pops@gmail.com>
Date: Sat, 17 Aug 2019 15:12:41 +0200
Message-ID: <CA+Vb7hpXfavS0k47Z0o=SkswO_jMmv3HN7RsUMdx=AHjvrD7LA@mail.gmail.com>
Subject: Re: aarch64 Kernel Panic Asynchronous SError Interrupt on large file
 IO
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_061255_051516_E24AE53E 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:435 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (richterphilipp.pops[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heiko@sntech.de, catalin.marinas@arm.com, vicencb@gmail.com,
 linux-rockchip@lists.infradead.org, andre.przywara@arm.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compiling the kernel also triggered the panic so that was hard.

I added "memtest=4" to the kernel cmdline and I'm getting very quicky
a "Internal error: synchronous external abort" panic.

============
INFO:    PSCI Power Domain Map:
INFO:      Domain Node : Level 2, parent_node -1, State ON (0x0)
INFO:      Domain Node : Level 1, parent_node 0, State ON (0x0)
INFO:      Domain Node : Level 0, parent_node 0, State ON (0x0)
INFO:      Domain Node : Level 0, parent_node 0, State ON (0x0)
INFO:      CPU Node : MPID 0x0, parent_node 1, State ON (0x0)
INFO:      CPU Node : MPID 0x1, parent_node 1, State ON (0x0)
INFO:      CPU Node : MPID 0x2, parent_node 1, State ON (0x0)
INFO:      CPU Node : MPID 0x3, parent_node 1, State ON (0x0)
DDR version 1.16 20190528
ID:0x805 N
In
SRX
LPDDR3
333MHz
Bus Width=32 Col=11 Bank=8 Row=15/15 CS=2 Die Bus-Width=32 Size=4096MB
ddrconfig:7
OUT
Boot1 Release Time: May 13 2019 17:34:36, version: 2.50
ChipType = 0x11, 316
mmc2:cmd19,100
SdmmcInit=2 0
BootCapSize=2000
UserCapSize=29820MB
FwPartOffset=2000 , 2000
SdmmcInit=0 NOT PRESENT
StorageInit ok = 198645
Raw SecureMode = 0
SecureInit read PBA: 0x4
SecureInit read PBA: 0x404
SecureInit read PBA: 0x804
SecureInit read PBA: 0xc04
SecureInit read PBA: 0x1004
SecureInit ret = 0, SecureMode = 0
atags_set_bootdev: ret:(0)
GPT 0x337a9f0 signature is wrong
recovery gpt...
GPT 0x337a9f0 signature is wrong
recovery gpt fail!
LoadTrust Addr:0x4000
No find bl30.bin
Load uboot, ReadLba = 2000
Load OK, addr=0x200000, size=0x9a864
RunBL31 0x10000
NOTICE:  BL31: v1.3(debug):0eba775
NOTICE:  BL31: Built : 12:11:32, Nov 23 2018
NOTICE:  BL31:Rockchip release version: v1.3
INFO:    ARM GICv2 driver initialized
INFO:    Using opteed sec cpu_context!
INFO:    boot cpu mask: 1
INFO:    plat_rockchip_pmu_init: pd status 0xe
INFO:    BL31: Initializing runtime services
INFO:    BL31: Initializing BL32
INF [0x0] TEE-CORE:init_primary_helper:337: Initializing
(1.1.0-221-gda2bcfdc #137 Mon Jun 17 03:00:04 UTC 2019 aarch64)

INF [0x0] TEE-CORE:init_primary_helper:338: Release version: 1.4

INF [0x0] TEE-CORE:init_teecore:83: teecore inits done
INFO:    BL31: Preparing for EL3 exit to normal world
INFO:    Entry point address = 0x200000
INFO:    SPSR = 0x3c9


U-Boot 2019.07-2 (Aug 16 2019 - 18:37:30 +0000) Arch Linux ARM

Model: Rockchip RK3328 EVB
DRAM:  4 GiB
MMC:   rksdmmc@ff500000: 1, rksdmmc@ff520000: 0
Loading Environment from MMC... Card did not respond to voltage select!
*** Warning - No block device, using default environment

In:    serial@ff130000
Out:   serial@ff130000
Err:   serial@ff130000
Model: Rockchip RK3328 EVB
Net:
Warning: ethernet@ff540000 (eth0) using random MAC address - 4a:92:84:ee:d8:3b
eth0: ethernet@ff540000
Hit any key to stop autoboot:  2     1     0
switch to partitions #0, OK
mmc0(part 0) is current device
Scanning mmc 0:1...
Found U-Boot script /boot.scr
1105 bytes read in 5 ms (215.8 KiB/s)
## Executing script at 00500000
26501632 bytes read in 628 ms (40.2 MiB/s)
49338 bytes read in 12 ms (3.9 MiB/s)
10033777 bytes read in 242 ms (39.5 MiB/s)
## Flattened Device Tree blob at 01f00000
   Booting using the fdt blob at 0x1f00000
   Loading Ramdisk to fc59b000, end fcf2ca71 ... OK
   Loading Device Tree to 00000000fc58b000, end 00000000fc59afff ... OK

Starting kernel ...

[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x410fd034]
[    0.000000] Linux version 5.2.8-1-ARCH (alarm@rock64) (gcc version
8.3.0 (GCC)) #1 SMP Sat Aug 17 10:28:16 CEST 2019
[    0.000000] Machine model: Pine64 Rock64
[    0.000000] earlycon: uart8250 at MMIO32 0x00000000ff130000 (options '')
[    0.000000] printk: bootconsole [uart8250] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] cma: Reserved 64 MiB at 0x00000000f8400000
[    0.000000] early_memtest: # of tests: 4
[    0.000000]   0x0000000000200000 - 0x0000000002080000 pattern
aaaaaaaaaaaaaaaa
[    0.000000]   0x0000000003a95000 - 0x00000000f8400000 pattern
aaaaaaaaaaaaaaaa
[    0.000000] Internal error: synchronous external abort: 96000210 [#1] SMP
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.2.8-1-ARCH #1
[    0.000000] Hardware name: Pine64 Rock64 (DT)
[    0.000000] pstate: 20000085 (nzCv daIf -PAN -UAO)
[    0.000000] pc : early_memtest+0x16c/0x23c
[    0.000000] lr : early_memtest+0x11c/0x23c
[    0.000000] sp : ffff000011733df0
[    0.000000] x29: ffff000011733df0 x28: ffff0000114a6000
[    0.000000] x27: ffff00001178b000 x26: aaaaaaaaaaaaaaaa
[    0.000000] x25: ffff00001178b000 x24: aaaaaaaaaaaaaaaa
[    0.000000] x23: 00000000ff000000 x22: 0000000000200000
[    0.000000] x21: ffff0000117396c8 x20: 0000000000000003
[    0.000000] x19: ffff00001164bcc8 x18: 0000000000000010
[    0.000000] x17: 000000000000d080 x16: ffff7dfffe99807c
[    0.000000] x15: ffffffffffffffff x14: 6161616161616161
[    0.000000] x13: 616161616161206e x12: 7265747461702030
[    0.000000] x11: 3030303034386630 x10: 3030303030303078
[    0.000000] x9 : 30202d2030303035 x8 : ffff000010868858
[    0.000000] x7 : 000000000000000b x6 : ffff0000119d1539
[    0.000000] x5 : ffff8000f8400000 x4 : ffff800008400000
[    0.000000] x3 : 0000000008400000 x2 : 0000000000000000
[    0.000000] x1 : 0000000000000000 x0 : aaaaaaaaaaaaaaaa
[    0.000000] Call trace:
[    0.000000]  early_memtest+0x16c/0x23c
[    0.000000]  bootmem_init+0x48/0x174
[    0.000000]  setup_arch+0x1f0/0x558
[    0.000000]  start_kernel+0x8c/0x494
[    0.000000] Code: d2800002 d2800001 eb0400bf 54000309 (f9400080)
[    0.000000] random: get_random_bytes called from
print_oops_end_marker+0x30/0x58 with crng_init=0
[    0.000000] ---[ end trace 0000000000000000 ]---
[    0.000000] Kernel panic - not syncing: Attempted to kill the idle task!
[    0.000000] ---[ end Kernel panic - not syncing: Attempted to kill
the idle task! ]---
============

Is my board completely broken ? :(

Regards,
Philipp Richter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
