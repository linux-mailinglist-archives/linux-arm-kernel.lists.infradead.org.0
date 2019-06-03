Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 191F7328A2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 08:42:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=++y7Zrxy+SziN3iF20/LGFHhHeiuLfTgDpZfllwm5p4=; b=euc
	dRF8lsG/fBsdxtdhRcmX+MOqMOkstp9E5oN27OFgcFq2ZjktdT0uiWKAPIX48aJXm5VrZhutBMGrH
	5SO/xk+bt3KKkN2dxjapumdm/wnBySToM8Q7BZ0q3TeYmuY7j9YBCSJoX0cUN/LN03hilmbKbrdZ6
	yfCCj9pdRgdfJKzUNL7jCSEnEehRdup9x03AeiYu7Co/Ec0UI3rNmeRkDKzkxc+QCQST+RI8AfFP/
	LlTSBh+EdiZGujR2+VvQPAUL1Dfz19je+7f+A/AJZeVR0cqgBFh44RhpViD5jR9sdZB4J6pPKkmlO
	eYDdGkfldrsAYKw72YqTf13G7LkxDQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXgfV-0001c3-LT; Mon, 03 Jun 2019 06:42:05 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXgfP-0001b5-B3
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 06:42:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 28D5615A2;
 Sun,  2 Jun 2019 23:41:57 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CA4653F5AF;
 Sun,  2 Jun 2019 23:41:53 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 0/4] arm64/mm: Clean ups for do_page_fault()
Date: Mon,  3 Jun 2019 12:11:21 +0530
Message-Id: <1559544085-7502-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_234159_387177_20EDD7D3 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
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
 Christoph Hellwig <hch@infradead.org>, James Morse <james.morse@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This contains some clean ups for page fault handling in do_page_fault().
This has been boot tested on arm64 platform along with some stress test
but just build tested on others.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Christoph Hellwig <hch@infradead.org>

Changes in V2:

- s/is_write_abort()/is_el0_write_abort() with a comment per Mark Rutland
- s/is_write/is_el0_write/ & updated commit message as required
- s/argument/local variable/ per Christoph Hellwig
- Preserved VMA check order for VM_FAULT_BADMAP & VM_FAULT_BADACCESS per Mark
- Preserved all existing __do_page_fault() in code comments per Mark
- Dropped 'fixes' from the series's subject line per Will Deacon

V1: https://lkml.org/lkml/2019/5/29/431

Anshuman Khandual (4):
  arm64/mm: Drop mmap_sem before calling __do_kernel_fault()
  arm64/mm: Drop task_struct argument from __do_page_fault()
  arm64/mm: Consolidate page fault information capture
  arm64/mm: Drop local variable vm_fault_t from __do_page_fault()

 arch/arm64/mm/fault.c | 72 +++++++++++++++++++++++++--------------------------
 1 file changed, 36 insertions(+), 36 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
