Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1DCDD7CE
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 19 Oct 2019 11:55:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7FssU61FACbvzveCM9MzFkTjf9IWfpNHc3CULJ3OxS8=; b=Jwy9Tuo/I5Z7Jo
	RA5v6bTNAHNtWBTj77nt9fNEgS1ggC0OOGVi5GSG9OI/hphY4VmLD0bnwoxSnzMdG2rj+TB6LeU0E
	YDrs27+JHT2GQuYmVYB49EQUqibcB0BGyXwJF1iuSY34a1+IeQIykqss938BbWRSx/kQH7RNtrWaj
	dUhdf5zAVgG4JgEuazKA6WLVomuUA+9df5R2vf7OllND6AXw/S9Z2Nz3eCx4Qbe46/b+W6DMNBQB6
	9bQs6UDFYLMef4M2n14wUvIC/lcBiXFZKMg1upX1Mbw9YTFJ/NRb0bT8DunWiiPoZKLuouCR1Tueu
	XWNu1OYVbqASLwSBrPDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLlST-0001oS-Q6; Sat, 19 Oct 2019 09:55:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLlSK-0001nV-Dj
 for linux-arm-kernel@lists.infradead.org; Sat, 19 Oct 2019 09:55:29 +0000
Received: from big-swifty.lan (78.163-31-62.static.virginmediabusiness.co.uk
 [62.31.163.78])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E2AD2222BD;
 Sat, 19 Oct 2019 09:55:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571478927;
 bh=N9Z0vUut0qPCNXvusFnCmmykyf3NqqvywC9U3wgaJ8A=;
 h=From:To:Cc:Subject:Date:From;
 b=iwRQbDJLsLS02h0MbcugXlJQkxWnxa+MGT0Kw2YwxaVrq6WI/99bX9SeBccY9+F63
 gM0+5fS5rfMhmh6ovbTkM6ZowJrola1sXlMN1n9ORzu8AJI+FJNp2K0LPv4PSb+puR
 IQSOeby8p0kdiBV3pTVtGYUzsVm6mw2sxJJ48iaM=
From: Marc Zyngier <maz@kernel.org>
To: linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org
Subject: [PATCH v2 0/5] arm64: KVM: Add workaround for errata 1319367 and
 1319537
Date: Sat, 19 Oct 2019 10:55:16 +0100
Message-Id: <20191019095521.31722-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191019_025528_488533_C4A9692D 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, James Morse <james.morse@arm.com>,
 Will Deacon <will@kernel.org>, Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Similarily to erratum 1165522 that affects Cortex-A76, our good old
friends A57 and A72 respectively suffer from errata 1319537 and
1319367, potentially resulting in TLB corruption if the CPU speculates
an AT instruction while switching guests.

The fix is slightly more involved since we don't have VHE to help us
here, but the idea is the same: When switching a guest in, we must
prevent any speculated AT from being able to parse the page tables
until S2 is up and running. Only at this stage can we allow AT to take
place.

For this, we always restore the guest sysregs first, except for its
SCTLR and TCR registers, which must be set with SCTLR.M=1 and
TCR.EPD{0,1} = {1, 1}, effectively disabling the PTW and TLB
allocation. Once S2 is setup, we restore the guest's SCTLR and
TCR. Similar things must be done on TLB invalidation... Fun.

This has been tested on an AMD Seattle box.

* From v1 [1]:
  - Reworked patch 4 to close the speculation window on the host
  - Fixed comments
  - Collected ABs/RBs

[1] https://lore.kernel.org/kvmarm/20190925111941.88103-1-maz@kernel.org/

Marc Zyngier (5):
  arm64: Add ARM64_WORKAROUND_1319367 for all A57 and A72 versions
  arm64: KVM: Reorder system register restoration and stage-2 activation
  arm64: KVM: Disable EL1 PTW when invalidating S2 TLBs
  arm64: KVM: Prevent speculative S1 PTW when restoring vcpu context
  arm64: Enable and document ARM errata 1319367 and 1319537

 Documentation/arm64/silicon-errata.rst |  4 +++
 arch/arm64/Kconfig                     | 10 ++++++
 arch/arm64/include/asm/cpucaps.h       |  3 +-
 arch/arm64/kernel/cpu_errata.c         | 13 +++++--
 arch/arm64/kvm/hyp/switch.c            | 48 ++++++++++++++++++++++----
 arch/arm64/kvm/hyp/sysreg-sr.c         | 35 +++++++++++++++++--
 arch/arm64/kvm/hyp/tlb.c               | 23 ++++++++++++
 7 files changed, 124 insertions(+), 12 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
