Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D2B5194626
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 19:10:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z5IVvGJ/cbxehncqjdt5N/SXoEKk/mlY1dSLjIqxS58=; b=nkYqGvcxXNz8xe
	OiaruXJXG2kQVphLeYjmR0jUod/ESv0XA/q0Cpk2ZefmzHJ9iVrEwkatl4/6HZnaamBJAKBlsIlBM
	13ibCmYHu7t3CvXvizjcTBqrhDHTmVEyWkLC4Mq5nuoVK8lGO2+XmEDEgzKRYbpGwGcJBNlk5k9B9
	ddOD9O801FoEzc6q+0i/ZMdNgD/cxM/hyLETPKfil9GRHIyduaLMN+wBdIuF+W+7imMVVDFVvE5Ay
	6Ax0FK9HhxehEVeeIEQZGuzZgX6aHDq7qisS2Q/kKKhTehHwxw5NblOocSnwBNIHfrMRpEnz9swFJ
	yZpNJTL1yLVHpUQXPuFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWxu-0001Mw-ES; Thu, 26 Mar 2020 18:10:50 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvg-00076h-7z; Thu, 26 Mar 2020 18:08:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3C45C7FA;
 Thu, 26 Mar 2020 11:08:31 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E19AB3F71E;
 Thu, 26 Mar 2020 11:08:29 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kexec@lists.infradead.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] mm/memory_hotplug: Allow arch override of non boot memory
 resource names
Date: Thu, 26 Mar 2020 18:07:29 +0000
Message-Id: <20200326180730.4754-3-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110832_347102_8B5576E6 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Anshuman Khandual <anshuman.khandual@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>, James Morse <james.morse@arm.com>,
 Eric Biederman <ebiederm@xmission.com>,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Memory added to the system by hotplug has a 'System RAM' resource created
for it. This is exposed to user-space via /proc/iomem.

This poses problems for kexec on arm64. If kexec decides to place the
kernel in one of these newly onlined regions, the new kernel will find
itself booting from a region not described as memory in the firmware
tables.

Arm64 doesn't have a structure like the e820 memory map that can be
re-written when memory is brought online. Instead arm64 uses the UEFI
memory map, or the memory node from the DT, sometimes both. We never
rewrite these.

Allow an architecture to specify a different name for these hotplug
regions.

Signed-off-by: James Morse <james.morse@arm.com>
---
 mm/memory_hotplug.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/mm/memory_hotplug.c b/mm/memory_hotplug.c
index 0a54ffac8c68..69b03dd7fc74 100644
--- a/mm/memory_hotplug.c
+++ b/mm/memory_hotplug.c
@@ -42,6 +42,10 @@
 #include "internal.h"
 #include "shuffle.h"
 
+#ifndef MEMORY_HOTPLUG_RES_NAME
+#define MEMORY_HOTPLUG_RES_NAME "System RAM"
+#endif
+
 /*
  * online_page_callback contains pointer to current page onlining function.
  * Initially it is generic_online_page(). If it is required it could be
@@ -103,7 +107,7 @@ static struct resource *register_memory_resource(u64 start, u64 size)
 {
 	struct resource *res;
 	unsigned long flags =  IORESOURCE_SYSTEM_RAM | IORESOURCE_BUSY;
-	char *resource_name = "System RAM";
+	char *resource_name = MEMORY_HOTPLUG_RES_NAME;
 
 	if (start + size > max_mem_size)
 		return ERR_PTR(-E2BIG);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
