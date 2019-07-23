Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C288D71EA1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 20:04:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M0wNrJ8ArLsyLlwcp1vJfWCCSimBuGnZfsl2uMzgZpc=; b=i+8GQWvKloBCyV
	sefsQyPFx4QCa/PfC93djZs65MeH1CR8N4Mqg7Si4G2KOWL3d34J767H3N0vwiTV7Dld1pgdDHovp
	YI46o8pvFNwcl5jE2/mtw3vqvqIufayNKXnURuVw+iGGhWQ0bEsQb1YxESDJLuntCs3wJb6/pRLox
	1tuGVQZ/FBbgRFpnmsvDmyjlyFV63ipSXK6N0YJqQUFWZ7OeMeig7+RZAT9YSnli2IauVQo9acrrx
	llkLr9juEkzlffcj9uLGROApDxYfxxNB5uaxuOWy064uQwQmcg9W7/V2rjjhXk79sjPTquJFbfNJu
	GwGd7o9osQXC6JUVWs/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpz9N-00028L-6R; Tue, 23 Jul 2019 18:04:33 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpz4r-0005ua-J4
 for linux-arm-kernel@lists.infradead.org; Tue, 23 Jul 2019 17:59:56 +0000
Received: by mail-qk1-x749.google.com with SMTP id d9so36987885qko.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 23 Jul 2019 10:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=bykoKqk+RfxIttYDE7/GdnEkPwV+NEF/LkGgW6aheBM=;
 b=t2L6A3co0IUcO5jJEupAYqmfSwA1Pmfl3+ZcIn/5Q85mp2WLmhw1iqLCswQ9as3aOF
 a0D+pYMEhkdmm+KSqXmSiU/lD0Pz3h6uvkPAeVEHs1IFoAwnv5BA1YbF3d7nwG6M8iRR
 Z5NEOhmfG5y3nopQ695DATYQQfXAIYJG7yd7F+lB9VoEza1F669VXhs6jrCa2pvOvN6l
 r1p+w7pUdDXihW/3CqVYzRnheU9A6fqtUiCr4NASapwor3nhJC+/jeMNYPGIPNIFjoFu
 E4g9GrA8tUOQtGrCF4JaEQ7hr5aZJYBDV43aYbaG/BPoNEA3mTX8DLrogiBkcDNJOYJ5
 rrBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=bykoKqk+RfxIttYDE7/GdnEkPwV+NEF/LkGgW6aheBM=;
 b=qPvy8M8tacma3tgYFyaEbm7BNqSKk/hnaz3vTFSUtOiaeVv34PPd4EfN3f8TCcjstK
 zkMxDGBdhHsHb2yccMskt9JSzwKE9KYa+OphyHsxgQK6gOGbxuMJBEz59gqj18vH2u9G
 3Rq6NYXSu85AsnK4RIlyAlrjXhkI7m7kMUbymXjp5vQ7B4bJI0Kc8b7rfOVhhD94gBqf
 hEKUxKnWavb1plrOgVOyzjWpCjmNy0j1iDP2Pl24zYy9QVWv+IMo3VvDp21heId0nVZ6
 daGMSFO5KgrlkVSxumsAlsAzuba6QnpGUzHb/vivAnuIhgoOZG4piHsyPiYU1FscPLsP
 JQjw==
X-Gm-Message-State: APjAAAUadwSaMdIksNEdi/hPQIOlr0/LkKowLpfimmvdyTraiaCziyg7
 VgUIlWtEH/bFDxuaOxXMraDb1PQsbN92vtfw9EVOQgQsRA+Gz5DoHguSwcxycJobhjW3fMUK/R/
 1Oe8/qgwbDGOSaMawtnu2mIdVoJUbhCsVZgnuplfTxBsWz+nENkDUtWpb5n1YEi7Y1js1E9bUeI
 0sccqFyYw0MPq7xEs=
X-Google-Smtp-Source: APXvYqzy6KvMjkfI7Gkvl5k12zd++ICAyNUe8J8soJHrycJkzCW148ZA79khH20QvBebUrjeGJ/TSw9Gqxxo1fEA
X-Received: by 2002:ac8:7251:: with SMTP id l17mr54199388qtp.277.1563904791730; 
 Tue, 23 Jul 2019 10:59:51 -0700 (PDT)
Date: Tue, 23 Jul 2019 19:58:51 +0200
In-Reply-To: <cover.1563904656.git.andreyknvl@google.com>
Message-Id: <87422b4d72116a975896f2b19b00f38acbd28f33.1563904656.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v19 14/15] vfio/type1: untag user pointers in vaddr_get_pfn
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_105953_725865_AB132EFF 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
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
index 054391f30fa8..67a24b4d0fa4 100644
--- a/drivers/vfio/vfio_iommu_type1.c
+++ b/drivers/vfio/vfio_iommu_type1.c
@@ -368,6 +368,8 @@ static int vaddr_get_pfn(struct mm_struct *mm, unsigned long vaddr,
 
 	down_read(&mm->mmap_sem);
 
+	vaddr = untagged_addr(vaddr);
+
 	vma = find_vma_intersection(mm, vaddr, vaddr + 1);
 
 	if (vma && vma->vm_flags & VM_PFNMAP) {
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
