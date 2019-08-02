Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CE957F73D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:52:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kRU8doXsYKN27eFAW/tgcCtZM1i+f9ih0vp+++WGw/8=; b=biwHCUKqQY/Vxd
	mAwgqFijol+8bM9dclW5hBCqlFFQ6QlEsybglVFqNbgbQxcVuqYrwamU3yKzyHmRHA9G5Un8o8kO4
	uDAD3EDD79fv3zd3keNLtqBw9eWv9yOupr3x3xi3q7jMHT+brM00LxxIL+T0oBAtHj5jACcXOgMIZ
	SbLl2du1V/yPUKVd+6MlyVJH6t6gfqGu5kLRVrWEYA4cZ+Vts7qvTPLvO5G++wXqMzhVcHBi8Xhej
	hg34nt9v6jVsaZMkD7nAjqOts+rBzDmaHY7IiGuCUPT9RygNf/FfV8J3RMnGnm6kfF6DJYbLOvWQA
	CXm1+ilXxXStsWolCJHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htX2w-0000d1-CI; Fri, 02 Aug 2019 12:52:34 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htX2q-0000cB-0P
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:52:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6A941570;
 Fri,  2 Aug 2019 05:52:26 -0700 (PDT)
Received: from filthy-habits.cambridge.arm.com
 (filthy-habits.cambridge.arm.com [10.1.197.61])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 722703F71F;
 Fri,  2 Aug 2019 05:52:25 -0700 (PDT)
From: Marc Zyngier <maz@kernel.org>
To: Will Deacon <will.deacon@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH v2 0/2] arm64: Relax ICC_PMR_EL1 synchronisation when possible
Date: Fri,  2 Aug 2019 13:52:06 +0100
Message-Id: <20190802125208.73162-1-maz@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_055228_098699_DD6B0F92 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>, maz@kernel.org,
 James Morse <james.morse@arm.com>, linux-arm-kernel@lists.infradead.org,
 huawei.libin@huawei.com, guohanjun@huawei.com, liwei391@huawei.com,
 Julien Thierry <julien.thierry.kdev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is an update on [1] after Will's comments, turning the original
kernel patching into a static key. An additional patch now documents
the expectations of having ICC_CTLR_EL3.PMHE set to something
consistent across CPUs and over time.

[1] http://lists.infradead.org/pipermail/linux-arm-kernel/2019-July/669756.html

Marc Zyngier (2):
  arm64: Relax ICC_PMR_EL1 accesses when ICC_CTLR_EL1.PMHE is clear
  arm64: Document ICC_CTLR_EL3.PMHE setting requirements

 Documentation/arm64/booting.rst    |  3 +++
 arch/arm64/include/asm/barrier.h   | 12 ++++++++++++
 arch/arm64/include/asm/daifflags.h |  3 ++-
 arch/arm64/include/asm/irqflags.h  | 19 ++++++++++---------
 arch/arm64/include/asm/kvm_host.h  |  3 +--
 arch/arm64/kernel/entry.S          |  6 ++++--
 arch/arm64/kvm/hyp/switch.c        |  4 ++--
 drivers/irqchip/irq-gic-v3.c       | 17 +++++++++++++++++
 include/linux/irqchip/arm-gic-v3.h |  2 ++
 9 files changed, 53 insertions(+), 16 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
