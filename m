Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 882A6841BE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:45:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzUW2PmNs8NCjfTCRgcactvhrTPwfzIg4AU2KwbXmU8=; b=qiSDAS17YfeAK4
	A1FazB4NV1UQT5/XU02ze3cK5o0pQRCuDLoOvFSF4NVOhpouq5zW75cUipaJdyUAuB6JZMzGaUSvJ
	ycDNNehJqRMjAxp3yBShJLEvA+6670kmHq09iv+EhxTIRDLvBKfqmbJ46ZnXK3SSuYzo+XGkwDGh1
	zYPzRLTR1IexJk7FuDlci81datkbEMXQnCHY1Bk2U7ExonWLu2gNHRMYuaGR1PSg9RvrCRJCszD3E
	e3tKT9qyosqbTk3fMLsOljzkppEVETc+jAjjFmiOJcgmhwG+12UQ7MWE7dscvQeugJBqJwgWpyFL1
	O115MTp1ewbcL5MCyU/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvB0d-000859-KZ; Wed, 07 Aug 2019 01:44:59 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqk-00033e-CL; Wed, 07 Aug 2019 01:34:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so42544340pgi.6;
 Tue, 06 Aug 2019 18:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=30MQZ7ywyXKAPoZ0MqYExKYsjkeLdKEHUByfnmRZCb0=;
 b=g67RvuXxl/7UgwJ5Nsn5m7mCWAd1eJK19OdXPfHISavNg0/hlxqTRWRiZsiObbIxd1
 z7nTlGaqHPYV4ywgcbsmss6gPc+YHifTLpOQY0K91PQUhyOYukJschqLsfaVLze8bLh+
 aV53NaTAotE5e+jR4GjhaqKTLNaydraqrAumktndCtlF4SiNrqRjpIehSehjFa47DX/L
 ADmdLxhsKJt3PHVHlUoQeH6o3x8T/NrnTA5b/OM8c9NkahQxV1Hajc7XXSthUzvuQiX4
 tXYs8SD3Ckew9oHpIJy9DZatkhmnngs/Je/q+s3mKD0DprEGB/SuCd9kYNKpjjLfUk8q
 m4IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=30MQZ7ywyXKAPoZ0MqYExKYsjkeLdKEHUByfnmRZCb0=;
 b=hHCJc8+4rDaJiHt/K0TF/ZjbNLar7x4JyT8BQ9QfG1/0/5byoTYnbHuSasbYy/RQW6
 lpZ+b/0F5t9HsU5FfEb9NLHl6HvfrZze0pWjOQkvlbNzS3pM5YoLD/R/YGN/WyUsX0+P
 rfSFmSMMWSEBN4ufquom6b+LfEIH99MaNF+/jPJvncH+cVi5GKL3GxTcyBMVNgU6EpgQ
 PijNEG/ummDgmFZhr12wAa1Xd2TlMUspIJpY79JCJAp9sGT/uwINGScd0CZGEFkIAzpD
 QjyQ2evTqcjEUx2cSwb+tjVVJSXbV0vCHKFCwj2F90bDMpJU/t1kBVXwa+UQLrXv83FR
 3KSg==
X-Gm-Message-State: APjAAAVtNHTGgunzqTEfX/E9gW3D8p30/fgZIbjyXvx7gt3fdXReiP8c
 o4syRf8d7Zaj+r+vkRtQ634=
X-Google-Smtp-Source: APXvYqw4IyvxT+a447mG7S7T32nq/0vx/OylsLzm55tU7UOjf2NCx+Dmal9oDg9eNuXVr0J1x2ZUyQ==
X-Received: by 2002:a63:36cc:: with SMTP id d195mr5452828pga.157.1565141685421; 
 Tue, 06 Aug 2019 18:34:45 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:44 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 38/41] powerpc: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:37 -0700
Message-Id: <20190807013340.9706-39-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183446_541907_D3BE044C 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-fbdev@vger.kernel.org, Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@lst.de>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: John Hubbard <jhubbard@nvidia.com>

For pages that were retained via get_user_pages*(), release those pages
via the new put_user_page*() routines, instead of via put_page() or
release_pages().

This is part a tree-wide conversion, as described in commit fc1d8e7cca2d
("mm: introduce put_user_page*(), placeholder versions").

Note that this effectively changes the code's behavior in
mm_iommu_unpin(): it now ultimately calls set_page_dirty_lock(),
instead of set_page_dirty(). This is probably more accurate.

As Christoph Hellwig put it, "set_page_dirty() is only safe if we are
dealing with a file backed page where we have reference on the inode it
hangs off." [1]

[1] https://lore.kernel.org/r/20190723153640.GB720@lst.de

Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Michael Ellerman <mpe@ellerman.id.au>
Cc: linuxppc-dev@lists.ozlabs.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 arch/powerpc/kvm/book3s_64_mmu_hv.c    |  4 ++--
 arch/powerpc/kvm/book3s_64_mmu_radix.c | 19 ++++++++++++++-----
 arch/powerpc/kvm/e500_mmu.c            |  3 +--
 arch/powerpc/mm/book3s64/iommu_api.c   | 11 +++++------
 4 files changed, 22 insertions(+), 15 deletions(-)

diff --git a/arch/powerpc/kvm/book3s_64_mmu_hv.c b/arch/powerpc/kvm/book3s_64_mmu_hv.c
index 9a75f0e1933b..18646b738ce1 100644
--- a/arch/powerpc/kvm/book3s_64_mmu_hv.c
+++ b/arch/powerpc/kvm/book3s_64_mmu_hv.c
@@ -731,7 +731,7 @@ int kvmppc_book3s_hv_page_fault(struct kvm_run *run, struct kvm_vcpu *vcpu,
 		 * we have to drop the reference on the correct tail
 		 * page to match the get inside gup()
 		 */
-		put_page(pages[0]);
+		put_user_page(pages[0]);
 	}
 	return ret;
 
@@ -1206,7 +1206,7 @@ void kvmppc_unpin_guest_page(struct kvm *kvm, void *va, unsigned long gpa,
 	unsigned long gfn;
 	int srcu_idx;
 
-	put_page(page);
+	put_user_page(page);
 
 	if (!dirty)
 		return;
diff --git a/arch/powerpc/kvm/book3s_64_mmu_radix.c b/arch/powerpc/kvm/book3s_64_mmu_radix.c
index 2d415c36a61d..f53273fbfa2d 100644
--- a/arch/powerpc/kvm/book3s_64_mmu_radix.c
+++ b/arch/powerpc/kvm/book3s_64_mmu_radix.c
@@ -821,8 +821,12 @@ int kvmppc_book3s_instantiate_page(struct kvm_vcpu *vcpu,
 	 */
 	if (!ptep) {
 		local_irq_enable();
-		if (page)
-			put_page(page);
+		if (page) {
+			if (upgrade_write)
+				put_user_page(page);
+			else
+				put_page(page);
+		}
 		return RESUME_GUEST;
 	}
 	pte = *ptep;
@@ -870,9 +874,14 @@ int kvmppc_book3s_instantiate_page(struct kvm_vcpu *vcpu,
 		*levelp = level;
 
 	if (page) {
-		if (!ret && (pte_val(pte) & _PAGE_WRITE))
-			set_page_dirty_lock(page);
-		put_page(page);
+		bool dirty = !ret && (pte_val(pte) & _PAGE_WRITE);
+		if (upgrade_write)
+			put_user_pages_dirty_lock(&page, 1, dirty);
+		else {
+			if (dirty)
+				set_page_dirty_lock(page);
+			put_page(page);
+		}
 	}
 
 	/* Increment number of large pages if we (successfully) inserted one */
diff --git a/arch/powerpc/kvm/e500_mmu.c b/arch/powerpc/kvm/e500_mmu.c
index 2d910b87e441..67bb8d59d4b1 100644
--- a/arch/powerpc/kvm/e500_mmu.c
+++ b/arch/powerpc/kvm/e500_mmu.c
@@ -850,8 +850,7 @@ int kvm_vcpu_ioctl_config_tlb(struct kvm_vcpu *vcpu,
  free_privs_first:
 	kfree(privs[0]);
  put_pages:
-	for (i = 0; i < num_pages; i++)
-		put_page(pages[i]);
+	put_user_pages(pages, num_pages);
  free_pages:
 	kfree(pages);
 	return ret;
diff --git a/arch/powerpc/mm/book3s64/iommu_api.c b/arch/powerpc/mm/book3s64/iommu_api.c
index b056cae3388b..e126193ba295 100644
--- a/arch/powerpc/mm/book3s64/iommu_api.c
+++ b/arch/powerpc/mm/book3s64/iommu_api.c
@@ -170,9 +170,8 @@ static long mm_iommu_do_alloc(struct mm_struct *mm, unsigned long ua,
 	return 0;
 
 free_exit:
-	/* free the reference taken */
-	for (i = 0; i < pinned; i++)
-		put_page(mem->hpages[i]);
+	/* free the references taken */
+	put_user_pages(mem->hpages, pinned);
 
 	vfree(mem->hpas);
 	kfree(mem);
@@ -203,6 +202,7 @@ static void mm_iommu_unpin(struct mm_iommu_table_group_mem_t *mem)
 {
 	long i;
 	struct page *page = NULL;
+	bool dirty = false;
 
 	if (!mem->hpas)
 		return;
@@ -215,10 +215,9 @@ static void mm_iommu_unpin(struct mm_iommu_table_group_mem_t *mem)
 		if (!page)
 			continue;
 
-		if (mem->hpas[i] & MM_IOMMU_TABLE_GROUP_PAGE_DIRTY)
-			SetPageDirty(page);
+		dirty = mem->hpas[i] & MM_IOMMU_TABLE_GROUP_PAGE_DIRTY;
 
-		put_page(page);
+		put_user_pages_dirty_lock(&page, 1, dirty);
 		mem->hpas[i] = 0;
 	}
 }
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
