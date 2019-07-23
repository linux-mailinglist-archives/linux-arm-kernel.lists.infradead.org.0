Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47AA371E71
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:00:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MQWrSTRRcZyoLghFsbxBQxMSZhKqtlV7ek4c/Vcm4Y=; b=KaVfrJvqrYkihE
	zyauwt5LGyhe4jzQmQ14PxV9kAWWtOQ6rwUkhWEebs2+IVAIuGZCPctcpM1vDFM/vE3GAPR8YFrvN
	01kQ83FnUWBuzKXL8GbiTMBOmDkInsayUhzT9irWvzW+7N5CgMaDQwcLkGlrQvKtl3Eik3gN0UDWV
	f5xr0kLG97hcC7K7qv8gpgkIHMsIJBU1S44NxXxFJnu+YDrC0kdNJG3TZJTKzSbcnSIE51FDcXrvw
	FNCPxlbXVJ9MiBlXD/1qGdJcIeIylAFeSpOHcyywQmjFXox3K1HZOw5zBAgBeyhtC1wTelXU+g0Bh
	Blaq6kSZ3rtLMSMV/sWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz5e-0007RK-F2; Tue, 23 Jul 2019 18:00:42 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4F-0005Hz-5A
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:17 +0000
Received: by mail-qt1-x84a.google.com with SMTP id g30so39041310qtm.17
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=mEM9r2TrIcyS5QiUJ5WsI/WGUVLPWWhwkAU6Ibh3jIs=;
 b=H5geBT1j+ubrLFlbrsinXfwZ0W5BQqUsTQ4IaRG81Ui2ZwtPz7y/KxLSObtE6WVnKG
 iLhrcnu/dA6uvy2xcSWRBGEgliAGFYmCJj9eOifU6l6F5s22JsTp5wdsL4S09QNfUDVI
 UCiPujniwnzgr9cWOZtf0O60DfpKFiDJD1smf/WyvtqTOs+e49rV01Sy+tA1kalRfOYC
 3saGMlUnkEYHG4EJGY2ZRToPTiWHH99XVusCT8uRMBFt4SPd2rqEw8UO4qGVRomxdtCq
 F9yP/y3PSBYaBJ+MgdczyCl0HRVmy2j6uCXJDxaojhfskG3cHHnyJgYo5kA7+x/3sY0a
 e1vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=mEM9r2TrIcyS5QiUJ5WsI/WGUVLPWWhwkAU6Ibh3jIs=;
 b=an3gHxKb9aqFy6SnMUWFTHZHgshiUqblht88uf2+VslioNsdk6fSse0n+5T3utr1p1
 uEXk/EQ9KZXlij5UoqVFiaRsitCyHFa6QuffeGTTwV09frKI5S3uu0azJMAxW0ibw/5X
 AQ4kxt5KgR7pBufFSE4t0xqzlvL+4edFxVlHKhG4uqgRB/lJixKC+Big3aLzfViBIIkC
 VbQab31qHB1njI8vAcfeNL+5O+OAMSiX9VivQrjHXvmzLLAV7Amc8SX86pTuMVbhUAiX
 ciFUiqDCoHkWf78VGHku++m7N0puAzOcmqGHvAFCEPaaxFsgy64Pg84C8aOlKUWOLvBY
 vsXQ==
X-Gm-Message-State: APjAAAVU+DAB8jtAJaBhp0lFAWJ3/wHF9dYR/cJd1ZvXk+osC54Qumx+
 JU+cV7gqMzbDOttNIkIrxZ2EbKW/8pJ1uWnLogxRGPExsscDePlkCaQ/PEBTxMpSf2MaMlrc4yN
 0IReiUsPktZMr6NexYDw5OzZHE2+m+zd4OhnZZqpf+JzpbBgxQ1C3M8ADILDQDpUNXysM5wqRh1
 bsBityC7gV0rVZYX8=
X-Google-Smtp-Source: APXvYqzAUxNwopC91TOnVL5OWCCwX02ZC910lFa3yrWgPSH4oaNT26Uf7JNL1bImHscifmXrtCV+ZCB9Y2uf5vV7
X-Received: by 2002:a0c:8705:: with SMTP id 5mr54401806qvh.32.1563904752366;
 Tue, 23 Jul 2019 10:59:12 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:39 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <1c05651c53f90d07e98ee4973c2786ccf315db12.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 02/15] arm64: Introduce prctl() options to control the
 tagged user addresses ABI
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105915_399939_6A96BF27 
X-CRM114-Status: GOOD (  22.27  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Catalin Marinas <catalin.marinas@arm.com>

It is not desirable to relax the ABI to allow tagged user addresses into
the kernel indiscriminately. This patch introduces a prctl() interface
for enabling or disabling the tagged ABI with a global sysctl control
for preventing applications from enabling the relaxed ABI (meant for
testing user-space prctl() return error checking without reconfiguring
the kernel). The ABI properties are inherited by threads of the same
application and fork()'ed children but cleared on execve(). A Kconfig
option allows the overall disabling of the relaxed ABI.

The PR_SET_TAGGED_ADDR_CTRL will be expanded in the future to handle
MTE-specific settings like imprecise vs precise exceptions.

Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/Kconfig                   |  9 ++++
 arch/arm64/include/asm/processor.h   |  8 +++
 arch/arm64/include/asm/thread_info.h |  1 +
 arch/arm64/include/asm/uaccess.h     |  4 +-
 arch/arm64/kernel/process.c          | 73 ++++++++++++++++++++++++++++
 include/uapi/linux/prctl.h           |  5 ++
 kernel/sys.c                         | 12 +++++
 7 files changed, 111 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 3adcec05b1f6..5d254178b9ca 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -1110,6 +1110,15 @@ config ARM64_SW_TTBR0_PAN
 	  zeroed area and reserved ASID. The user access routines
 	  restore the valid TTBR0_EL1 temporarily.
 
+config ARM64_TAGGED_ADDR_ABI
+	bool "Enable the tagged user addresses syscall ABI"
+	default y
+	help
+	  When this option is enabled, user applications can opt in to a
+	  relaxed ABI via prctl() allowing tagged addresses to be passed
+	  to system calls as pointer arguments. For details, see
+	  Documentation/arm64/tagged-address-abi.txt.
+
 menuconfig COMPAT
 	bool "Kernel support for 32-bit EL0"
 	depends on ARM64_4K_PAGES || EXPERT
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index fd5b1a4efc70..ee86070a28d4 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -296,6 +296,14 @@ extern void __init minsigstksz_setup(void);
 /* PR_PAC_RESET_KEYS prctl */
 #define PAC_RESET_KEYS(tsk, arg)	ptrauth_prctl_reset_keys(tsk, arg)
 
+#ifdef CONFIG_ARM64_TAGGED_ADDR_ABI
+/* PR_{SET,GET}_TAGGED_ADDR_CTRL prctl */
+long set_tagged_addr_ctrl(unsigned long arg);
+long get_tagged_addr_ctrl(void);
+#define SET_TAGGED_ADDR_CTRL(arg)	set_tagged_addr_ctrl(arg)
+#define GET_TAGGED_ADDR_CTRL()		get_tagged_addr_ctrl()
+#endif
+
 /*
  * For CONFIG_GCC_PLUGIN_STACKLEAK
  *
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index 180b34ec5965..012238d8e58d 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -90,6 +90,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_SVE			23	/* Scalable Vector Extension in use */
 #define TIF_SVE_VL_INHERIT	24	/* Inherit sve_vl_onexec across exec */
 #define TIF_SSBD		25	/* Wants SSB mitigation */
+#define TIF_TAGGED_ADDR		26	/* Allow tagged user addresses */
 
 #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
 #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index a138e3b4f717..097d6bfac0b7 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -62,7 +62,9 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 {
 	unsigned long ret, limit = current_thread_info()->addr_limit;
 
-	addr = untagged_addr(addr);
+	if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI) &&
+	    test_thread_flag(TIF_TAGGED_ADDR))
+		addr = untagged_addr(addr);
 
 	__chk_user_ptr(addr);
 	asm volatile(
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 6a869d9f304f..ef06a303bda0 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -19,6 +19,7 @@
 #include <linux/kernel.h>
 #include <linux/mm.h>
 #include <linux/stddef.h>
+#include <linux/sysctl.h>
 #include <linux/unistd.h>
 #include <linux/user.h>
 #include <linux/delay.h>
@@ -38,6 +39,7 @@
 #include <trace/events/power.h>
 #include <linux/percpu.h>
 #include <linux/thread_info.h>
+#include <linux/prctl.h>
 
 #include <asm/alternative.h>
 #include <asm/arch_gicv3.h>
@@ -307,11 +309,18 @@ static void tls_thread_flush(void)
 	}
 }
 
+static void flush_tagged_addr_state(void)
+{
+	if (IS_ENABLED(CONFIG_ARM64_TAGGED_ADDR_ABI))
+		clear_thread_flag(TIF_TAGGED_ADDR);
+}
+
 void flush_thread(void)
 {
 	fpsimd_flush_thread();
 	tls_thread_flush();
 	flush_ptrace_hw_breakpoint(current);
+	flush_tagged_addr_state();
 }
 
 void release_thread(struct task_struct *dead_task)
@@ -541,3 +550,67 @@ void arch_setup_new_exec(void)
 
 	ptrauth_thread_init_user(current);
 }
+
+#ifdef CONFIG_ARM64_TAGGED_ADDR_ABI
+/*
+ * Control the relaxed ABI allowing tagged user addresses into the kernel.
+ */
+static unsigned int tagged_addr_prctl_allowed = 1;
+
+long set_tagged_addr_ctrl(unsigned long arg)
+{
+	if (!tagged_addr_prctl_allowed)
+		return -EINVAL;
+	if (is_compat_task())
+		return -EINVAL;
+	if (arg & ~PR_TAGGED_ADDR_ENABLE)
+		return -EINVAL;
+
+	update_thread_flag(TIF_TAGGED_ADDR, arg & PR_TAGGED_ADDR_ENABLE);
+
+	return 0;
+}
+
+long get_tagged_addr_ctrl(void)
+{
+	if (!tagged_addr_prctl_allowed)
+		return -EINVAL;
+	if (is_compat_task())
+		return -EINVAL;
+
+	if (test_thread_flag(TIF_TAGGED_ADDR))
+		return PR_TAGGED_ADDR_ENABLE;
+
+	return 0;
+}
+
+/*
+ * Global sysctl to disable the tagged user addresses support. This control
+ * only prevents the tagged address ABI enabling via prctl() and does not
+ * disable it for tasks that already opted in to the relaxed ABI.
+ */
+static int zero;
+static int one = 1;
+
+static struct ctl_table tagged_addr_sysctl_table[] = {
+	{
+		.procname	= "tagged_addr",
+		.mode		= 0644,
+		.data		= &tagged_addr_prctl_allowed,
+		.maxlen		= sizeof(int),
+		.proc_handler	= proc_dointvec_minmax,
+		.extra1		= &zero,
+		.extra2		= &one,
+	},
+	{ }
+};
+
+static int __init tagged_addr_init(void)
+{
+	if (!register_sysctl("abi", tagged_addr_sysctl_table))
+		return -EINVAL;
+	return 0;
+}
+
+core_initcall(tagged_addr_init);
+#endif	/* CONFIG_ARM64_TAGGED_ADDR_ABI */
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index 094bb03b9cc2..2e927b3e9d6c 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -229,4 +229,9 @@ struct prctl_mm_map {
 # define PR_PAC_APDBKEY			(1UL << 3)
 # define PR_PAC_APGAKEY			(1UL << 4)
 
+/* Tagged user address controls for arm64 */
+#define PR_SET_TAGGED_ADDR_CTRL		55
+#define PR_GET_TAGGED_ADDR_CTRL		56
+# define PR_TAGGED_ADDR_ENABLE		(1UL << 0)
+
 #endif /* _LINUX_PRCTL_H */
diff --git a/kernel/sys.c b/kernel/sys.c
index 2969304c29fe..c6c4d5358bd3 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -124,6 +124,12 @@
 #ifndef PAC_RESET_KEYS
 # define PAC_RESET_KEYS(a, b)	(-EINVAL)
 #endif
+#ifndef SET_TAGGED_ADDR_CTRL
+# define SET_TAGGED_ADDR_CTRL(a)	(-EINVAL)
+#endif
+#ifndef GET_TAGGED_ADDR_CTRL
+# define GET_TAGGED_ADDR_CTRL()		(-EINVAL)
+#endif
 
 /*
  * this is where the system-wide overflow UID and GID are defined, for
@@ -2492,6 +2498,12 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
 			return -EINVAL;
 		error = PAC_RESET_KEYS(me, arg2);
 		break;
+	case PR_SET_TAGGED_ADDR_CTRL:
+		error = SET_TAGGED_ADDR_CTRL(arg2);
+		break;
+	case PR_GET_TAGGED_ADDR_CTRL:
+		error = GET_TAGGED_ADDR_CTRL();
+		break;
 	default:
 		error = -EINVAL;
 		break;
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
