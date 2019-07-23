Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C4571E91
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:02:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JAUFXqWRV+758Zb3CGW+7aiYE8O0f6GSJoUVPtYLMnY=; b=RtdqbATBkmZ5QI
	4cTx7piFYvVR1jlGnNBnmtbYfEQ9VVf9FbpYoNdu9+wP8v9YJ3wcOy9CO7MDxsbIhSyP8k/D8SQEj
	ukCLLN8fEhEmY5lBfy1X2sBjTaNnjF4OY1UM3ftwK4d4R6l0Nn+EdqX9fpMWn2k62YpQf/vzHgkfw
	44HV+v1Bp4eSDHf0CzVV/GZt77cbhyhebnb3iGQ7YkBdvxgwr0ruoygrzp2uKJTdGGbZ/e2vyf40j
	JPafxz9J334H0FML+mZJGAWG5ruFrRChozijZsBSwbM5RpygrNSLdRSPtlK7heJuy2N4Q8glIT9Oz
	tPitj6Lu4eFQBgkTB5Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz7b-0000dJ-1A; Tue, 23 Jul 2019 18:02:43 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4Y-0005cZ-4w
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:35 +0000
Received: by mail-qk1-x749.google.com with SMTP id j81so36947790qke.23
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=mo6ZyD7PJiiiTnkBfnFT33xmRSSjLb2erTRpgEGb4jw=;
 b=cRcOEH0iv2407FEeEXiGtfbNaRtJQIzg5XbYICzGVGc43sPOA3+CZIMWAHKgebQ1Fd
 NhXvQ2XcNcF8R9x/znx8/B+ZWBuFc0pppCQj6IxF/91ZQehMjq/FUgtTO1kgaD+sdo+u
 g0fX97ge7Kl52ZUaa6b+4pEh6IxUyFSuMDNJlzhUpxY5RLeNi8LIb5QOqygzH5YcXwTw
 u/vwHZkzfH96V/r4aumfuyQXlNmESoQtl9/gLW/U3oOdnKUbG/Ywu4Xo6BgLwOzrtBVU
 Gf76BaPylfmhv0ijCpRq3ZN2WZ9BE8VMsOdxcjRzxf/93AljoTsAfpUOJtPXkeNJ+1FY
 hU+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=mo6ZyD7PJiiiTnkBfnFT33xmRSSjLb2erTRpgEGb4jw=;
 b=mVBSYfGHuK3OQrqO7W3QOfbmG2qnNTy8htmquFw9qLV1K0L9l8L2hAc7JxODSAYxWa
 ZvdlGzm9G7nINVvaE/Ka7czxvNKGPiu6ceYsAVGU+c0HVgoy441EmNe8dcuQSuUQD7t/
 IihZ2TEaiKn8Y+wG5eaY/OdRkfYWaGmSWVfMyxdI9PU8nvfsj/z0rfW+PmiM58FMyBME
 TyTQ+lovZQqGa+4yGZb3vznBtVZsk5bkHG5bKG2U361iebyw2RB48OqeZ1EeDok6DN6x
 32XBnDM/Cpp22OK17DwGBqLzoUSgBw1a9Hut+dHuBr/oGuEg+gHWClEHUWYbtGNVv9to
 QFiA==
X-Gm-Message-State: APjAAAVrtLN/GO0A93MfbOi9O560pGhXsEb875xrRuNuujHqnze87LGw
 vbIuJXal2bmSWBR7od2ck63giHtcb8sHMvu2pfggh0V2+UdI0h2i/f5+losnb57/hBc2P5LFLnX
 NK0NlzaOp5IlJ/jTlNHpYkVCVAJ7jCWQYGP68AR4w2+u5FtSYfrihrbn6VwfwBJHPa7ytPH1dBl
 PtObFD9/lY9bgDwKI=
X-Google-Smtp-Source: APXvYqwqXUnbT9S2ecddRPfsS72rTxoBtLQXpIQx9JM0kIhhjvtv5eSOcsPLQ4y/4499Xb23XuIGaF+KOaOVjXRR
X-Received: by 2002:a37:47d1:: with SMTP id u200mr49170508qka.21.1563904772061; 
 Tue, 23 Jul 2019 10:59:32 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:45 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <cdc59ddd7011012ca2e689bc88c3b65b1ea7e413.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 08/15] userfaultfd: untag user pointers
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105934_225319_A45AB5A8 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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
 Mike Rapoport <rppt@linux.ibm.com>, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
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

userfaultfd code use provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in validate_range().

Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 fs/userfaultfd.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
index ccbdbd62f0d8..6284a4e719cb 100644
--- a/fs/userfaultfd.c
+++ b/fs/userfaultfd.c
@@ -1271,21 +1271,23 @@ static __always_inline void wake_userfault(struct userfaultfd_ctx *ctx,
 }
 
 static __always_inline int validate_range(struct mm_struct *mm,
-					  __u64 start, __u64 len)
+					  __u64 *start, __u64 len)
 {
 	__u64 task_size = mm->task_size;
 
-	if (start & ~PAGE_MASK)
+	*start = untagged_addr(*start);
+
+	if (*start & ~PAGE_MASK)
 		return -EINVAL;
 	if (len & ~PAGE_MASK)
 		return -EINVAL;
 	if (!len)
 		return -EINVAL;
-	if (start < mmap_min_addr)
+	if (*start < mmap_min_addr)
 		return -EINVAL;
-	if (start >= task_size)
+	if (*start >= task_size)
 		return -EINVAL;
-	if (len > task_size - start)
+	if (len > task_size - *start)
 		return -EINVAL;
 	return 0;
 }
@@ -1335,7 +1337,7 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
 		goto out;
 	}
 
-	ret = validate_range(mm, uffdio_register.range.start,
+	ret = validate_range(mm, &uffdio_register.range.start,
 			     uffdio_register.range.len);
 	if (ret)
 		goto out;
@@ -1524,7 +1526,7 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
 	if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
 		goto out;
 
-	ret = validate_range(mm, uffdio_unregister.start,
+	ret = validate_range(mm, &uffdio_unregister.start,
 			     uffdio_unregister.len);
 	if (ret)
 		goto out;
@@ -1675,7 +1677,7 @@ static int userfaultfd_wake(struct userfaultfd_ctx *ctx,
 	if (copy_from_user(&uffdio_wake, buf, sizeof(uffdio_wake)))
 		goto out;
 
-	ret = validate_range(ctx->mm, uffdio_wake.start, uffdio_wake.len);
+	ret = validate_range(ctx->mm, &uffdio_wake.start, uffdio_wake.len);
 	if (ret)
 		goto out;
 
@@ -1715,7 +1717,7 @@ static int userfaultfd_copy(struct userfaultfd_ctx *ctx,
 			   sizeof(uffdio_copy)-sizeof(__s64)))
 		goto out;
 
-	ret = validate_range(ctx->mm, uffdio_copy.dst, uffdio_copy.len);
+	ret = validate_range(ctx->mm, &uffdio_copy.dst, uffdio_copy.len);
 	if (ret)
 		goto out;
 	/*
@@ -1771,7 +1773,7 @@ static int userfaultfd_zeropage(struct userfaultfd_ctx *ctx,
 			   sizeof(uffdio_zeropage)-sizeof(__s64)))
 		goto out;
 
-	ret = validate_range(ctx->mm, uffdio_zeropage.range.start,
+	ret = validate_range(ctx->mm, &uffdio_zeropage.range.start,
 			     uffdio_zeropage.range.len);
 	if (ret)
 		goto out;
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
