Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D472A50EAC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:38:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nnl79nTnWQQE1q+0UJJbWLwpYorGxVwF9pg8aC2x2MA=; b=ssRO2dVNhgjFL1
	nfTSbbXIg5y8VRPH+YvxEgj2nRqCmMYo7ZWe32PNBdW5JviEcksaUWP+mTIr59Seqow1Jv+SgjzBt
	GTv7GGyCI90JP9+bn1jErsRRv+AbxGlqR4lDmq0Xz5dzmIfYFewdiWka03MOUc2rjqt0tIQfT1QkG
	iwwHbhjQ6MMHlPGW00bVQN3r5cDSrfBHxC1YDJR02LsLaFXvN5bDSPFhKDUHvM+QhzQdkXTg0foMZ
	Ovxe8xu938koGY/dJvHBtT7zFd0d1zd8jORBNupbw6PvZMoHVfboIWrTso4194YftB0OSKYHIXcGT
	XpLX2VdSqMXdynkCPLaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQ78-0001HB-9F; Mon, 24 Jun 2019 14:38:34 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQ2b-0004ln-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:33:59 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id a11so3941365vso.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=/YALAWfXM1Ec4B1lOAT/D+NA+cyFiVncn64tZ/r98OM=;
 b=Ql48XStLri/shxEZnh2m2bPKZuWW0LbLVZb7Ke39XzoW6tnlHJqvY/w3tAOiQXd+HY
 +m0w0vy4Nc92IOCtwaAefDtVWKaMPae0qEokqCFh/15Etg3mPj9l+0y/QojMsq+32GDL
 FCc4x1guuctj7Dh9w2rpqoJJMnqXSJhRdYAnuBaH1m5ApCPzHjNZOJsEgqVYOMqcq1IK
 z4bmcgqikB0YNciNmYj3+oZnFq+Z3IRAKc7+MbjrKJ0m2yo/N7qQZlR4Wduu+I3SYaAM
 An3oELmPbKJBGAW9gnsznPT0Ku3QQIngN9+ygpAFQEEHuUfYflrAf46HUzwiWP0xvwhX
 EWWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=/YALAWfXM1Ec4B1lOAT/D+NA+cyFiVncn64tZ/r98OM=;
 b=Y7HD27CqBf03gaDbpY61i6BoN7XNWgntIswoNmLcIJXzvo54GltfBsd6YXFsycJ06a
 l2r76brRIl7e75I7vOVh7XwUDv3vAKYVOPQgLtseltKGB+jO2yaMK6lPXUVACO06Y7hb
 Tv4XUtrEG+X2mnQBCef+ssvw+CJfH4qPo7IMgUlHcSoJOjzXFc2AkImNINCXnSjoNZrW
 dJtOiFdND8xClQzMGU6D7OcjZEt6rZzX/T96hgcRJ2CYqUMApCRTJdJ3VXupiafkg9rJ
 n0QY7iviy8YQ8UNfjRSiEb1rZE+rlTKbcfqWiuMoK7rAokBAHbMJb7S+yRpNwsn0Oa2J
 WupA==
X-Gm-Message-State: APjAAAWifUgu0acSusVLmVEC8Qb4Wsqujy9kMTXXtFNYMadzA3d/dbu9
 l97j+djiEZQeJi2QzIt64QkKIHNgU2cFszqoSgVgCHZ9dGSlMkqSNk/u5qw+k8Cm7aAyjKXtAa6
 3ewgAbVhyiiO6DR9Rqk9gVsuLakny8o166Oyms75QMQff6ChqbcWJ32XOTZJPi+hejdGAoz7xQV
 oAhZLF5d1I/A/3ib0=
X-Google-Smtp-Source: APXvYqzcPL+MfuI0G9Nd/HSZW5720Hxob5Qe3sb32I8/yavc0Ub0kNUbvXmDnUxRuwL2tRyo+O0TaelZxw+BF2mv
X-Received: by 2002:a1f:7dc2:: with SMTP id y185mr1688822vkc.51.1561386830607; 
 Mon, 24 Jun 2019 07:33:50 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:32:59 +0200
In-Reply-To: <cover.1561386715.git.andreyknvl@google.com>
Message-Id: <125994bfab8f29da8f58c8fcd0d94ef4bf55b3ea.1561386715.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v18 14/15] vfio/type1: untag user pointers in vaddr_get_pfn
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_073353_682386_A1A12222 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
 Eric Auger <eric.auger@redhat.com>,
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

vaddr_get_pfn() uses provided user pointers for vma lookups, which can
only by done with untagged pointers.

Untag user pointers in this function.

Reviewed-by: Eric Auger <eric.auger@redhat.com>
Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 drivers/vfio/vfio_iommu_type1.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/vfio/vfio_iommu_type1.c b/drivers/vfio/vfio_iommu_type1.c
index add34adfadc7..7b8283e33d10 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -381,6 +381,8 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 
 	down_read(&mm->mmap_sem);
 
+	vaddr = untagged_addr(vaddr);
+
 	vma = find_vma_intersection(mm, vaddr, vaddr + 1);
 
 	if (vma && vma->vm_flags & VM_PFNMAP) {
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
