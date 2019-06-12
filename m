Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51587424AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8b9mhAWRJ87M5QXv+v/CF+5DXo3/H4Lbnak6KRMD9Kw=; b=T43cG5vBH6nOUB
	f5hKTjGYu3cdlYVEfPt0VwkjLG/zNPhQQFHFDhSjoTP7ThdtdbnVyDPvb4YmZzebmKcmTeZ2+5h09
	MbdyBrF3etqZa4RPQbyGdwEHRhM7UoWr4jvdjFHQIa/Zx/b9jAkwbRde8f3jEQu/o9K2GWGFIpJuC
	EfoYZ3qVQpmA2v8hUjgxUf2Rw1hX/nvzpJSRj9K4txYPQX0ASJY3xTpON2siaSmhsd8qUb3HtC5P0
	W8nvtg38reSHoFAW8/vdRs7GvX+lZdLVzL8THUA/ntHX0NTv+e0HhTvMSgPnCo578PQz7mY2Sho00
	YuQqflNJ2/ZJyr+4PLAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1jc-0003zF-1i; Wed, 12 Jun 2019 11:48:08 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1ft-0007FT-OB
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:22 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id i136so7996050ywe.23
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=OMWTVS19S/O2L7wjAg8YO34JfVmTuzDlFYDWpvnlfdc=;
 b=l/pAL0pYNwxIjhI4A5Di3+u8zRy7KDPlydIoJClA3OuILFZkNAGW7KJJpakHJKu6oE
 BOdwx+v3Y6mB0EaDg1WhpBGkC44sbC2cWM9OPunZvHIIMbKjR7+B/dGr9AjLsLmz2Olt
 nLMYnF0Wzf15zXWsTdJBm9qmaTa4PXWly/FRd7uizPU6BFseaNjpN6LtFlJq58pOQv7T
 WsZKhldlre+UFCD7WiBxmS6BBO31lObcc7zusnLdA80L2jwrzKGvI3ypNGCThs2lIqG6
 VybQ3v2ZWx5KHhiRN49MNNAagP8G3S94nC+koOMwbLACD7/N8Wf3tprbj1wNC/YGyAaz
 DFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=OMWTVS19S/O2L7wjAg8YO34JfVmTuzDlFYDWpvnlfdc=;
 b=HEyPlQ6kTwwlpGnKjo3qR9EDkwExuxe8IWxsezewONIxXb05kZt30/p8XzQcbiz+E6
 Ge3KcL1dGKCta5a3ZTZfHyAdv65wbeSgYQxjzRIIFCzvTC7xHHaHTerHrys20+A1g+YB
 s83XM0SH/5FceRpB3t39zNu9hWXwI27Li96af9V9dp+OfYrBSrS1poFPEw/eO7nfSzKT
 kRhvh6vLrTVzMjIA1gSowloA+tTroa7tSQ2xhj1IRGuOuPNndNsFuWYNnRNE/0I2M9dl
 A3AOOjWk2pXPvSAYz90fGKSDjyWrLwD7AuSwG46DxiDi594ieWGOrCkJr4nmJ5mrx5Ji
 9DLg==
X-Gm-Message-State: APjAAAU+iM0r3DHnFkNab5xfw+03gqovQnsMAlBN4d3o0JEvvxlI83La
 xTL9enohEJ6YUc21+TW0G7w84vGnOqCrxQHOY9mVfCF1ACSa5GB3il7bHKodstEo5FGVkVjbe4e
 7jT6VzfSyu2gsGOtLCc/e5jDJrzYL1zBwaaLxZI7Q8bzytvQNdXTWuEYc13KzXtch4YKfOAP8Vo
 mT8/s2RbCEglyYfUE=
X-Google-Smtp-Source: APXvYqwTs0S91VLJ1vEb2xUG3SN6RjfUTygp4K8Hjte1QQ8AktyAJh0LJ+M6BJ5qwoi87JfKLCpvnOyNNEEmSEtd
X-Received: by 2002:a25:aab0:: with SMTP id t45mr38754945ybi.201.1560339854764; 
 Wed, 12 Jun 2019 04:44:14 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:29 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <7fbcdbe16a2bd99e92eb4541248469738d89a122.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 12/15] media/v4l2-core,
 arm64: untag user pointers in videobuf_dma_contig_user_get
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044417_835607_92862F68 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
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

Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
