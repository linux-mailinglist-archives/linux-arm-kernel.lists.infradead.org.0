Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFEF542498
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:46:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ig8xZzdZzlkA0JpSE97egYCXexeyiNWT9KByEZmWFco=; b=B6ajmyLaeQvvB2
	fMPCtzQCUEaX9G/m2PnEASVKtLq9B29oOWZZ2EioFX7cjKyUYt7YnAjI0oboWlYbsjCnqd4lr6v6A
	/O3FEGzuwDg/+4OjKHVEu/bTyOk4FEIMDTri4CHxsAf5UIaOI4h9KyEQORxhT0xOrEetoaXkvhVp3
	dn9no2WQ+mWC5j079UtQieJ6Ex/YEUSwwb9QyWRc1Tb6HbOj2SjhJjuh1B5VqRN9rGpLjRn7Wq4wI
	KvfGRrUHEylCxwF+VNojH3tbu7d/QApXpYF5oEz21fXnzfntnZ5AJ1Ho5u+2GG3eGyUNQ0ffGqVRc
	lZX18VQ7wxsIx4ByR+jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1hc-0001Yc-Kh; Wed, 12 Jun 2019 11:46:04 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fX-0006rw-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:43:56 +0000
Received: by mail-qk1-x749.google.com with SMTP id d62so3034911qke.21
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=lneYlz8LHaEiU1JdbWuWSlmR06MpCpkboyQbci6TbSY=;
 b=ZYQEd649LLsr0eo67tg5mBkc6yqoxRRkUvXmz72kCnd/9DceAYIH632RHTy/L9FYgN
 XB0cqiUT3202g16B44AOr6KGjUuUQCuOjjfhX/1rdyfTYvOLIoAOYVJQEyUECaYKw2EI
 wRT/I+bn5+fj2NWK1Uq2bsCtdk4XPg+CFAKbAVJ1PN2JQI+rUil/RmfEGI1P+fH7HVvB
 bi61I1IZdPLHbF9O0x6GFnVgN1H+PpiOuX7A6ltMyEW2b4fJxpc44OPAWrBW3bGwUHZL
 UOaZyEvgJIbhkL4J+WjiYsF7XS5CEf84amjDEh8dkaorHVY5qClgPk6YQHyQ5aqjEpT+
 PVjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=lneYlz8LHaEiU1JdbWuWSlmR06MpCpkboyQbci6TbSY=;
 b=Jqq39u1ny85srx9kNcBQ1sFZYLrdLXxCY+DAkNEpTMYz2oIzrEAi4fFqrC6/CJnr6x
 zj/hIZVebOW+ZXa0gy6mrV5PMvHjWXZWRTpT43LmKuVNAXDmAavEC09fWUxkfIYmjU+b
 SoFYvfqnAKfLa0rdEgze7TB4zZDHPsS70do5b406VjTQzk2k1PdGjiZHsTqpLbrqOY+2
 H2rcqvoeBa21ftx1yJNa0Yr6F9dK3lzcBANyl1O+MQsGstMpMC19GVZ8M6ksoRM2JsQK
 oYS+lpsg2mXo4qVufZm6CE95gHwzlzG4dz/5ZxAPNk/nZI7e+XmNhfgmF5ns3uytEoXq
 ZsKw==
X-Gm-Message-State: APjAAAXpJDF30Dy2ayI1XW+CcjElUHXLVOrQDbnR/tP7y7CQ4wVjq87Q
 L46qVQda11cbNxAtyBf91brDZy4mBIWXR+yZSfzcMlgnKI4dzJhJwtv6lVS0WGtJYXY4Y0SimGC
 TU1VxfFE5W+ydjqXAOErWl3/nqHqLphn0Wq/ybd6RUEfHdLuj/dCCBpuXs1XYMJl29GtS24qzaw
 l9CqMJ5KzkIELdJLA=
X-Google-Smtp-Source: APXvYqycBZ/jgN95w1hvszVcRcdW7P9Dg7ub2DyBfBHGpLBHXa9MwJ+9kmDh7H9YZkcwArOGpwiZYJEXckCXcJ6D
X-Received: by 2002:a37:a5d5:: with SMTP id
 o204mr25506301qke.155.1560339832693; 
 Wed, 12 Jun 2019 04:43:52 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:22 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <8f65548bef8544d49980a92d221b74440d544c1e.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 05/15] mm, arm64: untag user pointers in mm/gup.c
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044355_285505_7058C771 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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

mm/gup.c provides a kernel interface that accepts user addresses and
manipulates user pages directly (for example get_user_pages, that is used
by the futex syscall). Since a user can provided tagged addresses, we need
to handle this case.

Add untagging to gup.c functions that use user addresses for vma lookups.

Reviewed-by: Kees Cook <keescook@chromium.org>
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
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
