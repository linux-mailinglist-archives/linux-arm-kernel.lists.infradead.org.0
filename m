Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B42871E94
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:03:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZxVrRTSzAHMRQRaNnO2SqdCw5pwIDdNtL9mYtPgMeRk=; b=BqVtKcHYGAcfd7
	wYOHxb6B7xGU3nHUU/husLuWByAXZMbqtCzwMzu77VzWP7J4HzQ157xh5k/XrLqHwkoUr+hqQEHQ1
	llUce9RitlUpWutrGTMrDY3mFFgx8kFgLu/EJTq+8p3q4oDlB9mV4ZF2mLdECEkNZZMpP0Kt1qdQY
	q3ZsATxCx15mev92Hm+Tyc0nY3yUBsgUxpIqtba5Uifks9uqUkxDFO3mz3v3D0xKqozj+nXi73Rw0
	b2NI/mmMYh05GInFWbm0+xxTdD6ldp/qreDl1Uyp6ioDAxfokKnDDv750WqCLx+k9D+yjYx8oEg16
	rPfBSoQhIirMrTq+GL6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz8T-0001OH-0N; Tue, 23 Jul 2019 18:03:37 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4i-0005mb-Ke
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:47 +0000
Received: by mail-ua1-x94a.google.com with SMTP id s1so4345033uao.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=zUOcAU6p00loQ1nrwWD7GDrs3KRhifPlQNEkBCXrSQU=;
 b=VYKldQtWxdBSrLk5sLC9xz+aQwiA+p9laEjbuJhQ+y14MW59AQItVZb4XUBX4o3STS
 L9JnHbRkn9qNr1J9IZZM0iJZeAOF+VZrFXTsiwFOiScu2zQivLlflg4hR7bzjUfOiPul
 +YlOCB2JPa3W1380wQB/LrhFWVtaDyOhlYe6qKxweJSR67HRGh68c9IWX3GDOjZKGFb5
 Q62/4pR5YzdGLIAhcCOdymu1+C97aJhL6hmlz2Cb/a02TQdVA66PchqiCSNf3yPDUKCI
 sPIwmB/L8x0Lmk1aIlxXadTx8+U7n7WnYlELCxDnDvSJNs7fU1kWK2fSsF6MBML60HXD
 zTzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=zUOcAU6p00loQ1nrwWD7GDrs3KRhifPlQNEkBCXrSQU=;
 b=jICRdFlog53X0iL9a5qbT2F9w1XT4fAdIx0IgLDjt/9gL8yaEW9WrM041vWSwsdkqg
 OkwWyE72haAnkAGaNB+U+kh84Ek/BMyVkQ6/PsZhp5cl9F7dASKatmv8CSOVXTdd9JV5
 kA14SFaVCrYr812q1ni34MvuUm777Lr1sG1FelAYNqLrS1ZzI1qIFahMt0JugjMNyVBs
 7wtb9GTDVVRSreiRi4mozpG5VCfaxVhgbPD8tlAz5bR8DCkFmDvhfETUhsxvXpNZoBJD
 THAMcloTWDUGzfcv091LNuOp6pS1CtwnWsay/LTogwadoLw7j7d29EYsN2Pj8wvi7RSl
 0VuA==
X-Gm-Message-State: APjAAAVHQuCR6XmvkHCIfvBsNkmF86u+l8ufCiMdXbtLDi5EXGCmGYoZ
 x0Mm3wmFG1MbRv45140ZNIkUEYiCWIOvd9Ctncfthl0M4zQc415U9RUbD0y6bd68HxvRDCn8jBT
 iVABkEY62/znbpbuaki37JJRG6UuQUvSut1PIE/7RngINu/Hpg5VgPcNZ2KQGJYQus6eZVq5gK3
 gHgyfSkZKuAQMJQyE=
X-Google-Smtp-Source: APXvYqwKLPKDYRl/Wu0ROV1RQ4E/ZMl8ZV1EzuXeG4/TJA26mw9Ne5fKh3z8AD7u+iNI3pn1/I9GUafVuAQJAaix
X-Received: by 2002:a67:d60e:: with SMTP id n14mr49253950vsj.213.1563904781800; 
 Tue, 23 Jul 2019 10:59:41 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:48 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <7969018013a67ddbbf784ac7afeea5a57b1e2bcb.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105944_980411_EA0509AC 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
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
 Jason Gunthorpe <jgg@mellanox.com>, Dave Martin <Dave.Martin@arm.com>,
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

mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in this function.

Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/mlx4/mr.c b/drivers/infiniband/hw/mlx4/mr.c
index 753479285ce9..6ae503cfc526 100644
--- a/drivers/infiniband/hw/mlx4/mr.c
+++ b/drivers/infiniband/hw/mlx4/mr.c
@@ -377,6 +377,7 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
 	 * again
 	 */
 	if (!ib_access_writable(access_flags)) {
+		unsigned long untagged_start = untagged_addr(start);
 		struct vm_area_struct *vma;
 
 		down_read(&current->mm->mmap_sem);
@@ -385,9 +386,9 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
 		 * cover the memory, but for now it requires a single vma to
 		 * entirely cover the MR to support RO mappings.
 		 */
-		vma = find_vma(current->mm, start);
-		if (vma && vma->vm_end >= start + length &&
-		    vma->vm_start <= start) {
+		vma = find_vma(current->mm, untagged_start);
+		if (vma && vma->vm_end >= untagged_start + length &&
+		    vma->vm_start <= untagged_start) {
 			if (vma->vm_flags & VM_WRITE)
 				access_flags |= IB_ACCESS_LOCAL_WRITE;
 		} else {
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
