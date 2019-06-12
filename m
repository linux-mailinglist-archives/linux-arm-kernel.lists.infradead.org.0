Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A67B4424A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wEZ3Xt193wUIosnbg/PLppKJwGGgcFsQGN3PvCF/aoo=; b=h9m1brRLsqZjKV
	c4U2i65KzDGBo39xDJspWtuf2X4kpw9/wqdlfkHryfQknL0GfiIJ8hnwwurSuiDFAub2pYNxYHDVe
	Ei+IOvklRqeWW8TaRPKMuNKmlxmRnI6nPHbfHSPHs4tPrqAfWPNeZ4D9MSRAfUzhxrhWBfda7XYLi
	Al8mfShUR3BM1ohWSwkwqkNa+EV1Emoi1lh1wnseIMZ/EDHT4Vuy+kEWz2Z5jFoWeFEhmp97DGPKz
	A4lXqBwwRSbEz9xbqFALR9bfCTqVtd7yivnMCINr5nsqfRIYcs+kSywz6oXc4/5CehiwvqX+3Zmcr
	N4nvOXZaQIPO8Deztsvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1ii-0002qq-DI; Wed, 12 Jun 2019 11:47:12 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fg-00073G-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:07 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id a23so5304519vsn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=0pRrtQh1WGSItgbOKTKHJXYw3ig9cf9ovTOOwQBNCxo=;
 b=IoAMjSO8LpV9sQ4rhyGuwSi9qAWnWdJKm92qjIFlDfIzZK27lRdtbBpUTTqSsHKQqq
 mk4pY6s02uPltexkWHMnxfPS6E14WpHQTBtMuXD5ciPLmKwQYfFZ7D/irHKINjpULcIC
 qesPb2LJHGU1U+hg3Lnr8sbHR2PLa6XJRSA+MwutfJ1QD1fm8gchvdk4JFKcehQpLj7U
 rwlJqHzorntg7c/BDSuoHH78gq9KnzX7dlAs2pxjWc6C1dDkPCqTKTM+gMG73nj/ByrG
 HBTS6w/3UTjUct6MrDb5Sf2LP5/PYv9l52cM1MNahSes/06CDdeCzTIAFl18VFOFWLlP
 HuBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=0pRrtQh1WGSItgbOKTKHJXYw3ig9cf9ovTOOwQBNCxo=;
 b=SbDnJJQdftOzmXTAqPe5oDBfiswDKPuiFo73/bJaCH+VcoLmmDbAEvnXu2Pektjo/A
 txRnIvavtqdaOKma+V3TG43pAJ4Z/nm2M3oSF+KQQr3d+ErjZeOARBM4JG1eUtkfbrnE
 2cIBZgVVYB/CcPRLA1N2OSTKDUFPt58ODYDWJagkIekAumSgwLmjEVBLWTR2s8JlkkwE
 motNSr23CG996zglLAN3Rl86votEnIKNCfvcMlIj+2+i84cZ448U/Qkk+K8incYUs0gI
 /y60qWrbzUC7K+r2H3w7MjHehVvUjk0shYgN8HfpBl3TG5Ui3BoAGFUkp24sZCNwrETp
 hEXg==
X-Gm-Message-State: APjAAAVI7i5OMuBFkC8S4xQYe1d9AMVF1Lx1IHXJ3wcrh5UEZ4xFuQx3
 dRaF0Ch397eggbiBmNyHfF3vgBZQe9vaj5sXf7db5//sA+P93TaqWn+VjpmOj9zrfxIXx6s2J6b
 7FSj+pgyByw2dWOXxmz8+8WSAG4TT9hceS4ikO329uOEfsPpIMQBL/XFmLbgQYSrNR9dEZSHSxf
 bhLGHjsNrsXBoK+Lk=
X-Google-Smtp-Source: APXvYqyhjQEo4g9YND5Fe8F9dcUypnQYf8jfozQHANwshchy+6+kG6ludLuigCmoO08U0FojfDlhn98Rsb9Khi5b
X-Received: by 2002:a9f:25e9:: with SMTP id 96mr28666032uaf.95.1560339842024; 
 Wed, 12 Jun 2019 04:44:02 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:25 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <e2f35a0400150594a39d9c3f4b3088601fd5dc30.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 08/15] userfaultfd, arm64: untag user pointers
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044404_968422_EFDF45F1 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
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

userfaultfd code use provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in validate_range().

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 fs/userfaultfd.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
index 3b30301c90ec..24d68c3b5ee2 100644
--- a/fs/userfaultfd.c
+++ b/fs/userfaultfd.c
@@ -1263,21 +1263,23 @@ static __always_inline void wake_userfault(struct userfaultfd_ctx *ctx,
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
@@ -1327,7 +1329,7 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
 		goto out;
 	}
 
-	ret = validate_range(mm, uffdio_register.range.start,
+	ret = validate_range(mm, &uffdio_register.range.start,
 			     uffdio_register.range.len);
 	if (ret)
 		goto out;
@@ -1516,7 +1518,7 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
 	if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
 		goto out;
 
-	ret = validate_range(mm, uffdio_unregister.start,
+	ret = validate_range(mm, &uffdio_unregister.start,
 			     uffdio_unregister.len);
 	if (ret)
 		goto out;
@@ -1667,7 +1669,7 @@ static int userfaultfd_wake(struct userfaultfd_ctx *ctx,
 	if (copy_from_user(&uffdio_wake, buf, sizeof(uffdio_wake)))
 		goto out;
 
-	ret = validate_range(ctx->mm, uffdio_wake.start, uffdio_wake.len);
+	ret = validate_range(ctx->mm, &uffdio_wake.start, uffdio_wake.len);
 	if (ret)
 		goto out;
 
@@ -1707,7 +1709,7 @@ static int userfaultfd_copy(struct userfaultfd_ctx *ctx,
 			   sizeof(uffdio_copy)-sizeof(__s64)))
 		goto out;
 
-	ret = validate_range(ctx->mm, uffdio_copy.dst, uffdio_copy.len);
+	ret = validate_range(ctx->mm, &uffdio_copy.dst, uffdio_copy.len);
 	if (ret)
 		goto out;
 	/*
@@ -1763,7 +1765,7 @@ static int userfaultfd_zeropage(struct userfaultfd_ctx *ctx,
 			   sizeof(uffdio_zeropage)-sizeof(__s64)))
 		goto out;
 
-	ret = validate_range(ctx->mm, uffdio_zeropage.range.start,
+	ret = validate_range(ctx->mm, &uffdio_zeropage.range.start,
 			     uffdio_zeropage.range.len);
 	if (ret)
 		goto out;
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
