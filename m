Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 000BB42448
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:45:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S1l6ga1TcxXrDowT1bVlcht72EIfCZWnSiwiDPUF7ZM=; b=dnSGm9kOd2UEkA
	Kv1LyAqaoIf28RMYw2qPOrgUvYDWXl0PIUjcevGE6lKjx5ygiIfHV4FnY3QtYc2/6H3Mi0n1l9ycI
	r+V/6QJBeRDeL94Rw6b+aBx+cc+P9wbjarHAEwQeVOMG2bHwd4d7uaAi02r25aiYBM3MbAYmpUDps
	wLjzILoX0p8JUSWplzuCFcTQlyn8ruJ2OhmVPrg/4NjBR504jboe6iKGTGoGyX22Yx6X3xJBjoxCJ
	YZOy0YiKf4BetcuHowPJ5+g4WmlQXLv39ul6hwo78PZz5ZiInZUgdOqT3x3qybDGuVQmiohNeGC7i
	NSssyzU2vKbuohfiAKcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1gh-0007e0-IK; Wed, 12 Jun 2019 11:45:07 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fN-0006j0-Kq
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:43:48 +0000
Received: by mail-qk1-x749.google.com with SMTP id v80so13530074qkb.19
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=pF1pY6g9sgHe6SSJdZReBxN/hHHz/1mBqQ4jLohhQOE=;
 b=iMRCrqRsfaLBvoWwOfr75mSJ/VPfvlbAFbDtrOANqSuL+z1aGCJpTI0vsQBJ49zvkV
 9E9fBJ+sa0296EIJ5umEi+BHGLGKU1WldUfLsc5lzjtqovn6xo5wnnj4Lmb0O9PgfLXm
 rcwLyJjNEekU9EtCutlVconxtA95VHk5TlDWuAVOA+JWDgv52TV4yWWRYEX7ZgqRnURM
 Eul1F8JBswSLtsZ6lUMRapd1H2weXhkqX5JahODOopa1MhAlxblNV2Op319cxPCbAAUf
 9L64VhEstL8JTyQhso+M/6lNjrHhHWa2qS+F7je7+fvMkiPQ8oGbPBPAqN2Cie9HgxaI
 uOrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=pF1pY6g9sgHe6SSJdZReBxN/hHHz/1mBqQ4jLohhQOE=;
 b=eZVCA9wa7HFGJ77N8ZbalMdME+Q8ZPog6q51dbbVqz8gZEdk4QNHfMktjadUlHWUL8
 BzAHcJM1croqcScMH5Rd8jItghwCtya1GxLU7+DQAMEaoqy0DLp/jlZu/PfdBXVx8lUc
 ByhH5/bpHxBvkzobecKY0NI9P3nChIYk5Ko7WSBCFB8c4cP/t06FLFMnq0EtuHJpsI27
 0G9E/vlGz+EhyaVzQuVHI01ebUqCQwx10NB0uMygf8GltShFQyfIRNhhsDpWXcnauoxX
 GlauQvwuwkpOTxmRx1zEOXD+UlrMF4o+dlR2oNVwE1lS1ncRZH+dN90iDBfuV8LgDB/w
 o3Cw==
X-Gm-Message-State: APjAAAXVq0YwsDiL3LxbNDQ7kn6prMhmmnnqz1+C74EdhxGul1nVQUpe
 cRjFiScdnAAfJm7oZhvRaq7p3DTsxvbEzipXlK8Xy1g9sDkMTC4L/0y7O8A1QBX3G+Trd6sNrOo
 TgHKdQgHiQNsmThuA4Rfni3bDeAlkWgEcmoFssVKGjr0uQ9XyQuQtoRyZhNvDOM23lezM0uwhpw
 22Zfx/R5tdKdarO6A=
X-Google-Smtp-Source: APXvYqwDKTUvtDmA6SMmQkKz65W969SZufp61k02G9fCL+2/fp67qf94d2M1YkNH+hXtOrCQMRSpsi3TuTa5t/Fk
X-Received: by 2002:a37:6b42:: with SMTP id g63mr50597391qkc.80.1560339819968; 
 Wed, 12 Jun 2019 04:43:39 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:18 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <9ed583c1a3acf014987e3aef12249506c1c69146.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 01/15] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044345_681178_EA2CE3FF 
X-CRM114-Status: GOOD (  14.30  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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

Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/include/asm/uaccess.h | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/include/asm/uaccess.h b/arch/arm64/include/asm/uaccess.h
index e5d5f31c6d36..df729afca0ba 100644
--- a/arch/arm64/include/asm/uaccess.h
+++ b/arch/arm64/include/asm/uaccess.h
@@ -73,6 +73,8 @@ static inline unsigned long __range_ok(const void __user *addr, unsigned long si
 {
 	unsigned long ret, limit = current_thread_info()->addr_limit;
 
+	addr = untagged_addr(addr);
+
 	__chk_user_ptr(addr);
 	asm volatile(
 	// A + B <= C + 1 for all A,B,C, in four easy steps:
@@ -226,7 +228,8 @@ static inline void uaccess_enable_not_uao(void)
 
 /*
  * Sanitise a uaccess pointer such that it becomes NULL if above the
- * current addr_limit.
+ * current addr_limit. In case the pointer is tagged (has the top byte set),
+ * untag the pointer before checking.
  */
 #define uaccess_mask_ptr(ptr) (__typeof__(ptr))__uaccess_mask_ptr(ptr)
 static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
@@ -234,10 +237,11 @@ static inline void __user *__uaccess_mask_ptr(const void __user *ptr)
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
