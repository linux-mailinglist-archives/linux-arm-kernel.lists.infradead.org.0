Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B93015160
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:32:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3I5OSwlAyR6yqX0xyRe5odDyWt1Hra4ZB8pwLkGoC1s=; b=mZsogpWTtNbgzK
	0jpWqXSXGBpBDA4oct04TnxJ2nptTWzGpZ7JffYV0jUVqy5cVsC1WyAmWCxyzGxNMrSeXaD8ee/kl
	4Deu5SsW5TK38Ww4gyIzM0M1qCR2DYG4d3jK72C+pIg/SO+z5FrK+lsCjLSzV6v1m5QbTeYmB/Kn2
	s5JkOVYbES30G84cr+73Vj2i1a5V/0bIFveu++9DYfe8lHkuNTG3xslRBetzw64xkQRMS3z6c4d6n
	F2AQxkfhYEVJ0eXbq0h194KF4vtoNSC8b7RUK0xmQAohxwo3CFYV+rRiF84o91CrVqZptY0vXLtHa
	snAN+I1ap4OVBUvg9egg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgX3-0007Sb-GG; Mon, 06 May 2019 16:32:01 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgWM-0006cY-LO
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:31:22 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id 201so26168212ywr.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=x8HMVSO2lCP9thpVq0jteC8wa+ruR/qG5sfvMEzcSf4=;
 b=e90YIYJEqCjuv0dQNXe7JfByZ3LYw/uoix1gLG6qHxakrZEGoit4yh6fTDsfYia+jH
 wb7igUzrFQvpjJl955zqS3eb64AMNM806CURkcixGS6z1rzCJzMGBiAz82rRhlhjgKjR
 9cdDyeo/3JMugM0eGAxc56H2X/rF/Gu5NZJ6OlTvycYfBxRjWeovYDz5GGyc2/popU6X
 Q4rJTvbhNlqr5zqGtmKCjWUttV6dsKWcbk2qBw0aV1In8VLH8mRF5MiPk8iCO4KWMnPF
 BSI3N1BBXtSHWlnz3+Iji+1TK5JldUspg0pnnlvUCK4PaDa6c2GsK9cElOVCY5yx3kNx
 bcTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=x8HMVSO2lCP9thpVq0jteC8wa+ruR/qG5sfvMEzcSf4=;
 b=pbnYx2VLzg/qAxnNkpb9pe5R4FVdSNSohRTYSZiwAucU+PreHMLxh/Vgb8aSV/XxZo
 c1/ilPk9WCwXN6vnEUS7n76icpxqDhZKTDXpKEA83j25ZN9xVW8wiS9f2NBhls0LgZlO
 IF2FZNsPEjUj9sAviRVlNwof6hRXSbgPhmWVeeNzCSX+A9qLtYh/WYQVYKIvoYtJ0A9y
 Iy2SC8m4T8XgAZr58a8sCiVCN8/esES9Ept00HnDa5+Mwf5i3PIgfnF0jLsbEJYurBdb
 GUCyzGA55qN8Ki08vk7szTKGmzDPk4AjGCK7OA+tThwg5lxkIXzma0WlN1Kh+XWGmeDG
 bZ0A==
X-Gm-Message-State: APjAAAWpxgkbNIUqK0EKuxBBP6jGQZzo23q599I2zrHqSI2ldyIQp5tZ
 DhW7C5UigQNkeE4A1jUNSrIBjRfhJukrzSIOlD7d34+bIq9OaroX7rdNhfbyH5a7QV33C4amCDr
 t3Jy5Mw7en9lm4sPUIJTuKcWZgARFdu7VYKjzjD97S3nXPmzShj8XUxqdSOBDbTn0aqP2tVRxpp
 1t+5qk1saQxYbFRSc=
X-Google-Smtp-Source: APXvYqyZq8rlWFW4uBLN8C8I3oEaQAU5CNW3HReq+6c5opQ9wp/VGDDqgMMeEo6tOAWNlA3+Gfl3rFVlDcMv6bDq
X-Received: by 2002:a5b:8c2:: with SMTP id w2mr16278460ybq.201.1557160276487; 
 Mon, 06 May 2019 09:31:16 -0700 (PDT)
Date: Mon,  6 May 2019 18:30:49 +0200
In-Reply-To: <cover.1557160186.git.andreyknvl@google.com>
Message-Id: <861418ff7ed7253356cb8267de5ee2d4bd84196d.1557160186.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1557160186.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
Subject: [PATCH v15 03/17] lib, arm64: untag user pointers in strn*_user
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_093119_154434_4D8F2013 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
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

strncpy_from_user and strnlen_user accept user addresses as arguments, and
do not go through the same path as copy_from_user and others, so here we
need to handle the case of tagged user addresses separately.

Untag user pointers passed to these functions.

Note, that this patch only temporarily untags the pointers to perform
validity checks, but then uses them as is to perform user memory accesses.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 lib/strncpy_from_user.c | 3 ++-
 lib/strnlen_user.c      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/lib/strncpy_from_user.c b/lib/strncpy_from_user.c
index 58eacd41526c..6209bb9507c7 100644
--- a/lib/strncpy_from_user.c
+++ b/lib/strncpy_from_user.c
@@ -6,6 +6,7 @@
 #include <linux/uaccess.h>
 #include <linux/kernel.h>
 #include <linux/errno.h>
+#include <linux/mm.h>
 
 #include <asm/byteorder.h>
 #include <asm/word-at-a-time.h>
@@ -107,7 +108,7 @@ long strncpy_from_user(char *dst, const char __user *src, long count)
 		return 0;
 
 	max_addr = user_addr_max();
-	src_addr = (unsigned long)src;
+	src_addr = (unsigned long)untagged_addr(src);
 	if (likely(src_addr < max_addr)) {
 		unsigned long max = max_addr - src_addr;
 		long retval;
diff --git a/lib/strnlen_user.c b/lib/strnlen_user.c
index 1c1a1b0e38a5..8ca3d2ac32ec 100644
--- a/lib/strnlen_user.c
+++ b/lib/strnlen_user.c
@@ -2,6 +2,7 @@
 #include <linux/kernel.h>
 #include <linux/export.h>
 #include <linux/uaccess.h>
+#include <linux/mm.h>
 
 #include <asm/word-at-a-time.h>
 
@@ -109,7 +110,7 @@ long strnlen_user(const char __user *str, long count)
 		return 0;
 
 	max_addr = user_addr_max();
-	src_addr = (unsigned long)str;
+	src_addr = (unsigned long)untagged_addr(str);
 	if (likely(src_addr < max_addr)) {
 		unsigned long max = max_addr - src_addr;
 		long retval;
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
