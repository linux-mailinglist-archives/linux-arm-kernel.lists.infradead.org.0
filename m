Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 031921302B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 16:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1qp4TpopTj6V058tOFa+vh6Sn3P0kL6OLdyd99xmGl8=; b=S4B
	D9wO3MBZbO5LoHUM/dS5wFk6F16l5ITLFqMgkwWwf0mCVVkgU3M4HA9cmtNcwFv0DbNggLLKq1RaP
	8W/SHyuVNKJiQDI6RbIeRhX9UKQACX4vDw6KOI5/qiSu2HYICB/nL0lrwTxiIkyzeDYnrYgraauHI
	ECiUCdUtbJhEqAdK66SghQZndilWGHrRaEf/Xqe3bbRfBvrhD50T1qSctG7AQV/C9LZiMxOQ3sLw3
	+0/zmNDxBurmXREqoTn9mIZIMF6WhR/c0bSTICo+1N3e48hLl+WuPEvuojnDKA4aXzKIPWnKU7m31
	vJCf+Q9mHEZtBfVOckrGeuM3zpt/5QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMZAy-0001c0-6K; Fri, 03 May 2019 14:28:36 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMZAO-0000wu-2C
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 14:28:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 479FE80D;
 Fri,  3 May 2019 07:27:59 -0700 (PDT)
Received: from donnerap.arm.com (donnerap.cambridge.arm.com [10.1.197.44])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8CFB33F5C1;
 Fri,  3 May 2019 07:27:57 -0700 (PDT)
From: Andre Przywara <andre.przywara@arm.com>
To: Marc Zyngier <marc.zyngier@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>
Subject: [PATCH v6 0/3] KVM: arm/arm64: Add VCPU workarounds firmware register
Date: Fri,  3 May 2019 15:27:47 +0100
Message-Id: <20190503142750.252793-1-andre.przywara@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_072800_614445_69551406 
X-CRM114-Status: GOOD (  15.19  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kvm@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 Steven Price <steven.price@arm.com>, Eric Auger <eric.auger@redhat.com>,
 kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

hopefully the final update on this series, rebasing on Catalin's and
Will's arm64/for-next/mitigations branch.
This slightly adjusts the internal names to use "not required"
instead of "unaffected", which is less precise.
As introduced in v5, this one contains the patch to propagate the new
"not required" state for Spectre v2 to KVM and its guests.

Cheers,
Andre

-----------------------------
Workarounds for Spectre variant 2 or 4 vulnerabilities require some help
from the firmware, so KVM implements an interface to provide that for
guests. When such a guest is migrated, we want to make sure we don't
loose the protection the guest relies on.

This introduces two new firmware registers in KVM's GET/SET_ONE_REG
interface, so userland can save the level of protection implemented by
the hypervisor and used by the guest. Upon restoring these registers,
we make sure we don't downgrade and reject any values that would mean
weaker protection.
The protection level is encoded in the lower 4 bits, with smaller
values indicating weaker protection.

ARM(32) is a bit of a pain (again), as the firmware register interface
is shared, but 32-bit does not implement all the workarounds.
For now I stuffed two wrappers into kvm_emulate.h, which doesn't sound
like the best solution. Happy to hear about better solutions.

This has been tested with migration between two Juno systems. Out of the
box they advertise identical workaround levels, and migration succeeds.
However when disabling the A57 cluster on one system, WORKAROUND_1 is
not needed and the host kernel propagates this. Migration now only
succeeds in one direction (from the big/LITTLE configuration to the
A53-only setup).

Please have a look and comment!

This is based upon arm64/for-next/migitations.
Find a git branch here:
{git,http}://linux-arm.org/linux-ap.git branch fw-regs/v6-sysfs

Cheers,
Andre

Changelog:
v5 .. v6:
- rebase on merged sysfs vulnerabilities series
- rename ..._UNAFFECTED to ..._NOT_REQUIRED
- rename ARM64_BP_HARDEN_MITIGATED
- add tags

v4 .. v5:
- add patch to advertise ARM64_BP_HARDEN_MITIGATED state to a guest
- allow migration from KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_AVAIL to
  (new) KVM_REG_ARM_SMCCC_ARCH_WORKAROUND_1_UNAFFECTED
- reword API documentation
- return -EINVAL on querying invalid firmware register
- add some comments
- minor fixes according to Eric's review

v3 .. v4:
- clarify API documentation for WORKAROUND_1
- check for unknown bits in userland provided register values
- report proper -ENOENT when register ID is unknown

v2 .. v3:
- rebase against latest kvm-arm/next
- introduce UNAFFECTED value for WORKAROUND_1
- require exact match for WORKAROUND_1 levels

v1 .. v2:
- complete rework of WORKAROUND_2 presentation to use a linear scale,
  dropping the complicated comparison routine

Andre Przywara (3):
  arm64: KVM: Propagate full Spectre v2 workaround state to KVM guests
  KVM: arm/arm64: Add save/restore support for firmware workaround state
  KVM: doc: add API documentation on the KVM_REG_ARM_WORKAROUNDS
    register

 Documentation/virtual/kvm/arm/psci.txt |  31 +++++
 arch/arm/include/asm/kvm_emulate.h     |  10 ++
 arch/arm/include/asm/kvm_host.h        |  12 +-
 arch/arm/include/uapi/asm/kvm.h        |  12 ++
 arch/arm64/include/asm/cpufeature.h    |   6 +
 arch/arm64/include/asm/kvm_emulate.h   |  14 +++
 arch/arm64/include/asm/kvm_host.h      |  16 ++-
 arch/arm64/include/uapi/asm/kvm.h      |  10 ++
 arch/arm64/kernel/cpu_errata.c         |  23 +++-
 virt/kvm/arm/psci.c                    | 149 ++++++++++++++++++++++---
 10 files changed, 257 insertions(+), 26 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
