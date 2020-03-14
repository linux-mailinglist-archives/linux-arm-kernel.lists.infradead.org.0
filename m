Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536271855EC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 16:36:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XbHoVO2vaXxbXWg7TerczEpPfA1UPue0tH54rXA2Z6E=; b=RD6zR4JqMLjGc8
	VjQKJReR9UC4/sIRZiWRqaUDcQie+LFfbWbttWEp8gyOom6+six68JOfG5tUTRFvJD5YIV2KWKk6p
	2agx6TswFUAHrMm8S8WmjiZu7G4aJ11bZHkWgETV1sJgMMditSxdLBdccTOoypbdFxciEYz8fE3WY
	mkzUlplHLTrg7qwKPEyx+S4NOLT46n4zRXjh4YQBMiPXDEJxEG/FQ6yiLgA6TRCISti+gJesmU8+8
	7YQxJgxLNSQ3UHja/PRYqkW2muKtAheuiIaB5T7uOlTIJkgPm7nFTLIPUyuR6Juqm9C32VWBruzbA
	fzeXFiSLohd+BN0E4wyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD8pq-0005mx-6e; Sat, 14 Mar 2020 15:36:22 +0000
Received: from mail-mw2nam10on2100.outbound.protection.outlook.com
 ([40.107.94.100] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD8pW-0005lv-9u
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 15:36:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cB1ToQbaikyQpiH3vOLKSgGHyVfK+9f388XH5VF4ZSy6CVNyabSEih6b1KVjB+tIlbV28EUyMGSLztsyeqcmRO8Ovms0u41ur51cLFlwLkp2RvNmrZnNloGxSGu1dAooBMgH/1WHWpdS2u+OoTL44M/lpvXNyJfpktFH8k0UuV1gBoVHSJ8ildBmDo2askuj3r7VPlKDP6PowsypwxQfOzEg0S+G23Pjh8Mnj2kOcy4U6ZgCvNPaBHXAtORTiFiyoloC+C7eTKFNqsQI9JCm+8+Hmrk/5NekwTT6OmSRkaZ9MtqE+yiFlMCfztgPHkPzKWNAlXlJH8ve79qcKiOr5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHV8a9pcFFWQTnd4HapIeaqDNPT6mfyCP7xMUlmD/L8=;
 b=oR/p4XyyWT3bSqhmvWqVj3MmeIYtDNptqlPJlZdJz/7C5DZdnRQLQmyc2xSmwtpehJaT1RMeYJsUsKx39A4xdfIAGC90y/IehjBx14wkJBlLPpGSSR5dIiwNjziH4w74uhKvpZn7tPIWb5uyxAn/bRvD4Q6okKLRHTbR145jHt5MtK0hY7fJMC5OuWJC+WKBOdKvm8TFeFh2UTMrMHlAk7hbQlQXNLTNcQDDiBCqqSRegAHMDUfGkXNgN8sbYcngSzYkX4199AODTQAqWKFhHa+ckMY2GGNqC72MfXjlFNj/Qunhh7OaR+Drtl/zb4hW9LH5Odc2km6d5T562P+x/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microsoft.com; dmarc=pass action=none
 header.from=microsoft.com; dkim=pass header.d=microsoft.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NHV8a9pcFFWQTnd4HapIeaqDNPT6mfyCP7xMUlmD/L8=;
 b=fbSqai0u0wL7pusbq5tfzTQuJDdOWMX3BX8NHKb5Ocru6drQcjUPlZoLct7BE37HZIBCs2cc7iGQPXv+r68pseSLo9OtE8WjSQNGXUboKHvso7EtsBzBXfn3C2dfDZcYPoIicUVkuE+i66VfHoqYDiQwqtYl1yl792feMQF1ySg=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=mikelley@microsoft.com; 
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com (2603:10b6:805:a::18)
 by SN6PR2101MB1632.namprd21.prod.outlook.com (2603:10b6:805:53::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.4; Sat, 14 Mar
 2020 15:35:57 +0000
Received: from SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3]) by SN6PR2101MB0927.namprd21.prod.outlook.com
 ([fe80::a819:6437:1733:17b3%9]) with mapi id 15.20.2835.008; Sat, 14 Mar 2020
 15:35:57 +0000
From: Michael Kelley <mikelley@microsoft.com>
To: will@kernel.org, ardb@kernel.org, arnd@arndb.de, catalin.marinas@arm.com,
 mark.rutland@arm.com, maz@kernel.org, linux-arm-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-hyperv@vger.kernel.org, linux-efi@vger.kernel.org,
 linux-arch@vger.kernel.org, olaf@aepfle.de, apw@canonical.com,
 vkuznets@redhat.com, jasowang@redhat.com, marcelo.cerri@canonical.com,
 kys@microsoft.com
Subject: [PATCH v6 00/10] Subject: Enable Linux guests on Hyper-V on ARM64
Date: Sat, 14 Mar 2020 08:35:09 -0700
Message-Id: <1584200119-18594-1-git-send-email-mikelley@microsoft.com>
X-Mailer: git-send-email 1.8.3.1
X-ClientProxiedBy: MWHPR22CA0047.namprd22.prod.outlook.com
 (2603:10b6:300:69::33) To SN6PR2101MB0927.namprd21.prod.outlook.com
 (2603:10b6:805:a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from mhkkerneltest.corp.microsoft.com (131.107.159.247) by
 MWHPR22CA0047.namprd22.prod.outlook.com (2603:10b6:300:69::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2814.18 via Frontend Transport; Sat, 14 Mar 2020 15:35:56 +0000
X-Mailer: git-send-email 1.8.3.1
X-Originating-IP: [131.107.159.247]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: bca0b8a4-e0d2-4a10-f661-08d7c82d6400
X-MS-TrafficTypeDiagnostic: SN6PR2101MB1632:|SN6PR2101MB1632:|SN6PR2101MB1632:
X-MS-Exchange-Transport-Forked: True
X-LD-Processed: 72f988bf-86f1-41af-91ab-2d7cd011db47,ExtAddr
X-Microsoft-Antispam-PRVS: <SN6PR2101MB1632CA9DBC2E079346B8144ED7FB0@SN6PR2101MB1632.namprd21.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 034215E98F
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(366004)(39860400002)(346002)(376002)(396003)(199004)(10290500003)(478600001)(2906002)(6486002)(36756003)(8936002)(66946007)(26005)(86362001)(2616005)(16526019)(186003)(956004)(66556008)(6636002)(66476007)(4326008)(7416002)(316002)(81166006)(8676002)(81156014)(52116002)(7696005)(6666004)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:SN6PR2101MB1632;
 H:SN6PR2101MB0927.namprd21.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: microsoft.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: TIFQGL1u+bzpeThgYYrSTA/JZvZgmA7U+nY3pOmsgVioqxqRDWrBuNsVvZ/piqwwuLzk3mOgjP8EHcbqGrN8+iyIlL28skKtsalCBwd9VuYDB45q5n20dPlX9GK+/wBQQEvVEl4a3sobAijVa1VAsYHAOrOoPBVLXwwdPSGlTpv5cKTchPO3ELndQiGaBQOBXSssG6wlEi0UegSVfLvzasDJib9klQc9GXoEWZvIyGrXl+Ox9LxbPnvHJ6bYaHwgg148KfyDAJJJ+rKAQ70q4fUf//WR3N21a+/duQXV/QfIDcG+v3K2yIejsHouJzPy4oomf1SEaXPG/KC4yb9yklfQ/XluNvZb+dU4bkoS0ScSjhGIbx3AicZc7UQ+AX2uicbDaPsvtzBldRx5J0qOHwwYeYFCuBqhMyXUgv1l+60ziRfPLtdXqCMBJfYjJSkAh/nUvHsZPbZDTrNwOKIzQFcAXr8+ilPXKacWVeHCT3XXC5QzG/07I7EDzz55rfYK
X-MS-Exchange-AntiSpam-MessageData: BUqqDMCRXJaTUfARN2oBsTyxAw6JBE5e2FlAcwG656L6K/vVB/IJeAtvZcN6IfErWhSvEwLhiPjTgI3rLGMzluZf+j7YVi3w/FvzQtns5FY7vcZNu0MBTY3skC94OusLUC11adeRdIF33LpY7qzBfw==
X-OriginatorOrg: microsoft.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bca0b8a4-e0d2-4a10-f661-08d7c82d6400
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2020 15:35:57.4591 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 72f988bf-86f1-41af-91ab-2d7cd011db47
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 09NTPQAhSjQKpAvO4SN/WQDoG5YmJ0el1nWyuescoHykE8Hq10k6Ym0bAUsCPsUSxd1lvgzcW4zyvbTxoSy7gg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR2101MB1632
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_083602_433508_84C324D3 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.100 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: sunilmut@microsoft.com, boqun.feng@gmail.com, mikelley@microsoft.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables Linux guests running on Hyper-V on ARM64
hardware. New ARM64-specific code in arch/arm64/hyperv initializes
Hyper-V, including its interrupts and hypercall mechanism.
Existing architecture independent drivers for Hyper-V's VMbus and
synthetic devices just work when built for ARM64. Hyper-V code is
built and included in the image and modules only if CONFIG_HYPERV
is enabled.

The ten patches are organized as follows:
1) Add include files that define the Hyper-V interface as
   described in the Hyper-V Top Level Functional Spec (TLFS), plus
   additional definitions specific to Linux running on Hyper-V.

2) Add #define for vendor specific owner definition to linux/arm-smccc.h

3) thru 7) Add core Hyper-V support on ARM64, including hypercalls,
   interrupt handlers, kexec & panic handlers, and core hypervisor
   initialization.

8) Update the existing VMbus driver to generalize interrupt
   management across x86/x64 and ARM64.

9) Export screen_info so it may be used by the Hyper-V frame buffer
   driver built as a module. It's already exported for x86,
   powerpc, and alpha architectures.

10) Make CONFIG_HYPERV selectable on ARM64 in addition to x86/x64.

Some areas of Linux guests on Hyper-V on ARM64 are a work-
in-progress:

* Hyper-V on ARM64 currently runs with a 4 Kbyte page size, but
  allows guests with 16K/64K page size. However, the Linux drivers
  for Hyper-V synthetic devices assume the guest page size is 4K.
  This patch set lays the groundwork for larger guest page sizes,
  but additional patches are coming to update these drivers.

* The Hyper-V vPCI driver at drivers/pci/host/pci-hyperv.c has
  x86/x64-specific code and is not being built for ARM64. Fixing
  this driver to enable vPCI devices on ARM64 will be done later.

In a few cases, terminology from the x86/x64 world has been carried
over into the ARM64 code ("MSR", "TSC").  Hyper-V still uses the
x86/x64 terminology and has not replaced it with something more
generic, so the code uses the Hyper-V terminology.  This will be
fixed when Hyper-V updates the usage in the TLFS.

This patch set is based on a 5.6-rc5 linux-next tree.

Changes in v6:
* Use SMCCC hypercall interface instead of direct invocation
  of HVC instruction and the Hyper-V hypercall interface
  [Marc Zyngier]
* Reimplemented functions to alloc/free Hyper-V size pages
  using kmalloc/kfree since kmalloc now guarantees alignment of
  power of 2 size allocations [Marc Zyngier]
* Export screen_info in arm64 architecture so it can be used
  by the Hyper-V buffer driver built as a module
* Renamed source file arch/arm64/hyperv/hv_init.c to hv_core.c
  to better reflect its content
* Fixed the bit position of certain feature flags presented by
  Hyper-V to the guest.  The bit positions on ARM64 don't match
  the position on x86 like originally thought.
* Minor fixups to rebase to 5.6-rc5 linux-next

Changes in v5:
* Minor fixups to rebase to 5.4-rc1 linux-next

Changes in v4:
* Moved clock-related code into an architecture independent
  Hyper-V clocksource driver that is already upstream. Clock
  related code is removed from this patch set except for the
  ARM64 specific interrupt handler. [Marc Zyngier]
* Separately upstreamed the split of mshyperv.h into arch independent
  and arch dependent portions. The arch independent portion has been
  removed from this patch set.
* Divided patch #2 of the series into multiple smaller patches
  [Marc Zyngier]
* Changed a dozen or so smaller things based on feedback
  [Marc Zyngier, Will Deacon]
* Added functions to alloc/free Hyper-V size pages for use by
  drivers for Hyper-V synthetic devices when updated to not assume
  guest page size and Hyper-v page size are the same

Changes in v3:
* Added initialization of hv_vp_index array like was recently
  added on x86 branch [KY Srinivasan]
* Changed Hyper-V ARM64 register symbols to be all uppercase 
  instead of mixed case [KY Srinivasan]
* Separated mshyperv.h into two files, one architecture
  independent and one architecture dependent. After this code
  is upstream, will make changes to the x86 code to use the
  architecture independent file and remove duplication. And
  once we have a multi-architecture Hyper-V TLFS, will do a
  separate patch to split hyperv-tlfs.h in the same way.
  [KY Srinivasan]
* Minor tweaks to rebase to latest linux-next code

Changes in v2:
* Removed patch to implement slow_virt_to_phys() on ARM64.
  Use of slow_virt_to_phys() in arch independent Hyper-V
  drivers has been eliminated by commit 6ba34171bcbd
  ("Drivers: hv: vmbus: Remove use of slow_virt_to_phys()")
* Minor tweaks to rebase to latest linux-next code

Michael Kelley (10):
  arm64: hyperv: Add core Hyper-V include files
  arm/arm64: smccc-1.1: Add vendor specific owner definition
  arm64: hyperv: Add hypercall and register access functions
  arm64: hyperv: Add memory alloc/free functions for Hyper-V size pages
  arm64: hyperv: Add interrupt handlers for VMbus and stimer
  arm64: hyperv: Add kexec and panic handlers
  arm64: hyperv: Initialize hypervisor on boot
  Drivers: hv: vmbus: Add hooks for per-CPU IRQ
  arm64: efi: Export screen_info
  Drivers: hv: Enable Hyper-V code to be built on ARM64

 MAINTAINERS                          |   3 +
 arch/arm64/Kbuild                    |   1 +
 arch/arm64/hyperv/Makefile           |   2 +
 arch/arm64/hyperv/hv_core.c          | 418 +++++++++++++++++++++++++++++++++++
 arch/arm64/hyperv/mshyperv.c         | 165 ++++++++++++++
 arch/arm64/include/asm/hyperv-tlfs.h | 413 ++++++++++++++++++++++++++++++++++
 arch/arm64/include/asm/mshyperv.h    | 115 ++++++++++
 arch/arm64/kernel/efi.c              |   1 +
 arch/x86/include/asm/mshyperv.h      |   4 +
 drivers/hv/Kconfig                   |   3 +-
 drivers/hv/hv.c                      |   3 +
 include/asm-generic/mshyperv.h       |   5 +
 include/linux/arm-smccc.h            |   1 +
 13 files changed, 1133 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/hyperv/Makefile
 create mode 100644 arch/arm64/hyperv/hv_core.c
 create mode 100644 arch/arm64/hyperv/mshyperv.c
 create mode 100644 arch/arm64/include/asm/hyperv-tlfs.h
 create mode 100644 arch/arm64/include/asm/mshyperv.h

-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
