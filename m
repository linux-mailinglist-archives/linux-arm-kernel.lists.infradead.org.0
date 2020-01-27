Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4257D14A335
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 12:45:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=twx5sAU79AXbzHD7RGJ0EBkT/isEVc/YRWAJMhBSFrY=; b=fZV
	UfR+ZTSM9r3sE7OpfSxuw15hkc3ST4vXzKxdztLZuE7j/ka7BYAfCsQhUdlIldsY8dn0ZNpHLOA/E
	dCAWUAjL4/c3AEhB9vla4bQdJ2HMtM+bgtF7174nScchxhitApVhzhVCD5PpgtXuOcNN5ySJdFX8U
	FUvTcWF6HwAqld8HRISm7DAmL53Bvacrqa/CUzGck+939Jvde6BXy/W2XXnI+nw2AVGdGR6EB75Aq
	4V3TrO9aYe+T/fauqvz1a0awQRfw4nymdTvLhBQKvvZrWUUNBPYTpdWfauZINMvX42vkrK4EcBAkF
	KBgGBwztNfHryZIsPkSUsncs1k1owwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw2p4-00046F-76; Mon, 27 Jan 2020 11:44:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw2ou-00044y-0S
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 11:44:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 04A9130E;
 Mon, 27 Jan 2020 03:44:36 -0800 (PST)
Received: from e119976-lin.cambridge.arm.com (e119976-lin.cambridge.arm.com
 [10.1.196.248])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DBE503F52E;
 Mon, 27 Jan 2020 03:44:34 -0800 (PST)
From: Andrew Murray <andrew.murray@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v5 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
Date: Mon, 27 Jan 2020 11:44:26 +0000
Message-Id: <1580125469-23887-1-git-send-email-andrew.murray@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_034444_094704_F0493DCD 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Andrew Murray <andrew.murray@arm.com>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org, Suzuki.Poulose@arm.com
MIME-Version: 1.0
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

As KVM doesn't yet support 64-bit event counters (or other features
after PMUv3 for ARMv8.1), we also trap and emulate the Debug Feature
Registers to limit the PMU version a guest sees to PMUv3 for ARMv8.1.

Tested by running the following perf command on both guest and host
and ensuring that the figures are very similar:

perf stat -e armv8_pmuv3/inst_retired,long=1/ \
          -e armv8_pmuv3/inst_retired,long=0/ -e cycles

Changes since v4:

 - Limit KVM to PMUv3 for ARMv8.1 instead of 8.4
 - Reword second commit

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
  KVM: arm64: limit PMU version to PMUv3 for ARMv8.1
  arm64: perf: Add support for ARMv8.5-PMU 64-bit counters

 arch/arm64/include/asm/cpufeature.h | 16 +++++++
 arch/arm64/include/asm/perf_event.h |  3 +-
 arch/arm64/include/asm/sysreg.h     |  6 +++
 arch/arm64/kernel/perf_event.c      | 86 +++++++++++++++++++++++++++++--------
 arch/arm64/kvm/sys_regs.c           | 11 +++++
 include/linux/perf/arm_pmu.h        |  1 +
 6 files changed, 105 insertions(+), 18 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
