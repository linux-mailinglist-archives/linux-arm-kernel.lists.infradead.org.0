Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DD2F52ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 18:50:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=8h9YXMf93MHzlmMJ9vUYugDdBrtDw5uApb9kh40FZ7s=; b=LoF
	Q2skRqoxs7rbpI8PlC/FA2uUe7afc9qjN65qVt01zB9Mm9NKMvxyJEN04mz0CAnk76UgKzX+11RSD
	RAyXDLA3waSQ8OD/aDM+Z5HzjPJQfiB0rcLRZL2eMDXFzLGSMmwGCBjeaCBi1UZdjNjJsrtQwD0oG
	B7XRiSh22UxLqsrCYirH7VhPUC6nbFVWytZabesW2PwHKhBFcCGK7RjtURIk+4sxtBCBvjMqQLeik
	2O0djrj0LIxLAfRUA+yIdBbI0QmDz8lhTmfK4oHL2VOZFhRhdF7DvgiiAIPcZfHpzk2pS96deJPXc
	7EBJHlhqr2MDt966iQYwttW1zRIluiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT8On-0004Ba-8q; Fri, 08 Nov 2019 17:50:17 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT8OV-00040z-Kl
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 17:50:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1522431B;
 Fri,  8 Nov 2019 09:49:59 -0800 (PST)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D1ED93F719;
 Fri,  8 Nov 2019 09:49:57 -0800 (PST)
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <maz@kernel.org>
Subject: [PATCH 0/3] kvm: arm: VGIC: Fix interrupt group enablement
Date: Fri,  8 Nov 2019 17:49:49 +0000
Message-Id: <20191108174952.740-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_094959_761927_B0F36660 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, kvm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In KVM we emulate an ARM Generic Interrupt Controller with a "single
security state", which (unlike most GICs found in silicon) provides
a non-secure operating system with *two* interrupt groups.
Since on bare metal we typically have only one group available, Linux
does not actually care about the groups and will just use the one
provided.

However we claim to support the GIC architecture, and actually have code
to support two groups, so we should aim to support this properly.

As Marc pointed out recently, we don't honour the separate group enable
bits in the GICD_CTLR register, so a guest can't separately enable or
disable the two groups.

Fixing this unfortunately requires more than just to provide storage for
a second bit: So far we were treating the "groupX enable bit" as a
global distributor enable bit, preventing interrupts from being entered
into the list registers at all if the whole thing was disabled.
Now with two separate bits we might need to block one IRQ, while needing
to forward another one, so this neat trick does not work anymore.

Instead we slightly remodel our "interrupt forwarding" mechanism, to
actually get closer to the architecture: Before adding a pending IRQ to
the ap_list, we check whether its configured interrupt group is enabled.
If it's not, we don't add it to the ap_list (yet). Now when later this
group gets enabled, we need to rescan all (pending) IRQs, to add them to
the ap_list and forward them to the guest. This is not really cheap, but
fortunately wouldn't happen too often, so we refrain from employing any
super clever algorithm, at least for now.
Another solution would be to introduce a "disabled_group_list", where
pending, but group-disabled IRQs go to, let me know if I should explore
this further.

Patch 1 prepares the VGIC code to provide storage for the two enable
bits, also extends the MMIO handling to deal with the two bits.
For this patch we still block the "other" group, as we need the
rescanning algorithm in patch 2 to allow enabling of any group later on.
Patch 3 then enables the functionality, when everything is ready.
The split-up is mostly for review purposes, since I expect some
discussion about patch 2. Happy to merge the three into one once we
agreed on the approach.

There is a corresponding kvm-unit-test series to test the FIQ
functionality, since Linux itself won't use this.
This has been tested with Linux (for regressions) and with
kvm-unit-tests, on a GICv2/arm, GICv2/arm64 and GICv3/arm64 machine.

The kvm-unit-tests patches can be found here:
https://lists.cs.columbia.edu/pipermail/kvmarm/2019-November/037853.html
or in the following repo:
https://github.com/Andre-ARM/kvm-unit-tests/commits/gic-group0

This series here can also be found at:
git://linux-arm.org/linux-ap.git

Based on kvmarm/next, commit cd7056ae34af.

Please have a look!

Cheers,
Andre

Andre Przywara (3):
  kvm: arm: VGIC: Prepare for handling two interrupt groups
  kvm: arm: VGIC: Scan all IRQs when interrupt group gets enabled
  kvm: arm: VGIC: Enable proper Group0 handling

 include/kvm/arm_vgic.h           |   7 +-
 virt/kvm/arm/vgic/vgic-debug.c   |   2 +-
 virt/kvm/arm/vgic/vgic-mmio-v2.c |  23 +++---
 virt/kvm/arm/vgic/vgic-mmio-v3.c |  22 +++---
 virt/kvm/arm/vgic/vgic.c         | 130 ++++++++++++++++++++++++++++++-
 virt/kvm/arm/vgic/vgic.h         |   3 +
 6 files changed, 162 insertions(+), 25 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
