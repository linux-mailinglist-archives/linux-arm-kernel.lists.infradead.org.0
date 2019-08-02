Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C407B7E9FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:26:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ke1IX6taOvex841mJwkKEpyAyFnJs/hcqXz8nYVmqnM=; b=LTBiKH9P0msKJz
	CHS0OKOtkGJew59zg0/iG0n2+ALdWFoT11JOBpLa1x3RgAQqrBWfg7jdWGcqFYsCLKlIL/rCVmPvu
	N66jWzJEXYo67PmP8ok4MbWToRs9j8Ovj0Q4NgsuLXtmBKEDBDRshKmgHz8Q72l9rqONKHJh2vAyu
	s35WsVVo/Vhwq9XWU7wCMDHfZZZhaleW8FWE15rdBway8Ri1J5ZiI8dtH8dlmx8XVwCXqRaTltTxP
	Shz1dfCtjL2aYhDrdU/6dwoSMmfW4cywY2WjsUonOHN3VGQ8bwElc9A68RWJRHHX3S9m4Tial9QcK
	zp8sxiYmfcr+38QbO+Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNHB-0000kC-3n; Fri, 02 Aug 2019 02:26:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBS-00028T-Ca; Fri, 02 Aug 2019 02:20:44 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so33012075plp.2;
 Thu, 01 Aug 2019 19:20:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=py067aGaFWqYQnWW3CrL2Yk9VWIyNl4WEpwUsrZ7LgI=;
 b=lOZaOBHnHG96U7CUpGeMR/TMYtjEa4y/ygakLmz0BtnL+pIOpa3C2toztsy8fW4gwW
 tSTtviLJ7HOi9DtUi5KI4XY0WPu2eSdUBZVMSVezuKPLNyCDQwUs6J0/BBBZ+6xhu24Z
 FFakCBm8lWNZ+G5ej5b+50tyKMtD+b21oulPMq7HB8nLNBdaEf18LO4IyZXO6FYAkAZH
 Gf/avj3rVBNxZL42D+4KJvp1yOXbbtpENzFq10jG7FxODtHOFfbvskOX/bZ+DtIk1XsS
 LtXAfdLjn1YTVqg0w1Z1LAlYkVjy6XQT7mshmHFnFkvQYLq3O8bZzk73cr7CrbSrM5zf
 ODTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=py067aGaFWqYQnWW3CrL2Yk9VWIyNl4WEpwUsrZ7LgI=;
 b=FcPvHfQmBys8asfwnRxwp/rqNfaUvS+76nDd98kX6GnpyeDDLbvLKSVZVs5D2X5Axi
 f66iePKhkHDXfoqOC7HhRJeaZXuIqkehahXV0V5R4Ka59w2MuxG++xYvmW+ZffJLou45
 lg87cjTBuLthXoIIfEtA+jQT7wKQF6awBkr4Sl8d/jw2tM9iMG+wz6ZkM92Hb1NbWxjk
 NJkDuEXj4+31+C4qF0DbGBxOA0kqhd6uB1GhFByu5v8DVyUKqrvJ1BWhnI4uc4iMOxOE
 JbWzcQsFBi1vyhCIqqOU6t992mcAYmDA4A5OCjEkt5hlPc+1fpxdSh/A7C8H5T4k2n1n
 ynEA==
X-Gm-Message-State: APjAAAXML6vm4BsFc2OyCBNZslhp6PkpJdKTRE/d+gqvxPxUVSZZvRSr
 89Mo/RsJCFBxOFIWrSJIWr8=
X-Google-Smtp-Source: APXvYqxy0BkUtbl8ULTboF2upH0nHFnxM+Cu1b4hTcaSsJxULdUpLCIdwe/mZoVo5hGjgo4EZJg93Q==
X-Received: by 2002:a17:902:f46:: with SMTP id
 64mr130019975ply.235.1564712441986; 
 Thu, 01 Aug 2019 19:20:41 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:41 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 19/34] fsl_hypervisor: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:50 -0700
Message-Id: <20190802022005.5117-20-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192043_094813_69C7F6E0 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (john.hubbard[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
