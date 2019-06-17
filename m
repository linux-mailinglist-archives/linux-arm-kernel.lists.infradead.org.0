Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EFA54858A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 16:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Zq8ekrGIyaE4HmlHJtaqM8DWLypAYWQAkUetPuXdqEo=; b=LU0lkd1RQkLzMW
	5W+3HGFw0UYOF0Jo5ZtVluqr7eavEY+Y7Qp2L4+7GOxf0W4ZZoN25T+XIb6GNhBVWViS6MZoRYeA0
	pC1VMILqjo/QTmhyBcRpaKRiojLdEGLVbZdwYj2Qir6N06M8wvGjPYGzrjCPrevbbOa439ydlLY6C
	AAv5YIf3CjmF2VMQ80WTf2DMk5GmxNslBIQITzqsyQw3NkDY8YMNdfz3KuqP6umQhfIaDke8vx9E5
	d/i2KaeAPKdX2I8up+qMlsqNZfdSUyaurDUfZJx8TVtOQucO/wHW+CaizPUi90m5HXgRRvrmB4obN
	eNzJQnPZe3uhOZgMh0LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcsiF-0004U3-5c; Mon, 17 Jun 2019 14:34:23 +0000
Received: from mgwkm03.jp.fujitsu.com ([202.219.69.170])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcshK-00040b-S7
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 14:33:29 +0000
Received: from kw-mxoi2.gw.nic.fujitsu.com (unknown [192.168.231.133]) by
 mgwkm03.jp.fujitsu.com with smtp
 id 150a_bbad_7e5cea6b_a5f1_4d15_9f8f_76dba5b8e104;
 Mon, 17 Jun 2019 23:32:58 +0900
Received: from g01jpfmpwkw02.exch.g01.fujitsu.local
 (g01jpfmpwkw02.exch.g01.fujitsu.local [10.0.193.56])
 by kw-mxoi2.gw.nic.fujitsu.com (Postfix) with ESMTP id 28E85AC009B
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 17 Jun 2019 23:32:57 +0900 (JST)
Received: from G01JPEXCHKW15.g01.fujitsu.local
 (G01JPEXCHKW15.g01.fujitsu.local [10.0.194.54])
 by g01jpfmpwkw02.exch.g01.fujitsu.local (Postfix) with ESMTP id 46F098B48E8;
 Mon, 17 Jun 2019 23:32:56 +0900 (JST)
Received: from localhost.localdomain (10.17.204.146) by
 G01JPEXCHKW15.g01.fujitsu.local (10.0.194.54) with Microsoft SMTP Server id
 14.3.439.0; Mon, 17 Jun 2019 23:32:55 +0900
From: Takao Indoh <indou.takao@jp.fujitsu.com>
To: Jonathan Corbet <corbet@lwn.net>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>
Subject: [PATCH 0/2] arm64: Introduce boot parameter to disable TLB flush
 instruction within the same inner shareable domain
Date: Mon, 17 Jun 2019 23:32:53 +0900
Message-ID: <20190617143255.10462-1-indou.takao@jp.fujitsu.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SecurityPolicyCheck-GC: OK by FENCE-Mail
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_073327_155739_9F9D6547 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.219.69.170 listed in list.dnswl.org]
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
Cc: Takao Indoh <indou.takao@fujitsu.com>, QI Fuli <qi.fuli@fujitsu.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-doc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takao Indoh <indou.takao@fujitsu.com>

I found a performance issue related on the implementation of Linux's TLB
flush for arm64.

When I run a single-threaded test program on moderate environment, it
usually takes 39ms to finish its work. However, when I put a small
apprication, which just calls mprotest() continuously, on one of sibling
cores and run it simultaneously, the test program slows down significantly.
It becomes 49ms(125%) on ThunderX2. I also detected the same problem on
ThunderX1 and Fujitsu A64FX.

I suppose the root cause of this issue is the implementation of Linux's TLB
flush for arm64, especially use of TLBI-is instruction which is a broadcast
to all processor core on the system. In case of the above situation,
TLBI-is is called by mprotect().

This is not a problem for small environment, but this causes a significant
performance noise for large-scale HPC environment, which has more than
thousand nodes with low latency interconnect.

To fix this problem, this patch adds new boot parameter
'disable_tlbflush_is'.  In the case of flush_tlb_mm() *without* this
parameter, TLB entry is invalidated by __tlbi(aside1is, asid). By this
instruction, all CPUs within the same inner shareable domain check if there
are TLB entries which have this ASID, this causes performance noise. OTOH,
when this new parameter is specified, TLB entry is invalidated by
__tlbi(aside1, asid) only on the CPUs specified by mm_cpumask(mm).
Therefore TLB flush is done on minimal CPUs and performance problem does
not occur. Actually I confirm the performance problem is fixed by this
patch.

Takao Indoh (2):
  arm64: mm: Restore mm_cpumask (revert commit 38d96287504a ("arm64: mm:
    kill mm_cpumask usage"))
  arm64: tlb: Add boot parameter to disable TLB flush within the same
    inner shareable domain

 .../admin-guide/kernel-parameters.txt         |   4 +
 arch/arm64/include/asm/mmu_context.h          |   7 +-
 arch/arm64/include/asm/tlbflush.h             |  61 ++-----
 arch/arm64/kernel/Makefile                    |   2 +-
 arch/arm64/kernel/smp.c                       |   6 +
 arch/arm64/kernel/tlbflush.c                  | 155 ++++++++++++++++++
 arch/arm64/mm/context.c                       |   2 +
 7 files changed, 186 insertions(+), 51 deletions(-)
 create mode 100644 arch/arm64/kernel/tlbflush.c

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
