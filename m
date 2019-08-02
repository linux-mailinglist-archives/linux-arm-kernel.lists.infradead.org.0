Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D49E7EA11
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:27:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=okMzL/r/np3hnVn8Q01AQaTqt1uL66qIrjV4EAlt++M=; b=YH8iPlg/SEeCKG
	PSK1ZaPPyNEkV4BnuH02a+N9zqCHms7WQvUVGCAxlAk+qzoT1P/6mSoBPzv1hLVZk696c9RtomfAT
	p2VqWMYSTv7qP52QziIzSQBjoqRte4TYMdQtdl6+X0U0YuIubNPlHcMljpVRktb6hmzjEyilrY3RN
	FreBlAVwX5Gmqyl0aXW2r3F/iOSYpFRRCDCeWyuX0mKIWhPrHrSvKkM+Uzk880cg12GEAXvB8FHmG
	c+bxhyvaythfx/hPOi5LU4FrTQZVmqurNZIuwFTPWyIpRLTArIf2smYs5eHEmZyWfX+hzMM6GC/JW
	JmvFKPBCS18lKG4yuj7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNHj-0001IG-2S; Fri, 02 Aug 2019 02:27:11 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBV-0002BC-LO; Fri, 02 Aug 2019 02:20:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id i189so35157362pfg.10;
 Thu, 01 Aug 2019 19:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=p2jdLnF+o2jszv2jswOdGKVlOI6oap0/O8UoWJ6UXd1vWJ7ZTNuGXBJzfbZP+U3/qi
 otCtgNo0FYJGbVJMagQHVxCjJNv9DsL+tAgpbtcseuLRjx2D2oJRJvb8QUEovItoJ4yu
 tqM1+sKVNJqdRAOn+U29/OmuIVN0dCZaqyMULYrLeNzvWGSINvgRw2ctCEPTtpJHvG4Y
 9Lt1J9Pu4o6vmxc1Dlj1+fWckvxFMkS2v0xzgYEyRXbpmL6oLpAd8HeumDihMK2pn/qS
 boIjYLobOad+m+G9IYsoBFXJgOFcyiWgGfoj3yVWjcIkFyKdq3aTzC8VwLjAVimMrt3Q
 7cZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6GC3vp7Kgk6wrS2t1aIFSliRmKpmpPmHRVTf1Sq+2hE=;
 b=tPJdRc4/4NncLtCJjkt67qDo8kBatqv9MpZJuNUU2zcYCtJtk840h2zjpLcFdJdXf5
 0BPjt4JBTZMBo7Cqkwt5aKQBKzjUcr7bbNZLWVny3pyM9TwXScjpndYYoZO7AteTFJNf
 humViNVW+126vGVQRbSp9Y9iojgPOpbw5M0ZnQgHTVuw3SJ3MVV3fH8JELuMuAXw/uny
 1bjrSiGoZG9qOucxV+eMd5kyPvlSExT5X9XaKiF/TYOYxl8WczbWchyq40WWAJmWznmq
 Hn25YA+qA+2O9accwWFY8PhQotNqNiWf/wxs27jYYQSVzvjCTE599tOtC0EBtNtpG+9p
 VBPg==
X-Gm-Message-State: APjAAAWf4K3aYviG9uXc4tLAmdAtA6KiBPRv2qVDlpsr/NcNcGWcbEhy
 EgbiBXSs0FcqhMQcLoOUfzg=
X-Google-Smtp-Source: APXvYqyrk8OHD0K9x3jg/zl4sLls8epCiHibtZqTP4ohZ230SxHbnF+YASroUXHGf8XghjTINYs0fA==
X-Received: by 2002:a17:90a:b394:: with SMTP id
 e20mr1897367pjr.76.1564712444816; 
 Thu, 01 Aug 2019 19:20:44 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:44 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 21/34] fs/exec.c: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:19:52 -0700
Message-Id: <20190802022005.5117-22-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192045_713781_1D59D2FB 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
