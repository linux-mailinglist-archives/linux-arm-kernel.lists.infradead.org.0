Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E043EF9F3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ubEaMVWSkZ8NhQYLE3idt+IrPrNScaoGZ5wxrbiGctY=; b=kd/XJGuldSpPr7
	WXL8fndpY0YfkfxJq2Dr8/so8MHjhjQBuqrZVimdME2L+vVvQgrgV63HBtOKkLYrmQ8iDQitdlWet
	xWMP9pqvyGqpZFTVKuU+ZzoG9iYH0006vKh5JQZLCdn58OzLkOIGl4wbIDPDLR5o7X8AhodlqGm60
	ds7/FC5k/A9qz9Pf/lS1hmVI+GcRn8g/Bu967wgheBbwyRDSwiDCg3VljSylCGPt9b70Z2WA9gUxM
	hcFhrzyNJpYZS8OQJ00d2VYIl052LsO+n5KL589HcGMnnQXyfL7DsR+ZOC5zUNvx3ZsvE1y2YGBx4
	104JCeD2NI6fXQT6fV/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSlk-0001yl-Tg; Tue, 30 Apr 2019 13:26:00 +0000
Received: from mail-pf1-x44a.google.com ([2607:f8b0:4864:20::44a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlB-0001UI-Rk
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:28 +0000
Received: by mail-pf1-x44a.google.com with SMTP id c15so4542410pfc.14
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=IkuD9zPPDPrNqKOg+1EuZo5HlTMskU88lY/hO73XGBQ=;
 b=cjAZo1bevEgDG9f0Gp0lCqBUDVGf7WH9HfahHvPYK3yXKOMpkTJl6c0Qs/+BaViS4F
 SVbEHv0pbmF0M0fXn45Xz+XZ5NA51A6Q84gce81tqYq+4vQ4fSd4Vfr74XM9VMTqpEUn
 hpbIVHi0Y6E4lGzikQQHuG5LSWrNkshsuGLGjPRywGWJWT4PFmQUF2llhQi6ncC/Vlfh
 XyXZ2xzPVmh+mASSDoCOMBPHpUNh2v+x16jbihEdr4DI6v1V/jUL7ilAE/v54hqYIVN8
 AFB4b6bLnE3ptsM0NTOpxh1giv5Af/8Vei/jZ/b9XgJhABJa8DnBXyZnippbFF98erxD
 64TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=IkuD9zPPDPrNqKOg+1EuZo5HlTMskU88lY/hO73XGBQ=;
 b=Cxqy3B+zh5EVMpdKKt4kUhM4D527FSX3BnzQ7phhU8Ttyhlcc/q7kuehxaaix1TLcv
 cA1B2kk8y6uKDrbeq30/oDkt8AGbiVfZZOrh2bjO3zWfvvg7V2sJMJyWOBfksv0zPWkU
 3lAWcduQNWXl6onvjRBLM6Cxz3y3UYtUmU7yEPmJoPFRrZrQxq0xdO00HC55Mo7hkKfr
 FlByezj7XGpH2WGEDyaLM7VhrSBuGDe60nTY1ui4puORMmBxyj0lmK1dXqDlvF/i0md1
 9dX8KSdYk8HS0Z5fw5Vi6Rd3+7v6czzf5kaZGy4mOWC5qByp9DGl+MlGRbkK62IPYu2x
 PQWw==
X-Gm-Message-State: APjAAAVVErmO1xTLitBU0YaD6M3m5curskdVZ8OnEkfnda/t9M/7w5lL
 nQAyOu9Uvz1c7qUof/2yVl+OwxVrdhK9H7eUOvyDzCr/wSYDC6+bNLxf5Zxk1a97e3MH+29JmF2
 ND0uW3ZCzuBYSOT6eC1NimSryEl8E8vz5/AL4xAMCCNi94StFRLcsP3Fhu1Kyyt5zw2SgrC7Npt
 EJYMcNpeiBFYj50Vs=
X-Google-Smtp-Source: APXvYqxwzeO4aaEq5t7dlXsyLEMZLxNA1xUAM/PWlhFhSshLHzTvKlXrQBr9Il+4R5AJQuOw/QR46XMvR3q8fhhC
X-Received: by 2002:a65:534b:: with SMTP id w11mr7522791pgr.210.1556630723459; 
 Tue, 30 Apr 2019 06:25:23 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:24:58 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <29b7234f48a282037bdfc23e07ff167756fca0df.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 02/17] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062526_057432_C02D0FB2 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:44a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

copy_from_user (and a few other similar functions) are used to copy data
from user memory into the kernel memory or vice versa. Since a user can
provided a tagged pointer to one of the syscalls that use copy_from_user,
we need to correctly handle such pointers.

Do this by untagging user pointers in access_ok and in __uaccess_mask_ptr,
before performing access validity checks.

Note, that this patch only temporarily untags the pointers to perform the
checks, but then passes them as is into the kernel internals.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/include/asm/uaccess.h | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index e5d5f31c6d36..9164ecb5feca 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -94,7 +94,7 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 	return ret;
 }
 
-#define access_ok(addr, size)	__range_ok(addr, size)
+#define access_ok(addr, size)	__range_ok(untagged_addr(addr), size)
 #define user_addr_max			get_fs
 
 #define _ASM_EXTABLE(from, to)						\
@@ -226,7 +226,8 @@ static inline void uaccess_enable_not_uao(void)
 
 /*
  * Sanitise a uaccess pointer such that it becomes NULL if above the
- * current addr_limit.
+ * current addr_limit. In case the pointer is tagged (has the top byte set),
+ * untag the pointer before checking.
  */
 #define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
 static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
@@ -234,10 +235,11 @@ static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
 	void __user *safe_ptr;
 
 	asm volatile(
-	"	bics	xzr, %1, %2\n"
+	"	bics	xzr, %3, %2\n"
 	"	csel	%0, %1, xzr, eq\n"
 	: "=&r" (safe_ptr)
-	: "r" (ptr), "r" (current_thread_info()->addr_limit)
+	: "r" (ptr), "r" (current_thread_info()->addr_limit),
+	  "r" (untagged_addr(ptr))
 	: "cc");
 
 	csdb();
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
