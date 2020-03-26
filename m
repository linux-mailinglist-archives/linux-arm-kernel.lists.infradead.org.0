Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6983A194624
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 19:10:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gwe5GgP6RKfu+KgWs9JqhHUZKValH901KaFNBnRb7cA=; b=tzu3EXlmU8wHAa
	bVxRlAYo663mA/18Z6K/pJBX4yMvbMlwlz1aL15DiWRJSEobol6urLN4oyeIvp+SjNaYnAPeIMLQA
	0HFH76RBU11FKiDX5arzxRyVbwLA30AKqnjcoCrqCb1U0XFNeoT1G9E83iulw+ZqztZTYud5sy7p3
	8Alyse+ZirGhjI5ztuEAbrywNwsvJOJENbP9rcqaM+3T1gIKWd7qQuVqUSYsSQognwFCxG460+0ih
	Ch0vAR3QYARYLj43dmiCOcoTJZ9obSpAdN5KZf+6U9CUcJ8UfPkWx60mk7NCeBYvv1IpwJhn2ynPG
	NAztmUPP+PDHigzBICxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHWxf-00017S-0s; Thu, 26 Mar 2020 18:10:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHWvc-00072v-2L; Thu, 26 Mar 2020 18:08:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0693B1045;
 Thu, 26 Mar 2020 11:08:27 -0700 (PDT)
Received: from melchizedek.cambridge.arm.com (melchizedek.cambridge.arm.com
 [10.1.196.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AAB503F71E;
 Thu, 26 Mar 2020 11:08:25 -0700 (PDT)
From: James Morse <james.morse@arm.com>
To: kexec@lists.infradead.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/3] kexec: Prevent removal of memory in use by a loaded kexec
 image
Date: Thu, 26 Mar 2020 18:07:28 +0000
Message-Id: <20200326180730.4754-2-james.morse@arm.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200326180730.4754-1-james.morse@arm.com>
References: <20200326180730.4754-1-james.morse@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_110828_230011_7BAAD2D6 
X-CRM114-Status: GOOD (  13.96  )
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

An image loaded for kexec is not stored in place, instead its segments
are scattered through memory, and are re-assembled when needed. In the
meantime, the target memory may have been removed.

Because mm is not aware that this memory is still in use, it allows it
to be removed.

Add a memory notifier to prevent the removal of memory regions that
overlap with a loaded kexec image segment. e.g., when triggered from the
Qemu console:
| kexec_core: memory region in use
| memory memory32: Offline failed.

Signed-off-by: James Morse <james.morse@arm.com>
---
 kernel/kexec_core.c | 56 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/kernel/kexec_core.c b/kernel/kexec_core.c
index c19c0dad1ebe..ba1d91e868ca 100644
--- a/kernel/kexec_core.c
+++ b/kernel/kexec_core.c
@@ -12,6 +12,7 @@
 #include <linux/slab.h>
 #include <linux/fs.h>
 #include <linux/kexec.h>
+#include <linux/memory.h>
 #include <linux/mutex.h>
 #include <linux/list.h>
 #include <linux/highmem.h>
@@ -22,10 +23,12 @@
 #include <linux/elf.h>
 #include <linux/elfcore.h>
 #include <linux/utsname.h>
+#include <linux/notifier.h>
 #include <linux/numa.h>
 #include <linux/suspend.h>
 #include <linux/device.h>
 #include <linux/freezer.h>
+#include <linux/pfn.h>
 #include <linux/pm.h>
 #include <linux/cpu.h>
 #include <linux/uaccess.h>
@@ -1219,3 +1222,56 @@ void __weak arch_kexec_protect_crashkres(void)
 
 void __weak arch_kexec_unprotect_crashkres(void)
 {}
+
+/*
+ * If user-space wants to offline memory that is in use by a loaded kexec
+ * image, it should unload the image first.
+ */
+static int mem_remove_cb(struct notifier_block *nb, unsigned long action,
+			 void *data)
+{
+	int rv = NOTIFY_OK, i;
+	struct memory_notify *arg = data;
+	unsigned long pfn = arg->start_pfn;
+	unsigned long nr_segments, sstart, send;
+	unsigned long end_pfn = arg->start_pfn + arg->nr_pages;
+
+	might_sleep();
+
+	if (action != MEM_GOING_OFFLINE)
+		return NOTIFY_DONE;
+
+	mutex_lock(&kexec_mutex);
+	if (kexec_image) {
+		nr_segments = kexec_image->nr_segments;
+
+		for (i = 0; i < nr_segments; i++) {
+			sstart = PFN_DOWN(kexec_image->segment[i].mem);
+			send = PFN_UP(kexec_image->segment[i].mem +
+				      kexec_image->segment[i].memsz);
+
+			if ((pfn <= sstart && sstart < end_pfn) ||
+			    (pfn <= send && send < end_pfn)) {
+				pr_warn("Memory region in use\n");
+				rv = NOTIFY_BAD;
+				break;
+			}
+		}
+	}
+	mutex_unlock(&kexec_mutex);
+
+	return rv;
+}
+
+static struct notifier_block mem_remove_nb = {
+	.notifier_call = mem_remove_cb,
+};
+
+static int __init register_mem_remove_cb(void)
+{
+	if (IS_ENABLED(CONFIG_MEMORY_HOTPLUG))
+		return register_memory_notifier(&mem_remove_nb);
+
+	return 0;
+}
+device_initcall(register_mem_remove_cb);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
