Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00DA733592
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 18:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tLxP2QgSIlYeVK+YgkY6es2kN/BgzhNcFEal5vD7vU=; b=LPEPW5ZNOsBZjQ
	yCKvvOzz+apitmuMbKP3wVEw6GdAAwLBfsP+2g8AolBkmSlsnKzxBI5WJH69r99rU4koRwI9x9usF
	3lPXnlODMB/XH5EiKmZ0ItI/yOyJyi9xsmhsF6VfYt1Y8vkE/pQNOUZpH0RFj253cqLxDEMWQSLoN
	t16m7Nl0u/hXKNLW8fFy62HY+7/kkGeC8DoAyoyQFSYXe1lgk0DuFrxEN1egm7bwurpja190yAA4U
	ATctCZ3KmFPw3cGj6ub56XDWx+bAO1iktFQS/fTtcrFoOp9YpPjfzXEMmEbEjc6hybaQBvHJj5oZp
	KCfLPZDxRvh4dWP3LfRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXqGS-0001O6-CM; Mon, 03 Jun 2019 16:56:52 +0000
Received: from mail-qt1-x849.google.com ([2607:f8b0:4864:20::849])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXqFN-0008Sb-A0
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 16:55:58 +0000
Received: by mail-qt1-x849.google.com with SMTP id t11so8120303qtc.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Jun 2019 09:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=8pgHCk5wEiyaTFCxwJKfncM1f+2WF9g+TqLFqNfWufQ=;
 b=eM3yvxS7rzZ2nnFYrRtwMpVwIimBA7OeBVGUKG05qqQOYpi+Zis4iOHoCqOn+3sjDh
 2SabES8eFCAsnon36EZg8qxjmj+CW/08eSPui+O8M8q9qj9EihXzk/kg7mFnv1ofmO2L
 6gdrPpvdTVeWEXirSohkSFcGd3CTquZjzaE1d3uIrVhOjCiqBdkigRuAKI8/ID1Mi6ud
 zk8tRRsd3G4px7QGEmRqWs1oq4KZBZQ84TPIW2/PRqcP/P9TeozrBt0HPw3seUNx6jqU
 wgzokqzg3Z9TB08A/q6k7ggwnJy6GtgW83uc4Qh4qCVWwdITo0WCqdd0x9WCtndSuvUL
 /u8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=8pgHCk5wEiyaTFCxwJKfncM1f+2WF9g+TqLFqNfWufQ=;
 b=XbmtlcHzz9JDwDTGgcG2e4xLR1yu4DzxSWi+DgjrDcQnJNV9OwPLS0yvkuF96T1T79
 DlTkdzmracL+nNjTGYc6hu0oItd34Dy2uFBaQ7wdy+5tluhlW74fKa1djeTkU0Zczxsh
 X/U4TnBA7m7TRGfeZ9Fh4nw3h4VWvisX+LkZ8KMVWdjvl/Cz8Z5m7Q61e11D7rGc/Ia5
 6h0+hhx4LGtSRRnVkFw8ihdQ8VYjuR2E1o+cEFyH/UECCeSNZRvq8Z2aiCg3EHLHLj2x
 1V2ubVjMZCnZmqmawONGcygVyB/na6PzP1iAKq2mC72Y10pAqgwIeEFX0lGIaMQ853OC
 ef+A==
X-Gm-Message-State: APjAAAXmOKbI2YCFmA13SVHzaMcV67oWo/za3I/yd9Hxjsc2Zg0EqZ4P
 ToPi+0wnMfHKg4uKV1bNsLgHYrpgC38cC7NwOJq9mTu03VElmSmKPTxbM9h9gJEW9LB8ThtyRc9
 KZLrL9AXMb+YL/jYcKtlUEfC2lFnG1x1+WVoBJILG5W2+wJ+9rBOykDCrntPOD4wmBUj+0OdzBr
 +iUhcKNIs32TpU0D8=
X-Google-Smtp-Source: APXvYqyNatgo8rHVRn4VlhemarHIUF3AdcvyBy1EVpeL8RHKUhqmEsOqMc7TMbe6ArCDJ95BM6gVWf7qKnPTt9YN
X-Received: by 2002:a0c:9233:: with SMTP id a48mr6236042qva.66.1559580942841; 
 Mon, 03 Jun 2019 09:55:42 -0700 (PDT)
Date: Mon,  3 Jun 2019 18:55:08 +0200
In-Reply-To: <cover.1559580831.git.andreyknvl@google.com>
Message-Id: <e1f6d268135f683fd70c2af27e75f694d7ffaf48.1559580831.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1559580831.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v16 06/16] mm, arm64: untag user pointers in mm/gup.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_095545_817740_D9721EB3 
X-CRM114-Status: GOOD (  12.13  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:849 listed in]
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

mm/gup.c provides a kernel interface that accepts user addresses and
manipulates user pages directly (for example get_user_pages, that is used
by the futex syscall). Since a user can provided tagged addresses, we need
to handle this case.

Add untagging to gup.c functions that use user addresses for vma lookups.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 mm/gup.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/mm/gup.c b/mm/gup.c
index ddde097cf9e4..c37df3d455a2 100644
--- a/mm/gup.c
+++ b/mm/gup.c
@@ -802,6 +802,8 @@ static long __get_user_pages(struct task_struct *tsk, struct mm_struct *mm,
 	if (!nr_pages)
 		return 0;
 
+	start = untagged_addr(start);
+
 	VM_BUG_ON(!!pages != !!(gup_flags & FOLL_GET));
 
 	/*
@@ -964,6 +966,8 @@ int fixup_user_fault(struct task_struct *tsk, struct mm_struct *mm,
 	struct vm_area_struct *vma;
 	vm_fault_t ret, major = 0;
 
+	address = untagged_addr(address);
+
 	if (unlocked)
 		fault_flags |= FAULT_FLAG_ALLOW_RETRY;
 
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
