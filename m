Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2EDE1B29B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 16:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YYWJnr+A3h/IFwY9Tp0r5ELMyYeZp+PWuArlhJeXdl0=; b=Enal+Hh3ei6oBX
	tYmadfwWpdurB7bzwzjuZnhUELjgV9pu18z+DMkr/IVdnTKVc1nVp31zYqVC88w3kKMQGI7Bh5UqG
	LURl8NqvtmGLKOiBVY/UEO7QGb0GdU0dTZ2aaGDBN28QpyE3q01rUOy0PkamrmzMANCcIbE3H1GC8
	ol8UPsrCXlvTsbeIHpiNenCI3YEr56a2DKhAkApaORryC21mo5yAGWz8dmBBGpmH4f9wF95a7N+7n
	J+J9c6hfi7UlphMe7nCuUXJe+3jkfVo3AeEP/8Tq9aYWYjGnHHwSPm8lgMsbUop/G6ldAqgz6YwU/
	HLwPXzwODI6m9eEwcapA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQtvc-00062e-OV; Tue, 21 Apr 2020 14:31:12 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtrI-0008SR-CG
 for linux-arm-kernel@bombadil.infradead.org; Tue, 21 Apr 2020 14:26:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=vASImfU3opfeoUkq6M1ouTKEtU9tdZWDOE2qobPxFlY=; b=H47wNvabECfO7IpeiWdJmYGieS
 91tGrHWmwvyRzrrqaDc9W3GCa7Ep2FfT90wueZjxrNR/em+GmrQItPovlodn/HJdX0u7clwsjivfi
 JVtzTFS/8QwMZNR7qt7ltRjQ8qzwg5kI6jdutRYnoyConjCyJ2eAGpUNZocC+6r51ZFVhVe6fWr1z
 QRGUN7expubYVjwWU+TPYEBvvSoTrFB1ym9f4gfcfh+H/ai9cP3gbsg5uqTO7/5vNsIaFFD5yVe75
 5k5stEmd4frciLoYlKKewD/T56eSG/xjJPtUJz0LHsWMGZju3uED1z2ejZfO6gU9EdrLxh741u4G4
 iz2L4rEQ==;
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQtrF-0000mH-L6
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 14:26:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96AEC101E;
 Tue, 21 Apr 2020 07:26:38 -0700 (PDT)
Received: from localhost.localdomain (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 06D3D3F68F;
 Tue, 21 Apr 2020 07:26:36 -0700 (PDT)
From: Catalin Marinas <catalin.marinas@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 15/23] mm: Allow arm64 mmap(PROT_MTE) on RAM-based files
Date: Tue, 21 Apr 2020 15:25:55 +0100
Message-Id: <20200421142603.3894-16-catalin.marinas@arm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200421142603.3894-1-catalin.marinas@arm.com>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since arm64 memory (allocation) tags can only be stored in RAM, mapping
files with PROT_MTE is not allowed by default. RAM-based files like
those in a tmpfs mount or memfd_create() can support memory tagging, so
update the vm_flags accordingly in shmem_mmap().

Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
---
 mm/shmem.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/mm/shmem.c b/mm/shmem.c
index d722eb830317..73754ed7af69 100644
--- a/mm/shmem.c
+++ b/mm/shmem.c
@@ -2221,6 +2221,9 @@ static int shmem_mmap(struct file *file, struct vm_area_struct *vma)
 			vma->vm_flags &= ~(VM_MAYWRITE);
 	}
 
+	/* arm64 - allow memory tagging on RAM-based files */
+	vma->vm_flags |= VM_MTE_ALLOWED;
+
 	file_accessed(file);
 	vma->vm_ops = &shmem_vm_ops;
 	if (IS_ENABLED(CONFIG_TRANSPARENT_HUGEPAGE) &&

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
