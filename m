Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C22F02DD36
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:34:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+DkE0VVzkpnYEcU9qwGPJkOrXffoyOVdAJJk7wa8Oy4=; b=NND
	jYz6GbUlXjqa5h8o8BitO+RREOlgCrz3HSh+q800LAMzkge1FRqF7T4i1bQDtijFwIRyepn2ZSNpK
	ubzrO9rAWPjxauq3VISIcfLBYA9GQy2PFoQUAkNesgB0LHHuIA7n1kWTEUoe+EBv4d5Uma3CevZ9F
	SGhA8SaUw1LlIKjxZgI/EBO/I64N/zqgON+wTUxw469uYq/8h8fQ8hgoL0Q1a0m5sxUnIaae2ka00
	MoUx0yIBW8Gdyr3FuCdp8pSB+N00zBWRcyDpf2PNw6s4yceCZxL5KHyI7s+Fztrgn0sPJL6ToUXiG
	Ei4Lvpohh0h03AZsMl4BAb2wssBYHgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxn7-0007ZW-K8; Wed, 29 May 2019 12:34:49 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxn0-0007ZB-Fd
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:34:43 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EB0F180D;
 Wed, 29 May 2019 05:34:41 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.41.181])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 23E9B3F59C;
 Wed, 29 May 2019 05:34:38 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/4] arm64/mm: Fixes and cleanups for do_page_fault()
Date: Wed, 29 May 2019 18:04:41 +0530
Message-Id: <1559133285-27986-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_053442_524627_0B2F5077 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 James Morse <james.morse@arm.com>, Andrey Konovalov <andreyknvl@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series contains some fixes and cleanups for page fault handling in
do_page_fault(). This has been boot tested on arm64 platform along with
some stress test but just build tested on others.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>

Anshuman Khandual (4):
  arm64/mm: Drop mmap_sem before calling __do_kernel_fault()
  arm64/mm: Drop task_struct argument from __do_page_fault()
  arm64/mm: Consolidate page fault information capture
  arm64/mm: Drop vm_fault_t argument from __do_page_fault()

 arch/arm64/mm/fault.c | 77 +++++++++++++++++++++++++--------------------------
 1 file changed, 38 insertions(+), 39 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
