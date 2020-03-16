Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A41BF1870A7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 17:54:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OeBdmJYt5xJM00gQsnn1GtR7QPMQoXeVmUZSJByXQn4=; b=fdvQWOJW3fqdCv
	kBw8oukf7gTVMUObdXGW2ma2xw+Djhqm8iAPikGOY9IxpX+J8IhJ3ZKz62FrQk6C5Juo9N7l6RsOy
	qvr3bm3oS1yaRhPQQkKs13/HnlGLDcLNw7Um6fU1xrZPMb6m7HB8mFqzWTN9N+BbC4oP4rh+YaQU8
	e2aWcCenweejBLiXycPAcxHz7fks28w5WB3WTbGdsqLx/gezWLeby/jyzS5rFYnMD+8EM3fLyuKCM
	pH9jBKXBUjiNQfWK0YjBTm8VjPxJLXOECQ83PmcZjjHuXO/SoWMbxjMl4yJyjSedgyfwG7x4/Woyp
	Xy3z2YVKMSV7JDykEd7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDt0m-0000DD-EM; Mon, 16 Mar 2020 16:54:44 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDsxa-0005hR-4P
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 16:51:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 14FE413A1;
 Mon, 16 Mar 2020 09:51:25 -0700 (PDT)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 691513F67D;
 Mon, 16 Mar 2020 09:51:24 -0700 (PDT)
From: Mark Brown <broonie@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v10 12/13] mm: smaps: Report arm64 guarded pages in smaps
Date: Mon, 16 Mar 2020 16:50:54 +0000
Message-Id: <20200316165055.31179-13-broonie@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200316165055.31179-1-broonie@kernel.org>
References: <20200316165055.31179-1-broonie@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_095126_274011_1E23B1C7 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Paul Elliott <paul.elliott@arm.com>, Peter Zijlstra <peterz@infradead.org>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Daniel Kiss <daniel.kiss@arm.com>, linux-arch@vger.kernel.org,
 Marc Zyngier <maz@kernel.org>, Eugene Syromiatnikov <esyr@redhat.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>, "H . J . Lu " <hjl.tools@gmail.com>,
 Yu-cheng Yu <yu-cheng.yu@intel.com>, Kees Cook <keescook@chromium.org>,
 Arnd Bergmann <arnd@arndb.de>, Jann Horn <jannh@google.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 =?UTF-8?q?Kristina=20Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Florian Weimer <fweimer@redhat.com>, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Kiss <daniel.kiss@arm.com>

The arm64 Branch Target Identification support is activated by marking
executable pages as guarded pages.  Report pages mapped this way in
smaps to aid diagnostics.

Signed-off-by: Daniel Kiss <daniel.kiss@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/filesystems/proc.txt | 1 +
 fs/proc/task_mmu.c                 | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/Documentation/filesystems/proc.txt b/Documentation/filesystems/proc.txt
index 99ca040e3f90..ed5465d0f435 100644
--- a/Documentation/filesystems/proc.txt
+++ b/Documentation/filesystems/proc.txt
@@ -519,6 +519,7 @@ manner. The codes are the following:
     hg  - huge page advise flag
     nh  - no-huge page advise flag
     mg  - mergable advise flag
+    bt  - arm64 BTI guarded page
 
 Note that there is no guarantee that every flag and associated mnemonic will
 be present in all further kernel releases. Things get changed, the flags may
diff --git a/fs/proc/task_mmu.c b/fs/proc/task_mmu.c
index 3ba9ae83bff5..1e3409c484d1 100644
--- a/fs/proc/task_mmu.c
+++ b/fs/proc/task_mmu.c
@@ -668,6 +668,9 @@ static void show_smap_vma_flags(struct seq_file *m, struct vm_area_struct *vma)
 		[ilog2(VM_ARCH_1)]	= "ar",
 		[ilog2(VM_WIPEONFORK)]	= "wf",
 		[ilog2(VM_DONTDUMP)]	= "dd",
+#ifdef CONFIG_ARM64_BTI
+		[ilog2(VM_ARM64_BTI)]	= "bt",
+#endif
 #ifdef CONFIG_MEM_SOFT_DIRTY
 		[ilog2(VM_SOFTDIRTY)]	= "sd",
 #endif
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
