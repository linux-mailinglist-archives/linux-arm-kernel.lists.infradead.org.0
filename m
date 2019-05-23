Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3947628076
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 17:03:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Cw/wOBcY1Wo7HYmZp4ZtuAZ6lj87Dj6btuuC6xafnbA=; b=CeDCVHvpp+fvHU
	YTkl9N4GwsFwYqcvYXDbW7B7WvYftaTYhw/7PYu936zs27MinSU+e7+6tRcDFW2YNGN4nrVZkyMTt
	FdgNcFkzavBzPNurZysw520OBw8chIUBqx5K6VH9AmOlOwRDsyKYyMPzmuJ5W3YMP0guwOQ/k33tG
	pChjAoQALxOA7tz7HWWRJVMsmVAq7Edd9ysJE5TKsRdCdtyRyZ9eD3fprt1/9Az1XMXtr+pC8J1Gg
	B8KlLMwTnLRvrSlNDHfCKjrUD+XiM2QTCe++uhsUd4Tujs1uvuLgYqaj+um6+HdFGW/++w+cb0WiP
	GpxWqWohMz4cJx1tJQRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpFi-0001iv-F8; Thu, 23 May 2019 15:03:30 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpFb-0001iE-Kl
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 15:03:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E5FC580D;
 Thu, 23 May 2019 08:03:21 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 852053F690;
 Thu, 23 May 2019 08:03:20 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: linux-mm@kvack.org
Subject: [PATCH v3 0/4] Devmap cleanups + arm64 support
Date: Thu, 23 May 2019 16:03:12 +0100
Message-Id: <cover.1558547956.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_080323_690444_39005BAF 
X-CRM114-Status: GOOD (  12.91  )
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
Cc: anshuman.khandual@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, akpm@linux-foundation.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi all,

Here's a refresh of my devmap stuff, now including the end goal as
well. Patches #1 to #3 are just a rebase of v2, and I hope are ready to
be picked up in the mm tree (#1 is currently doing double-duty in Dan's
subsection series as well). Patch #4 could either go via mm if Will and
Catalin agree, or could go via arm64 with a small tweak to let it build
(but otherwise do nothing) until it meets up with #3 again.

Robin.


Robin Murphy (4):
  mm/memremap: Rename and consolidate SECTION_SIZE
  mm: clean up is_device_*_page() definitions
  mm: introduce ARCH_HAS_PTE_DEVMAP
  arm64: mm: Implement pte_devmap support

 arch/arm64/Kconfig                           |  1 +
 arch/arm64/include/asm/pgtable-prot.h        |  1 +
 arch/arm64/include/asm/pgtable.h             | 19 ++++++++
 arch/powerpc/Kconfig                         |  2 +-
 arch/powerpc/include/asm/book3s/64/pgtable.h |  1 -
 arch/x86/Kconfig                             |  2 +-
 arch/x86/include/asm/pgtable.h               |  4 +-
 arch/x86/include/asm/pgtable_types.h         |  1 -
 include/linux/mm.h                           | 47 +++++++-------------
 include/linux/mmzone.h                       |  1 +
 include/linux/pfn_t.h                        |  4 +-
 kernel/memremap.c                            | 10 ++---
 mm/Kconfig                                   |  5 +--
 mm/gup.c                                     |  2 +-
 mm/hmm.c                                     |  2 -
 15 files changed, 50 insertions(+), 52 deletions(-)

-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
