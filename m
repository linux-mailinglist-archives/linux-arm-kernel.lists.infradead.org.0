Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6406F1FCD8D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nQY+IVwDQHZRA61Rzn9PqynxitIanHrqM14cuq86g/4=; b=s196WYqxmRIbl2
	JG6r0UO0QyO1bbmNjMUiTWhE2odfYvUS86cuDE0gY6aUC/jBNK24w+XWkTO9SOA4reuHuIGPIZ2Ut
	KBZuu3rm76c7r9+7KciLhfL/AbUEUXC04k+yZOwLSELcoLsnSFXxKAAr8r0bEZ3TzUFUrqKq5zU3q
	zUS4gsGdkFLz34NezI2AxHzHYdrmzMPTN5NaTyChW8Rl/uIoGsHx8lCLdTObf9DNLsx/AH0Yhir2s
	ZTz8XGcy2VBbPDzcYbSk8C8TQDlF9+XhdC7BAPe2NTayWZRJJNsnflZSzEBHNal5VpokTppzo8cef
	R0xxskNTsGbPWvbzWNbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXLn-0007Cx-R5; Wed, 17 Jun 2020 12:39:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXLd-0007C7-Ry
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:39:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA0781045;
 Wed, 17 Jun 2020 05:39:20 -0700 (PDT)
Received: from e112269-lin.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 078483F71F;
 Wed, 17 Jun 2020 05:39:18 -0700 (PDT)
From: Steven Price <steven.price@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Will Deacon <will@kernel.org>
Subject: [RFC PATCH 0/2] MTE support for KVM guest
Date: Wed, 17 Jun 2020 13:38:42 +0100
Message-Id: <20200617123844.29960-1-steven.price@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_053921_947311_10545CBA 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-kernel@vger.kernel.org, Steven Price <steven.price@arm.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These patches add support to KVM to enable MTE within a guest. It is
based on Catalin's v4 MTE user space series[1].

[1] http://lkml.kernel.org/r/20200515171612.1020-1-catalin.marinas%40arm.com

Posting as an RFC as I'd like feedback on the approach taken. First a
little background on how MTE fits within the architecture:

The stage 2 page tables have limited scope for controlling the
availability of MTE. If a page is mapped as Normal and cached in stage 2
then it's the stage 1 tables that get to choose whether the memory is
tagged or not. So the only way of forbidding tags on a page from the
hypervisor is to change the cacheability (or make it device memory)
which would cause other problems.  Note this restriction fits the
intention that a system should have all (general purpose) memory
supporting tags if it support MTE, so it's not too surprising.

However, the upshot of this is that to enable MTE within a guest all
pages of memory mapped into the guest as normal cached pages in stage 2
*must* support MTE (i.e. we must ensure the tags are appropriately
sanitised and save/restore the tags during swap etc).

My current approach is that KVM transparently upgrades any pages
provided by the VMM to be tag-enabled when they are faulted in (i.e.
sets the PG_mte_tagged flag on the page) which has the benefit of
requiring fewer changes in the VMM. However, save/restore of the VM
state still requires the VMM to have a PROT_MTE enabled mapping so that
it can access the tag values. A VMM which 'forgets' to enable PROT_MTE
would lose the tag values when saving/restoring (tags are RAZ/WI when
PROT_MTE isn't set).

An alternative approach would be to enforce the VMM provides PROT_MTE
memory in the first place. This seems appealing to prevent the above
potentially unexpected gotchas with save/restore, however this would
also extend to memory that you might not expect to have PROT_MTE (e.g. a
shared frame buffer for an emulated graphics card). 

Comments on the approach (or ideas for alternative approaches) are very
welcome.

Steven Price (2):
  arm64: kvm: Save/restore MTE registers
  arm64: kvm: Introduce MTE VCPU feature

 arch/arm64/include/asm/kvm_emulate.h |  3 +++
 arch/arm64/include/asm/kvm_host.h    |  9 ++++++++-
 arch/arm64/include/uapi/asm/kvm.h    |  1 +
 arch/arm64/kvm/hyp/sysreg-sr.c       | 12 ++++++++++++
 arch/arm64/kvm/reset.c               |  8 ++++++++
 arch/arm64/kvm/sys_regs.c            |  8 ++++++++
 virt/kvm/arm/mmu.c                   | 11 +++++++++++
 7 files changed, 51 insertions(+), 1 deletion(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
