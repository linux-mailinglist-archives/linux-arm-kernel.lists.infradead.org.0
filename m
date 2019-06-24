Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2942D50E3F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVmJIvy2oLram4L93wsLSqoOAv6ruKGkd3OyD4oFfG4=; b=jZXPkYTJAmHUtp
	d9gRIlqbDbW4+2Xc6yhJZLAcH8irHnWoYUWladEEFfn2uM0jLExlU+x0jGJ1IEojwkfUJXjR0axPW
	yR0oWGvTDvnv+hWezdWspeHGn/S2tLgrUEuM7hLMx/6vXdWGr+uyZccW45N2PD66ukOpQ/R1wgxeQ
	kPSfz7QcMJ+A3mUTxRnJljBBsooF9pQSFwbFnyoh8xherLUDiKOz2aU6ERgxXCj63JWhGE/g1zykN
	ft5paXbOC0awaPj1bWuOJdrGOHctUBbGC3tFdOjAIG8h3kG2PWny8hVKWXwCMufKCGpoCp37LGYFW
	aEtQqce+ntOQ5VrHcuug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ2e-0004Yf-1G; Mon, 24 Jun 2019 14:33:56 +0000
Received: from mail-vk1-xa4a.google.com ([2607:f8b0:4864:20::a4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ1t-0004FG-Fj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:33:10 +0000
Received: by mail-vk1-xa4a.google.com with SMTP id p64so6452742vkp.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:33:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=OFC24w2VYFjptSxPqCpbBEqhaUlc2rZ4vtg/DxWHKUY=;
 b=daRRCGEXfLHGLUQo//HRDLfqaBO4lfL42FrfPGRnRKOhn1XL6qGzvLE8amzWfXer5a
 WhALrZBTuSnnuN10/CaZpZqQ5oMU4MQefeNJm/AP0b4uEXgK32RunU93durvNp8XKKHL
 uQfK0a3nA5oC/DUYeVxUqLVQFd9uJpb2OtV7FV9mAWqDzJacQiBSNlyVGMSQHbzkOff3
 MC+xIW6PfIq1tVQloxoUTZ3GncOdewoLB+fLV/jb+kaJgM+7s5iRXhY273LkR2goOH7a
 Ap1pVnJAk4onxG8CZjucr85/ku+lb+LecGyuZhueMHSpk8X8CCgAIxuGrhQgzxcP8FnL
 C2Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=OFC24w2VYFjptSxPqCpbBEqhaUlc2rZ4vtg/DxWHKUY=;
 b=Mj+P4UdQqjQQ3Dgf4u1BfBoA65BSdJx1inf8nEqu8toZh+Q7cQMTKyPRGAvqlZZFiz
 s5bXN+TAfKB87AtBzkHmq+7XTXtGUFjleI37dWu0RMTrAKKuFz0jiiZbndo2MVesx+PK
 Cjd/quh928xs9Va744PPAPNqVvnkoRFuSddEOLoPIarIMxa++xQaZRdrhKoXvsOAW+Gh
 cQ+IMmp3UVvYtgKUc3/37MdovsGl5xOargudo3cED4YHBMGDaTyD/99sWiVYRUPosSJc
 gJxijzjS0g0aMd5X6UPZxS7DWa/fefpbJB73Hvs9eLy9KhvlK/Qw86ELHUsuZHEM+PAG
 qXNg==
X-Gm-Message-State: APjAAAWsAht11WEODvQGj9zNiwlpfkg2zJ/+BLPsuJxn2ktq2/PdGKbC
 dZf7p/mS4/4fPP/8HQaeZwpn8MxIpYfj0etVZYAuTrH1u2bciRxUU3zeZtNTCeUIhxc6iygL4Nm
 gquTeV/kDdRCOFPpEgchR+IlRCu5Ob54F/830+hwQQBspIU/YhPmUMCnW5CLKN+2Siq7j7iemtG
 FXS/KAuzk4KUiwuBI=
X-Google-Smtp-Source: APXvYqztHTWRHYOC83H4IfNbENBsJMJpCmuVpe91PkFE56CWhu5KbIzw0hmUvviWu8/4yX8wEpc7iI+Lm7IC+LHT
X-Received: by 2002:a67:6e44:: with SMTP id j65mr66559877vsc.132.1561386787480; 
 Mon, 24 Jun 2019 07:33:07 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:32:46 +0200
In-Reply-To: <cover.1561386715.git.andreyknvl@google.com>
Message-Id: <98cbd89549395d372a4a20ab2ac536bf19d37e52.1561386715.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v18 01/15] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073309_524907_7096A9FD 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

This patch is a part of a series that extends kernel ABI to allow to pass
tagged user pointers (with the top byte set to something else other than
0x00) as syscall arguments.

copy_from_user (and a few other similar functions) are used to copy data
from user memory into the kernel memory or vice versa. Since a user can
provided a tagged pointer to one of the syscalls that use copy_from_user,
we need to correctly handle such pointers.

Do this by untagging user pointers in access_ok and in __uaccess_mask_ptr,
before performing access validity checks.

Note, that this patch only temporarily untags the pointers to perform the
checks, but then passes them as is into the kernel internals.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/include/asm/uaccess.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index 5a1c32260c1f..a138e3b4f717 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -62,6 +62,8 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 {
 	unsigned long ret, limit = current_thread_info()->addr_limit;
 
+	addr = untagged_addr(addr);
+
 	__chk_user_ptr(addr);
 	asm volatile(
 	// A + B <= C + 1 for all A,B,C, in four easy steps:
@@ -215,7 +217,8 @@ static inline void uaccess_enable_not_uao(void)
 
 /*
  * Sanitise a uaccess pointer such that it becomes NULL if above the
- * current addr_limit.
+ * current addr_limit. In case the pointer is tagged (has the top byte set),
+ * untag the pointer before checking.
  */
 #define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
 static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
@@ -223,10 +226,11 @@ static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
