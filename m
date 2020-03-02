Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07E6B176257
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 19:20:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mXQWV+MFF2n3y9F3/JbxB2s5fqL5ntL//UBYdb3AoMg=; b=cnC
	eEvtqOduz13U/uO9R9Qmz6ZvKZ6tRr/VSCuXBCjgVMAiHB8V+1HOr1h/hJBv+0zUeZWwOgDcNC3fF
	zc31dL1YlG31+Q7R2DkSQE9rq6z2k7aIPvKJ/dwl2wFcRQsIhS7FofDATQnjP45mA5lxMlLoz2TeK
	VxKT6wOZQZn6QbiyObtWfeKDK8sPWAKImmBpGLo5OotJTEczxDBN8ZSFUUeDzNMCF3PoLmz+zhjlO
	XITrLJuDujs2AuKt9gex4OJNJyLhsW5bSCo+KAozw7NniK3/tVR7yAKCTBEjJlQu8NzsE7hQMEOm2
	Nao7fwF+PzjS/tRd2se/lKXcDQq4NaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8pfy-0007lR-1y; Mon, 02 Mar 2020 18:20:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8pde-0004sU-JA
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 18:18:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D4B4C2F;
 Mon,  2 Mar 2020 10:17:57 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id E6D163F6C4;
 Mon,  2 Mar 2020 10:17:56 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCHv6 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit counters
Date: Mon,  2 Mar 2020 18:17:49 +0000
Message-Id: <20200302181752.14251-1-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_101758_679803_A204A12E 
X-CRM114-Status: UNSURE (   9.01  )
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
Cc: catalin.marinas@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 maz@kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a respin of Andrew Murray's series to enable support for 64-bit
counters as introduced in ARMv8.5.

I've given this a spin on (ARMv8.2) hardware, to test that there are no
regressions, but I have not had the chance to test in an ARMv8.5 model (which I
beleive Andrew had previously tested).

Since v5 [1]:
* Don't treat perfmon ID fields as signed
* Fix up ID field names
* Explicitly compare ARMV8.5 PMU value

[1] https://lkml.kernel.org/r/1580125469-23887-1-git-send-email-andrew.murray@arm.com

Thanks,
Mark.

Andrew Murray (3):
  arm64: cpufeature: Extract capped perfmon fields
  KVM: arm64: limit PMU version to PMUv3 for ARMv8.1
  arm64: perf: Add support for ARMv8.5-PMU 64-bit counters

 arch/arm64/include/asm/cpufeature.h | 23 ++++++++++
 arch/arm64/include/asm/perf_event.h |  3 +-
 arch/arm64/include/asm/sysreg.h     | 10 +++++
 arch/arm64/kernel/perf_event.c      | 86 +++++++++++++++++++++++++++++--------
 arch/arm64/kvm/sys_regs.c           | 10 +++++
 include/linux/perf/arm_pmu.h        |  1 +
 6 files changed, 115 insertions(+), 18 deletions(-)

-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
