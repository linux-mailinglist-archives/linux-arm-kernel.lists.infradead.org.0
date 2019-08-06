Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D0B482F4B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 12:02:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=889d2IAWTvBjuF6lFNvNruGPGSToRjWmV/gCBRH/qPk=; b=a6cDOogDLtUIrwCvnnbjvEjuV+
	AstsBYFWvHZZ7ZlK+KiW5mlEDc7PA0kh7O/agtR3o947hY4I8PQ5sddTbxGl8lUkVcaa6lxKwjNLh
	lOjUssJINBR/khMDn75pW2/QzIFDSENFpdbEoCBvovXCSKEaCpShQAP+OLjq/j5jRo6DbeEWk8Ltg
	E/OPjwvxiAGjDb57l5yBJc9LkNthXmXFvWXK8vvdjK2KprSPniRdBLw4xEwXRz3GU/Zk8ac77E+Jc
	ZCvEo/wmF2M5jmi1py5xc9mJ1Z18a7JM/8i65VlHucbE9TsaOrP4MTqzJFg8PYrcCj/m0EqBmug88
	3xZaDavA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huwI4-0002rN-Km; Tue, 06 Aug 2019 10:02:00 +0000
Received: from mail-yb1-xb44.google.com ([2607:f8b0:4864:20::b44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huwH8-0002ac-PM
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 10:01:04 +0000
Received: by mail-yb1-xb44.google.com with SMTP id s41so8254911ybe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BrBBFjqsIPWSTPOwNEcUeajfoMogUhxNa7dexawAwRQ=;
 b=Un6oFivG+UxJxUJOYr8+LA93ywEnvAQtUBkTGho7Ltp6aiGVqv555mAWbj39vVVe4T
 tTAZGZRpv3XowvmjuMFxMrBReXJdTs8FxGKnoziDeXG0a4qL4zmORnd9YynujYMNhNfH
 4ecvqroC3gmCOKv5mJHmY4V38pqK6HNSb1geNVBH3Ivvtta3hsjCkmzLX9KUaWgVC6lX
 kJB08KuTYFEWh/U6h9qYHQxR8vAbQxOtxHmBwM3NjyhcgI62tYhGmkw/q+wYGZwhLkHO
 4UzK1unsE6K15NH9p83nxGH/Qi30CQ2wvypdep65rye0RfNW5eLhw6/oUpCmj6Y9CEBx
 AQ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BrBBFjqsIPWSTPOwNEcUeajfoMogUhxNa7dexawAwRQ=;
 b=K8huInQRMgXZTwbzP772K3g5TVEXjJCfOGunTEFQBHTQoloGUjswuGUtWFx9QMff0U
 FgnriMhlgKnXK7PnqSCbDm5j4B+9ZzQV7lsvNt/FC8x7qSFd2fSJVHk/CjT++LBUQJtx
 GO7EysXQUgHtTZnCnNUM5IP/dLClck20X0L8Jy8+b05Rz1gnLuF5+GxK5u6DJppIv2fv
 8YeaVyy99SAP07OxDk/iIJjIqtrV3hNbeDMiUo/5dZN60f/lpRNYYY8VkM5ijdStc6NR
 nTZxAORK8m0Xy6Gy06R0RziHK9McdXdxVTe+DfOQ3oGz4dNyfzOit7P2nQS2WdzqViuO
 ux1w==
X-Gm-Message-State: APjAAAXIvIHCaQX1+mVbxRfMjmRLF1OJLMrsLRqGcqQAtHWSCKgkpAbY
 LxLlRt71Q8yEuQMiL03W1TMooQ==
X-Google-Smtp-Source: APXvYqxlrdnW4SC05Llg8qrkK8vk5nJO9H/xk4mq0I/hM9oXEKg8zKXbxtiK57fOJLDWI4AfH7i6MA==
X-Received: by 2002:a25:8410:: with SMTP id u16mr1788923ybk.466.1565085662057; 
 Tue, 06 Aug 2019 03:01:02 -0700 (PDT)
Received: from localhost.localdomain (li1322-146.members.linode.com.
 [45.79.223.146])
 by smtp.gmail.com with ESMTPSA id h12sm18316685ywm.91.2019.08.06.03.00.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 03:01:01 -0700 (PDT)
From: Leo Yan <leo.yan@linaro.org>
To: Russell King <linux@armlinux.org.uk>, Oleg Nesterov <oleg@redhat.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Alexei Starovoitov <ast@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-arch@vger.kernel.org,
 netdev@vger.kernel.org, bpf@vger.kernel.org,
 clang-built-linux@googlegroups.com, Masami Hiramatsu <mhiramat@kernel.org>
Subject: [PATCH v2 1/3] error-injection: Consolidate override function
 definition
Date: Tue,  6 Aug 2019 18:00:13 +0800
Message-Id: <20190806100015.11256-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_030102_822592_0BFB90B6 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The function override_function_with_return() is defined separately for
each architecture and every architecture's definition is almost same
with each other.  E.g. x86 and powerpc both define function in its own
asm/error-injection.h header and override_function_with_return() has
the same definition, the only difference is that x86 defines an extra
function just_return_func() but it is specific for x86 and is only used
by x86's override_function_with_return(), so don't need to export this
function.

This patch consolidates override_function_with_return() definition into
asm-generic/error-injection.h header, thus all architectures can use the
common definition.  As result, the architecture specific headers are
removed; the include/linux/error-injection.h header also changes to
include asm-generic/error-injection.h header rather than architecture
header, furthermore, it includes linux/compiler.h for successful
compilation.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 arch/powerpc/include/asm/error-injection.h | 13 -------------
 arch/x86/include/asm/error-injection.h     | 13 -------------
 include/asm-generic/error-injection.h      |  6 ++++++
 include/linux/error-injection.h            |  6 +++---
 4 files changed, 9 insertions(+), 29 deletions(-)
 delete mode 100644 arch/powerpc/include/asm/error-injection.h
 delete mode 100644 arch/x86/include/asm/error-injection.h

diff --git a/arch/powerpc/include/asm/error-injection.h b/arch/powerpc/include/asm/error-injection.h
deleted file mode 100644
index 62fd24739852..000000000000
--- a/arch/powerpc/include/asm/error-injection.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0+ */
-
-#ifndef _ASM_ERROR_INJECTION_H
-#define _ASM_ERROR_INJECTION_H
-
-#include <linux/compiler.h>
-#include <linux/linkage.h>
-#include <asm/ptrace.h>
-#include <asm-generic/error-injection.h>
-
-void override_function_with_return(struct pt_regs *regs);
-
-#endif /* _ASM_ERROR_INJECTION_H */
diff --git a/arch/x86/include/asm/error-injection.h b/arch/x86/include/asm/error-injection.h
deleted file mode 100644
index 47b7a1296245..000000000000
--- a/arch/x86/include/asm/error-injection.h
+++ /dev/null
@@ -1,13 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef _ASM_ERROR_INJECTION_H
-#define _ASM_ERROR_INJECTION_H
-
-#include <linux/compiler.h>
-#include <linux/linkage.h>
-#include <asm/ptrace.h>
-#include <asm-generic/error-injection.h>
-
-asmlinkage void just_return_func(void);
-void override_function_with_return(struct pt_regs *regs);
-
-#endif /* _ASM_ERROR_INJECTION_H */
diff --git a/include/asm-generic/error-injection.h b/include/asm-generic/error-injection.h
index 95a159a4137f..80ca61058dd2 100644
--- a/include/asm-generic/error-injection.h
+++ b/include/asm-generic/error-injection.h
@@ -16,6 +16,8 @@ struct error_injection_entry {
 	int		etype;
 };
 
+struct pt_regs;
+
 #ifdef CONFIG_FUNCTION_ERROR_INJECTION
 /*
  * Whitelist ganerating macro. Specify functions which can be
@@ -28,8 +30,12 @@ static struct error_injection_entry __used				\
 		.addr = (unsigned long)fname,				\
 		.etype = EI_ETYPE_##_etype,				\
 	};
+
+void override_function_with_return(struct pt_regs *regs);
 #else
 #define ALLOW_ERROR_INJECTION(fname, _etype)
+
+static inline void override_function_with_return(struct pt_regs *regs) { }
 #endif
 #endif
 
diff --git a/include/linux/error-injection.h b/include/linux/error-injection.h
index 280c61ecbf20..635a95caf29f 100644
--- a/include/linux/error-injection.h
+++ b/include/linux/error-injection.h
@@ -2,16 +2,16 @@
 #ifndef _LINUX_ERROR_INJECTION_H
 #define _LINUX_ERROR_INJECTION_H
 
-#ifdef CONFIG_FUNCTION_ERROR_INJECTION
+#include <linux/compiler.h>
+#include <asm-generic/error-injection.h>
 
-#include <asm/error-injection.h>
+#ifdef CONFIG_FUNCTION_ERROR_INJECTION
 
 extern bool within_error_injection_list(unsigned long addr);
 extern int get_injectable_error_type(unsigned long addr);
 
 #else /* !CONFIG_FUNCTION_ERROR_INJECTION */
 
-#include <asm-generic/error-injection.h>
 static inline bool within_error_injection_list(unsigned long addr)
 {
 	return false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
