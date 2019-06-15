Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E5AC46D62
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 03:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YbErFGLWy7vh1RZlF5TPmfFeVvCXVPeePpv6XZWyqwE=; b=qRfU0SZlFyt9Qh
	lGqNrkpR5pWQPOXmx+NFqWuXRcSvfzUx+HmqhOpNM1qPeOWT7pVTZKwkb9US81rjZQ4RqaInYJxhW
	R0Dj+F/+NzpPL09RetzwjgTOQXKR6D6NYE7V/beGCzCDrsRgoKxR0yXBP0St+2N3PrPwltt5jmYJ8
	dsbUG1Uoobu5dyvMijZKnWtKg22ltHO5mkOWPT4u+0waRZG1SD/pYRTJsjzllnYNjNpfr8hWrBcV5
	mhQX+gb+7XmDfh0jhefHJW+0SZIhNePNko6GlCmyh/dRRCGBpnz3xscKXJGymmoKffZyGMlPECZXL
	LI4WDadwwykwt8Je/++g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbxDp-0006xo-Lc; Sat, 15 Jun 2019 01:11:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbxDe-0006wc-Ua
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 01:11:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A2082B;
 Fri, 14 Jun 2019 18:10:55 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 861A23F718;
 Fri, 14 Jun 2019 18:10:55 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 0/4] arm64: SPE ACPI enablement
Date: Fri, 14 Jun 2019 20:09:06 -0500
Message-Id: <20190615010910.33921-1-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_181059_040204_5BE3E5C7 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series enables the Arm Statistical Profiling
Extension (SPE) on ACPI platforms.

This is possible because ACPI 6.3 uses a previously
reserved field in the MADT to store the SPE interrupt
number, similarly to how the normal PMU is described.
If a consistent valid interrupt exists across all the
cores in the system, a platform device is registered.
That then triggers the SPE module, which runs as normal.

We also add the ability to parse the PPTT for IDENTICAL
cores. We then use this to sanity check the single SPE
device we create. This creates a bit of a problem with
respect to the specification though. The specification
says that its legal for multiple tree's to exist in the
PPTT. We handle this fine, but what happens in the
case of multiple tree's is that the lack of a common
node with IDENTICAL set forces us to assume that there
are multiple non-IDENTICAL cores in the machine.

v3->v4: Rebase to 5.2.
	Minor formatting, patch rearrangement.
	Add missing `inline` in static header definition.
	Drop ARM_SPE_ACPI and just use ARM_SPE_PMU.

v2->v3: Previously a function pointer was being used
	  to handle the more complex node checking
	  required by the IDENTICAL flag. This version
	  simply checks for the IDENTICAL flag and calls
	  flag_identical() to preform the revision
	  and next node checks. (I think after reading
	  Raphael's comments for the Nth time, this is
	  actually what he was suggesting, which I
	  initially miss interpreted).
	Modify subject of first patch so that its clear
	  a that its a capitalization change rather,
	  than a logical C 'case' change.

v1->v2: Wrap the code which creates the SPE device in
	    a new CONFIG_ARM_SPE_ACPI ifdef.
	Move arm,spe-v1 device name into common header file
	Some comment/case sensitivity/function name changes.

Jeremy Linton (4):
  ACPI/PPTT: Modify node flag detection to find last IDENTICAL
  ACPI/PPTT: Add function to return ACPI 6.3 Identical tokens
  arm_pmu: acpi: spe: Add initial MADT/SPE probing
  perf: arm_spe: Enable ACPI/Platform automatic module loading

 arch/arm64/include/asm/acpi.h |  3 ++
 drivers/acpi/pptt.c           | 61 +++++++++++++++++++++++++---
 drivers/perf/arm_pmu_acpi.c   | 75 +++++++++++++++++++++++++++++++++++
 drivers/perf/arm_spe_pmu.c    | 12 +++++-
 include/linux/acpi.h          |  5 +++
 include/linux/perf/arm_pmu.h  |  2 +
 6 files changed, 150 insertions(+), 8 deletions(-)

-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
