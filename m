Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6545D1E26B5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OTxV/EgMbKELJuErqJ5AYYxlUu3ADkCSjkZ6goxhvmY=; b=U6wN4+/al4OOre
	AIEO5GvBAG4WEFiBaVK3R6gypJ2bLKW2zDeN087jalYpg/a3pHbf9DewRaiqnSeRbDbCUC6o37bab
	/3tIxf3blcwFFdZRnyxURTemTeVF+ujEfF1j4n5P+Jss53LDDY2SduJBPIrkIclg+LK3mbcWd9DiG
	W4Jq3mg265BwRkPlZYIudCmV0OhZXEXLer0K7DYTEINTYTg8w1EnRSDmZfzxW9JK5cu32OW2Dhjqp
	1OQ+QzbobW2t2MLqVLjdqMXmJdGvoeCLccJpVQTuod56DpB2dGkfYy00O1h8u4QuCMG9+VL2UMAYY
	kWaEguvvSWJYan/GKJbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdcIH-00088m-3e; Tue, 26 May 2020 16:19:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdcI6-00087x-AU
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:18:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0540530E;
 Tue, 26 May 2020 09:18:54 -0700 (PDT)
Received: from merodach.members.linode.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 18D0B3F52E;
 Tue, 26 May 2020 09:18:52 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kvmarm@lists.cs.columbia.edu,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] KVM: arm64: aarch32 ACTLR accesses
Date: Tue, 26 May 2020 16:18:31 +0000
Message-Id: <20200526161834.29165-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_091858_404624_BBD0331F 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: Marc Zyngier <maz@kernel.org>, James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello!

Patch 1 fixes an issue where the 32bit and 64bit indexes into copro[]
and sys_regs[] are muddled.

Patch 3 adds support for aarch32 accessing the top 32bits of ACTLR_EL1
via ACTLR2. Support for this register is advertised in ID_MMFR4.AC2, which
doesn't get removed by cpufeature. The register is mandatory from v8.2, but
imp-def before then.

Patch 2 stops the sys_regs[] value we use for emulation being save/restored.
This simplifies patch 3 as the aarch32 helper can rely on the in-memory copy.

I think Patch 1 is stable material, I'm not sure about 2&3.


Bonus cans of worms!:

1. How does this copro[] thing work with a big-endian host?
The cp15_regs emulation look fine as nothing uses vcpu_cp15() to read the
register, but wouldn't prepare_fault32() read the wrong end of the register
when using vcpu_cp15()?

2. How does the 32bit fault injection code work with VHE?
vcpu_cp15() modifies the in-memory copy, surely a vcpu_put() will clobber
everything it did, or fail to restore it when entering the guest.


Thanks,

James Morse (3):
  KVM: arm64: Stop writing aarch32's CSSELR into ACTLR
  KVM: arm64: Stop save/restoring ACTLR_EL1
  KVM: arm64: Add emulation for 32bit guests accessing ACTLR2

 arch/arm64/include/asm/kvm_host.h    |  1 +
 arch/arm64/kvm/hyp/sysreg-sr.c       |  2 --
 arch/arm64/kvm/sys_regs.c            |  8 +++-----
 arch/arm64/kvm/sys_regs_generic_v8.c | 16 +++++++++++++++-
 4 files changed, 19 insertions(+), 8 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
