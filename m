Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B623134B1C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 20:00:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kmoS75KGcr2/xThMP7eQ6E+vHmaOPuDxcJP3mpPr2wc=; b=HY+YSV0OWeCJcll2I4nGzQdVq8
	EotxwbeKDHwuAVxatnpkRBOn720K7jY9lpcMzBLuAnwKCcLdw8nFyXb3kbD0t+1QnU55GrinNghmd
	KKj4i/FHENIIb09Xiti3OrvFXuzj3r8CFcwpm4cA29nlC2zCGi8kLzU4+O86fsumnpg44ASAhtFWO
	RjkowCUq1shxoPfFl686PDR+84Pp2VmEx9CSLt9vDmEAOvaxgE4Is+rnM1Qx2ppe4XxOQqDeXG0ju
	YdlZGOZBbvCEJF/w9GUDdoucSP2fB4j1MyQprM5qpATSgc4j3+3cTyg1OpBroNIjo7frjn5n4mmB3
	sQvOkJNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipGYg-0001bG-75; Wed, 08 Jan 2020 18:59:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipGW2-0007Td-ED
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 18:57:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3506F1FB;
 Wed,  8 Jan 2020 10:57:14 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A539C3F534;
 Wed,  8 Jan 2020 10:57:12 -0800 (PST)
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
Subject: [PATCH 11/17] stackleak: allow C to call stackleak_erase()
Date: Wed,  8 Jan 2020 18:56:28 +0000
Message-Id: <20200108185634.1163-12-mark.rutland@arm.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20200108185634.1163-1-mark.rutland@arm.com>
References: <20200108185634.1163-1-mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_105714_537802_F9FC412B 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, keescook@chromium.org, maz@kernel.org,
 broonie@kernel.org, labbott@redhat.com, robin.murphy@arm.com,
 julien.thierry.kdev@gmail.com, alex.popov@linux.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, stackleak_erase() has no prototype in a header file, and has
to be called directly from low-level architecture entry assembly code.
This necessitates ifdeffery and complicates the entry assembly.

To ameliorate matters, let's provide a prototype so that architecture
can call stackleak_erase() from slightly higher level C code used as
part of the entry flow. This makes things easier to read and maintain.

Signed-off-by: Mark Rutland <mark.rutland@arm.com>
Cc: Alexander Popov <alex.popov@linux.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Laura Abbott <labbott@redhat.com>
Cc: Will Deacon <will@kernel.org>
---
 include/linux/stackleak.h | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/include/linux/stackleak.h b/include/linux/stackleak.h
index 3d5c3271a9a8..2b09d3759c76 100644
--- a/include/linux/stackleak.h
+++ b/include/linux/stackleak.h
@@ -15,6 +15,8 @@
 #ifdef CONFIG_GCC_PLUGIN_STACKLEAK
 #include <asm/stacktrace.h>
 
+asmlinkage void notrace stackleak_erase(void);
+
 static inline void stackleak_task_init(struct task_struct *t)
 {
 	t->lowest_stack = (unsigned long)end_of_stack(t) + sizeof(unsigned long);
@@ -30,6 +32,7 @@ int stack_erasing_sysctl(struct ctl_table *table, int write,
 
 #else /* !CONFIG_GCC_PLUGIN_STACKLEAK */
 static inline void stackleak_task_init(struct task_struct *t) { }
+static inline void stackleak_erase(void) { }
 #endif
 
 #endif
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
