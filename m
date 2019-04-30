Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03062FA51
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVZrHD0NRtB+O1Bld+emMhZ99L1lnfNYxeiJ81Du9/c=; b=Gau7bhrucpKDB/
	z4jZv0BtDetWj+Y59OwK9QDGm0xYTNUJxjxHwet5egPY6A2x4Li56cE18GRqS7OIKaIbDyEmu+9k3
	hG6ewmiFxPSAGilWliG0mu6lS4jhKoU/f+X8le25l6u8lW4VqyfqrBqA+UxVCDvsPZizQ+k5/z6f2
	ULKHfVsKx+wMMv5cVrgHzkKC3ZobU+e7a6uu42I7rvZ76gCRQMFKai3pIES4RQ1MBSRZ8uLrGggZN
	RIhFlfso9BydHKmXKYCjiXffPy829+Prcwiu9sJUk1WVn7CJDWY0p0bo0xrBiSJggV6SFZLPVkZyB
	59zrV/i3RHAijmmBio5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSob-0005Od-Lr; Tue, 30 Apr 2019 13:28:57 +0000
Received: from mail-oi1-x249.google.com ([2607:f8b0:4864:20::249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlm-0002Hg-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:26:24 +0000
Received: by mail-oi1-x249.google.com with SMTP id a29so5414305oiy.18
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:26:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=xNbRPHb0QaxGlTA7s33PjaJCVzzZC2iohEMIfDhjOnw=;
 b=G3VBJNj1Efd82TURXBcG2ETfYyZa4nNQbw5XcSPgrFNgGTDcrjKi2K3Iqxh9GCJaVT
 q4ybexiR1zpb+d5J4+ktYX//GzTjjx7hvSHawuAMH2628bR7wRgw71HvGhNfTflHW/zs
 Atp0zpFkZrhjqB1YK2fIhTRq2d162F4gSLgDXmj1SWW0QKaRzutUGTNf9j2DzCy8DQXs
 6qis1IjWlpcydKHrLlqfebzxPQ65WrUm0DNZpeC309u8+WueXbRuj/bbSEKVwswOSRBh
 9Q1k1UxCvXqArWAzlxVP1yBw+FzmFzBJan3FvrRViSuycjCJ8f4ZVoJHTVS0bktu9b7r
 znhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=xNbRPHb0QaxGlTA7s33PjaJCVzzZC2iohEMIfDhjOnw=;
 b=B9mlgz2cSLsEcPfJ2wP+AB8BMkrSBX2rRXVsQLKM7RrqUqYokCVvb4NvYdZJnqMeml
 NK5jfW/rfwZddz0aZMjpnVtqVuPOvdRRq+gZS8i6eipkNQmWVX9wxWoxwGvbtAi1hq/2
 6VTmYucb4zhxOC42Uu367+HpB07RHE69MmkS6fUzUrsaJ8HzfmIrJNibrKIKDgy9LdMG
 FdrymVyNMSwVcJ3BYkdkjiEKMorsI0Y546igb/T7HzDyuU1SXZwyyjujE5oEAuEqQepF
 PyL7xvuCWGyAgC6G8PFXXOss5jU6X+PlV/3sVZmlsWiMcmsJsEmsJuNm1yl11CntxRCI
 4y5Q==
X-Gm-Message-State: APjAAAURcGnM/m5svBzJNb38yuVnW682Yx3E7nXavHIjv9/oyfZX+Mn9
 TyMYsR6M5HTcCY6kxT0tGWQj2NEkf67+0mtIbaiaQV/oFLdGlHGDkbdOhwS/oZx5XQKdc3WwQiU
 LX+BR0TSL/QsYjJoO4YUdnyM0z3n63VJRRbkVo0nsLO45JFxLeHp3NdxlFoFBZ4v+hAkcQXq7o0
 bseZT8NNc40sW2zJg=
X-Google-Smtp-Source: APXvYqzqz0hM8566mMMykEcEDE15qguKaKv3Gnp85A2T0WJw46tHTZ3v4v+uUTcgMqiUvlhCC6+9Qaw/183DYgvX
X-Received: by 2002:a05:6808:4ca:: with SMTP id
 a10mr3005375oie.35.1556630760913; 
 Tue, 30 Apr 2019 06:26:00 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:10 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <66262e91c1768bf61e78456608a8a5190ea4e1d8.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 14/17] media/v4l2-core,
 arm64: untag user pointers in videobuf_dma_contig_user_get
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062603_145822_83D3FE69 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:249 listed in]
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

videobuf_dma_contig_user_get() uses provided user pointers for vma
lookups, which can only by done with untagged pointers.

Untag the pointers in this function.

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
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
