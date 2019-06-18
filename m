Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFC64A507
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 17:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=smjznSE+HlJRIBlN2qv+VxG6Enc/2uOn4K+jxCsWhOc=; b=Eb0mSw3pSB2+8p
	3sCY2m63j5AFj1JqV9SNltnYWE5eU8jxB5lBdFKIZdM/1l+6S5CHjLTRioP2gwZ4E1HAeprvB8Vyz
	7r16n9g+Ee4zCDgydoblAFA/ItEdZQwZPL9ZhuMPLMHe6hfki9x3AhSc2U81o1CQ56bpbumcHfcSb
	iBsc34qaSiVfP8yhgHQDyOh+0iETHNKTb983cOFuQlNkCs8lfhnD1rFFDhwNxAQDNJuYOCqS0BQ9I
	OVx+X5UOCcw6s6PDThvv/Cie7x5RWem9HFRJCVWDxPuhInMqrIUMKb00wxvLsmR0PCABwF2BQQhc/
	sWutsRaMDa42m9PtekAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdFsD-0002aS-Kb; Tue, 18 Jun 2019 15:18:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdFrv-0002Zz-BK
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 15:17:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1BDB32B;
 Tue, 18 Jun 2019 08:17:54 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F02A33F718;
 Tue, 18 Jun 2019 08:17:52 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v3 0/6] KVM: arm64: Account host/guest SError more precisely
 (Neoverse-N1 #1349291)
Date: Tue, 18 Jun 2019 16:17:32 +0100
Message-Id: <20190618151738.258983-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_081755_431279_1FBC9A1C 
X-CRM114-Status: GOOD (  10.64  )
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

This series started as a workaround for Neoverse-N1 #1349291, but has
become an improvement in RAS error accounting for KVM on arm64.

Neoverse-N1 affected by #1349291 may report an Uncontained RAS Error
as Unrecoverable. [0] This is the difference between killing the thread and
killing the machine.
The workaround is to treat all Unrecoverable SError as Uncontained.
The arch code's SError handling already does this, due to its nascent
kernel-first support.

So only KVM needs some work as it has its own SError handling as we want
KVM to handle guest:SError and the host to handle host:SError.

Instead of working around the errata in KVM, we account SError as precisely
as we can instead. This means moving the ESB-instruction into the guest-exit
vectors, and deferring guest-entry if there is an SError pending. (so that the
host's existing handling takes it).

Change since v2:
 * Added isb after the dsb to prevent an early read of ISR_EL1.

Changes since v1:
 * Squashed v1:patch5 into v2:patch4. v1:patch6 to be posted separately.
 * Dropped all the performance numbers.
 * Added patch1, making the ESB macro emit a nop if the kconfig feature
   is disabled.
 * Tried to formalise the indirect vectors preamble a little more to
   make changes easier to review
 * Added preamble size checks to the invalid vector entries.
 * Pulled the size check out as a macro now there are two invocations.

Thanks,

James


[0] account-required: https://developer.arm.com/docs/sden885747/latest/arm-neoverse-n1-mp050-software-developer-errata-notice

[v1] https://lore.kernel.org/linux-arm-kernel/20190604144551.188107-1-james.morse@arm.com/

James Morse (6):
  arm64: assember: Switch ESB-instruction with a vanilla nop if
    !ARM64_HAS_RAS
  KVM: arm64: Abstract the size of the HYP vectors pre-amble
  KVM: arm64: Make indirect vectors preamble behaviour symmetric
  KVM: arm64: Consume pending SError as early as possible
  KVM: arm64: Defer guest entry when an asynchronous exception is
    pending
  arm64: Update silicon-errata.txt for Neoverse-N1 #1349291

 Documentation/arm64/silicon-errata.txt |  1 +
 arch/arm64/include/asm/assembler.h     |  4 ++++
 arch/arm64/include/asm/kvm_asm.h       |  6 ++++++
 arch/arm64/kernel/traps.c              |  4 ++++
 arch/arm64/kvm/hyp/entry.S             | 20 ++++++++++++++---
 arch/arm64/kvm/hyp/hyp-entry.S         | 30 +++++++++++++++++++++-----
 arch/arm64/kvm/va_layout.c             |  7 +++---
 7 files changed, 60 insertions(+), 12 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
