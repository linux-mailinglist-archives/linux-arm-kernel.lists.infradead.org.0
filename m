Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EF633564
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:56:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7loOfo+NF+mGjTgxWwVOe/ko4DE52ek6T0Y1kA4/s8=; b=E9HjsJSw8kFzV0
	Ti2yLYGAjpXnXtSPckGU2hsYm1XvG66vcq7uDUxr/cyK95MwjRgluCEjlfGikYPBZLHn6eZ1JyQpt
	KgaF0wpp5umeu+n/FIdnSuAljbIFOWJA9289r9b9piq/EE30CtFOKYVSAPiU6Hoy4tvFjfRTpqni+
	OLpMqgq7+UKNv0ewOjHkBt3UpFc8DKdzNOZr39YLvJipnjYfvqelWzek6ppcZLbgQLnjXAfAbYIhg
	c6H01fRVCYiEaJe2mniJJCLav0NLUVcHAHfZanzOQ1geJP8OIsziIt0Mcu74N8paPUi479bkT6FgE
	T6tKG8u6+yCN5xjfNzgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqFa-00005t-8N; Mon, 03 Jun 2019 16:55:58 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqF9-00086a-NZ
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:55:35 +0000
Received: by mail-qt1-x84a.google.com with SMTP id z8so8120259qti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=TMNTkBlmDGgOOZrctIfCYuVqOYCJYB+OoUZL57F6fkg=;
 b=KWmY1/MTf2lCSA8LP774r8p0/RElUafoWRXpiTV5M0FssBvd2DR+JnorkPH/h4Y5+f
 yR9XiiiNdq2i4QfOjofZ58b2UAQfK20Q+cucasNJuK58SVUF0twT9Bg5tEaVarSUnpM0
 CkXfb2ETfWkZvMjhhmX2MfDgGW4xKH4IotNUPi45ZU95oK+BdGaJ73sBg/cX0kzx4m8b
 MubK1pKIg9ehFkgM51KidZa6DmQaV4zELWE1kuJ9QUfecA/WQ31VKLS+QtHdLvI4uobs
 geOOZXZ26xHTUKbG4mCrjgzhEEUQSTlmmrjiggpRSIEqoJXM210SSB6rrtJIQUmyJUQs
 1hHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=TMNTkBlmDGgOOZrctIfCYuVqOYCJYB+OoUZL57F6fkg=;
 b=rCk9YoiSJirzQwhFjTx/IlWFoy5k2cBPJfFA9bKh78P5Xn1VItnf1sS3Wt6FZSUOhU
 S4nbrWH/VHgKK6z9eJ8yf5xDYyHvc0ddD/2xFx0O99P85IWjSNC+cAB7v+eVqt4sRYBk
 A1ogv3P8CRIX+dqxadu1MAScJvu6DkJK0x/WH+Kh8zt51bccY/YnwiNcRiaaQzGs8wq4
 DgMm1omUlNG7XCXChaVwsyUSMrL55DdsNiLVtjeBqUBbcwRo4aed7nk8lB/GU+3soPg0
 +MWTlFCQcq0pe4YEzWTTZrKDai/JFV4Gr50WHmGlM956WBYQAeQ7lB2I/h+HR/9Jh2qe
 gtEA==
X-Gm-Message-State: APjAAAW3I1fK2FN1FmUenC3B2WuiKJ/tUlYDfS46mZU6is9hWF5yIkEr
 jVqwBZdvKuLfQt3LZdb/a8EkiedWVCzb1VkbxN/sBS4MA4jwHaLm9h9JsJQ6zwImUXmwLWXqP+E
 d2hFcag3Qww7KKAE7BowLoqvJfQpvrPNDp7vV0nKpPpa32lliFM/9zjGOowko9nO/phhBT0ILyo
 +OUU9UURgalKXpEIs=
X-Google-Smtp-Source: APXvYqyPiXiZoks5Ggp2WbCYXPXwRsXJyBinTtF4q2J+DeL6YZqEYLLUcsyCdMKT9rkSKMCpecR3goEaERoY/ZM9
X-Received: by 2002:a0c:d013:: with SMTP id u19mr1987564qvg.136.1559580929777; 
 Mon, 03 Jun 2019 09:55:29 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:04 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <4327b260fb17c4776a1e3c844f388e4948cfb747.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 02/16] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095532_018293_DDFAD3CC 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
