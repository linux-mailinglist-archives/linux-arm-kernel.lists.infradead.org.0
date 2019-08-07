Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE203840D4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:40:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nupoLmNbeZqm25mdkzWQyd3uZL7kOx6PmXVZSJJO77k=; b=Yn/JOkk6RIP/ut
	KkE6OWPUUW70yevhvfJWZDui7OxaArM48+Ft1oDCrdzNfIGzztfzyGJpoBsAv4qL1/3lT/YbiNl08
	sMtfbjrw32SvsrDSwl9v6AYJjVsqwPcVylMHPQmzylb2a4b05iaBJVH0ZD4FsSUYiOQUCuJRxfuDI
	YyrMehqbejCjL2SAK/MCQxzISJ3Fsmvp7yFfS02zrxNFsmn83LLVU7+nOUWmIuyCH6MqjrUZ+6/62
	kAwULEEw7yDPuk4DlxpWqd87t9MYbi6zSQdJcwCRdUfopHiAmlrwIyLCXpSP4OR0YdFem+u83jO6q
	JMEBA38VsbWLuZwxENsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAvo-0001BT-ID; Wed, 07 Aug 2019 01:40:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAqH-0002PZ-Fd; Wed, 07 Aug 2019 01:34:18 +0000
Received: by mail-pg1-x543.google.com with SMTP id n9so36321143pgc.1;
 Tue, 06 Aug 2019 18:34:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Zk7mJfsjIPJK9Qgsn0u5osZJajJrXebF0c1tZrgdgoI=;
 b=SC6fy0nJ+5PJ+uzUodkQNgZrF01XL4oLeLC56OFBk8WNdVXJEhXdfnbycjiEGLb0We
 Iu9ehQr2XuhNar0+cOOcnuWTDzgnJQOZf2nhFq9SkSbfMVKKQlgbBbr/DzgGJpA2zgNE
 SH9LdtGtZEDMK2ObSXiKnb7p35+i1ZPY62UTf23m8h6lM8RDSVmojjsKFFq6AHV0Kg7N
 l0Mr0PozM18bgs6gsyipPgOwh2HesyAFpZqdTaDseaeVgz0a/Wn16vsKh7i90SBwvo7N
 ssA83RPwWAs18iPpiVevS9yzToDMKktmsaAXU8RmgcEKrZ1Ps1HBX3IeUwmveghlYyG8
 ruRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Zk7mJfsjIPJK9Qgsn0u5osZJajJrXebF0c1tZrgdgoI=;
 b=fhtNi3cgESgm3zUj63/1dKCBqfg+F/DEZyIIDaFRXODqEyTD7wuZPu8CDQ01htZkSP
 41Tjb+Q76dyGOYB0UIyAoSiIH0ZbehE2dwf6TdxGGQYuVuzoA4uAJWYofH3jfShvhKKC
 tqcEdJGgGyMjfumevxNhphpFhWToUSyyj2/ER7uTjrnWBp0GV/nAHv+8xjgE0eNRylRe
 FaQWd+E/8TBzuTW9YVWVcdC8mBQkd7eyeKP0EJClDimP6wZWi8GO1UIsFJDlH9S4BXbI
 QNjDtfBZcw3hoXYaa7EgTvtOvlj6gC7dCbAvhbFFN++bCmyB5u2DeHG1DsMp+k/492wC
 5nmA==
X-Gm-Message-State: APjAAAWQWowTCOgN6mdy5NKONmPWGYT55yfKzOtFKU2jk8SG1BxaTTMB
 b0Of5381XaWi0tFzG10uIZ0=
X-Google-Smtp-Source: APXvYqzgZPQySecfl1w9rbSdSUoujeX96j23T70OrIYhDcbszTpXzwBQIEpy9+PmeMFp8KmBYei+SA==
X-Received: by 2002:a63:dd17:: with SMTP id t23mr4918609pgg.295.1565141656992; 
 Tue, 06 Aug 2019 18:34:16 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.34.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:34:16 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 20/41] fbdev/pvr2fb: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:19 -0700
Message-Id: <20190807013340.9706-21-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183417_602549_CBF11FA0 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 sparclinux@vger.kernel.org, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, xen-devel@lists.xenproject.org,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Arvind Yadav <arvind.yadav.cs@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 linux-nfs@vger.kernel.org, netdev@vger.kernel.org,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Bhumika Goyal <bhumirks@gmail.com>, Al Viro <viro@zeniv.linux.org.uk>
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

Cc: Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Al Viro <viro@zeniv.linux.org.uk>
Cc: Bhumika Goyal <bhumirks@gmail.com>
Cc: Arvind Yadav <arvind.yadav.cs@gmail.com>
Cc: dri-devel@lists.freedesktop.org
Cc: linux-fbdev@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/video/fbdev/pvr2fb.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/video/fbdev/pvr2fb.c b/drivers/video/fbdev/pvr2fb.c
index 7ff4b6b84282..0e4f9aa6444d 100644
--- a/drivers/video/fbdev/pvr2fb.c
+++ b/drivers/video/fbdev/pvr2fb.c
@@ -700,8 +700,7 @@ static ssize_t pvr2fb_write(struct fb_info *info, const char *buf,
 	ret = count;
 
 out_unmap:
-	for (i = 0; i < nr_pages; i++)
-		put_page(pages[i]);
+	put_user_pages(pages, nr_pages);
 
 	kfree(pages);
 
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
