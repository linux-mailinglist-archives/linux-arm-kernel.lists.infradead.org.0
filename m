Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 80C3E386D3
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:13:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vzn48vJYueiC8r4VanBwUCqSBBvMFEHpS4vAv0X+J2w=; b=f+B
	L9+KOAI6L7oibwDAQPvDJixQjcHT6LOxjYiCune6bcMnUG6A0FzfYHmFlcuHNpvH5n4C7sX/FuU6K
	Im07hQcAYtS6ElBr3VlNyaNueclRwYbc0haf9TmNW6GVvMV+1oTKBNNKIjQ1qWG8/vrq27OPxEl3O
	p4U/kjb53mrTXvu9VyXzBCQRdlru5nal2ankk9p/jeFgdNIdReoqUNeMHTzs1xRg9e8077pC2oEEB
	VkIG11mEAvoEgrj+l8Z3WXhLuOp1P5vHg55iEAEI334CbEoAGvTvuVoA4sB91z6MHWjrLyjL1Px0Z
	9q5si6TswCsESHHvCHBCiPGbwJXXgbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZAw7-0008DE-VR; Fri, 07 Jun 2019 09:13:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZAvv-0008CL-K8
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:13:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 386C0337;
 Fri,  7 Jun 2019 02:13:09 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.42.131])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id CB33E3F96A;
 Fri,  7 Jun 2019 02:13:05 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 0/2] arm64/mm: Clean ups for do_page_fault()
Date: Fri,  7 Jun 2019 14:43:04 +0530
Message-Id: <1559898786-28530-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_021311_708309_22641922 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
This has been boot tested on arm64 platform along with some stress tests
but just build tested on others. Contains remaining two patches from v3
series after the first two patches were merged.

This series applies on arm64 tree:

git://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git (for-next/core)

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: James Morse <james.morse@arm.com>
Cc: Andrey Konovalov <andreyknvl@google.com>
Cc: Christoph Hellwig <hch@infradead.org>

Changes in V3:

- Dropped first two patches which got queued up for 5.3
- Rebased on branch for-next/core on arm64 tree
- s/is_el0_write_abort/is_write_abort/ with a comment per Mark and Catalin
- s/is_el0_write/is_write following the above change
- Updated commit message on [PATCH V3 2/2] per Catalin

Changes in V2: (https://lkml.org/lkml/2019/6/3/79)

- s/is_write_abort()/is_el0_write_abort() with a comment per Mark Rutland
- s/is_write/is_el0_write/ & updated commit message as required
- s/argument/local variable/ per Christoph Hellwig
- Preserved VMA check order for VM_FAULT_BADMAP & VM_FAULT_BADACCESS per Mark
- Preserved all existing __do_page_fault() in code comments per Mark
- Dropped 'fixes' from the series's subject line per Will Deacon

V1: https://lkml.org/lkml/2019/5/29/431

Anshuman Khandual (2):
  arm64/mm: Consolidate page fault information capture
  arm64/mm: Refactor __do_page_fault()

 arch/arm64/mm/fault.c | 56 +++++++++++++++++++++++++++------------------------
 1 file changed, 30 insertions(+), 26 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
