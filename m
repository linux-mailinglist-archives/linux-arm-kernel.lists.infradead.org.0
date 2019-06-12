Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6395B42443
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b0EFyCXseAwjiYO2+aD7siBTZyTugIZRXa5+k8KT7pU=; b=KcHxGmZrcItM6W
	EndNteHoJVmgSfDsedY9PhsyIQphad9o2SN+/4jQ3KgNXQGg3aS4ghnMOrSB/XVTG4VBCHtsvH21O
	8BPUF2TUToV64WjXu9SO2m2uI4UN8geQBJMmBONBuB8h2Qz6FJzW1JGCZGzofPMQX71X4I4dXVlVE
	AR4H/bpe9dMysw70hoMiYlMbWdica4hWaXkwrri7jFRyxCOG6eWr0CgwxIs4ITa43jmXvCOzopPTx
	CWuBGWh1UDzRukUMwG48A7ycdHaaPH4x1JmWFwjVQQmDmOBEYQF4Y5SJeoSooBmKiOV5FUdcnanSU
	K51nWjcWXK+gBysme2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1ff-0006m4-0u; Wed, 12 Jun 2019 11:44:03 +0000
Received: from mail-ot1-x349.google.com ([2607:f8b0:4864:20::349])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fN-0006jr-9H
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:43:46 +0000
Received: by mail-ot1-x349.google.com with SMTP id 80so335476otv.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:43:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=UjHW3gvZNVNgT5aLmmsHnPxo+B7J7BC6tuQvc/RhPNk=;
 b=wWQdCeaEB2u6K2FokoVH57TiuY9+YM+iloWJZ9olfqp0zjmIdmC5f6DPCzUKmsxGdy
 S65EVOJIDT5V4zwCQfqNTJzphOcFWfUmY+gXBOeFncv77kXLYdKYGCkdMxc+OyweaWX0
 0fKTo4iZRRAvEu0L5K9N5O0E1jscX+Pk92PzQ1PknQ2YOc6xMrIj1RN7n/IEUROoLRHK
 DSyTNlm/Sr+vicrs5WJhiUx/1nLhQ5Q4ACjS55YPvH7eOOqFTP/CfYXsftMzptdGowR3
 ikQ6jhRMQBxQ3FPli1xBTZa23yNKdUvKN2sR5HTTLiPeqs1dY61XYlyLOGrjNBMaj6hd
 3iow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=UjHW3gvZNVNgT5aLmmsHnPxo+B7J7BC6tuQvc/RhPNk=;
 b=uoPyLI1J+Omwq8u9Da3i8V6aXoud8R15knPYM8rOw14Smv5so6v65bdOJLqCION8Ho
 7HmpWThDpxefVo9Zr/YdcxqDbzJLn9FvRsQqRMDJD5+DzQBOLpdMyQi/vxbnl1wqNVEz
 U4AsWuFLkXJPReFxahOiuDlAPe8XOKMElYMzEP7HzSWYssEZbSMj32vLZJMErSCy1+b0
 RHWgnLNopGc6675UNOYAfjpQ/Zb0fFQyjLLzhs0MnyifqA/oJL67C75WUWgvyJJRhYB+
 xjAbYsNQkgsEqA+c8cslsrEYj94RgEW+ucQq3NdC+tbBPOvnRwFc3uTNxtqJtbW9vwMa
 zYiQ==
X-Gm-Message-State: APjAAAUQ+mZ4J3zhTBTLfciFzvt1VoFvOH4Z2LW6NdTl44TjvltoUtqX
 rvpqw1Wqp3DKuf1KbDujThe6RFqFWQFNaMbjJFTeQsQ3B8A5ouzMGDRuAgAhc5lbTeodLkgwvaa
 J+G2wjGVduaGv7PxqEyDW0j79xboV7F4kJw3jQRO063t5VUUGmWRvLvaG0lx7UFePR59/mYt9Pd
 JCRIBzTp0wZuL1tls=
X-Google-Smtp-Source: APXvYqwN3f56c3YdzV4vuBZtnTaXMq2rkbV7EZJhl+9vuDir+VdtrZMmSzDSSPuiOLJaxWwDb81r7VAwTgFT1eUN
X-Received: by 2002:a9d:764d:: with SMTP id o13mr6499138otl.298.1560339823090; 
 Wed, 12 Jun 2019 04:43:43 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:19 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <a76c014f9b12a082d31ef1459907cabdab78491e.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 02/15] lib, arm64: untag user pointers in strn*_user
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044345_326880_9CA7773F 
X-CRM114-Status: GOOD (  13.64  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:349 listed in]
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

strncpy_from_user and strnlen_user accept user addresses as arguments, and
do not go through the same path as copy_from_user and others, so here we
need to handle the case of tagged user addresses separately.

Untag user pointers passed to these functions.

Note, that this patch only temporarily untags the pointers to perform
validity checks, but then uses them as is to perform user memory accesses.

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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
