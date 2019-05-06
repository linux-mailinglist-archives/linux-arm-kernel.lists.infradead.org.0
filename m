Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2592115158
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:31:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PNPVPtfuri11g8lEvdTlY7LOW+ftmOgdR88R1RnlPnU=; b=RdTLNfCfP1EgCp
	3uS7IYrhN3FgZhy5BhDEhFPMKboxrsdkLxzNR0YVjR3izdHkxLddhk5t69zCmp7OVU+GKkcFVlzCf
	Kb0Iah2JdjApui5WMt4kxf11F44EPuTDgx79Z3l+qx08Ezwr0tcdZYo0q/IudIrvFiAjOdLto5XLz
	eFjg8YxEg8G99zFsXkX0Zb6oYw980D+FTPj2IIm623xgFRxdTBW9qCa8iSG57qj9prtyz//FbuoFs
	cBNtjL0i4dOcQc505edJD3iMAOemNI4OBVoW7S1RX2fqDoNksjdA6/alzVA4fU9iEFm6X0bbZEgjc
	aDLOyxFRrB66Pd9YLitg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgWq-0007CP-JT; Mon, 06 May 2019 16:31:48 +0000
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWJ-0006Yd-C1
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:18 +0000
Received: by mail-ot1-x349.google.com with SMTP id h26so7754250otm.19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/Xcm/dv07E6tB6Fg+Bd1uLrNx0q2WagwUZqys5y8XCQ=;
 b=rAOt6QkMD/QKlKVog82fKw84EsQnaASzO/nI8W5EIDbrmmjV3gr6+15mZ10SMb6Rf5
 i/ZniLNvWV//CPRfADxSnSKtN/6Gg017m4Gik6Cenllh7RN6CfI/AKj72maW2yKQfmpN
 GrE1GcO1EKZaX0U+I3FWYiw4misL8V2knxuMTZnhd7+ifYq/drNNa4087ayYcqsu4RzV
 YnDg0sSjmZfX/PgQJ/vdVYIZT3u95MTKmAQy8Dfp2UhL6OXfBsqkSnVsPRCgY0ZcNTeM
 d3f8I7eWT+VKLfqWWZufhZUUDge/eC39ycIbKQ1fqVyQEg05Z5H0MBzHuW0wC/j81BOZ
 a7SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/Xcm/dv07E6tB6Fg+Bd1uLrNx0q2WagwUZqys5y8XCQ=;
 b=IJeYNn+lTuS9+5CK26LYNWT47Xzp3yAcKn0FwrJGf69xGUNtfGadUTYKWXTuW2BG3J
 vrLk0reWQMNxJDtEOsc738X9iw84ngee7Zhg1Cdi0+TfcCXksBG6U8hdiOV6KwFid1Ty
 psWObHINZilO22kewK5lOi/+Aok241T6uXtdCsZLetvvd3/8FQhwxKgNmdBvrlyevN06
 43IFZ/6c7VaIdTxUGPGzm3Yddiee2AodZw0+HcULHtj7GIPh6GQxbbdbSjsIR8fqeyYZ
 g2rONJxU/MkG25Db3fQCNxNkonlHaW7rXAGw1mR9EDllTlAiS/xd9MyaHjyoHMyNDtgz
 tzew==
X-Gm-Message-State: APjAAAVlbhVoYcHbc99uCMpX90i5DpjZMhyiDjPacFiw2HjfL0fa3RGM
 pn0GKaSVOFUs6HEYtFwZ9c3bZ7HUWH+OR08X7WBZVpLcsOstWTeHUzh+CaVpMy9wwVgwRw9zVCF
 f6rB4aaa1j9UhRg5cyMqLHTlZKeZ9l+KrUKtnYO0snISONVP9Jv9YRFJqMO6rnHfHjGQgpBvcOF
 KzfKuj1eLb5WkF1bw=
X-Google-Smtp-Source: APXvYqwsU29/a5rUuddp5tcfbPS3CQhzs1NWwE9FVJC7oUUpeYui7bu7Qsrr1jpZGFt27bCra6fHy1EBLcG5J9Rk
X-Received: by 2002:a9d:4917:: with SMTP id e23mr17423724otf.63.1557160273461; 
 Mon, 06 May 2019 09:31:13 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:48 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <02e1242715cc1bf23a139e5e8152fb4feaa4b41d.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 02/17] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093115_695322_12D6BC2A 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>, Lee Smith <Lee.Smith@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
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
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
