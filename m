Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3745880F46
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:59:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxC5Vup0GeL1plSuUB/jPJ703rW9ftW2UZESs9094A8=; b=o6Oc3UlAYYI0JC
	HeZBDygfdT5bJzqTI3JC8XtAswDiO6vPn/kmAFHYo4IbedhQ49BLba66bdQusYe0iMfGR3Z4N2Jfi
	TAwLs5KfnvA+eKfZNFMgJNL43EAF2nWMtEUgCOO4sJiQdXc/4F5FF1k4mVWDJsBFQWXD/7XUcpa/X
	/B7dJU8ULxwU5RgZgGMYMknoyEQyMWBrdL0iZeXTj/MMbj01Qb7C4YlGApPvBOdvAuzMML9GS4cFp
	9iMBPqG0G5TaOPzwAJ1WqSNiJPM8ZOnPZwDIFz/RMD5nWWH4yhNNMSIWNJupUaiKExaon2GYkj1Ej
	QsleV+LdCT5m89c5OLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPTW-00008U-LY; Sun, 04 Aug 2019 22:59:38 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPKJ-0006Fv-Dh; Sun, 04 Aug 2019 22:50:11 +0000
Received: by mail-pl1-x642.google.com with SMTP id i2so35707759plt.1;
 Sun, 04 Aug 2019 15:50:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4iYkOl3aeyTERThJenFq1/3UwJx4Onl0nTT+k7YLDaI=;
 b=amp4rnRki7aZFblJwd+WR3AEEzT5jM0SqyuAgEV5CpAXAAopEM+ITm1VpHO/SXfmvR
 bo3NeFkBoHD+nAtlrBJ99G13P743PgNgDEkm2beH5ytNMeAvvksIb5/nFkswd7I26BcB
 Cu1H5Ec5GdgS9K1iSW46QqjiHGOk9ncTBdveqncGI12f820ka+y3wAT0qtpPsphaALcE
 KARWU4xHW0EFsjyrCk3ygT7cspgIvwlFXf07QJTASmi0+CbMzKJ+WTLfULPC2/v9VrXO
 To6FnxsBZLTmhG738lrtTmoKuXplA6aK9GPBNooGQXp1H7hHSJ+TLir+Hjd5setkxK8q
 WV8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4iYkOl3aeyTERThJenFq1/3UwJx4Onl0nTT+k7YLDaI=;
 b=aAVHX/1s3at00LAL2I/48M7Fh6LiwIcYOH3rA7KKRBDBwgBdlGWd34aLnsUk7lUSbg
 fB9P5zxqHvsyMegMxfyOdX061D1kSRBfkhjXqGB0E/yLR5qf0StjGZApPjQLew+WimmG
 QNtATb5UKc/YvAOzwGI2heXrnXFCqtxOm8/rS9AUtFxky0LWDAcok0Q4So0v4cM0tBh1
 tLdYZR18I4h8IDnlDbOwr7nBMpClz02y3ppaA0i27WX2JHNLBGHgFQecwsaMvrn/CCEX
 iaMXMYIHBYrBm107rUwXfczUfgKOVthNLnm9or6VlqJSKsW9r6jx4EWOJPnISOy23t0K
 fiaw==
X-Gm-Message-State: APjAAAVhd+6qt1RNVmwuG7eII9qfBs0UoitnMWqi5/bVl29iyxf0HGrs
 ArSgBjk80y4jIlXEnI45Fxs=
X-Google-Smtp-Source: APXvYqxMhyr2kFbHr1O04Zbn2AO0Z+HHRdZeT7lsPwl/97dZ/e7++C1RY1spQOQBhYkgPZq+HBfy0Q==
X-Received: by 2002:a17:902:20e9:: with SMTP id
 v38mr45178412plg.62.1564959007040; 
 Sun, 04 Aug 2019 15:50:07 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.50.05
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:50:06 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 30/34] crypt: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:49:11 -0700
Message-Id: <20190804224915.28669-31-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_155007_509808_6721D8FA 
X-CRM114-Status: GOOD (  10.31  )
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
 rds-devel@oss.oracle.com, Herbert Xu <herbert@gondor.apana.org.au>,
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
 linux-fsdevel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
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

Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: David S. Miller <davem@davemloft.net>
Cc: linux-crypto@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 crypto/af_alg.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/crypto/af_alg.c b/crypto/af_alg.c
index 879cf23f7489..edd358ea64da 100644
--- a/crypto/af_alg.c
+++ b/crypto/af_alg.c
@@ -428,10 +428,7 @@ static void af_alg_link_sg(struct af_alg_sgl *sgl_prev,
 
 void af_alg_free_sg(struct af_alg_sgl *sgl)
 {
-	int i;
-
-	for (i = 0; i < sgl->npages; i++)
-		put_page(sgl->pages[i]);
+	put_user_pages(sgl->pages, sgl->npages);
 }
 EXPORT_SYMBOL_GPL(af_alg_free_sg);
 
@@ -668,7 +665,7 @@ static void af_alg_free_areq_sgls(struct af_alg_async_req *areq)
 		for_each_sg(tsgl, sg, areq->tsgl_entries, i) {
 			if (!sg_page(sg))
 				continue;
-			put_page(sg_page(sg));
+			put_user_page(sg_page(sg));
 		}
 
 		sock_kfree_s(sk, tsgl, areq->tsgl_entries * sizeof(*tsgl));
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
