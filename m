Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 282F450E5E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5fA8L1lpfhr4Ea+VrvzDQyCH846wZhGevgkayJd26tI=; b=XVNlZqdgq5zILN
	HDjRdD8Jd5bSzfQDaOHD2j9ptM2cRk0hBg1OEvlUmCe84G0xGFC65/0H1LCcaLCsb1BtChGwCO+7Q
	3Nh+OnjddFLzl2XbmHSNKqheSx6NRXNdXlO+F/sYZm9Zdo1fxZKN9ydCLR1BeivMKcZ0GvCMxo7Nd
	nSWbfCVvBKaP2cBkE6QP0kHY2/wiZ0+nZ7XmIViHpe/k35OLr2sHUWhIyXKr54qhCF+QSM+rnG18T
	dub7JFel5dQOSID9/1fSsUzN6BfFQwE8pCoXpSqfW9ErZC8Y/TrbTwnTGLcv/t5l2k6pR+HQkqS/Q
	vwCNHtMzL5HUcERJHoog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ3L-00055b-Ru; Mon, 24 Jun 2019 14:34:39 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ20-0004J4-HO
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:33:18 +0000
Received: by mail-qk1-x74a.google.com with SMTP id t196so16398630qke.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:33:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=QQXMFisLcqxTDxCx7mpHBfkykflxcDxM95yy0y46L4c=;
 b=nl7WANT+T3zzJdQNSfB9+m3b8ydqMfXiozgRLYeQCHFc4zWOn1Q8HlSZi7DGmunKcG
 m48YCubQKuyc5mIC9PWmc95WNcaYrn+rBkilmeEtWye/vcm/w7SgqxmZ+eLuRWNk+dBe
 ilcc0xwMAFdqkWVOavUtr03O5uEwSiv8ah8EA2ZNm/JYdo0vp1VaJuLVzssnLAaxlz0W
 +bGemSNE16fXrFDUhV0Eo7CJiC+zuIHkEvL14QgEfP6YhZ1zpRezDVdue+M4lC6Urd5x
 s/pZSUm/6UDNd/YlF2uYqWPTYuto+748pEjr815zYdNJlDljrtH9f8RpmzII6hCRLyFl
 B0aA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=QQXMFisLcqxTDxCx7mpHBfkykflxcDxM95yy0y46L4c=;
 b=HprB9rT27EguLxUmTDeFCaMvMVWuIJrbHpOPULgPXqzYosmwEFu8Q38JnQiP2tDRY1
 WVUHJLhZ3fyzy1rAdC8Ypf5hPDtWQfJ8ugeTF0SL+LkkRpUKrbcd8nYXkqaujuXcri2q
 FXV76jgcVit2qktYA6irkpTIl1125f3Dc4KM7XrPfAg7YY3sXNiz4qZhzQs2QU+5oILN
 XXJvUa/p4qu62L4SecWaDABcslMNDNDLwft3ZtbgZz7P7l1CVhBLm/AKo6xztEd000mp
 PqNx9tpaCtDdcggiYEMDEAzySiUr243bDi8QMBesKQMCuzatKG8zsLGrMIDIBqYviIMW
 eAeQ==
X-Gm-Message-State: APjAAAVWSInJwZbF4MH8qSCP4ybBthreh794vK9iD0ThoYdDkKPFu7XH
 3zJWypPEBWu5qhy2rmZl4bSkdzHXJ0++t+bCN1OgFqMQw1XV3YQEnzlRSMfBm41jAgOcAM9BuBd
 VuipYEBxbvT8M6JhBpls2u6/gRyZNAHG+nJD+kBgDXaiU+N2SHjJbYz9PADOVDHGV7jbULbK5VQ
 oXDD35mops/RdVxSw=
X-Google-Smtp-Source: APXvYqzup51zNJearylpYQzBo2BoCcuJ3XXHspU9PtHQODnUVY/RZyP6CGJqukGO0YgO4GkOlCbGA2J//cHunZZU
X-Received: by 2002:a37:a2cc:: with SMTP id
 l195mr16730110qke.362.1561386793770; 
 Mon, 24 Jun 2019 07:33:13 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:32:48 +0200
In-Reply-To: <cover.1561386715.git.andreyknvl@google.com>
Message-Id: <1a53da43d69d644793110e85671d20158ebf29cb.1561386715.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v18 03/15] lib: untag user pointers in strn*_user
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073316_606076_512D81E7 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
