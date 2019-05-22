Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2732695A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 19:47:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u2N5ZV8HllK1bo3BjUVpuMQ+0If0z+axo7ZCNxHbGhk=; b=CnNSk0dKTQH26X
	iiXBrggk7IIjAIaOD7xzmkAbbYQYx/BPPh6Z1CQ2plLThH4JIkVMj18tzlNQIeXkkZ6RN1dWmApOw
	7viuPruQCDnJ4v2om2TJL2hJ+wLc4bPSXWrABFpHw5xfeN//E3yv4PAySk819nzUytOp+7VeumaCl
	PZo/XTdCzrcNfEEyXLWJx50+yVYgR9XbC9SSQmXV1DVA9F6bu7yltz2Y9vZTCKtB/MFHW1xo40NyY
	ddzJ4owHBp7KqPwubYG90Bf8Awg2kEFw7rvAbz66ug4r9jighEYWkft5N872+TxyTPdTVhDEIZZgg
	oX037tuVqsT7G6ZlBxkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVKr-0008Rk-V3; Wed, 22 May 2019 17:47:29 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVKk-0008R4-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 17:47:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 687B4341;
 Wed, 22 May 2019 10:47:20 -0700 (PDT)
Received: from eglon.cambridge.arm.com (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E1B4F3F5AF;
 Wed, 22 May 2019 10:47:18 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	kvmarm@lists.cs.columbia.edu
Subject: [PATCH v2 0/2] Move __hyp_text code under no-asan Makefiles
Date: Wed, 22 May 2019 18:47:03 +0100
Message-Id: <20190522174705.236469-1-james.morse@arm.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_104722_425317_67E8F822 
X-CRM114-Status: GOOD (  11.21  )
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
 Marc Zyngier <marc.zyngier@arm.com>, Julien Thierry <julien.thierry@arm.com>,
 Christoffer Dall <christoffer.dall@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Murray <Andrew.Murray@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The fancy new pmu code added its __hyp_text code in part of the tree that
doesn't get covered by the no-asan/no-kcov kconfig decorations.
This shows up as a hyp-panic on v8.0 hardware when the host kernel is
built with debug options like kasan.

This same bug has been living happily in the aarch32 emulation code
since v4.9. (commit 8cebe750c4d9a "arm64: KVM: Make kvm_skip_instr32
available to HYP"). Patch 2 has the two relevant fixes tag, but won't
apply cleanly before v4.19 due to the churn.

Fix them both by shuffling the code around.

--
Changes since v1:
 * Made the two functions static in patch 1, removed the header entries.


Thanks,

James Morse (2):
  KVM: arm64: Move pmu hyp code under hyp's Makefile to avoid
    instrumentation
  KVM: arm/arm64: Move cc/it checks under hyp's Makefile to avoid
    instrumentation

 arch/arm/kvm/hyp/Makefile         |   1 +
 arch/arm64/include/asm/kvm_host.h |   3 -
 arch/arm64/kvm/hyp/Makefile       |   1 +
 arch/arm64/kvm/hyp/switch.c       |  39 +++++++++
 arch/arm64/kvm/pmu.c              |  38 ---------
 virt/kvm/arm/aarch32.c            | 121 --------------------------
 virt/kvm/arm/hyp/aarch32.c        | 136 ++++++++++++++++++++++++++++++
 7 files changed, 177 insertions(+), 162 deletions(-)
 create mode 100644 virt/kvm/arm/hyp/aarch32.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
