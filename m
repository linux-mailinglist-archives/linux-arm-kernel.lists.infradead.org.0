Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0F31146765
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6uBngANAlJIO1nEVQfu9oR5DVCl2pJ/vtgPTE/Uetbo=; b=W96o8TSkPjD5Hk
	zMMlGM8gA9347UVV859fPwegKN1vo1S7gZXNOpEEZvBdinR5ZLuoj9s8PSGB5H8Z4q1Sxg7KWT/73
	jSkpTNaIa7sJy5DClvUseO+SAQ75l/YEauiL4L1epuhMA7fl/TTdIWO0fIOM31iaDAxHXIt2JhEww
	sfL5N3RSIGlRj/7CQR9o3KZysizoFLTPlSO9TM7pX8nPspl/TKGpt99HNFJOERDqcaMlmA4WxxTZq
	bEdgVrf1ZErpcVwI2fnxZdRXo7R4+v17kK3R5wT7IhRJSwViIA57XH8o2HAPFnb0xXMFv5Do1E3tc
	MogIeMQAmi+VjsBLQmBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iub8t-0000NQ-1M; Thu, 23 Jan 2020 11:59:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iub8a-0000Md-Gt
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:59:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 79519328;
 Thu, 23 Jan 2020 03:59:01 -0800 (PST)
Received: from e119886-lin.cambridge.arm.com (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10A973F6C4;
 Thu, 23 Jan 2020 03:58:59 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v4 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
Date: Thu, 23 Jan 2020 11:58:49 +0000
Message-Id: <20200123115852.55595-1-andrew.murray@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_035904_606846_5609ED25 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At present ARMv8 event counters are limited to 32-bits, though by
using the CHAIN event it's possible to combine adjacent counters to
achieve 64-bits. The perf config1:0 bit can be set to use such a
configuration.

With the introduction of ARMv8.5-PMU support, all event counters can
now be used as 64-bit counters. Let's add support for 64-bit event
counters.

As KVM doesn't yet support 64-bit event counters, we also trap
and emulate the Debug Feature Registers to limit the PMU version a
guest sees to PMUv3 for ARMv8.4.

Tested by running the following perf command on both guest and host
and ensuring that the figures are very similar:

perf stat -e armv8_pmuv3/inst_retired,long=1/ \
          -e armv8_pmuv3/inst_retired,long=0/ -e cycles

Changes since v3:

 - Rebased onto v5.5-rc7
 - Instead of overriding trap access handler, update read_id_reg

Changes since v2:

 - Rebased onto v5.5-rc4
 - Mask 'cap' value to 'width' in cpuid_feature_cap_signed_field_width

Changes since v1:

 - Rebased onto v5.5-rc1


Andrew Murray (3):
  arm64: cpufeature: Extract capped fields
  KVM: arm64: limit PMU version to ARMv8.4
  arm64: perf: Add support for ARMv8.5-PMU 64-bit counters

 arch/arm64/include/asm/cpufeature.h | 16 ++++++
 arch/arm64/include/asm/perf_event.h |  3 +-
 arch/arm64/include/asm/sysreg.h     |  5 ++
 arch/arm64/kernel/perf_event.c      | 86 +++++++++++++++++++++++------
 arch/arm64/kvm/sys_regs.c           | 11 ++++
 include/linux/perf/arm_pmu.h        |  1 +
 6 files changed, 104 insertions(+), 18 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
