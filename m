Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466F727A69
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 12:25:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vk5Cl+KHu9911itJMSJmXM32CfFOYRp1TmK0gx/zO0w=; b=sY8J7tiA7gF2bqf6/BXTq6UBcI
	XMa97/hz5mIZq1v616GKCkZNePT5tW0ZrAs0g8fegk3KnyFdtbdJPXUmkxCT1OUYYoPcO5uMCy1g0
	33dpFsTr8US+K0xULzVtuAHgLBSkSm5Fmt05Nu/if0WspoteSA8NIJ/wJXGBQFnGi8r/+snxlLX47
	7MUehgHNHECyXREHumdQ3+XaLWw93uEEnow/EuVhSGl4xkrUzoi7kifQRwm5VhrM8YY3UFivTL4oJ
	c2QSrZm62ITjflfVOhPIDUDD58l2NCN8BjtHPBHKbx28NLbjsu/ti1J1swXn8CauE+I0zwWUQdIup
	i6dd2N4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTkuB-00037D-9K; Thu, 23 May 2019 10:24:59 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTktj-0002is-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 10:24:33 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3E7E315AB;
 Thu, 23 May 2019 03:24:31 -0700 (PDT)
Received: from e111045-lin.cambridge.arm.com (unknown [10.1.39.23])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1695C3F718;
 Thu, 23 May 2019 03:24:28 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/4] arm64: module: create module allocations without exec
 permissions
Date: Thu, 23 May 2019 11:22:53 +0100
Message-Id: <20190523102256.29168-2-ard.biesheuvel@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190523102256.29168-1-ard.biesheuvel@arm.com>
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_032431_535758_CC7A518B 
X-CRM114-Status: GOOD (  12.41  )
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@arm.com>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the core code manages the executable permissions of code
regions of modules explicitly, it is no longer necessary to create
the module vmalloc regions with RWX permissions, and we can create
them with RW- permissions instead, which is preferred from a
security perspective.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@arm.com>
---
 arch/arm64/kernel/module.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/module.c b/arch/arm64/kernel/module.c
index 2e4e3915b4d0..88f0ed31d9aa 100644
--- a/arch/arm64/kernel/module.c
+++ b/arch/arm64/kernel/module.c
@@ -41,7 +41,7 @@ void *module_alloc(unsigned long size)
 
 	p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
 				module_alloc_base + MODULES_VSIZE,
-				gfp_mask, PAGE_KERNEL_EXEC, 0,
+				gfp_mask, PAGE_KERNEL, 0,
 				NUMA_NO_NODE, __builtin_return_address(0));
 
 	if (!p && IS_ENABLED(CONFIG_ARM64_MODULE_PLTS) &&
@@ -57,7 +57,7 @@ void *module_alloc(unsigned long size)
 		 */
 		p = __vmalloc_node_range(size, MODULE_ALIGN, module_alloc_base,
 				module_alloc_base + SZ_4G, GFP_KERNEL,
-				PAGE_KERNEL_EXEC, 0, NUMA_NO_NODE,
+				PAGE_KERNEL, 0, NUMA_NO_NODE,
 				__builtin_return_address(0));
 
 	if (p && (kasan_module_alloc(p, size) < 0)) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
