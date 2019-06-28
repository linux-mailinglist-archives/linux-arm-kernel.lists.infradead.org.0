Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99345592F8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 06:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Kl57kQPWTBc2H5n8fNBWEHcadRBmbKG2KUVwXCCGMho=; b=oTT
	Z0+qsyhluOtnCoSZxsmW5WDjLzkHgroYd/0gj/Zyqm+U1BOEh5/tAz7qboHN1Ha5D44tzo7kZLbNO
	tQNzAVlDpyVfzpeSCOoHuhCw99rmKOHaHUFPLlhG30FagXfBjXEMwywOgPKu1J4zoNcMmics/RCzD
	ejVoHMuFakcIbSA4fIMdBk+qJ19vSV1tAXWYkxuJ+fnKT6+P4SETGGNv1DStwnkkV6zMvvqOSjbhP
	6BpT3czkjAPR7A5R88C3DoHXqzfH2l0y1GHQN/lCFgTudLg2xBagBG5Thza4u7ec/pMDnrTLofhlb
	NoPKYCisVqt72kcqeeNS7w6eZcRCPUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgilE-0004ZZ-Fy; Fri, 28 Jun 2019 04:45:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgil1-0004MG-9L
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 04:45:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0E51F344;
 Thu, 27 Jun 2019 21:45:06 -0700 (PDT)
Received: from p8cg001049571a15.blr.arm.com (p8cg001049571a15.blr.arm.com
 [10.162.40.144])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 3F65A3F706;
 Thu, 27 Jun 2019 21:45:02 -0700 (PDT)
From: Anshuman Khandual <anshuman.khandual@arm.com>
To: linux-mm@kvack.org
Subject: [RFC 0/2] arm64: Enable vmemmap from device memory
Date: Fri, 28 Jun 2019 10:14:41 +0530
Message-Id: <1561697083-7329-1-git-send-email-anshuman.khandual@arm.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_214507_382722_446AE827 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Fenghua Yu <fenghua.yu@intel.com>,
 Tony Luck <tony.luck@intel.com>, linux-ia64@vger.kernel.org,
 Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Will Deacon <will.deacon@arm.com>,
 x86@kernel.org, linux-kernel@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables vmemmap mapping allocation from device memory ranges on
arm64. Before that it enables vmemmap_populate_basepages() to accommodate
struct vmem_altmap based requests.

This series is based on linux next (next-20190613) along with v6 arm64
hot-remove series [1]. 

[1] https://lkml.org/lkml/2019/6/19/3

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Tony Luck <tony.luck@intel.com>
Cc: Fenghua Yu <fenghua.yu@intel.com>
Cc: Dave Hansen <dave.hansen@linux.intel.com>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-ia64@vger.kernel.org
Cc: x86@kernel.org
Cc: linux-kernel@vger.kernel.org

Anshuman Khandual (2):
  mm/sparsemem: Add vmem_altmap support in vmemmap_populate_basepages()
  arm64/mm: Enable device memory allocation and free for vmemmap mapping

 arch/arm64/mm/mmu.c      | 57 +++++++++++++++++++++++++++++++-----------------
 arch/ia64/mm/discontig.c |  2 +-
 arch/x86/mm/init_64.c    |  4 ++--
 include/linux/mm.h       |  5 +++--
 mm/sparse-vmemmap.c      | 16 +++++++++-----
 5 files changed, 54 insertions(+), 30 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
