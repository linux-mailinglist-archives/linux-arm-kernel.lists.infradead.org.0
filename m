Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56F6080F32
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:57:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okMzL/r/np3hnVn8Q01AQaTqt1uL66qIrjV4EAlt++M=; b=E5D7GCL4ecbOJt
	Ty3Cvr6btqCgjwlf7inC1Ccw0EwY6EBpKINAuoZLy/PjhH0Cc1vWySOK5nZJIbvdm1F9lrvuPme3i
	VZKp4ffaxysXXxNuGrRj705DV/w7Fk3iddDqXJwDtkLRwFehQzDbFybLsUgvA+qD2+FAsczPFtDQb
	79Vfvggd6bCDHh2Cy46vQ5BiY4eU3eaA/ZEK6DJyT2hhf20iAF2yENbWJibVRjoVTnry4o5C0cgXt
	2C+C5ILZ65fMvzwe3Z+FMFFom6ZwRsTswG4C4yv8CeahgFt8DOVNSQAErH3TK9ccOwU3D21+pz6uK
	+qTv+KtomI3aKs1SMD1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPQw-000606-3X; Sun, 04 Aug 2019 22:56:58 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPK4-0005Um-Rq; Sun, 04 Aug 2019 22:49:54 +0000
Received: by mail-pg1-x542.google.com with SMTP id t132so38659880pgb.9;
 Sun, 04 Aug 2019 15:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=dM/IGJPKx3vHMSaH2jjH8cddB9IjzpJgXXKkO7CuRXnxMJrRMmXVqwBAlQ88WzjX5h
 dPH11zKs16Cup5MqaIdJ1qgQ5dnUSJO3TyirSMdWy1ehRY6u0fAfZaZVJnTvSLI1QoSZ
 1OPtp46Njt0JJnUOBtfou4qDlL/RKFcmnKhvrMMghCphBN24qaIVDJrBrmeB7g2Z62x7
 9z4wjKe5TgqpPsxN1F6MtFwbERWIIYczU3Vlcoi9Bn6Io4pS8zl9BxvD7OfIkvOk2DHe
 bKWOTx3ItGlZJtYz9ERx5/QSr4d6lkRb9ThyPESwSqEPXbfdWPFzLZ85HYqnnwwoanPc
 GvtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=WBNwzBbPaCrshx6wo1/5i9IZOVgzzvBKJBgC0+b5wY2vAjxhqFcgXLvU/7+YMuMRR+
 1Zh2diPMRF1est3Ir002b55UiCoci0F6tJmkDy+q/cpfL058h4fTv8N5VaJJM3ck98zb
 LphvnxbOnrVyy58wWxxmupBCiJbhudJZDL67ssyiQye+tVwGUFOg6UYSGYCPPy+wzX8e
 DiTN2y0eC0FwJu6ZR3C+iPNiid6N5N8mZx9wvcQzqmL8Wio79dvvUGMjr8tDaTsEBp9a
 3iFtCAP5qsPsAZzJzJ48BtkRY81hyJBJiwEMZ9RZ9YuWIvlhxEEzt/jyRuXQ9VFLM7fM
 j8Wg==
X-Gm-Message-State: APjAAAUGZfwAbVdED5pBVEOJJ6v4pvxUGVmAP5Y4rDcgfG3TOPKww9m3
 YZqbIriiW2HcMZixepe0ceg=
X-Google-Smtp-Source: APXvYqwq/YfHOhrmZHkD7vjJE2TMWCM5ZcaZGqo7qwngyLyrDMEmQDpJGD3vf7HiLmlT/OfJiu4DXA==
X-Received: by 2002:a17:90a:360c:: with SMTP id
 s12mr15495527pjb.30.1564958992495; 
 Sun, 04 Aug 2019 15:49:52 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:52 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 21/34] fs/exec.c: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:02 -0700
Message-Id: <20190804224915.28669-22-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_154953_252404_EFC58CBD 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, Alexander Viro <viro@zeniv.linux.org.uk>
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

Cc: Alexander Viro <viro@zeniv.linux.org.uk>
Cc: linux-fsdevel@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/exec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/exec.c b/fs/exec.c
index f7f6a140856a..ee442151582f 100644
--- a/fs/exec.c
+++ b/fs/exec.c
@@ -227,7 +227,7 @@ static struct page *get_arg_page(struct linux_binprm *bprm, unsigned long pos,
 
 static void put_arg_page(struct page *page)
 {
-	put_page(page);
+	put_user_page(page);
 }
 
 static void free_arg_pages(struct linux_binprm *bprm)
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
