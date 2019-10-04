Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A9E6CB965
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 13:44:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3CjkmBWo++Q20CGfws+Jq+xJyROELlQ8AVyDKF5VPbQ=; b=O8xxFkeXOCfCQB
	bAQNd7W1YCi5DonyNTRwRSVdNDE/L0K6INVTbFEJTzJ/haBaq0s64tFiMGxfUxcxYMfRuWbdMDPXD
	njV6FaYPBV0afJ8KJ5OdLkwFrFiHdEbYbgtIZtX5yMMnJdeRFCZqSxAmlmKLTaY6SsBVJacf9phJw
	s71h4MWBXK6qcneYxF5dShQZ266Ikg6P9ANcKmtu2xNePBvsm4jdVzQyTzzc0z5TexKH2VY2gU9XV
	dmQrtYkoVI0ZCGxUjM2ghYqoSQ8UXUvTOeyKq8F7lRMZGwm/tkc33NeSanzHRsGlvimUsAYnH83J9
	zz6aZ4WaVOFbua3tscJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGM0N-0006yU-US; Fri, 04 Oct 2019 11:44:15 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGM0G-0006xu-3B
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 11:44:10 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 05A2E588E3FAE8D78D9E;
 Fri,  4 Oct 2019 19:44:05 +0800 (CST)
Received: from lhrphicprd00229.huawei.com (10.123.41.22) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 4 Oct 2019 19:43:57 +0800
From: Jonathan Cameron <Jonathan.Cameron@huawei.com>
To: <linux-mm@kvack.org>, <linux-acpi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <x86@kernel.org>
Subject: [PATCH V5 0/4] ACPI: Support Generic Initiator proximity domains
Date: Fri, 4 Oct 2019 19:43:26 +0800
Message-ID: <20191004114330.104746-1-Jonathan.Cameron@huawei.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Originating-IP: [10.123.41.22]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_044408_305281_907E5648 
X-CRM114-Status: GOOD (  18.16  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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
Cc: "Rafael J . Wysocki" <rjw@rjwysocki.net>, linuxarm@huawei.com,
 Keith Busch <keith.busch@intel.com>, jglisse@redhat.com,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduces a new type of NUMA node for cases where we want to represent
the access characteristics of a non CPU initiator of memory requests,
as these differ from all those for existing nodes containing CPUs and/or
memory.

This patch set has been sitting around for a long time (rebases only since
v3 in April) without significant review.
I would appreciate it very much if anyone has time to take a look.

One outstanding question to highlight in this series is whether
we should assume all ACPI supporting architectures support Generic
Initiator domains, or whether to introduce an
ARCH_HAS_GENERIC_INITIATOR_DOMAINS entry in Kconfig.

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

Jonathan Cameron (4):
  ACPI: Support Generic Initiator only domains
  arm64: Support Generic Initiator only domains
  x86: Support Generic Initiator only proximity domains
  ACPI: Let ACPI know we support Generic Initiator Affinity Structures

 arch/arm64/kernel/smp.c        |  8 +++++
 arch/x86/include/asm/numa.h    |  2 ++
 arch/x86/kernel/setup.c        |  1 +
 arch/x86/mm/numa.c             | 14 ++++++++
 drivers/acpi/bus.c             |  1 +
 drivers/acpi/numa/srat.c       | 62 +++++++++++++++++++++++++++++++++-
 drivers/base/node.c            |  3 ++
 include/asm-generic/topology.h |  3 ++
 include/linux/acpi.h           |  1 +
 include/linux/nodemask.h       |  1 +
 include/linux/topology.h       |  7 ++++
 11 files changed, 102 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
