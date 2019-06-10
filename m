Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486673BB6D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 19:54:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9V9R76pU2sjCf2SNyuQIQW771+Q05D9LXoEmnS07zpQ=; b=UpeJQ9P3lFzAek
	hpljg++Sx7O7CU8chR5OrvZ73a0L9cW0JSy+rCjfSM3jMF9ExGJ1jGqs5nEzNPhkSvSysLERdhqsC
	45DTCOpA2fTjiR6innin/Fd62Y8k6qXufrReNkYmFXQEKl7R/hAbWCpm+YEuxjAKlBKS2RRPsut7l
	Uhg7aD1RVYiCH6rZsEBOO74FKPtEq/SvJeAohTDSPel1CPZSRP6P8jtUUaDoXN7KCNDZDOKR6BktC
	6cyhUeJMlsnMGs/ESoN5K00BD3d6qrg0XrmcC+RvXtNO6gsHZLfPe9OO9lviq205rYKgrHDWUQbjd
	DvL/5zBb0IyvyA99q3SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haOUa-0007CD-Rj; Mon, 10 Jun 2019 17:54:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1haOUB-0007Ay-Ev
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 17:53:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id ED62C337;
 Mon, 10 Jun 2019 10:53:33 -0700 (PDT)
Received: from arrakis.emea.arm.com (arrakis.cambridge.arm.com [10.1.196.78])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 4ABC63F246; Mon, 10 Jun 2019 10:53:29 -0700 (PDT)
Date: Mon, 10 Jun 2019 18:53:27 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
Message-ID: <20190610175326.GC25803@arrakis.emea.arm.com>
References: <cover.1559580831.git.andreyknvl@google.com>
 <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_105335_599396_DEC8A8F0 
X-CRM114-Status: GOOD (  19.65  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Khalid Aziz <khalid.aziz@oracle.com>, linux-kselftest@vger.kernel.org,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, linux-kernel@vger.kernel.org,
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

On Mon, Jun 03, 2019 at 06:55:04PM +0200, Andrey Konovalov wrote:
> diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
> index e5d5f31c6d36..9164ecb5feca 100644
> --- a/arch/arm64/include/asm/uaccess.h
> +++ b/arch/arm64/include/asm/uaccess.h
> @@ -94,7 +94,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
>  	return ret;
>  }
>  
> -#define access_ok(addr, size)	__range_ok(addr, size)
> +#define access_ok(addr, size)	__range_ok(untagged_addr(addr), size)

I'm going to propose an opt-in method here (RFC for now). We can't have
a check in untagged_addr() since this is already used throughout the
kernel for both user and kernel addresses (khwasan) but we can add one
in __range_ok(). The same prctl() option will be used for controlling
the precise/imprecise mode of MTE later on. We can use a TIF_ flag here
assuming that this will be called early on and any cloned thread will
inherit this.

Anyway, it's easier to paste some diff than explain but Vincenzo can
fold them into his ABI patches that should really go together with
these. I added a couple of MTE definitions for prctl() as an example,
not used currently:

------------------8<---------------------------------------------
diff --git a/arch/arm64/include/asm/processor.h b/arch/arm64/include/asm/processor.h
index fcd0e691b1ea..2d4cb7e4edab 100644
--- a/arch/arm64/include/asm/processor.h
+++ b/arch/arm64/include/asm/processor.h
@@ -307,6 +307,10 @@ extern void __init minsigstksz_setup(void);
 /* PR_PAC_RESET_KEYS prctl */
 #define PAC_RESET_KEYS(tsk, arg)	ptrauth_prctl_reset_keys(tsk, arg)
 
+/* PR_UNTAGGED_UADDR prctl */
+int untagged_uaddr_set_mode(unsigned long arg);
+#define SET_UNTAGGED_UADDR_MODE(arg)	untagged_uaddr_set_mode(arg)
+
 /*
  * For CONFIG_GCC_PLUGIN_STACKLEAK
  *
diff --git a/arch/arm64/include/asm/thread_info.h b/arch/arm64/include/asm/thread_info.h
index c285d1ce7186..89ce77773c49 100644
--- a/arch/arm64/include/asm/thread_info.h
+++ b/arch/arm64/include/asm/thread_info.h
@@ -101,6 +101,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define TIF_SVE			23	/* Scalable Vector Extension in use */
 #define TIF_SVE_VL_INHERIT	24	/* Inherit sve_vl_onexec across exec */
 #define TIF_SSBD		25	/* Wants SSB mitigation */
+#define TIF_UNTAGGED_UADDR	26
 
 #define _TIF_SIGPENDING		(1 << TIF_SIGPENDING)
 #define _TIF_NEED_RESCHED	(1 << TIF_NEED_RESCHED)
@@ -116,6 +117,7 @@ void arch_release_task_struct(struct task_struct *tsk);
 #define _TIF_FSCHECK		(1 << TIF_FSCHECK)
 #define _TIF_32BIT		(1 << TIF_32BIT)
 #define _TIF_SVE		(1 << TIF_SVE)
+#define _TIF_UNTAGGED_UADDR	(1 << TIF_UNTAGGED_UADDR)
 
 #define _TIF_WORK_MASK		(_TIF_NEED_RESCHED | _TIF_SIGPENDING | \
 				 _TIF_NOTIFY_RESUME | _TIF_FOREIGN_FPSTATE | \
diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 9164ecb5feca..54f5bbaebbc4 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -73,6 +73,9 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 {
 	unsigned long ret, limit = current_thread_info()->addr_limit;
 
+	if (test_thread_flag(TIF_UNTAGGED_UADDR))
+		addr = untagged_addr(addr);
+
 	__chk_user_ptr(addr);
 	asm volatile(
 	// A + B <= C + 1 for all A,B,C, in four easy steps:
@@ -94,7 +97,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 	return ret;
 }
 
-#define access_ok(addr, size)	__range_ok(untagged_addr(addr), size)
+#define access_ok(addr, size)	__range_ok(addr, size)
 #define user_addr_max			get_fs
 
 #define _ASM_EXTABLE(from, to)						\
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index 3767fb21a5b8..fd191c5b92aa 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -552,3 +552,18 @@ void arch_setup_new_exec(void)
 
 	ptrauth_thread_init_user(current);
 }
+
+/*
+ * Enable the relaxed ABI allowing tagged user addresses into the kernel.
+ */
+int untagged_uaddr_set_mode(unsigned long arg)
+{
+	if (is_compat_task())
+		return -ENOTSUPP;
+	if (arg)
+		return -EINVAL;
+
+	set_thread_flag(TIF_UNTAGGED_UADDR);
+
+	return 0;
+}
diff --git a/include/uapi/linux/prctl.h b/include/uapi/linux/prctl.h
index 094bb03b9cc2..4afd5e2980ee 100644
--- a/include/uapi/linux/prctl.h
+++ b/include/uapi/linux/prctl.h
@@ -229,4 +229,9 @@ struct prctl_mm_map {
 # define PR_PAC_APDBKEY			(1UL << 3)
 # define PR_PAC_APGAKEY			(1UL << 4)
 
+/* Untagged user addresses for arm64 */
+#define PR_UNTAGGED_UADDR		55
+# define PR_MTE_IMPRECISE_CHECK		0
+# define PR_MTE_PRECISE_CHECK		1
+
 #endif /* _LINUX_PRCTL_H */
diff --git a/kernel/sys.c b/kernel/sys.c
index 2969304c29fe..b1f67a8cffc4 100644
--- a/kernel/sys.c
+++ b/kernel/sys.c
@@ -124,6 +124,9 @@
 #ifndef PAC_RESET_KEYS
 # define PAC_RESET_KEYS(a, b)	(-EINVAL)
 #endif
+#ifndef SET_UNTAGGED_UADDR_MODE
+# define SET_UNTAGGED_UADDR_MODE	(-EINVAL)
+#endif
 
 /*
  * this is where the system-wide overflow UID and GID are defined, for
@@ -2492,6 +2495,11 @@ SYSCALL_DEFINE5(prctl, int, option, unsigned long, arg2, unsigned long, arg3,
 			return -EINVAL;
 		error = PAC_RESET_KEYS(me, arg2);
 		break;
+	case PR_UNTAGGED_UADDR:
+		if (arg3 || arg4 || arg5)
+			return -EINVAL;
+		error = SET_UNTAGGED_UADDR_MODE(arg2);
+		break;
 	default:
 		error = -EINVAL;
 		break;
------------------8<---------------------------------------------

The tag_ptr() function in the test library would become:

static void *tag_ptr(void *ptr)
{
	static int tbi_enabled = 0;
	unsigned long tag = 0;

	if (!tbi_enabled) {
		if (prctl(PR_UNTAGGED_UADDR, 0, 0, 0, 0) == 0)
			tbi_enabled = 1;
	}

	if (!ptr)
		return ptr;
	if (tbi_enabled)
		tag = rand() & 0xff;

	return (void *)((unsigned long)ptr | (tag << TAG_SHIFT));
}

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
