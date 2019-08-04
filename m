Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4254B80F02
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:56:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ke1IX6taOvex841mJwkKEpyAyFnJs/hcqXz8nYVmqnM=; b=O2VneU9CStlhBC
	nQaBRJJgWVf/Ax/mDRpvdBX8PHxZDIOwgyDzs7BFQSB5TuGZEUNN/OSuGyan9olq1LzPYBh1IBGay
	k+DpTRuaIIfRjx1b1VoEQWhbA9A4oFHIp0ApsyVE8Hp7iyZMP4AGNlw5XODKDyZ8GdUjhvSIeCuzG
	bOXYIgS31WyW7r5wxHQqh4O463MqOYfn9+LAgPGj/pNPjAiRBe4XCb+TGMu/5RyA3j+OC/gjHV+fW
	1FXmaBcEJdltry5LkxKV5h6MUnZCGbMGK9/mMPjJWEPUdrKyEVyxOXurkOdNmQLMnHi5JzqRE+SOR
	Hr8/NtHpIBmaYfZF/W3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPQL-0005QT-QG; Sun, 04 Aug 2019 22:56:21 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPK1-0005Q3-Ry; Sun, 04 Aug 2019 22:49:51 +0000
Received: by mail-pf1-x444.google.com with SMTP id 19so38589746pfa.4;
 Sun, 04 Aug 2019 15:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=py067aGaFWqYQnWW3CrL2Yk9VWIyNl4WEpwUsrZ7LgI=;
 b=P8+hbDz6iDdAtFosRygKfZrawOprY/RqOz+jkdBR9/iAK9lQTDaHpPD0YVzeAsadTA
 6buCCtQt6FcRN+b9XggnJ5bqnrb15u93xXHo/kWkRIj/AEZJAg96rbyj3hSasGDU5QMN
 kLomBnFCn//tdm3UAsqLPAHdx4izNhPtZ1DR2n/EeVgTygzhGs4N/AXfq0vWNV5wg6OG
 nDjWxo9WfIwu4zNuVNFOgCWRwLE7DfTE0h0+OhqrWzWxBngYRK81NL6ifxTbjwc0Tsbz
 dA0CzQ264QnjubFwn/fuuREzrVo+nBB4mnVLQqsZ8A+pWd/WcxXuqwIjuSU30F6iEjCB
 X4GA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=py067aGaFWqYQnWW3CrL2Yk9VWIyNl4WEpwUsrZ7LgI=;
 b=VuxQHMQPqMgtlw+0jHCzPe4HIVmgiYiuDpOpy+iFw5/ko/tApQUTzytMMCb+CHfZwZ
 4TOROqhPGEe/aPG1pgENLLtOiBjv5xPIeU3//1yjNzA3qO0LOl4jYNmSlWPd/4qja/IW
 kVtBIKjwdHNP4oOSGSik9fK7YCT+A+WOmi9qkMI1R0HTgdFPukbUWMF3o6fyF/RKok8h
 YK72vP9f83rw6YzNKEc63z8sd7pf15druxEp1Mgp737Eg0hIQdtkyLJVShkrOlmLOEdG
 LZFYXeHQYStn4Q8Tmhtw+Gk4tk4pXwRz8AfIoURA4Kpts0R8Jxd9NM8eNbGJBkupdqxk
 vgyQ==
X-Gm-Message-State: APjAAAUQ9z2Y93WvPOzUsOZsjX3T+/mzUWIduBBDxRVsXwuMcd3Pn0jF
 lJdDA/vFNlUKMzraSUSIAw4=
X-Google-Smtp-Source: APXvYqyegNlmLCsE27HWcwEQVob39MHAl+cimFnsXUYquTno1Yk7+aU+Agg2DBt67SqnkuavcPllBQ==
X-Received: by 2002:a63:29c4:: with SMTP id
 p187mr82820390pgp.330.1564958989494; 
 Sun, 04 Aug 2019 15:49:49 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.48
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:49 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 19/34] fsl_hypervisor: convert put_page() to
 put_user_page*()
Date: Sun,  4 Aug 2019 15:49:00 -0700
Message-Id: <20190804224915.28669-20-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_154950_144370_EC865725 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 Rob Herring <robh@kernel.org>, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Al Viro <viro@zeniv.linux.org.uk>
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

This changes the release code slightly, because each page slot in the
page_list[] array is no longer checked for NULL. However, that check
was wrong anyway, because the get_user_pages() pattern of usage here
never allowed for NULL entries within a range of pinned pages.

Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Kees Cook <keescook@chromium.org>
Cc: Rob Herring <robh@kernel.org>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/virt/fsl_hypervisor.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/virt/fsl_hypervisor.c b/drivers/virt/fsl_hypervisor.c
index 93d5bebf9572..a8f78d572c45 100644
--- a/drivers/virt/fsl_hypervisor.c
+++ b/drivers/virt/fsl_hypervisor.c
@@ -292,11 +292,8 @@ static long ioctl_memcpy(struct fsl_hv_ioctl_memcpy __user *p)
 		virt_to_phys(sg_list), num_pages);
 
 exit:
-	if (pages) {
-		for (i = 0; i < num_pages; i++)
-			if (pages[i])
-				put_page(pages[i]);
-	}
+	if (pages)
+		put_user_pages(pages, num_pages);
 
 	kfree(sg_list_unaligned);
 	kfree(pages);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
