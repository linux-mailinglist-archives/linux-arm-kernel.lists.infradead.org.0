Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1BF471E5F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:00:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ouIUGUhXfNeFV7uhmI9L02uY+xhcQpfq5Ifo0aqjchs=; b=escxmhzbY+UiHp
	c/DnOBpgJIdDdoZIQZU/dDCLcdcJSwYW6+8K1HQZ7Luh4XK9r5IGEsyd20ZNkin7O4YzykU/rBVSm
	NOsgPKsWeq7Q/Ns9ZDXL8YDiwH1PwPpGniAH+oEJWfQ+6bWI/zcnk16oTiKaoF2TBD6Lms32FauP0
	lIuj43V1FzN6VViJ/GMeivs5O6Fh3lDV0c67Ot72tFK0heYs3iDWy3IGeaSrSjo1RgrARmKH94VGj
	6irM9FefO/HVleoXNbHxvsWLjLZtshK82pYyrLh9I6PVUgHqx07rrRq4rLq07g7wFEz6XAKYa/lgX
	zkk6zaE2MIcPibLOlhyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz5H-0005sH-O3; Tue, 23 Jul 2019 18:00:19 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4B-0005EU-NV
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:13 +0000
Received: by mail-yb1-xb49.google.com with SMTP id f126so33620697ybg.16
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=uxuxpoqA/C7rk06bc2rM9al5Hb55km4kp2za7lpV0D8=;
 b=gvBkOkwzaYNLh+oGcJAVB7MjFm6ggJ16J7ZtFWSs5smrgxbyTgnFANakPKwfHBaKJo
 Z3AeBj5hFUm+GIYoHcLDXyEq448i3WGfVM80s/ZYt3Ff7Lnffb2whFy1iyiq0vNB8tme
 ZgEAhcj6PmMNwScnzwOlSrD9vrs9BWD5XfY+Jc7tfz6fIGBdIIOc361XhF1FnJ2J5gIc
 R3XqyRsgPc72AURET11IAyvFYp4TC8kAAhKarnjk3baGMHuxZXMV89tXjZO+C8I9PfEc
 YEGyFP+vd3pK7Yts8v+bEOrkzxv2fC0rSmwv0ECVx3Gypru+tBZwBnoAh4W0hQ7k4cn/
 8ScQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=uxuxpoqA/C7rk06bc2rM9al5Hb55km4kp2za7lpV0D8=;
 b=SbyqpWwvfR/cisU5DVfh/f0FVoATm/d05I0N4TqN8rliPbnLN0Rjvsv6dN8vLTfxrg
 lnjeanKzgq6MN2W3D7XdSByxpsDtKqDLkVtgbnFLvCeumgq2BP6HvPj44Uk0U54ztW+G
 XY72BSGxEULzwLrngsoznqxIkX3DsqV2hVe9V106+OCLXMxK9A3hG4uO8qo8gaas5d37
 1i+hKG0BQ4HG3/g43I1ktAl3cyGJNjhM2auWtCcoJSF6kSpUsFkRpTVX4GThwdQxc0Cb
 VLgQILg0wtbr5upM1hELbVzgrDRUYNIq12H5BB6RbjHkrw090aGTTHhV2WgC3Ii+eiI1
 IfJw==
X-Gm-Message-State: APjAAAULZ/k+G+FGp0rEpI2GnPOgMF1nymni0cLbgT33UAdsldf6zeAX
 wEsP8K7eWItb+/3iGrH5h+iXE191E+99uK2Zupm1iKhrL+GsaUbN0OecP59vcO2TMfJi4TwJKjC
 KZvLJrjLJlExb6Hh0x8MrsU8kxPJic36A1RcsiF67z6VZ/T5M9n49yu5kHt/LKbCtfeMT6TNFYu
 zLWex5G3h+mmqCvco=
X-Google-Smtp-Source: APXvYqw9DwaHVI19t/YbteMrcIZMKltNbSnI88dDsWcfp8XIUhxn9zscDjBOZxYqaezV+ZapgNfd0Az5q5SxMU+h
X-Received: by 2002:a5b:951:: with SMTP id x17mr48178059ybq.511.1563904749116; 
 Tue, 23 Jul 2019 10:59:09 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:38 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <bc53284e2c95fd5b65809a1fb8169d4c1618c61b.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 01/15] arm64: untag user pointers in access_ok and
 __uaccess_mask_ptr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105911_924388_D13DA431 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
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
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
