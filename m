Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B78A571E7C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:01:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0m+9+2MYfXZCoT7UsXyLsKQtd7VZepo7u3FkMf622nM=; b=IfKvB2YQZ4xeft
	0YvxzytGx80Ip4yMp4zVAmAHh6VaP8xZd6qYLKnWuJsbUHvNaF4okc+T0Jnc3q1dsR0u4mYX+hSgg
	m7PVuEWyOhjjlFWWzHRh3GCbXaHekG6hZVj8Bm9JSQSz1/jRKxoHTG90dkoaJjOGZql7NrIFkYqpH
	0MlqU2BNmSrVV+tuKVfqlSxqLyRFO8M2VzDhgrEnE14fk65CwA6uNL0WAGxPVR9aUyxINB1GMh2vJ
	UBhFdSCrGYHE8vXnDrBBHhXHIwfSFJut8O8vvHkh8+Eu2rTPJjnq/YXQCRe16cDNyKZ36GWB94Cfq
	4FV+ItKvUQUhNKyTSrPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz60-0007jX-V8; Tue, 23 Jul 2019 18:01:05 +0000
Received: from mail-yb1-xb4a.google.com ([2607:f8b0:4864:20::b4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4I-0005LZ-C1
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:20 +0000
Received: by mail-yb1-xb4a.google.com with SMTP id y9so19896316ybq.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=JFgaWDMGqAls6G489iThigfOi0kr7eFjggN3NFe6qBQ=;
 b=bdR5/fk0JGKoW7w0SFkFyWDsbkS1I0veDFpzyivmTwHIiT1ZA97yr7ZNBj0H2AShr3
 pJNPC/lixw/WX323ImP4bsjq93mjJZOu3XmkpNpFXgCiVzkeEYaOnJlxDz/E8gDEr+0Z
 7c+WyXnemQpO1dfLw6iPwN48OpAMyrI2pHKz9BmhLCsXRKcJ8hMZ0q56McGVdIPQVUpC
 wU6S0XoQlY0qPAb6VoXtHP5wFmiEaCJNy21C3scQNSBD97gIywyYsw0LYzCg0A9GdhDR
 +widw+4UdtR8VyNJh7brTEfaRq+BSrao4/hRns/7LOx28RgrtCz6SeEtUQ8FFyTY31id
 9AMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=JFgaWDMGqAls6G489iThigfOi0kr7eFjggN3NFe6qBQ=;
 b=acQn8mOBAK3hwaM71czRm3ZcmEGbZPHz6nFKXDZPZk/Bk4obY2OHUnY3PruCFXloYK
 LEHyrLKlr63YhHFQ9AzPI2fjGlloid6wubDrMnNfAWGipKfzopRT+zcv7EOKhX6fJ2Ok
 aagYtf6K7cViQBFUnxRF0BdDz1IL7+7WRMRSxn67b1acVMfrL9Kr3axE+yR16zxAfNgn
 TthD7PAT/kF4HsWI/h/Zd5bynS2tWxfF0UwISB3r0QPgsvf0l4w1MS0jJ8+4YFV/qejx
 q1LVVZ7kRJj2nmylcTcatFyswh1kzAyULkM3z4atN6OYAmh7h48HLVM5f8J+gJklsxJ5
 aY9A==
X-Gm-Message-State: APjAAAXupP2vcWflVYLgAhxBvZhot2g8VMLrrO+96JiYiuWK+yGvU+gn
 QV8sQ7b2a9RJ5glSDwRAWyIjPdj7Zahv8rlq892BNdK2aPC3vRw7gROuKdeGTMkwDeIyaAMdIWL
 z3Qvrnpvi5kXl/cToIzC33TMvCZSsfbhNPglucYTlcnyNheafuRyhViylI9Ge0hH5dsI6T/APWL
 F/1Gkubl9Hb41eKFE=
X-Google-Smtp-Source: APXvYqyP8TuTil7EZTQQhTgA2DwZYNvsIYk2hVJOr9gyh7gqwx0FC8mj4nBRBXxdbEE2muRKlx89y5GRj7Mj4rf4
X-Received: by 2002:a81:9c0b:: with SMTP id m11mr45173898ywa.3.1563904755656; 
 Tue, 23 Jul 2019 10:59:15 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:40 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <c5a78bcad3e94d6cda71fcaa60a423231ae71e4c.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 03/15] lib: untag user pointers in strn*_user
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105918_488412_29852243 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b4a listed in]
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

strncpy_from_user and strnlen_user accept user addresses as arguments, and
do not go through the same path as copy_from_user and others, so here we
need to handle the case of tagged user addresses separately.

Untag user pointers passed to these functions.

Note, that this patch only temporarily untags the pointers to perform
validity checks, but then uses them as is to perform user memory accesses.

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Acked-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 lib/strncpy_from_user.c | 3 ++-
 lib/strnlen_user.c      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/lib/strncpy_from_user.c b/lib/strncpy_from_user.c
index 023ba9f3b99f..dccb95af6003 100644
--- a/lib/strncpy_from_user.c
+++ b/lib/strncpy_from_user.c
@@ -6,6 +6,7 @@
 #include <linux/uaccess.h>
 #include <linux/kernel.h>
 #include <linux/errno.h>
+#include <linux/mm.h>
 
 #include <asm/byteorder.h>
 #include <asm/word-at-a-time.h>
@@ -108,7 +109,7 @@ long strncpy_from_user(char *dst, const char __user *src, long count)
 		return 0;
 
 	max_addr = user_addr_max();
-	src_addr = (unsigned long)src;
+	src_addr = (unsigned long)untagged_addr(src);
 	if (likely(src_addr < max_addr)) {
 		unsigned long max = max_addr - src_addr;
 		long retval;
diff --git a/lib/strnlen_user.c b/lib/strnlen_user.c
index 7f2db3fe311f..28ff554a1be8 100644
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
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
