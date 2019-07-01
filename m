Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C86C3527E1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iWOdBxv0OIHH+GR8PL9TR8pOKNZ4pP4FH5i5NksuYCU=; b=KSj3FvTvZD28Dc
	gZsQOvP23hAwLTnd8KRI72Eam+IrqFF3ugYRJ0ivpSRUawAJ8tq2TLj6kCWeMpzYjQdTJrl5hxKbB
	6I+U6vT+wtA3u+lrfOyyKcCQGHJE4ZFcXNBif2blg93q6MthgbFNbXOX2rmpir+y3RDVqlr3gl/Mq
	cavfkC6EYMzk5KObprEBvGC1+cd/BhX0G6w+aQO2Z1nKknzJImWnoKHqDjVl1ICTGKo6Ntn6HIdjV
	YzRgmOWONkY/S1vus243OPMx8+8WZFfYxkAifSHjUN0n2EpDmmDz6WkQrPqpuohzKCWeyotkmRvTh
	dZyggys4S5rESW1dEA0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhdU-0005iJ-Sy; Tue, 25 Jun 2019 09:21:09 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhcz-0005gh-9u
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:20:41 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id EA2B26ACADE6F2562ACA;
 Tue, 25 Jun 2019 17:20:23 +0800 (CST)
Received: from localhost (10.202.226.61) by DGGEMS402-HUB.china.huawei.com
 (10.3.19.202) with Microsoft SMTP Server id 14.3.439.0; Tue, 25 Jun 2019
 17:20:15 +0800
Date: Tue, 25 Jun 2019 10:20:05 +0100
From: Jonathan Cameron <jonathan.cameron@huawei.com>
To: <linux-mm@kvack.org>, <linux-acpi@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 0/4 V3] ACPI: Support generic initiator proximity domains
Message-ID: <20190625102005.00007ea2@huawei.com>
In-Reply-To: <20190528123158.0000167a@huawei.com>
References: <20190415174907.102307-1-Jonathan.Cameron@huawei.com>
 <20190528123158.0000167a@huawei.com>
Organization: Huawei
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.61]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_022037_918389_45BDBC5A 
X-CRM114-Status: GOOD (  34.31  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>,
 =?ISO-8859-1?Q?J=E9r=F4me?= Glisse <jglisse@redhat.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linuxarm@huawei.com,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 28 May 2019 12:31:58 +0100
Jonathan Cameron <jonathan.cameron@huawei.com> wrote:
Hi All,

This is your periodic Generic Initiator reminder service.  I'm still looking
for review on all aspects of this series.

* ACPI for the table parsing code.
* ARM64 for the architecture handling
* x86 for the architecture handling.
* Generic MM for the overall approach. In some sense it's not mm related in
  of itself (as otherwise they wouldn't be Generic Initiator domains) but
  it does result in different NUMA policy decisions from the current status
  hence mm input would be great.

Any suggestions on people to add to the CC list to try and make some progress
on this welcome as well.

If I don't hear anything I'll do a rebase post the coming merge window and
resend.

Thanks,

Jonathan

> Hi All,
> 
> Anyone had a change to take a look at this?
> 
> Thanks,
> 
> Jonathan
> 
> On Tue, 16 Apr 2019 01:49:03 +0800
> Jonathan Cameron <Jonathan.Cameron@huawei.com> wrote:
> 
> > Changes since RFC V2.
> > * RFC dropped as now we have x86 support, so the lack of guards in in the
> > ACPI code etc should now be fine.
> > * Added x86 support.  Note this has only been tested on QEMU as I don't have
> > a convenient x86 NUMA machine to play with.  Note that this fitted together
> > rather differently form arm64 so I'm particularly interested in feedback
> > on the two solutions.
> > 
> > Since RFC V1.
> > * Fix incorrect interpretation of the ACPI entry noted by Keith Busch
> > * Use the acpica headers definitions that are now in mmotm.
> > 
> > It's worth noting that, to safely put a given device in a GI node, may
> > require changes to the existing drivers as it's not unusual to assume
> > you have local memory or processor core. There may be futher constraints
> > not yet covered by this patch.
> > 
> > Original cover letter...
> > 
> > ACPI 6.3 introduced a new entity that can be part of a NUMA proximity domain.
> > It may share such a domain with the existing options (memory, cpu etc) but it
> > may also exist on it's own.
> > 
> > The intent is to allow the description of the NUMA properties (particulary
> > via HMAT) of accelerators and other initiators of memory activity that are not
> > the host processor running the operating system.
> > 
> > This patch set introduces 'just enough' to make them work for arm64 and x86.
> > It should be trivial to support other architectures, I just don't suitable
> > NUMA systems readily available to test.
> > 
> > There are a few quirks that need to be considered.
> > 
> > 1. Fall back nodes
> > ******************
> > 
> > As pre ACPI 6.3 supporting operating systems do not have Generic Initiator
> > Proximity Domains it is possible to specify, via _PXM in DSDT that another
> > device is part of such a GI only node.  This currently blows up spectacularly.
> > 
> > Whilst we can obviously 'now' protect against such a situation (see the related
> > thread on PCI _PXM support and the  threadripper board identified there as
> > also falling into the  problem of using non existent nodes
> > https://patchwork.kernel.org/patch/10723311/ ), there is no way to  be sure
> > we will never have legacy OSes that are not protected  against this.  It would
> > also be 'non ideal' to fallback to  a default node as there may be a better
> > (non GI) node to pick  if GI nodes aren't available.
> > 
> > The work around is that we also have a new system wide OSC bit that allows
> > an operating system to 'annouce' that it supports Generic Initiators.  This
> > allows, the firmware to us DSDT magic to 'move' devices between the nodes
> > dependent on whether our new nodes are there or not.
> > 
> > 2. New ways of assigning a proximity domain for devices
> > *******************************************************
> > 
> > Until now, the only way firmware could indicate that a particular device
> > (outside the 'special' set of cpus etc) was to be found in a particular
> > Proximity Domain by the use of _PXM in DSDT.
> > 
> > That is equally valid with GI domains, but we have new options. The SRAT
> > affinity structure includes a handle (ACPI or PCI) to identify devices
> > with the system and specify their proximity domain that way.  If both _PXM
> > and this are provided, they should give the same answer.
> > 
> > For now this patch set completely ignores that feature as we don't need
> > it to start the discussion.  It will form a follow up set at some point
> > (if no one else fancies doing it).
> > 
> > Jonathan Cameron (4):
> >   ACPI: Support Generic Initiator only domains
> >   arm64: Support Generic Initiator only domains
> >   x86: Support Generic Initiator only proximity domains
> >   ACPI: Let ACPI know we support Generic Initiator Affinity Structures
> > 
> >  arch/arm64/kernel/smp.c        |  8 +++++
> >  arch/x86/include/asm/numa.h    |  2 ++
> >  arch/x86/kernel/setup.c        |  1 +
> >  arch/x86/mm/numa.c             | 14 ++++++++
> >  drivers/acpi/bus.c             |  1 +
> >  drivers/acpi/numa.c            | 62 +++++++++++++++++++++++++++++++++-
> >  drivers/base/node.c            |  3 ++
> >  include/asm-generic/topology.h |  3 ++
> >  include/linux/acpi.h           |  1 +
> >  include/linux/nodemask.h       |  1 +
> >  include/linux/topology.h       |  7 ++++
> >  11 files changed, 102 insertions(+), 1 deletion(-)
> >   
> 
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
