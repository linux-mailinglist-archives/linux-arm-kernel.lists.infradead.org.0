Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F45121F2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 01:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dPYbJ6bMsdn8CLFqmm09xL8uHEFlqqHar7hNUkPR/ys=; b=GcwaavMiP1OL/2
	u4vAKrdgGZCTqopHSgrooEV9u400yGNGrp3Fb4gDuKS19cnVSmOFq5qZsY0pyvrEEASdKAymUMwDi
	ON7Jz8GGnwtvRNyyQLv7gjT+64vzDx/hogR1HzxFpYRpeJIn7LJeMitdOUBVWQpf3NOjqU+++linS
	D1ktHZqO/hjx2vH81A7rO7urutD37iknyx3nV8lBwukgaVLGXk6AMyOtPySxG6LBVVFFXHLJCMlRB
	J56mmwAMqiS3ZoUqTM2E335dIr/zPRyga143UnG8KSdlREScRwQqjo+PjkVhApLY23+wK8wIXy9by
	9UU2iSuGE9nTte46FgsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih0KP-0003c0-Lm; Tue, 17 Dec 2019 00:03:05 +0000
Received: from rcdn-iport-5.cisco.com ([173.37.86.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih0KF-0003bI-C4
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 00:02:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=cisco.com; i=@cisco.com; l=6232; q=dns/txt; s=iport;
 t=1576540975; x=1577750575;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=0Bi3u54Wc3eUmwJpKnRQCW252zfzyQBMtuOpMU6orb8=;
 b=eHV+nPi/tj06H3gd2nEOoCxM0YOuKwWc8wrlOc3Lf7W3LmaC3IH25o0Y
 YffmZeCoGloEDkkU+bFEe7K/i+6rib0H7NBu12Xh4XifGivOsAaes6wMw
 GVqtcanFNcRqn0MTNj7iM/yOMengiolEsRcf1IA/guxrob15UKoxqKXJs Y=;
IronPort-PHdr: =?us-ascii?q?9a23=3AZwdmxBZneI/95Au7sxfLqaD/LSx94ef9IxIV55?=
 =?us-ascii?q?w7irlHbqWk+dH4MVfC4el20gabRp3VvvRDjeee87vtX2AN+96giDgDa9QNMn?=
 =?us-ascii?q?1NksAKh0olCc+BB1f8KavxbCUgHcFLXndu/mqwNg5eH8OtL1A=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A0CqBQDZGvhd/4ENJK1lHAEBAQEBBwE?=
 =?us-ascii?q?BEQEEBAEBgX6BS1AFgUQgBAsqCodAA4sOmmWCUgNUCQEBAQwBAS0CAQGEQAK?=
 =?us-ascii?q?CFCQ4EwIDDQEBBAEBAQIBBQRthTcMhWEWFRMGAQE3AREBPkImAQQBDQ0ahUc?=
 =?us-ascii?q?DLgECpHACgTiIYYF0M4J+AQEFhRIYghcJFIEihRyGfBqBQT+BEUeHLAEog0C?=
 =?us-ascii?q?CLI0/iG2YUgqCNJYgmkiOTJZYg3ECBAIEBQIOAQEFgWkigVhwFYMnUBEUjRI?=
 =?us-ascii?q?MF4NQilN0gSiOeQElgQsBMF8BAQ?=
X-IronPort-AV: E=Sophos;i="5.69,323,1571702400"; d="scan'208";a="454723488"
Received: from alln-core-9.cisco.com ([173.36.13.129])
 by rcdn-iport-5.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA;
 17 Dec 2019 00:02:49 +0000
Received: from XCH-RCD-004.cisco.com (xch-rcd-004.cisco.com [173.37.102.14])
 by alln-core-9.cisco.com (8.15.2/8.15.2) with ESMTPS id xBH02miO003178
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=FAIL);
 Tue, 17 Dec 2019 00:02:49 GMT
Received: from xhs-aln-003.cisco.com (173.37.135.120) by XCH-RCD-004.cisco.com
 (173.37.102.14) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 16 Dec 2019 18:02:48 -0600
Received: from xhs-rtp-001.cisco.com (64.101.210.228) by xhs-aln-003.cisco.com
 (173.37.135.120) with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Mon, 16 Dec 2019 18:02:47 -0600
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (64.101.32.56) by
 xhs-rtp-001.cisco.com (64.101.210.228) with Microsoft SMTP Server
 (TLS) id
 15.0.1473.3 via Frontend Transport; Mon, 16 Dec 2019 19:02:47 -0500
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QjzEmbq00+z6SNGSW7OjKPlj+hINGTlgzW65kocBimBjuEZAwpHVcNsHRKZvmYJtTrBTYETR5Bfn4V3CNOiBlKc+J3x5DHdZstlNq17418Cl6rNUqKYwOCLxPOkkR/gy3/k1zxYFuB92/YGzDBUKvBduB8gW/Lsqxbdog39oH+tJMnBCsy0Q5Mk7Ejw9SucZCh7N1ZbDGDEFxT8l2y1aINZ21KhNlJoW9usGKPeVWRucTn9bJ+nB/v0NLjtw0BtpVg0mM7Rs5ODZLL+OB7jh8nXyNX7Mh7leGDnqidXDIzi0PoZ47uBnvkoXgYWYgpCmbvQfPDBNGAhrxfPx4woZsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzhjVe/DCcDMUoKgSCq2WqzafsEC5utt3tykxnb7LZY=;
 b=dw2pt1KNeJT/ar2auThi1qDXjAUFyrazV5RCKofA4yAWQzbysRoeubezRzzBjhRNByVLN387c91BKBu/ZXYSYr0RBApTD1AJkbccWULjLDty39Npy3d69W5mlZ2i1AWFBi2A3rkCUiu0pk6LODIsuBuSVpk6xIheuEplusl7Bgy/7qc3JKYIot5oZ0lyEnwZ8EFC8UOxSPogH2wlKJ4wfRCPdI2BFriaMxJFfpicwijNMWJ27DbXG+NXICGyKlIWLQrXv+Io720P5SrXne5q1/BvJd64M5BGQ/bFYif1e9Ll6KHDk+ytxegLIYMB32wd6T1NxpniNDcHqiEyKWI3Zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cisco.com; dmarc=pass action=none header.from=cisco.com;
 dkim=pass header.d=cisco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cisco.onmicrosoft.com; 
 s=selector2-cisco-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rzhjVe/DCcDMUoKgSCq2WqzafsEC5utt3tykxnb7LZY=;
 b=UrKveS/jN/ei6cKbkce8y1EmUGYQaRTP7rVNf/H1+vM1/qvyAM2xnkuYGyiS4N2APJNLTh4pYYxTwTDvsWNAuAliW1TD5Kgyty85tMKj4TNdFkOXElCS4EYcFbSPWcG/YNko2OvelieZMYQNUbPXB/lfmtMPWmZAjArv8cTCLtM=
Received: from BYAPR11MB2582.namprd11.prod.outlook.com (52.135.229.149) by
 BYAPR11MB3432.namprd11.prod.outlook.com (20.177.226.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.19; Tue, 17 Dec 2019 00:02:45 +0000
Received: from BYAPR11MB2582.namprd11.prod.outlook.com
 ([fe80::a963:79bc:32a5:6f48]) by BYAPR11MB2582.namprd11.prod.outlook.com
 ([fe80::a963:79bc:32a5:6f48%5]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 00:02:44 +0000
From: "Saeed Karimabadi (skarimab)" <skarimab@cisco.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: Arm64 Crashkernel doesn't work with FLATMEM anymore
Thread-Topic: Arm64 Crashkernel doesn't work with FLATMEM anymore
Thread-Index: AdW0bU4PM3g/9KC9STy6zefeuZgKiA==
Date: Tue, 17 Dec 2019 00:02:44 +0000
Message-ID: <BYAPR11MB2582CB879F0B7DE06A351685CC500@BYAPR11MB2582.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=skarimab@cisco.com; 
x-originating-ip: [128.107.241.187]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e03055d1-5eba-4ff7-be5f-08d782847147
x-ms-traffictypediagnostic: BYAPR11MB3432:
x-ld-processed: 5ae1af62-9505-4097-a69a-c1553ef7840e,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR11MB34329076C917E7BA1F9A2BB1CC500@BYAPR11MB3432.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(346002)(39860400002)(136003)(199004)(189003)(9686003)(316002)(110136005)(54906003)(478600001)(2906002)(7696005)(71200400001)(26005)(66946007)(4326008)(8936002)(5660300002)(76116006)(55016002)(66556008)(52536014)(66476007)(64756008)(66446008)(33656002)(81166006)(8676002)(45080400002)(107886003)(86362001)(6506007)(186003)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR11MB3432;
 H:BYAPR11MB2582.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: cisco.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8YL3lJAbRmvTLJqV983UHh4EvyVymB66fvgq32s1brUYy05IFaaFRCQwQInEX1EpuDnrz6/HUAUIS9KGZR45J2vRGhzA1TJMxOAfsh8PKZ/q5vqMTTsFivdLl8ySEC8bKW8LLTsiUhLe/Bex3IjdWQeNZQQ2GlW1+p6oqKnq3UOIX+VJRp0v86wESqjnOAaOGki9N/jTVhLh+j3OdUSOaSWE58cBWvMOxR/TAh+AcGw0Ohbu+WXe3+DwZkmm90y2QnWUVFf9Xx8Z58BV3bXR7hhIBYI114FdcNSGXJJxCuOCy5aFQfl4Mru3Kbsu41UQZk6hxbJ2+yONfu+JM1JJuTe6kkl3+Q5hDFKLy0v4RbaPulwFITfjpRayAP3kIokb9tE2bXbnn+5XRRM8Yi0gS6MY73x+1k7WiMp/w0lgQoU43QwADEr+YE1O2qmUAViM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: e03055d1-5eba-4ff7-be5f-08d782847147
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 00:02:44.2226 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5ae1af62-9505-4097-a69a-c1553ef7840e
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B5bmWXgDxCs/CEA9+P/OdT4bL9uMaAScCZFJrvSkFIXpUvMgTe0LV3gctfRWyytkSCFVhYTcBnyB8Yl5qv9t5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3432
X-OriginatorOrg: cisco.com
X-Outbound-SMTP-Client: 173.37.102.14, xch-rcd-004.cisco.com
X-Outbound-Node: alln-core-9.cisco.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_160255_560066_226F9212 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [173.37.86.76 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [173.37.86.76 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "xe-linux-external\(mailer list\)" <xe-linux-external@cisco.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Kernel Maintainers,

Crash dump  Kernel doesn't work with FLATMEM memory model since version 4.11.0-rc3 and it 
will panic at boot time with a page request exception. The crash happens while kernel is initializing
the memmap zones inside memmap_init_zone function. FLATMEM memory model is very useful
for systems with limited memory resources where it is desirable to reserve as minimum as possible
memory for the crash kernel. 
I'm wondering if this is a known issue or there is a patch to fix it?

-- Crash Dump Kernel starts here--
[    0.000000] Booting Linux on physical CPU 0x0000000000 [0x411fd070]
[    0.000000] Linux version 5.5.0-rc1 (user@host) (gcc version 4.7.0 (GCC)) #163 SMP PREEMPT Tue Dec 10 11:12:37 PST 2019
[    0.000000] Machine model: linux,dummy-virt
[    0.000000] earlycon: pl11 at MMIO 0x0000000009000000 (options '')
[    0.000000] printk: bootconsole [pl11] enabled
[    0.000000] efi: Getting EFI parameters from FDT:
[    0.000000] efi: UEFI not found.
[    0.000000] Reserving 1KB of memory at 0xbfdff000 for elfcorehdr
[    0.000000] On node 0 totalpages: 8192
[    0.000000]   DMA zone: 128 pages used for memmap
[    0.000000]   DMA zone: 0 pages reserved
[    0.000000]   DMA zone: 8192 pages, LIFO batch:0
[    0.000000] Unable to handle kernel paging request at virtual address ffffff8040ccf0b8
[    0.000000] Mem abort info:
[    0.000000]   ESR = 0x96000045
[    0.000000]   EC = 0x25: DABT (current EL), IL = 32 bits
[    0.000000]   SET = 0, FnV = 0
[    0.000000]   EA = 0, S1PTW = 0
[    0.000000] Data abort info:
[    0.000000]   ISV = 0, ISS = 0x00000045
[    0.000000]   CM = 0, WnR = 1
[    0.000000] swapper pgtable: 4k pages, 39-bit VAs, pgdp=00000000bf068000
[    0.000000] [ffffff8040ccf0b8] pgd=0000000000000000, pud=0000000000000000
[    0.000000] Internal error: Oops: 96000045 [#1] PREEMPT SMP
[    0.000000] Modules linked in:
[    0.000000] CPU: 0 PID: 0 Comm: swapper Not tainted 5.5.0-rc1 #163
[    0.000000] Hardware name: linux,dummy-virt (DT)
[    0.000000] pstate: 20000085 (nzCv daIf -PAN -UAO)
[    0.000000] pc : memmap_init_zone+0x68/0xe0
[    0.000000] lr : memmap_init+0x14/0x1c
[    0.000000] sp : ffffffc011773d60
[    0.000000] x29: ffffffc011773d60 x28: ffffffc01131e000
[    0.000000] x27: ffffffc011949680 x26: ffffffc011949680
[    0.000000] x25: 0000000000000000 x24: ffffffc011999000
[    0.000000] x23: 0000000000001000 x22: ffffffc0111db000
[    0.000000] x21: 0000000000000001 x20: 00000000ffffffff
[    0.000000] x19: 00000000000bfe00 x18: 000000001fbad8f6
[    0.000000] x17: fffffffefe695030 x16: ffffffc010c5f000
[    0.000000] x15: 0000000000000002 x14: ffffffffffffffff
[    0.000000] x13: 0000000000000000 x12: 0000000000000640
[    0.000000] x11: 00000000bfdff400 x10: 00000000000bde00
[    0.000000] x9 : 0000000000000078 x8 : ffffff803fdfffc8
[    0.000000] x7 : 0000000000000000 x6 : 00000000bfdfffc0
[    0.000000] x5 : ffffff803fd57080 x4 : 0000000000000000
[    0.000000] x3 : 00000000000bde00 x2 : 0000000000000000
[    0.000000] x1 : 0000000000f78000 x0 : ffffff8040ccf080
[    0.000000] Call trace:
[    0.000000]  memmap_init_zone+0x68/0xe0
[    0.000000]  memmap_init+0x14/0x1c
[    0.000000]  free_area_init_node+0x39c/0x3ec
[    0.000000]  bootmem_init+0x158/0x174
[    0.000000]  setup_arch+0x290/0x64c
[    0.000000]  start_kernel+0x5c/0x480
[    0.000000] Code: f945c705 cb813061 d37ae421 8b0100a0 (f9001c1f)
[    0.000000] random: get_random_bytes called from init_oops_id+0x3c/0x48 with crng_init=0
[    0.000000] ---[ end trace 0000000000000000 ]---
[    0.000000] Kernel panic - not syncing: Attempted to kill the idle task!
[    0.000000] ---[ end Kernel panic - not syncing: Attempted to kill the idle task! ]---

Kernel Config:
- Running qemu - default arm64 config 
- 39 bit VA addresses, 
- NUMA is disbaled
- FLATMEM as memory model

FLATMEM became broken after submission of these two patches: 
commit 8f579b1c4e347b23bfa747bc2cc0a55dd1b7e5fa      arm64: limit memory regions based on DT property, usable-memory-range
commit a7f8de168ace487fa7b88cb154e413cf40e87fc6       arm64: allow kernel Image to be loaded anywhere in physical memory

The first patch limits the available kernel memory to what has been passed to crash kernel from the main kernel via device tree. 

Breakpoint 1, fdt_enforce_memory_region () at arch/arm64/mm/init.c:213
220                     memblock_cap_memory_range(reg.base, reg.size);
(gdb) p/x reg
$2 = {base = 0xbde00000, size = 0x2000000, flags = 0x0}

Later on, arm64_memblock_init() will 1GB align the base address and it will round it down to 0x80000000 (=memstart_addr)

arm64_memblock_init () at arch/arm64/mm/init.c:343
240             memstart_addr = round_down(memblock_start_of_DRAM(),
241                                        ARM64_MEMSTART_ALIGN);
 (gdb) p/x memstart_addr
$6 = 0x80000000

The crash happens inside mm/page_alloc.c:memmap_init_zone() when kernel tries to initialize the first pfn of ZONE_DMA. The code
 would calculate a wrong page structure pointer which is pointing beyond the end address of available memory.

Breakpoint 3 at 0xffffff8008d463f0: file mm/page_alloc.c, line 5196.
<-- Snip -->
5276                            struct page *page = pfn_to_page(pfn);
(gdb) p/x pfn
$14 = 0xbde00
(gdb) p/x page
$16 = 0xffffffc040cd5780
(gdb) p *page
Cannot access memory at address 0xffffffc040cd5780

for FLATMEM model pfn_to_page is defined as:
#define __pfn_to_page(pfn)       (mem_map + ((pfn) - ARCH_PFN_OFFSET))
 (gdb) p/x mem_map
$17 = 0xffffffc03fd5d780
 (gdb) x 0xffffffc040cd5780
0xffffffc040cd5780:     Cannot access memory at address 0xffffffc040cd5780

It looks like in expansion of the pfn_to_page() macro, if the kernel start address is not 1GB aligned, this part of macro ((pfn)-ARCH_PFN_OFFSET) 
can create a huge offset from the base address of mem_map which will cause the calculated page address to point a location outside of the 
available memory boundaries.

Regards,
Saeed Karimabadi


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
