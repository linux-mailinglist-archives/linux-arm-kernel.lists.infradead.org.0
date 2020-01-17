Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF7414147B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 23:53:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=i4JvMXqxnRSHGzjEYUkInGQjSuKuCGlHtPpm/jy9nyU=; b=oSiwhUyEQRfywuX9YsfdI6fpAp
	uBk5NKVPf+HWc1zubLDv7pDP541BT7XG3D5mxn6wR5xlw5jKSAGPZPnX/jXpK+kfmzEKg9GTKB+J3
	HehdPmhtLJZHd7xrearlQ9Joo3OSwbOomPjblWYO1Wb96KABht0rVSHkm3FdK9CS+J/uYfHzndeMR
	jx7Md/a6tnBilOgu62K5tsYzXyExlf3Wip9sS2MHVr6ztlsntEwjH8gvVwzj9mJnUFbop/8yMFjaJ
	w0zRGZdenAbPWodwbMzBz1Rfe6AdCy4ug3JvtHXxx5CWW1MqqKBOnkgUzYBT/kVcXHQ27q0Kf7qBg
	v8FdfZ0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isaTo-0008W2-Gw; Fri, 17 Jan 2020 22:52:40 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isaT5-000853-6T
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 22:51:57 +0000
Received: by mail-wm1-x343.google.com with SMTP id w5so10424224wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 14:51:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x0se5PsWKgfvt31l3mqEKGiEnfoaKNuR8Ii/GhrHCb0=;
 b=Cb3k7qTYEq+BzZTIpESkbV8UQhEjMMfgrXK6+q6jIZ6lZ/FD83b4m2Cc5+d/3Kz8rf
 +1rME0s2s4mRDHl5Uc8e2VeTze6nQn0QFxIbmZdcWA7iZeZG8G5LrqxWEV2k1STiX1g1
 PtWIQZLLsDv7v9GWMOb7Em58EV6VT2dDc9li0FMu6XCHD92GmePrLFVWHxJFPE+MumYq
 anfCtfMUSn+KPsXejDa9tlRLNVnpXkeON3+wCV+fWxzMCS0CV0kDKFGS66l3+upa36eb
 kSdzl0ESEz5aaA8Ly+POGIU8sD3ladsqW/gF5s4VGDxAWoULseYtm3PZxlXzARJDDSeQ
 oSPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x0se5PsWKgfvt31l3mqEKGiEnfoaKNuR8Ii/GhrHCb0=;
 b=NFoIwcByBwTlyGZL0bs/0cxrlXX+pRjTvPTXtCx9aKIH1ij00f09D4PDBeyArrMVfx
 6RRPKLRpgpZKsIHaetvhgFq5yXvhXw6YyGrO0GF9purbgaqw5bRts1cF2Z/pKkvtohJP
 uugRS11mZs3Rnje1E1LelaMqwEowmuBFETMYJkEDYiNb2sO9vfJcZAJyDA6ptECpduaq
 s7c0r/fYhUrBBLjwCjn0qY+kJfRgGLF0kkZ051bWMGPn+V/295YY1gxcBVqV6rJli2mA
 6CsxRUHCBGWRDP57RL+wVumblQhF0/VwWIx8GFkB9cKKta1zxrQfrJcMXevE0xvGJ+pc
 v+Wg==
X-Gm-Message-State: APjAAAUWX3rgsNE7KQQKxBPDU5LAbW/07xJCaPaZn2Xpa6LexU57hiTB
 VPcEmT222zyT+eCAOFO603O4eCce
X-Google-Smtp-Source: APXvYqyfbPI9bgHRb8Atz6VGPe0wOtNnReQyHgWRrgoN+moHJ+YqxTkMDq9s4T0wfpoo6b9j5ETtyA==
X-Received: by 2002:a7b:c5d8:: with SMTP id n24mr6796728wmk.124.1579301513296; 
 Fri, 17 Jan 2020 14:51:53 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id l3sm32829387wrt.29.2020.01.17.14.51.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Jan 2020 14:51:52 -0800 (PST)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 3/7] ARM: Disable instrumentation for some code
Date: Fri, 17 Jan 2020 14:48:35 -0800
Message-Id: <20200117224839.23531-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117224839.23531-1-f.fainelli@gmail.com>
References: <20200117224839.23531-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_145155_270787_B432EB75 
X-CRM114-Status: GOOD (  13.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, alexandre.belloni@bootlin.com, mhocko@suse.com,
 julien.thierry@arm.com, catalin.marinas@arm.com, linux-kernel@vger.kernel.org,
 dhowells@redhat.com, yamada.masahiro@socionext.com, ryabinin.a.a@gmail.com,
 glider@google.com, kvmarm@lists.cs.columbia.edu,
 Florian Fainelli <f.fainelli@gmail.com>, corbet@lwn.net,
 Abbott Liu <liuwenliang@huawei.com>, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, kasan-dev@googlegroups.com,
 bcm-kernel-feedback-list@broadcom.com,
 Andrey Ryabinin <aryabinin@virtuozzo.com>, drjones@redhat.com,
 vladimir.murzin@arm.com, keescook@chromium.org, arnd@arndb.de,
 marc.zyngier@arm.com, andre.przywara@arm.com, philip@cog.systems,
 jinb.park7@gmail.com, tglx@linutronix.de, dvyukov@google.com, nico@fluxnic.net,
 gregkh@linuxfoundation.org, ard.biesheuvel@linaro.org,
 linux-doc@vger.kernel.org, christoffer.dall@arm.com, geert@linux-m68k.org,
 rob@landley.net, pombredanne@nexb.com, akpm@linux-foundation.org,
 thgarnie@google.com, kirill.shutemov@linux.intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Andrey Ryabinin <aryabinin@virtuozzo.com>

Disable instrumentation for arch/arm/boot/compressed/* and
arch/arm/vdso/* because that code would not linkd with kernel image.

Disable instrumentation for arch/arm/kvm/hyp/*. See commit a6cdf1c08cbf
("kvm: arm64: Disable compiler instrumentation for hypervisor code") for
more details.

Disable instrumentation for arch/arm/mm/physaddr.c. See commit
ec6d06efb0ba ("arm64: Add support for CONFIG_DEBUG_VIRTUAL") for more
details.

Disable kasan check in the function unwind_pop_register because it does
not matter that kasan checks failed when unwind_pop_register read stack
memory of task.

Reported-by: Florian Fainelli <f.fainelli@gmail.com>
Reported-by: Marc Zyngier <marc.zyngier@arm.com>
Tested-by: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Abbott Liu <liuwenliang@huawei.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 arch/arm/boot/compressed/Makefile | 1 +
 arch/arm/kernel/unwind.c          | 6 +++++-
 arch/arm/mm/Makefile              | 1 +
 arch/arm/vdso/Makefile            | 2 ++
 4 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/compressed/Makefile b/arch/arm/boot/compressed/Makefile
index a1e883c5e5c4..83991a0447fa 100644
--- a/arch/arm/boot/compressed/Makefile
+++ b/arch/arm/boot/compressed/Makefile
@@ -24,6 +24,7 @@ OBJS		+= hyp-stub.o
 endif
 
 GCOV_PROFILE		:= n
+KASAN_SANITIZE		:= n
 
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT		:= n
diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 4574e6aea0a5..f73601416f90 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -236,7 +236,11 @@ static int unwind_pop_register(struct unwind_ctrl_block *ctrl,
 		if (*vsp >= (unsigned long *)ctrl->sp_high)
 			return -URC_FAILURE;
 
-	ctrl->vrs[reg] = *(*vsp)++;
+	/* Use READ_ONCE_NOCHECK here to avoid this memory access
+	 * from being tracked by KASAN.
+	 */
+	ctrl->vrs[reg] = READ_ONCE_NOCHECK(*(*vsp));
+	(*vsp)++;
 	return URC_OK;
 }
 
diff --git a/arch/arm/mm/Makefile b/arch/arm/mm/Makefile
index 7cb1699fbfc4..432302911d6e 100644
--- a/arch/arm/mm/Makefile
+++ b/arch/arm/mm/Makefile
@@ -16,6 +16,7 @@ endif
 obj-$(CONFIG_ARM_PTDUMP_CORE)	+= dump.o
 obj-$(CONFIG_ARM_PTDUMP_DEBUGFS)	+= ptdump_debugfs.o
 obj-$(CONFIG_MODULES)		+= proc-syms.o
+KASAN_SANITIZE_physaddr.o	:= n
 obj-$(CONFIG_DEBUG_VIRTUAL)	+= physaddr.o
 
 obj-$(CONFIG_ALIGNMENT_TRAP)	+= alignment.o
diff --git a/arch/arm/vdso/Makefile b/arch/arm/vdso/Makefile
index 0fda344beb0b..1f76a5ff6e49 100644
--- a/arch/arm/vdso/Makefile
+++ b/arch/arm/vdso/Makefile
@@ -42,6 +42,8 @@ GCOV_PROFILE := n
 # Prevents link failures: __sanitizer_cov_trace_pc() is not linked in.
 KCOV_INSTRUMENT := n
 
+KASAN_SANITIZE := n
+
 # Force dependency
 $(obj)/vdso.o : $(obj)/vdso.so
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
