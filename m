Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 348B7424AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:48:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Of8FxxgOJrz50Z8lIRovUKo78fOcyMX6FoiYnz8HtCk=; b=i/CdVh7bRTRNmc
	mLGzjGH41tuZr8rDy/Vuw157j8nIz6cxhPpfil285ia9ENaz2WLyBTuhAauiZGfdtMqnioXIOQ0eQ
	9FlobHBJwdLAA5Ulz8vGoAFYW85iQOZM6itHtfU44VtuoIbT8rYesW0SVBaDlAyeaFAmuei7Bpn3X
	c7E4LjAg5r6EOeDjYgS4mrqIHcd2a68HKhhdRmHOj3YwDElXpIKOjpafjjaztaW2Xl0ziF62e+nyA
	KusTb02sKkvIUHnF4KdzUYbgM2Zwz6/leBgaWKWR5Aap9uxVtpoHOurk2R0N90wDfWy+7ItOKbVA1
	XzC/fV1KoEMY5YtjZz0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1jQ-0003hD-OK; Wed, 12 Jun 2019 11:47:56 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fp-0007Bl-KJ
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:15 +0000
Received: by mail-qt1-x84a.google.com with SMTP id g56so14449879qte.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=eb4SnUCHaoFPTU0EqMrx7H6L5ANcvzM3zwsiyq0FV40=;
 b=UD79Ay48r+Qt/fUB4eQQS+u7jB3BFWRYtdLCt6Qa95VfLfmvvw7Hya/RkyTUwkhx0D
 +1vmB8M4RBQZbJNIhwkYxv5AEL21ErrNvQCQ8+lOs4BCA4LMOTjJTuV8BlTNIfNEsvvi
 S8RTYx74gNWKftQMTjEJ+kHo6ZnD8masl8ZG8ezS9xy8uaiMn8te593VaiscKSGKojp2
 e5Cc4FqtUoN3q8YTe+OydLtjYtDNOm5Wm5t/bbuGQhbg9sf44AZgifS6zPiIE4WlbsCF
 2CX+HbBHE4vO/HCGylKIpSsIsXiK8frsZe8Lb15lkTfFpYP5OsKznhL91S0FrbJQy23X
 yoqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=eb4SnUCHaoFPTU0EqMrx7H6L5ANcvzM3zwsiyq0FV40=;
 b=YL0HosIgES7HjUtE6p0ukw5Bb3apfXg10QpqR5aQULbC3xX99NQaqMHXBsd2YU3S2J
 WsdSGNM9H0gf9zuT4e0RxobvywbGBkr2BMN4q2DlAehoVAae7e2LgL18thQ6pQ+BjLk9
 ZNuH9A0/iwsDSNVrMRltteynQPNugGY0oFL6YdbQz7oljowTCy2P1XWgnoDSwsUu58Dz
 rhWQbbYfDr8FtT61b5CSKqpWDQspxAvTf7bsSDslt9rPnk67nvsJY2HOOt9gaS+2ph5k
 mv8bSIfpgWEDaJ+MWy/dEgdOzWW7hwIUpcFG82WSjfTFIE2z0yFooWiuz+TM16wflJFo
 T1Eg==
X-Gm-Message-State: APjAAAWTiHMYjhnu+jb2p7UOvvhFn9DiKkeSTPO4Xe1/sqPAH1FResRc
 Fy8IpFY95GB2G3bezol7bPTzeb4UgPmlpxUg56JMQp44EoeZCQBO3zY7mnMiktAQz2Y84Nl1TnQ
 vQS0RS1H+lJi8809MJa05vdKj9rkfVt6D/lONTv/BcZRWfjcgSVBlzC0anVF01UQsK/ZbivTjH1
 2vWNByuOLkL0Baoig=
X-Google-Smtp-Source: APXvYqziQbsGJB+s1a1ziaRcl+e8Gmo6MzSM6gFLtwRxsTnl2K0xyr2RS7DkrrH2w0nPz/f56zeYNt9ix1U3jsHZ
X-Received: by 2002:ae9:f107:: with SMTP id k7mr2472892qkg.215.1560339851579; 
 Wed, 12 Jun 2019 04:44:11 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:28 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <50293fea168d5252f79ee0bf160c64c72edbf270.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 11/15] IB/mlx4,
 arm64: untag user pointers in mlx4_get_umem_mr
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044413_684854_8444620A 
X-CRM114-Status: GOOD (  12.64  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
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

mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in this function.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/infiniband/hw/mlx4/mr.c b/drivers/infiniband/hw/mlx4/mr.c
index 355205a28544..13d9f917f249 100644
--- a/drivers/infiniband/hw/mlx4/mr.c
+++ b/drivers/infiniband/hw/mlx4/mr.c
@@ -378,6 +378,7 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
 	 * again
 	 */
 	if (!ib_access_writable(access_flags)) {
+		unsigned long untagged_start = untagged_addr(start);
 		struct vm_area_struct *vma;
 
 		down_read(&current->mm->mmap_sem);
@@ -386,9 +387,9 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
