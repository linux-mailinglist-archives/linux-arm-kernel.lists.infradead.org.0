Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D08518411C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iNQnDmu5DCYhyyeA02EeaO5itCsK8PMkqzOz4YeU6o=; b=nkyG4wo1iiwdnJ
	RUB/TBjp08kB+UbLrvCebPCTXz6gvq1qgZD8BFw3jLQi1KnH4LhaH6OvnsMu1DnJwUWJi9hgvmwDn
	cEEK1hPtE3IeMsph4x3AxLuPEug/0fvm9jTHGqmvdSGvCuinv6Upt4Ju5yeQz61RUdLBvgSTwpJS5
	0kioemaxwVtynsNXbtATeoaXM8uduO3SmbuObR2m/sVtuWg48ETBbFU4OBcd/8M79Q4N9R3dER3Qk
	4FVqUlrvJ+o1PUOqnhSWdC4gMn0/d1q5m/yEq8q+O4vPDUSedIxnX5oBOraEbrYBBXEQhAZ09Bn6G
	c3yNFVf80ObZ79LOi1qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAws-0003dN-9P; Wed, 07 Aug 2019 01:41:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqN-0002YL-N0; Wed, 07 Aug 2019 01:34:25 +0000
Received: by mail-pl1-x642.google.com with SMTP id a93so38527831pla.7;
 Tue, 06 Aug 2019 18:34:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=3zvxFRr3gjg9t3ZKCwZWoMY3PeLUGF9FofBT0j+JfJs=;
 b=L/mKoqNBpvGTGBp3epVJp9Jwmcabm5Zof/TP6cMpNTp5QyY/bNS8ra/phjhs5sRAaN
 E5tTttcEItcQL3b5Zem0k5qJxKcKktTUshMTiNWzGKXLywBoBoQ5bitV/RkFpPMu2On5
 4WHRSoAhmad+Sq/Uze+Lrqj/EHMra+wpLWdL/I1wMa19gtn+2FmmEpJ2BiwYWrwVtu4s
 ErDZEb/zzGVZaJO6WBAU6eZcAtQlFXpJrdCTpwcNxdnIPyz2Lta4bzP9L9aVvEMuLhxO
 FtQSTpdSuYFA1RpMOlExoKqI8fe7oDB8Q9BkX/iI0jL+EMoGr57KcyP7PRTXBQFgsK3f
 6S2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=3zvxFRr3gjg9t3ZKCwZWoMY3PeLUGF9FofBT0j+JfJs=;
 b=gFRKuA/HN/AV3YrZJ9YeWTwhwUi4JSXzbpLJLfvRzO0xjhvnB0oBEwBLdwtVCiIy7E
 0byVuecbC88nxqqN+wgGOVt3QHY8Nvbx6yaTceF1drWBLfA7Ro7m1RcD1LKY4y+4AXqE
 y7EEFBdhLMXE+fgbagCjPZhfPorwXtAapuSh+6LbPMjoUEvViWf+Ilu1MDzfuVTRyTvf
 cy4PFWSIdagFc9eVt0IvWmunbC2lNlSTGWaVIGUvIVxlB3YSoMfT3l7mV5sR3rkI20t3
 HLterJ7OOQyTFaYaELbWFgYfVaZmo9Noym6OelkQDyk7eJWZMfa4Xn1Me4D4/8HQx9Jh
 3kDA==
X-Gm-Message-State: APjAAAXe7T+9YDoSiUkM6wkAa0gR2KdBtQ0VoGCYJoiMvd7X4CPe6ViC
 EZhsVjKF9yn8OKh2kWTC26U=
X-Google-Smtp-Source: APXvYqw776L+7/s1i5+0uj4rHYr4XOYwzb6gLf8HmDykG/CGNwoS9owiEzaUd2cmiWPaV4acbHnsQA==
X-Received: by 2002:a17:902:4683:: with SMTP id
 p3mr5420824pld.31.1565141663334; 
 Tue, 06 Aug 2019 18:34:23 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.21
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:22 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 24/41] orangefs: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:23 -0700
Message-Id: <20190807013340.9706-25-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183423_794341_C8D74C49 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
Cc: Martin Brandenburg <martin@omnibond.com>, linux-fbdev@vger.kernel.org,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, Mike Marshall <hubcap@omnibond.com>,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-fsdevel@vger.kernel.org
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

Cc: Mike Marshall <hubcap@omnibond.com>
Cc: Martin Brandenburg <martin@omnibond.com>
Cc: devel@lists.orangefs.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 fs/orangefs/orangefs-bufmap.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/fs/orangefs/orangefs-bufmap.c b/fs/orangefs/orangefs-bufmap.c
index 2bb916d68576..f2f33a16d604 100644
--- a/fs/orangefs/orangefs-bufmap.c
+++ b/fs/orangefs/orangefs-bufmap.c
@@ -168,10 +168,7 @@ static DEFINE_SPINLOCK(orangefs_bufmap_lock);
 static void
 orangefs_bufmap_unmap(struct orangefs_bufmap *bufmap)
 {
-	int i;
-
-	for (i = 0; i < bufmap->page_count; i++)
-		put_page(bufmap->page_array[i]);
+	put_user_pages(bufmap->page_array, bufmap->page_count);
 }
 
 static void
@@ -280,7 +277,7 @@ orangefs_bufmap_map(struct orangefs_bufmap *bufmap,
 
 		for (i = 0; i < ret; i++) {
 			SetPageError(bufmap->page_array[i]);
-			put_page(bufmap->page_array[i]);
+			put_user_page(bufmap->page_array[i]);
 		}
 		return -ENOMEM;
 	}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
