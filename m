Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F3D9335D1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:58:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r5zJkeER724JfbUv9blnyzGoZyrhZP9Pn6S+MCFoi1c=; b=BuFZfR5S5SGMNO
	neTYPXMtj2q5KIHetslwS5ikawylSOtpuRaM3XXmqJ589G1sAGbcrIpLp5gHyDpO82vvUccLI3rky
	wM4/sraA8f07lCzEFMSvXLEXix5jt2WpKD/2R5ois4MphiB4Z1mmxGxF7d+wHiOAcytDXELBvxKsv
	f9S89fUWF6EJ+fGM5vZdHYH21ptmE2MtuoKyZOiVnZZ6G06Pyzp5Sjg3wAHDCNoz1etACK5lfUL6Y
	/EsiCKdnA0zxJq2RCHIupIkbthZ/tJRLic7YsQjpyYR/DuzmdZQ1uI0ppXSnioK1pYbsCDPRTbMtM
	WB8/7uGUvORTwdFYFfZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqI2-0003V3-9C; Mon, 03 Jun 2019 16:58:30 +0000
Received: from mail-vk1-xa49.google.com ([2607:f8b0:4864:20::a49])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFk-0000a6-1u
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:56:36 +0000
Received: by mail-vk1-xa49.google.com with SMTP id x198so3114255vke.21
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Y8tRh8UuVncP1ncRA8ZfIPgOhX9+nAfsBu2vnbYNOEE=;
 b=eFK1jtlEFrS3m2V50O3J5bSuSe+f8SF2oOEJcYGOiFDh2Xi4MGaW9nDUncCGVcGUyN
 tYL5ptbIsLBKOxSfh5JEibNl8mgQflxa8qzQZCZGbKOMu+ue4btTZbmvk6Kxh+WcG+Wv
 fn/kF4y9wQfMzaBiS9+LkicOpt8tKnLL/K7iTnBUbTxgKs5dHlS/ncUSuv8GobYsG6Cu
 6qM+L38/9FABz5BxD3BPgItX9XL5QdXg0jsVIbHzcM5qVU0wJRygy73ep5mkhIvjeckb
 fTT0sIEfasP+T2Y6+uUP2P0imGCc2+QNF2QVC0kVT6BdFDtQ0zPTYlADXVtguKUh5EC4
 AB9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Y8tRh8UuVncP1ncRA8ZfIPgOhX9+nAfsBu2vnbYNOEE=;
 b=lnh7lpD8ibzhZuxFp8rRUK1hF6KS8Ib5EGngea/dRLPITodQwSbUMMamSdovpwpYhD
 ZOixlUgEACA5anbErROpfawSUYRm19K4ynpADKz6Rzs7etbFMn0ey6Mf32TXBVSyYd3j
 70AePxzhCMbKbEWcOBEJt/62fYQpLpGFQWndTF/6LB4xjkYDsoPp5J9xiw+l7b01XU5u
 0oM2dAQUsEneSZe0JQT/Fmf1zgFFVR5IgaYMQ49qkLJPF/2TT3qLnCh+q2RBhTqqyy6t
 +RNh3FdwjXQ+C94uPY3qlnFuS3zAOg/v/XvPWvojDEwQozNABvAY1CtT1QA6JWHNYQ3/
 ZMBg==
X-Gm-Message-State: APjAAAXrT9+tTv3Tszud6m9czozm8rZtJWzQa5uJ6UqHpzPS6SfVG5vl
 s9JmKwa1yyoZumztymP/V7ckC+zARZV0/DKQwAJ9RHSQovUiNTTSdgEzbWhuEmfmBAnoOGU8560
 O8OUO2Z2qZVGzzs+mwLpLdt7l7UHiIbaQQsgyk023Nxu5i32EZZUZnPi25qD0MsBcn+UkVYZtDH
 lLn/wApBSxk65JLME=
X-Google-Smtp-Source: APXvYqzz/ntPC10OZ0frdLABrSNi7hvZ/ytx4Ex3aaENCq428cafLYJMM+5BmbKZZkSR6QrCbMGhJA3iBNJvNJC5
X-Received: by 2002:a9f:25c6:: with SMTP id 64mr157298uaf.36.1559580966349;
 Mon, 03 Jun 2019 09:56:06 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:15 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <31821f3538ddacb7e57e0248e86a3d28f9789d2f.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 13/16] media/v4l2-core,
 arm64: untag user pointers in videobuf_dma_contig_user_get
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095608_644441_CB75C1E4 
X-CRM114-Status: GOOD (  14.26  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a49 listed in]
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
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
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

videobuf_dma_contig_user_get() uses provided user pointers for vma
lookups, which can only by done with untagged pointers.

Untag the pointers in this function.

Acked-by: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/media/v4l2-core/videobuf-dma-contig.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/media/v4l2-core/videobuf-dma-contig.c b/drivers/media/v4l2-core/videobuf-dma-contig.c
index e1bf50df4c70..8a1ddd146b17 100644
--- a/drivers/media/v4l2-core/videobuf-dma-contig.c
+++ b/drivers/media/v4l2-core/videobuf-dma-contig.c
@@ -160,6 +160,7 @@ static void videobuf_dma_contig_user_put(struct videobuf_dma_contig_memory *mem)
 static int videobuf_dma_contig_user_get(struct videobuf_dma_contig_memory *mem,
 					struct videobuf_buffer *vb)
 {
+	unsigned long untagged_baddr = untagged_addr(vb->baddr);
 	struct mm_struct *mm = current->mm;
 	struct vm_area_struct *vma;
 	unsigned long prev_pfn, this_pfn;
@@ -167,22 +168,22 @@ static int videobuf_dma_contig_user_get(struct videobuf_dma_contig_memory *mem,
 	unsigned int offset;
 	int ret;
 
-	offset = vb->baddr & ~PAGE_MASK;
+	offset = untagged_baddr & ~PAGE_MASK;
 	mem->size = PAGE_ALIGN(vb->size + offset);
 	ret = -EINVAL;
 
 	down_read(&mm->mmap_sem);
 
-	vma = find_vma(mm, vb->baddr);
+	vma = find_vma(mm, untagged_baddr);
 	if (!vma)
 		goto out_up;
 
-	if ((vb->baddr + mem->size) > vma->vm_end)
+	if ((untagged_baddr + mem->size) > vma->vm_end)
 		goto out_up;
 
 	pages_done = 0;
 	prev_pfn = 0; /* kill warning */
-	user_address = vb->baddr;
+	user_address = untagged_baddr;
 
 	while (pages_done < (mem->size >> PAGE_SHIFT)) {
 		ret = follow_pfn(vma, user_address, &this_pfn);
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
