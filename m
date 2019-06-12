Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A70A3424B3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:48:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2VwBmCSSwOdKfFajhc08N7ntW8kvIT/nf+LNA5P4Ks=; b=HXrnrOue2/PmJg
	ayU0jiW662SQ/9U+yG5u+INZBCAukDel9IRwekJH+ZFajFyQ6vsTZtLwgTYOdTUPj7IKo5Tf4IQsX
	2gq9MuukUcdC1cT9TFoi0CLJ7ILocVUFlcmIdJVt7Ew2qgbgQ8S/9iHmt5wbBNVb2PNlblmKmdLiy
	PqAkmHyOMFzsvpRZInIRUaMnaDwrJ7BZh90mBl98RCqPml8Ls6ERddoJCAvaMq7ON7Db4qdj8vZRa
	DqfSMCQc/VFALuIEznmfJVhx5ILG5/Ovrl357SLMI/EGxFDRMIHCnc6Q/etWc6+ctb/1aBpBnRehz
	d3O9CaPRvKPIm/c0odCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb1kC-0004cw-Ax; Wed, 12 Jun 2019 11:48:44 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb1fz-0007L9-Ki
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:44:25 +0000
Received: by mail-qk1-x74a.google.com with SMTP id n5so13502760qkf.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 04:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=dC40GuuRrFkQnjrApJXQmFxRiKKrkesKJBcqRTZL8Hw=;
 b=l++ZaaCoh/Va878Z1RknZZDdHUxfk157JnrRAUHz0jkL8fnv4FiiLmIp7Mk+/+dj5Z
 udFWoFOVhW7criNi8EMt8LBSnQaHvMhhUZ7BDvFNW7/H/rP4O9cpUiWmbFdx7WqJb0YL
 NYshnqAqHIeJqfZE1jL/Or9LTpuDIXYOfI1A2lvZRf82GFgwU4vOl8q53aA7Al9b8vAL
 /40xfjd6Br1Z56pIH7ZQuk9+yAf8Fr4GxAKL+l48BRvqpFH3utDdPvwMyQ57y2D4Zbcd
 AbEKWCBEQKFZuNPc6Vhcbi8LrlZtqOM5E/akcRiPUbRsuxCCoPgb7uahyTdqK4vvCrOk
 BhgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=dC40GuuRrFkQnjrApJXQmFxRiKKrkesKJBcqRTZL8Hw=;
 b=SLOJfUGC9UeWqOzN44+EjZqmDg8+0HcR9pe3/OIOOqrjL2f4fFhBEVM5i3VpbJACsC
 NXP/keYD+zmEzJibEo9rEPGu4Ga7OvfU4WMrXx0ngudthzxjwLHSUqdCKozE2YTbjXl9
 8AknJ2jKC4cUuntbFpgYdND5Fqpeo6fUKZHH5CAg0Ouq8hFwrpdTU51UTQTfQa1IQ+jz
 rQi3aW75yh9h2hBpugSE4/GmPErx2DGOdGiWJeklII/2mpoVn6D1gnvbp+gEZ1nhXsOh
 UmfSVJmqK7k3khWE9Hply+xmVZ1AeHCNU9bnINBqTal13SQdYSuacdoJ/ZWVCqcDoAIu
 36XA==
X-Gm-Message-State: APjAAAXnN6FqL22NSphECchzs7khhNJbAJxIXGJKfNO4hsW3FOSM8huU
 e6ZyeBIRCw/GbD92DkSs7ZJj904ecHcxqiTrMVhPd9hmhitnMODb0wLhaLP1ePdLFsEv6e5ti1M
 xJkGHAVa9BebWtsNXbqES7ck9K1AIyGD+JDEu39b3CZ71071bOkvfHzvzjhpBnau+s5aqfCm3ek
 +06aLaS2val+RN+zs=
X-Google-Smtp-Source: APXvYqwZjeFH8QvU8JlQ9TXNVd73FVhiQa5kjrzjuBPKvVuXz62UTyjAI0ty22a00jJqk9SVHlzrZWd7SRmSPg0y
X-Received: by 2002:ac8:30c4:: with SMTP id w4mr67672128qta.314.1560339860763; 
 Wed, 12 Jun 2019 04:44:20 -0700 (PDT)
Date: Wed, 12 Jun 2019 13:43:31 +0200
In-Reply-To: <cover.1560339705.git.andreyknvl@google.com>
Message-Id: <e86d8cd6bd0ade9cce6304594bcaf0c8e7f788b0.1560339705.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v17 14/15] vfio/type1,
 arm64: untag user pointers in vaddr_get_pfn
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_044423_725470_5F4EC6B8 
X-CRM114-Status: GOOD (  11.29  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
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

vaddr_get_pfn() uses provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in this function.

Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/vfio/vfio_iommu_type1.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index 3ddc375e7063..528e39a1c2dd 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -384,6 +384,8 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 
 	down_read(&mm->mmap_sem);
 
+	vaddr = untagged_addr(vaddr);
+
 	vma = find_vma_intersection(mm, vaddr, vaddr + 1);
 
 	if (vma && vma->vm_flags & VM_PFNMAP) {
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
