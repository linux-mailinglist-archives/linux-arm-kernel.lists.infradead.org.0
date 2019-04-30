Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86C43F9F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:26:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vq23UBq6pBq1LN1Nzxqi8AfrKEJ4y2/h0d32goGH6ho=; b=HjNagp0VL/4511
	M6XqQZE+c3mJha0G/kL/32KJVYq2TwLa8z3cY+zE6dkwD7M4ElFI1HOTCwRGTv2vNO9rLllLGsR26
	+RoMURC5Ck7/hk7sJvsu5h1bzRtL9f48BZ/ioHS/+oXpcczkloqEpwZpIF6veR6OCrabJH/R6EEtN
	eUM5wHB2P4U35wRw9jrDkcOMMTq3zWsgk3Y0uiHePKF4LXYeet5IA4I1w4usoBh0PtHQr6WnIQvAT
	D7XZEhM8Bkth21ObMOQvF5xCpVtVhAHoJbrA4QlaNnEysabutmrwm3ep52cS2VJ/uDcYf0ck1qG4D
	uajO6hIoGnr27Afna9ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSly-0002It-1P; Tue, 30 Apr 2019 13:26:14 +0000
Received: from mail-ua1-x949.google.com ([2607:f8b0:4864:20::949])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlF-0001Wx-3M
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:32 +0000
Received: by mail-ua1-x949.google.com with SMTP id o64so1621087uao.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=BvUTfQkQM7uCDeEtImKKI/2Hme2ZprNLcMmbkGV4djo=;
 b=dpVTwFKbchbVkkb84ng8BnoHNS2SM91wquNJtuly6Sbp7lXj1bPrbJBiP3SyhTU0xP
 LuA/DNrbjhKI/dHi3IXFK1lS8O09Sk1+qA/R7rjDLupO2W7Szy3T1dELXK4hEpZqkwPw
 qD0yKLxb8ZjzpYALNjI1z0dDf4TB8V0IRIOptCx1gDVu9+jOblt+XzKkwvlPuV63pqHj
 wnFsYt5mNXo/Rj6N9Lo9JMQODsljOWPF/MJrAcRLfdznXkGZCgNmaSrk7MrXtOUREZGb
 X2QTJ1/W011vEIe5OofpK81AMWPuQy4lXPQltspauNse0OruElYuf2mJ90h6FolZJ8lL
 VpnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=BvUTfQkQM7uCDeEtImKKI/2Hme2ZprNLcMmbkGV4djo=;
 b=rS3x9QCRD/tAsAMHn13cSGZCdk9p8KORvvkT3Qn+s341MoCbs6LNW23hj41WCELMso
 Ij9BtAcSINwaGHepQzkNh2agi09eaKHRvRBUov+1n7Tu7oSd0fLu6rmAdSWGSjx7B3Mk
 fd4te4To39yYFFZ0a2ZTcGho+37dbAJxMJQEWK7r/MAgNzdBbQqvtuv52JLpTtvkKQED
 F9cbfmLmNP0RkdlXTKO0UXHTVErBVOK3ClXlTj/9SFJEYjYhAgKgY3uuiJzTdTM92g24
 t6AOTkrzEexzmeVewKo0G5zgj9xkY7csoYa8KzCASe5xkI6INhM0FyIVomeDOCv7/7Dv
 BV9g==
X-Gm-Message-State: APjAAAWOZ0PIcj9I7hvJG2jWQnl2NtGEYsoUR2k29AA/T2ReshXB2Yhz
 50idEa74n8DKcyjcyDsWVTMi36eeicjmpC/KcdHheB2Yql61POhl6TpdheOylh1SqTv/1A4o0P+
 uw6KctDqWbdpxSoXXILhfqlcfeLYjGTM0oZ3fvIu8YqWzlhqZG9MrMpfTslw6oGcEQPlCBIc4zg
 MktxEOVTaM4XbN6rg=
X-Google-Smtp-Source: APXvYqyRA/Qu4LKAWcvJoaQQlsyyIllouYjqkXgAFh5vrZ+95OMG6R4QdBb3NSzDXJSn7wdUrbj4M88LAp+D5Hqp
X-Received: by 2002:a67:ea83:: with SMTP id f3mr2107513vso.59.1556630726654;
 Tue, 30 Apr 2019 06:25:26 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:24:59 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <6f38f610cc22dca9aef05d53a5a94b24763cc628.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 03/17] lib, arm64: untag user pointers in strn*_user
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062529_819390_0D5B0F18 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:949 listed in]
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
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
