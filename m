Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C3C90250
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 15:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1G8bYIlvoOiXBDLH9o+YrLyzBVesvgeTK9f1QVstBbk=; b=nwlYft0APOXZhBYNWG/dy2V2Nw
	gNuX0B5BkR67LlR1V+Zt0tsOOOtftTM6fmSF8UCrSXRbGe/jGqAiYJTpBdm5SqXDsGbexSHVynXxj
	cDCYtlXOTV3lnhDS+Wf9TH7C/pEo8Nt/tH4WehBv+ydSM0SdDzT1efRgBnsajYkFbPBqUFeLR7+DG
	ViTzUUlRSojzF2nFonhc1ILKw+onapwJ9hQZ8YW4OkCC9qmuHykEilb9AXriX2xXxs4y6JAKmf2IF
	j7mobdT7Kfr6NC3es3+5rBDSiNqtMQhwUtZhAFxYJ5mjdZaNObR4sKqbpVJ+GbFDnX68lknclXAl+
	zObCuMgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hybrR-0007DX-MY; Fri, 16 Aug 2019 13:01:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hybph-0004j8-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 16 Aug 2019 12:59:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 06F19344;
 Fri, 16 Aug 2019 05:59:53 -0700 (PDT)
Received: from e121650-lin.cambridge.arm.com (e121650-lin.cambridge.arm.com
 [10.1.196.120])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A84833F706;
 Fri, 16 Aug 2019 05:59:51 -0700 (PDT)
From: Raphael Gault <raphael.gault@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 5/5] Documentation: arm64: Document PMU counters access
 from userspace
Date: Fri, 16 Aug 2019 13:59:34 +0100
Message-Id: <20190816125934.18509-6-raphael.gault@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190816125934.18509-1-raphael.gault@arm.com>
References: <20190816125934.18509-1-raphael.gault@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_055954_253202_69DBA658 
X-CRM114-Status: GOOD (  13.72  )
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
Cc: mark.rutland@arm.com, raph.gault+kdev@gmail.com, peterz@infradead.org,
 catalin.marinas@arm.com, will.deacon@arm.com, acme@kernel.org,
 Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a documentation file to describe the access to the pmu hardware
counters from userspace

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
---
 .../arm64/pmu_counter_user_access.txt         | 42 +++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 Documentation/arm64/pmu_counter_user_access.txt

diff --git a/Documentation/arm64/pmu_counter_user_access.txt b/Documentation/arm64/pmu_counter_user_access.txt
new file mode 100644
index 000000000000..6788b1107381
--- /dev/null
+++ b/Documentation/arm64/pmu_counter_user_access.txt
@@ -0,0 +1,42 @@
+Access to PMU hardware counter from userspace
+=============================================
+
+Overview
+--------
+The perf user-space tool relies on the PMU to monitor events. It offers an
+abstraction layer over the hardware counters since the underlying
+implementation is cpu-dependent.
+Arm64 allows userspace tools to have access to the registers storing the
+hardware counters' values directly.
+
+This targets specifically self-monitoring tasks in order to reduce the overhead
+by directly accessing the registers without having to go through the kernel.
+
+How-to
+------
+The focus is set on the armv8 pmuv3 which makes sure that the access to the pmu
+registers is enable and that the userspace have access to the relevent
+information in order to use them.
+
+In order to have access to the hardware counter it is necessary to open the event
+using the perf tool interface: the sys_perf_event_open syscall returns a fd which
+can subsequently be used with the mmap syscall in order to retrieve a page of memory
+containing information about the event.
+The PMU driver uses this page to expose to the user the hardware counter's
+index. Using this index enables the user to access the PMU registers using the
+`mrs` instruction.
+
+Have a look `at tools/perf/arch/arm64/tests/user-events.c` for an example. It can be
+run using the perf tool to check that the access to the registers works
+correctly from userspace:
+
+./perf test -v
+
+About chained events
+--------------------
+When the user requests for an event to be counted on 64 bits, two hardware
+counters are used and need to be combined to retrieve the correct value:
+
+val = read_counter(idx);
+if ((event.attr.config1 & 0x1))
+	val = (val << 32) | read_counter(idx - 1);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
