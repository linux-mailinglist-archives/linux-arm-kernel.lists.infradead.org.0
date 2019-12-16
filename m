Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F1BC1209D6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:39:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NOs3wZPdazUpI0Pbgr+qJgSgRCf+hOMTCodn2Qr0Tao=; b=Sw6dwS13MLferD
	Wg6cJCXuecUtX/vgerQD76WFrPu6uTXjJz1rKi/La8ZevyFKrc8gcKpUp1kpgMJ6U0mJrxgDoY2Zo
	mAOFeaYQsm4SoVPubo0SWzuBoB56z6I8pYOv44Y2xSxXDoMW7JVqKXvEB0BCDskchOFAqzMIqHt7d
	jq3N0ia4Lx0Lt7btBoM1gMp8Pee4t/dP1Sc0LF2OoUkeJR4QupGPVf9T3KBvLyp2pJomQ652efuLf
	d4Px1SX0oDv3FjcPcaMhf6vde5iUR4kum9r198yZVhRtio1orHsWRUr/VATEkv8Mi5TWzYb+L2q2L
	YHr1Uiv9lBXZDb97f2Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igsTE-0003i5-8E; Mon, 16 Dec 2019 15:39:40 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igsSh-0003Su-Af
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:39:09 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 4860D5A56A57D6BA28D3;
 Mon, 16 Dec 2019 23:38:53 +0800 (CST)
Received: from lhrphicprd00229.huawei.com (10.123.41.22) by
 DGGEMS405-HUB.china.huawei.com (10.3.19.205) with Microsoft SMTP Server id
 14.3.439.0; Mon, 16 Dec 2019 23:38:43 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: <linux-mm@kvack.org>, <linux-acpi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <x86@kernel.org>
Subject: [PATCH V6 0/7]  ACPI: Support Generic Initiator proximity domains
Date: Mon, 16 Dec 2019 23:38:02 +0800
Message-ID: <20191216153809.105463-1-Jonathan.Cameron@huawei.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-Originating-IP: [10.123.41.22]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_073907_696820_E4A19BB6 
X-CRM114-Status: GOOD (  18.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Brice Goglin <brice.goglin@gmail.com>, Tao Xu <tao3.xu@intel.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "Rafael J .
 Wysocki" <rjw@rjwysocki.net>, linuxarm@huawei.com,
 Keith Busch <keith.busch@intel.com>, jglisse@redhat.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Hanjun Guo <guohanjun@huawei.com>, Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduces a new type of NUMA node for cases where we want to represent
the access characteristics of a non CPU initiator of memory requests,
as these differ from all those for existing nodes containing CPUs and/or
memory.

These Generic Initiators are presented by the node access0 class in
sysfs in the same way as a CPU.   It seems likely that there will be
usecases in which the best 'CPU' is desired and Generic Initiators
should be ignored.  The final few patches in this series introduced
access1 which is a new performance class in the sysfs node description
which presents only CPU to memory relationships.  Test cases for this
are described below.

Thanks to Dan for suggestions on V5.  Most of the changes are
an attempt to implement what was discussed in that thread.

The new patch makes it clear that some of the existing naming is perhaps
more specific than it should be. It may be worth a follow up patch
to rename from *cpu* to *initiator* in a few places where this might
cause confusion.

One outstanding question to highlight in this series is whether
we should assume all ACPI supporting architectures support Generic
Initiator domains, or whether to introduce an
ARCH_HAS_GENERIC_INITIATOR_DOMAINS entry in Kconfig.

Changes since V5:

3 new patches:
* A fix for a subtlety in how ACPI 6.3 changed part of the HMAT table.
* Introduction of access1 class to represent characteristics between CPU
  and memory, ingnoring GIs unlike access0 which includes them.
* Docs to describe the new access0 class.

Note that I ran a number of test cases for the new class which are
described at the end of this email.

Changes since V4:

At Rafael's suggestion:

Rebase on top of Dan William's Specific Purpose Memory series as that
moves srat.c Original patches cherry-picked fine onto mmotm with Dan's
patches applied.

Applies to mmotm-2019-09-25 +
https://lore.kernel.org/linux-acpi/156140036490.2951909.1837804994781523185.stgit@dwillia2-desk3.amr.corp.intel.com/
[PATCH v4 00/10] EFI Specific Purpose Memory Support
(note there are some trivial conflicts to deal with when applying
the SPM series).

Change since V3.
* Rebase.

Changes since RFC V2.
* RFC dropped as now we have x86 support, so the lack of guards in in the
  ACPI code etc should now be fine.
  * Added x86 support.  Note this has only been tested on QEMU as I don't have
    a convenient x86 NUMA machine to play with.  Note that this fitted together
      rather differently from arm64 so I'm particularly interested in feedback
        on the two solutions.

Since RFC V1.
* Fix incorrect interpretation of the ACPI entry noted by Keith Busch
* Use the acpica headers definitions that are now in mmotm.

It's worth noting that, to safely put a given device in a GI node, may
require changes to the existing drivers as it's not unusual to assume
you have local memory or processor core. There may be further constraints
not yet covered by this patch.

Original cover letter...

ACPI 6.3 introduced a new entity that can be part of a NUMA proximity domain.
It may share such a domain with the existing options (memory, CPU etc) but it
may also exist on it's own.

The intent is to allow the description of the NUMA properties (particularly
via HMAT) of accelerators and other initiators of memory activity that are not
the host processor running the operating system.

This patch set introduces 'just enough' to make them work for arm64 and x86.
It should be trivial to support other architectures, I just don't suitable
NUMA systems readily available to test.

There are a few quirks that need to be considered.

1. Fall back nodes
******************

As pre ACPI 6.3 supporting operating systems do not have Generic Initiator
Proximity Domains it is possible to specify, via _PXM in DSDT that another
device is part of such a GI only node.  This currently blows up spectacularly.

Whilst we can obviously 'now' protect against such a situation (see the related
thread on PCI _PXM support and the  threadripper board identified there as
also falling into the  problem of using non existent nodes
https://patchwork.kernel.org/patch/10723311/ ), there is no way to  be sure
we will never have legacy OSes that are not protected  against this.  It would
also be 'non ideal' to fallback to  a default node as there may be a better
(non GI) node to pick  if GI nodes aren't available.

The work around is that we also have a new system wide OSC bit that allows
an operating system to 'announce' that it supports Generic Initiators.  This
allows, the firmware to us DSDT magic to 'move' devices between the nodes
dependent on whether our new nodes are there or not.

2. New ways of assigning a proximity domain for devices
*******************************************************

Until now, the only way firmware could indicate that a particular device
(outside the 'special' set of cpus etc) was to be found in a particular
Proximity Domain by the use of _PXM in DSDT.

That is equally valid with GI domains, but we have new options. The SRAT
affinity structure includes a handle (ACPI or PCI) to identify devices
with the system and specify their proximity domain that way.  If both _PXM
and this are provided, they should give the same answer.

For now this patch set completely ignores that feature as we don't need
it to start the discussion.  It will form a follow up set at some point
(if no one else fancies doing it).

Test cases for the access1 class
********************************

Test cases for Generic Initiator additions to HMAT.

Setup

PXM0 (node 0) - CPU0 CPU1, 2G memory
PXM1 (node 1) - CPU2 CPU3, 2G memory
PXM2 (node 2) - CPU4 CPU5, 2G memory
PXM3 (node 4) - 2G memory (GI in one case below)
PXM4 (node 3) - GI only.

Config 1:  GI in PXM4 nearer to memory in PXM 3 than CPUs, not direct attached

[    2.384064] acpi/hmat: HMAT: Locality: Flags:00 Type:Access Latency Initiator Domains:4 Target Domains:4 Base:256
[    2.384913] acpi/hmat:   Initiator-Target[0-0]:1 nsec
[    2.385190] acpi/hmat:   Initiator-Target[0-1]:9 nsec
[    2.385736] acpi/hmat:   Initiator-Target[0-2]:9 nsec
[    2.385984] acpi/hmat:   Initiator-Target[0-3]:9 nsec
[    2.386447] acpi/hmat:   Initiator-Target[1-0]:9 nsec
[    2.386740] acpi/hmat:   Initiator-Target[1-1]:1 nsec
[    2.386964] acpi/hmat:   Initiator-Target[1-2]:9 nsec
[    2.387174] acpi/hmat:   Initiator-Target[1-3]:9 nsec
[    2.387624] acpi/hmat:   Initiator-Target[2-0]:9 nsec
[    2.387953] acpi/hmat:   Initiator-Target[2-1]:9 nsec
[    2.388155] acpi/hmat:   Initiator-Target[2-2]:1 nsec
[    2.388607] acpi/hmat:   Initiator-Target[2-3]:9 nsec
[    2.388861] acpi/hmat:   Initiator-Target[4-0]:13 nsec
[    2.389126] acpi/hmat:   Initiator-Target[4-1]:13 nsec
[    2.389574] acpi/hmat:   Initiator-Target[4-2]:13 nsec
[    2.389805] acpi/hmat:   Initiator-Target[4-3]:5 nsec

# Sysfs reads the same for nodes 0-2 for access0 and access1 as no GI involved.

/sys/bus/node/devices/...
    node0 #1 and 2 similar.
        access0
            initiators
                node0
                read_bandwidth  0 #not specificed in hmat
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node0
            uevent
        access1
            initiators
                node0
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                read_bandwidth  1   
            power
            targets
                node 0
            uevent
        compact
        cpu0
        cpu1
        ...
    node3 # Note PXM 4, contains GI only
        access0
            initiators
                *empty*
            power
            targets
                node4
            uevent
        compact
        ...
    node4
        access0
            initiators
                node3
                read_bandwidth  0
                read_latency    5
                write_bandwidth 0
                write_latency   5
            power
            targets
                *empty*
            uevent
        access1
            initiators
                node0
                node1
                node2
                read_bandwidth  0
                read_latency    9
                write_bandwidth 0
                write_latency   9
            power
            targets
                *empty*
            uevent
        compact
        ...

Config 2:  GI in PXM4 further to memory in PXM 3 than CPUs, not direct attached

[    4.073493] acpi/hmat: HMAT: Locality: Flags:00 Type:Access Latency Initiator Domains:4 Target Domains:4 Base:256
[    4.074785] acpi/hmat:   Initiator-Target[0-0]:1 nsec
[    4.075150] acpi/hmat:   Initiator-Target[0-1]:9 nsec
[    4.075423] acpi/hmat:   Initiator-Target[0-2]:9 nsec
[    4.076184] acpi/hmat:   Initiator-Target[0-3]:9 nsec
[    4.077116] acpi/hmat:   Initiator-Target[1-0]:9 nsec
[    4.077366] acpi/hmat:   Initiator-Target[1-1]:1 nsec
[    4.077640] acpi/hmat:   Initiator-Target[1-2]:9 nsec
[    4.078156] acpi/hmat:   Initiator-Target[1-3]:9 nsec
[    4.078471] acpi/hmat:   Initiator-Target[2-0]:9 nsec
[    4.078994] acpi/hmat:   Initiator-Target[2-1]:9 nsec
[    4.079277] acpi/hmat:   Initiator-Target[2-2]:1 nsec
[    4.079505] acpi/hmat:   Initiator-Target[2-3]:9 nsec
[    4.080126] acpi/hmat:   Initiator-Target[4-0]:13 nsec
[    4.080995] acpi/hmat:   Initiator-Target[4-1]:13 nsec
[    4.081351] acpi/hmat:   Initiator-Target[4-2]:13 nsec
[    4.082125] acpi/hmat:   Initiator-Target[4-3]:13 nsec

/sys/bus/node/devices/...
    node0 #1 and 2 similar.
        access0
            initiators
                node0
                read_bandwidth  0 #not specificed in hmat
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node0
                node4
            uevent
        access1
            initiators
                node0
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                read_bandwidth  1   
            power
            targets
                node0
                node4
            uevent
        compact
        cpu0
        cpu1
        ...
    node3 # Note PXM 4, contains GI only
        #No accessX directories.
        compact
        ...
    node4
        access0
            initiators
                node0
                node1
                node2
                read_bandwidth  0
                read_latency    9
                write_bandwidth 0
                write_latency   9
            power
            targets
                *empty*
            uevent
        access1
            initiators
                node0
                node1
                node2
                read_bandwidth  0
                read_latency    9
                write_bandwidth 0
                write_latency   9
            power
            targets
                *empty*
            uevent
        compact
        ...


case 3 - as per case 2 but now the memory in node 3 is direct attached to the
GI but nearer the main nodes (not physically sensible :))

/sys/bus/node/devices/...
    node0 #1 and 2 similar.
        access0
            initiators
                node0
                read_bandwidth  0 #not specificed in hmat
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node0
                node4
            uevent
        access1
            initiators
                node0
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                read_bandwidth  1   
            power
            targets
                node0
                node4
            uevent
        compact
        cpu0
        cpu1
        ...
    node3 # Note PXM 4, contains GI only
        access0
            initiators
                *empty*
            power
            targets
                node4
            uevent
        compact
        ...
    node4
        access0
            initiators
                node3
                read_bandwidth  0
                read_latency    13
                write_bandwidth 0
                write_latency   13
            power
            targets
                *empty*
            uevent
        access1
            initiators
                node0
                node1
                node2
                read_bandwidth  0
                read_latency    9
                write_bandwidth 0
                write_latency   9
            power
            targets
                *empty*
            uevent
        compact
        ...

Case 4 - nearer the GI, but direct attached to one of the CPUS.
# Another bonkers one.

/sys/bus/node/devices/...
    node0 #1 similar.
        access0
            initiators
                node0
                read_bandwidth  0 #not specificed in hmat
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node0
                node4
            uevent
        access1
            initiators
                node0
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                read_bandwidth  1   
            power
            targets
                node0
            uevent
        compact
        cpu0
        cpu1
        ...
    node2 # Direct attached to memory in node 3
        access0
            initiators
                node2
                read_bandwidth  0 #not specificed in hmat
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node2
                node4 #direct attached
            uevent
        access1
            initiators
                node2
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                read_bandwidth  1   
            power
            targets
                node2
                node4 #direct attached
            uevent
        compact
        cpu0
        cpu1
        ...

    node3 # Note PXM 4, contains GI only
        #No accessX directories.
        compact
        ...
    node4
        access0
            initiators
                node3
                read_bandwidth  0
                read_latency    13
                write_bandwidth 0
                write_latency   13
            power
            targets
                *empty*
            uevent
        access1
            initiators
                node0
                node1
                node2
                read_bandwidth  0
                read_latency    9
                write_bandwidth 0
                write_latency   9
            power
            targets
                *empty*
            uevent
        compact
        ...

case 5 memory and GI together in node 3 (added an extra GI to node 3)
Note hmat should also reflect this extra initiator domain.

/sys/bus/node/devices/...
    node0 #1 and 2 similar.
        access0
            initiators
                node0
                read_bandwidth  0 #not specificed in hmat
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node0
                node4
            uevent
        access1
            initiators
                node0
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                read_bandwidth  1   
            power
            targets
                node0
            uevent
        compact
        cpu0
        cpu1
        ...
    node3 # Note PXM 3, contains GI only
        #No accessX directories.
        compact
        ...
    node4 # Now memory and GI.
        access0
            initiators
                node4
                read_bandwidth  0
                read_latency    1
                write_bandwidth 0
                write_latency   1
            power
            targets
                node4
            uevent
        access1
            initiators
                node0
                node1
                node2
                read_bandwidth  0
                read_latency    9
                write_bandwidth 0
                write_latency   9
            power
            targets
                *empty* # as expected GI doesn't paticipate in access 1.
            uevent
        compact
        ...

Jonathan Cameron (7):
  ACPI: Support Generic Initiator only domains
  arm64: Support Generic Initiator only domains
  x86: Support Generic Initiator only proximity domains
  ACPI: Let ACPI know we support Generic Initiator Affinity Structures
  ACPI: HMAT: Fix handling of changes from ACPI 6.2 to ACPI 6.3
  node: Add access1 class to represent CPU to memory characteristics
  docs: mm: numaperf.rst Add brief description for access class 1.

 Documentation/admin-guide/mm/numaperf.rst |  8 ++
 arch/arm64/kernel/smp.c                   |  8 ++
 arch/x86/include/asm/numa.h               |  2 +
 arch/x86/kernel/setup.c                   |  1 +
 arch/x86/mm/numa.c                        | 14 ++++
 drivers/acpi/bus.c                        |  1 +
 drivers/acpi/numa/hmat.c                  | 89 ++++++++++++++++++-----
 drivers/acpi/numa/srat.c                  | 62 +++++++++++++++-
 drivers/base/node.c                       |  3 +
 include/asm-generic/topology.h            |  3 +
 include/linux/acpi.h                      |  1 +
 include/linux/nodemask.h                  |  1 +
 include/linux/topology.h                  |  7 ++
 13 files changed, 179 insertions(+), 21 deletions(-)

-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
