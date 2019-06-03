Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31AF633565
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BnD76vkoXNzcomdZSpqvERlLKPPSawgPF4vs9mbRtmY=; b=nf9C9oC4nElVM8
	CJYSZ1fVjEDXVwHWeHJNSw10UgplQbwNTzc9OWcdU3ARSFeFO+nRDhCiA5dUVUGQqXSHmxOdSYsFn
	yJ5flxDCeCC57BwcooPNwLxmHrSenG2RlCD7c9iFeIMMptkfhKunmp+XxUhMffih9ZK7TImVPJhGe
	fSd+62vcuehBhY3bD4Fo2hwtn+Z80iwq4Jxw9XAssUpYJtI00oVV0jxPCvfGb2RPQZ2sqvitnqabg
	L+z/Sh+4LU0MHvIEOGx/U+/9xST0GY3cxxXO3Rw/joloQ8xCce4ErQm6bjThe9p1g4zilTSSqDGoG
	t/+tb0x2H5KVUxJt1ivQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqFs-0000WB-1j; Mon, 03 Jun 2019 16:56:16 +0000
Received: from mail-oi1-x24a.google.com ([2607:f8b0:4864:20::24a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFD-0008Bp-Qo
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:55:40 +0000
Received: by mail-oi1-x24a.google.com with SMTP id l12so5437497oii.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:55:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=20y1HOjqXQjYCoZ3FMKXhe3A/P2l0vyHswuOkJrBoHc=;
 b=LglK5GIUUx/pUH7d33srSrOdoxDJcf6k8RPUUYHzql61oC+wNFESJd5PKVtebHfEHg
 K4rjnwnmDpgmbEhEStseFjNPEkvS+OI72qtgGhLpDEtxWhTvC3aTgCw5FcWPqu/H8YrI
 EsZSEg5fuJNLUqDTf1Y4yx6ojgmyvktu2GiIy1cCbapuFQIW/4LxM06f8+NqNbEgrvNM
 UWcCXb3C0eM0WuvLRS+mPfo8NHHpXEwFgU2WjcbOUcfYUWB+71yFOhi1U1i0mgtvoovy
 MA4D4byZDDLHTtN4PLwPL3K21wgXq++wadXcb7ohaA0PX/0lh5439vbzfphRZaAPKsSb
 Z6iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=20y1HOjqXQjYCoZ3FMKXhe3A/P2l0vyHswuOkJrBoHc=;
 b=UD5OeAq95WDHPY+1eKJCF1XIhVMXEAds42J5CiGVJ464T73zfiMkzzUrjWNo1+HSU+
 OCQbFmX7OmgtI+GVt7k5+OoR3KmvbmjY2aesARtLoNV0ekOt08iMtBaViSAloC5V0OFD
 cKUsY5Dzd7SWM0WpIMTBkOewpTXYk0zbG4fChEdQjCxNdRC1IUx5ULaKVqqFgxf1LxXh
 7nK/egRa+iw6317Lqc4JfCjpwFIN9KH++1xV1nPky9j66LtYkYEWvSfnTXsydeUrxtAE
 EEb4kNh4uZg/t5pHTv66o9zsC1rWFymkyAKffGkRRmClt6s5/H/qs95sb+fhzjV2iimv
 vnqw==
X-Gm-Message-State: APjAAAXbOYhmBdTIw/AgxGH5kHKEH/WlCsrsDhQf3brqTK//WNqyAVRv
 Vu9bVnJppy52F4HKpdO6S6JSdRu4+dQ11rbM4FAE3PkAgomzhX+MnIFa+Nl85xVhqZT4eCi0vnI
 tiOwLmFXuqMFAToh11g8KiWocH1bg2LU+PgH45wNCVZhK+I5ugu4uqUAmpYTCNVw2cL6Lbf+2ra
 qrB+1Iw3i2NNQcBxM=
X-Google-Smtp-Source: APXvYqzHKkB2rM9PXXWgsahc+U06gQo0dW3SgxcQRqFmx6XqPzOJDdvsIYpt6xPWzmKaja2zBdl1velx+1PVZjyJ
X-Received: by 2002:a9d:62d5:: with SMTP id z21mr1888837otk.202.1559580933129; 
 Mon, 03 Jun 2019 09:55:33 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:05 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <14f17ef1902aa4f07a39f96879394e718a1f5dc1.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 03/16] lib, arm64: untag user pointers in strn*_user
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095536_520843_0388576D 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:24a listed in]
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

strncpy_from_user and strnlen_user accept user addresses as arguments, and
do not go through the same path as copy_from_user and others, so here we
need to handle the case of tagged user addresses separately.

Untag user pointers passed to these functions.

Note, that this patch only temporarily untags the pointers to perform
validity checks, but then uses them as is to perform user memory accesses.

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
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
