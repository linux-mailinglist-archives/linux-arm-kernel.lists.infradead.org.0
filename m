Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA911663A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 17:59:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZlDDOd7wlmkfnU1gO9JQNSO72DcmvfiyU+W65MhyWFA=; b=GCI48PEDsm9wqV
	Tzsf0tRwQRB2jprvF9DSE5DmHIDwHN3hdkR/doQethkjhX4fi0x1/BZ1lM2fCneYVNCriLChnEZUh
	Uq3xSA46X6H2/qvwwNn4PSONP3xgR3jFKCAtLBmCceCyxG40gpPld9oG7uVJZ29+Ni01X7nsvm5sO
	WNOjgaX5f0U/tscQ2w2rge13IwPag+38SBsgiq6L7Jl5aCjjMZAPe9fS5Qa2LdhfpVe1o5FLGx/j6
	4dHT0C0Qb+8hGOdGOCHyxFX+HPexp8CxBL/2CQK+avQYqJkkxfrpeZCkN7uxJ2hULYJ0qKMpmdNXM
	om55rQ6hIwJaX9PipVlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pAC-0005as-B0; Thu, 20 Feb 2020 16:59:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pA4-0005aM-0U
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 16:58:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A30B631B;
 Thu, 20 Feb 2020 08:58:49 -0800 (PST)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53BE13F68F;
 Thu, 20 Feb 2020 08:58:48 -0800 (PST)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH 0/3] KVM: arm64: Ask the compiler to __always_inline functions
 used by KVM at HYP
Date: Thu, 20 Feb 2020 16:58:36 +0000
Message-Id: <20200220165839.256881-1-james.morse@arm.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_085852_097093_3DDFC640 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>, Marc Zyngier <maz@kernel.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, James Morse <james.morse@arm.com>,
 Sami Tolvanen <samitolvanen@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

It turns out KVM relies on the inline hint being honoured by the compiler
in quite a few more places than expected. Something about the Shadow Call
Stack support[0] causes the compiler to avoid inline-ing and to place
these functions outside the __hyp_text. This ruins KVM's day.

Add the simon-says __always_inline annotation to all the static
inlines that KVM calls from HYP code.

This series based on v5.6-rc2.


[0] https://lore.kernel.org/linux-arm-kernel/20200219000817.195049-1-samitolvanen@google.com/

Thanks,

James Morse (3):
  KVM: arm64: Ask the compiler to __always_inline functions used at HYP
  KVM: arm64: define our own swab32() to avoid a uapi static inline
  arm64: Ask the compiler to __always_inline functions used by KVM at
    HYP

 arch/arm64/include/asm/arch_gicv3.h      |  2 +-
 arch/arm64/include/asm/cache.h           |  2 +-
 arch/arm64/include/asm/cacheflush.h      |  2 +-
 arch/arm64/include/asm/cpufeature.h      | 10 ++---
 arch/arm64/include/asm/io.h              |  4 +-
 arch/arm64/include/asm/kvm_emulate.h     | 48 ++++++++++++------------
 arch/arm64/include/asm/kvm_hyp.h         |  7 ++++
 arch/arm64/include/asm/kvm_mmu.h         |  3 +-
 arch/arm64/include/asm/virt.h            |  2 +-
 arch/arm64/kvm/hyp/vgic-v2-cpuif-proxy.c |  4 +-
 10 files changed, 46 insertions(+), 38 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
