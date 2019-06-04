Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B116834ABE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xLyhMY5GiG/iFq5ojxlMSusa8Fpvml80c++sw22QOcM=; b=ulOnkV/2Mi881O
	d/FUYkOiVPMMPICLteFtcAKHzhHbnSIE0UXHuff4UAu9e1tHI9p1LR+PtLDngUzsnBjQwu/G3M8fx
	rIPEmhDUZ4U0aj2MvSM4iLX6MsJtWPlH2Oab3GSzf4qzZ+X1TmBb72gfJJDUtJYbR7PbPskS5DYZw
	0gYW3Sh8UTVqpVhFX6vRJXgZo+plKg8KEoOOnBuiIZ6PEe0A0qW3z9iIg0P9F2XpsSQHou+BEYuZ5
	Os7FmKJtyFU2EXk58YciFo6DEa7HoZplEOKD0nLDQtlZm4xcX9UfMIU0h5Wl0lKFPdykd+W+aL2Ni
	6kHDCarKM74Um2ECN4bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAhs-0006sc-KR; Tue, 04 Jun 2019 14:46:32 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAhj-0006rR-Nk
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:46:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BC93C341;
 Tue,  4 Jun 2019 07:46:21 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41CE73F690;
 Tue,  4 Jun 2019 07:46:20 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v1 0/6] KVM: arm64: Account host/guest SError more precisely
 (Neoverse-N1 #1349291)
Date: Tue,  4 Jun 2019 15:45:45 +0100
Message-Id: <20190604144551.188107-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074623_787882_89EEDB00 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Suzuki K Pouloze <suzuki.poulose@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Julien Thierry <julien.thierry@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

v1? Yes: I intend to repost this with/without the last two patches
depending on whether anyone thinks they are needed, and should be considered
as part of this series, or separate.

This series started as a workaround for Neoverse-N1 #1349291, but has
become an improvement in RAS error accounting for KVM on arm64.

Neoverse-N1 affected by #1349291 may report an Uncontained RAS Errors
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

This is all good stuff, but it comes with the cost of a dsb in the
world-switch code. It's the non-RAS non-VHE systems that will see this
as costly. Benchmarked using kvm-ws-tests's do_hvc [1] on Seattle:

| v5.2-rc1            mean:4339 stddev:33
| v5.2-rc1+patches1-4 mean:4476 stddev: 2
| with series 3.15% slower


Patch 5 replaces this dsb with a nop if the system doesn't have v8.2
as these systems are unlikely to report errors in a way that we can
handle.

| 5.2-rc1+patches1-5 mean:4405 stddev:31
| with series 1.53% slower


Patch 6 applies the same ISR_EL1 trick to avoid unmasking SError on
guest-exit, which avoids a pstate-write and more system register reads.
I'm aware 'vaxorcism' isn't an english word...)

After all this:
| v5.2-rc1+patches1-6 mean:4309 stddev:26
| with series 0.69% faster


So for hardware that doesn't benefit from the extra work, we are back where
we started.

If the performance-game is valid, I intend to squash patch 5 into patch 3,
and post patch 6 independently. I don't think patch 6 should be backported,
but patch 5 would be fair game if its squashed in.


Thanks,

James

[0] account-required: https://developer.arm.com/docs/sden885747/latest/arm-neoverse-n1-mp050-software-developer-errata-notice
[1] https://git.kernel.org/pub/scm/linux/kernel/git/maz/kvm-ws-tests.git/

James Morse (6):
  KVM: arm64: Abstract the size of the HYP vectors pre-amble
  KVM: arm64: Consume pending SError as early as possible
  KVM: arm64: Defer guest entry when an asynchronous exception is
    pending
  arm64: Update silicon-errata.txt for Neoverse-N1 #1349291
  KVM: arm64: nop out dsb in __guest_enter() unless we have v8.2 RAS
  KVM: arm64: Skip more of the SError vaxorcism

 Documentation/arm64/silicon-errata.txt |  1 +
 arch/arm64/include/asm/kvm_asm.h       |  6 +++++
 arch/arm64/kernel/traps.c              |  4 ++++
 arch/arm64/kvm/hyp/entry.S             | 33 ++++++++++++++++++++------
 arch/arm64/kvm/hyp/hyp-entry.S         | 12 +++++++++-
 arch/arm64/kvm/va_layout.c             |  7 +++---
 6 files changed, 51 insertions(+), 12 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
