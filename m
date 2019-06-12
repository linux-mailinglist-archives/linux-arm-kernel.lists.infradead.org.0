Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ECB44207A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 11:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KYZr8TqqQ6taY5ZwNoxmEldC+ZJwYnf0CGhE7S0SuCA=; b=c/inuhoZCVZlOC
	22f9A1wU7GaTD1+U3X+RkSmj8IhfJFzJwZ5U9mKctCPqv8nVdx4yZ96gRHvGMw8YbvcocjwaKIztu
	wBvzc4aSnPYX/6ZdhqMcfuYPoxqKZ/f17N+W92cs0BqldxVPW79YyzZbZPwBMCJC2Wj9o7uuBq0Ml
	u2l46HCk14jF774OX0JQU+55YN+E2yw6vFp+21roGyeDReQKIbHKO/Rsso0PtSy43G4vEll9iCH5j
	nUTBEhKpgMpEvPJdJ36O5knwGMPcX7RGEBrYdDkAzkCAT2U9wl3zdP7OUF79IC1yCx7XfzoX+mHQm
	dximt7qRgIn2HIOL/tcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hazM5-0002cL-Cc; Wed, 12 Jun 2019 09:15:41 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hazLR-0001CH-Iy
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 09:15:03 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id EF3EA12D63526C173D19;
 Wed, 12 Jun 2019 17:11:50 +0800 (CST)
Received: from HGHY2Y004646261.china.huawei.com (10.184.12.158) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Wed, 12 Jun 2019 17:11:42 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-arm-kernel@lists.infradead.org>, <kvmarm@lists.cs.columbia.edu>,
 <kvm@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
 <linux-perf-users@vger.kernel.org>
Subject: [PATCH v1 0/5] perf kvm: Add stat support on arm64
Date: Wed, 12 Jun 2019 09:08:41 +0000
Message-ID: <1560330526-15468-1-git-send-email-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.6.4.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.184.12.158]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_021501_837776_17A2385E 
X-CRM114-Status: UNSURE (   8.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, christoffer.dall@arm.com, acme@kernel.org,
 linuxarm@huawei.com, acme@redhat.com, peterz@infradead.org,
 alexander.shishkin@linux.intel.com, mingo@redhat.com,
 wanghaibin.wang@huawei.com, ganapatrao.kulkarni@cavium.com,
 Zenghui Yu <yuzenghui@huawei.com>, namhyung@kernel.org, jolsa@redhat.com,
 xiexiangyou@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

'perf kvm stat report/record' generates a statistical analysis of KVM
events and can be used to analyze guest exit reasons. This series tries
to add stat support on arm64 (Port perf-kvm-stat to arm64 - this is
already supported on x86).

"record" enables recording of two pair of tracepoints:
 - "kvm:kvm_entry" and "kvm:kvm_exit"
 - "kvm:kvm_trap_enter" and "kvm:kvm_trap_exit"
"report" reports statistical analysis of guest exit&trap events.

To record kvm events on the host:
 # perf kvm stat record -a

To report kvm VM EXIT events:
 # perf kvm stat report --event=vmexit

To report kvm VM TRAP (synchronous exceptions) events:
 # perf kvm stat report --event=trap

More information can be found at tools/perf/Documentation/perf-kvm.txt.

* Patch 1-2 touch KVM/ARM side, with #1 is cleanup and #2 is preparation
  for perf-kvm-stat support.
* Patch 3-5 touch perf side.
* Patch 3 adds support for get_cpuid() function on arm64. *RFC!*
* Patch 4 adds support for perf-kvm-stat on arm64, with VM-EXIT events.
* Patch 5 adds support to report TRAP-EVENT events.

Any suggestions, comments and test results will be appreciated.

Thanks,
zenghui

---

Zenghui Yu (5):
  KVM: arm/arm64: Remove kvm_mmio_emulate tracepoint
  KVM: arm/arm64: Adjust entry/exit and trap related tracepoints
  perf tools arm64: Add support for get_cpuid() function
  perf,kvm/arm64: Add stat support on arm64
  perf,kvm/arm64: perf-kvm-stat to report VM TRAP

 arch/arm64/kvm/handle_exit.c                     |   3 +
 arch/arm64/kvm/trace.h                           |  35 +++++++
 tools/perf/arch/arm64/Makefile                   |   2 +
 tools/perf/arch/arm64/util/Build                 |   1 +
 tools/perf/arch/arm64/util/aarch64_guest_exits.h |  91 +++++++++++++++++
 tools/perf/arch/arm64/util/header.c              |  74 +++++++++-----
 tools/perf/arch/arm64/util/kvm-stat.c            | 125 +++++++++++++++++++++++
 virt/kvm/arm/arm.c                               |   4 +-
 virt/kvm/arm/trace.h                             |  42 ++------
 9 files changed, 317 insertions(+), 60 deletions(-)
 create mode 100644 tools/perf/arch/arm64/util/aarch64_guest_exits.h
 create mode 100644 tools/perf/arch/arm64/util/kvm-stat.c

-- 
1.8.3.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
