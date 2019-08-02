Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D147C7EA48
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:28:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSJgeG1G7kReM9OBEbmM49nWkwJwog/qwzxjdQi7NoI=; b=hJ7Piw6mhSF/eh
	iMoZf6zi7fr81NTLQCmQtwUXUq3/jLG81K2ns7Lo9KiLddGIMIwvv2x9BuMcrnBLKIrBbtYPokUlD
	N/HrU79lfldI5HAcoOy+Vf+nnsDV+BpZObP1WO5rH+AySpRtJuBh806621/gmTyXHiy3Gm2uq19fk
	Njc0FMv37SKFTbKLnnNWWOwulegFnskGriNSDF/eG7pnHdeNu6wYrXrVNJ0i2AWobckpQhRDivX8F
	dgzV5ngMXbo8QNXgsUxW8GKN7kO7Q+u+A+BNNDKSt+xEcl0Uqi0wnze9u7huhdKfEPU1IKfTnuQZ3
	9DdPqmBXyP0b7a09y6TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNJ8-0002ib-Hy; Fri, 02 Aug 2019 02:28:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBc-0002MC-VM; Fri, 02 Aug 2019 02:20:54 +0000
Received: by mail-pl1-x642.google.com with SMTP id c2so32984158plz.13;
 Thu, 01 Aug 2019 19:20:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=o8Q8kE8hzW/DwKrVVZh1taN77rkNxpuim/5zYvIGd0I=;
 b=SN9JCWjRa62SDUJKkHaVdcwHX85kw/BYyJx1Oz6MKq1tPWuA+R+kvOX6gTDvC/TGzM
 WuYG+JBQhglp5JUL5bE3kcONL91y/gVNfG1/TEEmXEUkwsc3IV9ZwlZo4fZZ39RQbUrI
 einldN97i3VjPzZmNrk7Gi70UVvHdYeVSXiOY7z0rmJg1OD2RJX0hB2kTyBbOVlbD4F/
 wFv0bPm5s1TrbkD6/tFvn6bnIJfGHM4gcvzjJiA5o2aPM4xOIDqOY4iccbO2F7+VYayI
 O0zTQo6na3+rAYAFM80xDRcL3DANvgDbjQbLbpyWsZCgQEzyIKagAyXZm1uNkiwXdu5u
 s1Rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=o8Q8kE8hzW/DwKrVVZh1taN77rkNxpuim/5zYvIGd0I=;
 b=FNeXv2KJlK8hTfoYR6voKGYLE8px9muRDOSi8NWBWDNCAQ7xfGWxOHlcNgc2na7onn
 TGRxSvdooKcdnJM+iBvyvg0zFRr/HfQhy/zOD0UvJ9GuX/Jua7RjBJ6qOKRT9Se/xG9A
 oub62rZJkbpGZKWO6d0JMN19AyNCf596u2M9zwFRPoSh/ZySGaFuo43Qs7KNeQNW1vav
 Hzr6nq2NK3hMhRunEcbeJzYT7U08Ks7ko8i3Bdhb/MrxYnv137pf8Qee+seOrYzNk3fU
 TxJtxlVgi7KydyhJD/xTndc1vlnIiIq8dgqp3Sg3OhU4sFJhhATZc34qh9Zpkpuqc79/
 ta5g==
X-Gm-Message-State: APjAAAXK7gwiMho/jVd90lorgbw4xQhnOaQrevcHwLvVTDUJltw2S+WU
 JRNkdnj//fSzPZFrDOTK/pI=
X-Google-Smtp-Source: APXvYqz1YTjVZYS+LesWuf1AG7NOEG7XNcFlAKVjP+75gMoI5m//7o/WseaBl+rAw+Wa9I/u7wQNfg==
X-Received: by 2002:a17:902:740a:: with SMTP id
 g10mr129917590pll.82.1564712452476; 
 Thu, 01 Aug 2019 19:20:52 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:51 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 26/34] mm/gup_benchmark.c: convert put_page() to
 put_user_page*()
Date: Thu,  1 Aug 2019 19:19:57 -0700
Message-Id: <20190802022005.5117-27-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192053_071305_168B6CA6 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 "Michael S . Tsirkin" <mst@redhat.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, Keith Busch <keith.busch@intel.com>,
 linux-mm@kvack.org, sparclinux@vger.kernel.org,
 Dan Carpenter <dan.carpenter@oracle.com>, Ira Weiny <ira.weiny@intel.com>,
 ceph-devel@vger.kernel.org, devel@driverdev.osuosl.org,
 rds-devel@oss.oracle.com, linux-rdma@vger.kernel.org, x86@kernel.org,
 YueHaibing <yuehaibing@huawei.com>, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, John Hubbard <jhubbard@nvidia.com>,
 intel-gfx@lists.freedesktop.org, linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 linux-xfs@vger.kernel.org, linux-crypto@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-fsdevel@vger.kernel.org,
 "Kirill A . Shutemov" <kirill.shutemov@linux.intel.com>
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

Cc: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Kirill A. Shutemov <kirill.shutemov@linux.intel.com>
Cc: Michael S. Tsirkin <mst@redhat.com>
Cc: YueHaibing <yuehaibing@huawei.com>
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 mm/gup_benchmark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/mm/gup_benchmark.c b/mm/gup_benchmark.c
index 7dd602d7f8db..515ac8eeb6ee 100644
--- a/mm/gup_benchmark.c
+++ b/mm/gup_benchmark.c
@@ -79,7 +79,7 @@ static int __gup_benchmark_ioctl(unsigned int cmd,
 	for (i = 0; i < nr_pages; i++) {
 		if (!pages[i])
 			break;
-		put_page(pages[i]);
+		put_user_page(pages[i]);
 	}
 	end_time = ktime_get();
 	gup->put_delta_usec = ktime_us_delta(end_time, start_time);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
