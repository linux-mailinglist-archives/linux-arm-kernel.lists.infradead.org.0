Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB24380E9F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 00:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qh+9/HeCAI4jB+dqLrRQPaN2uT2UqKpnv2zNdX7BTQ=; b=T6tXBsRMq/qT6W
	SgwyDnuQbeGCWbSn0pgWTGH8B1T5smJfvB/Mtx26Xi1ymZUhOmWfvZM+813eCFHve2D4cuo6XDBay
	1b6N7dGBV70iuua87/6kLHQgKF4zwH6PhnmlPU2yr+Cphx1fHrKXCoJal+mVg5W92ZXk6+qugJfG4
	ssSt6t8sdMwSiIFYQAGhgA/9oq5c3TrizaNXYHgoqjPGmNzKTa+3Xh/Qb4JZAkzKqkv2g+N63VrXR
	WqB6QwNNM6NKNigNVD/Jf4VrqaSC1kASALmUYAKIan+Q7YbCNtwiZoBmJa2rt61I+Pv5zaUjoOsGa
	WyUmwBcdDKYa8XsbFIOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huPOn-0002gi-7U; Sun, 04 Aug 2019 22:54:45 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huPJu-0005Fj-8Q; Sun, 04 Aug 2019 22:49:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id t132so38659743pgb.9;
 Sun, 04 Aug 2019 15:49:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6zqhiQUR/t5HSZML/x55nFGZKGW5GK1LULKEmO0k7kA=;
 b=hu5YrExV2sbaBMNc30Tq7LBcjGDWN6fA4XsdWSIq37Gwal4TYkzXoLBSc1aN7i+AE1
 bVIm03I7zSnUPoNc0DrhbAQOAdTqkzN/WZ5+3xyT5kplICRjLk7gnM7AiECUFxJQtYf8
 l/vpyueUrdUTa6ElP3ExxKx8ue3ogMcet3zTMrly4eFXGYC31urxAGlYkrOSMCRCSnIc
 Arzc564JY6ON2HabMEPBcS/dFGMN4ODa4koUgN5YXXQfy4c5GL3kiXmJTl6qra2xMUY4
 X0U+ntdMZNCalKgfycF+64XZ+c1uJzhUDj8x9G9dxye9pgPlZzglleDcPGTS1gL3JdjR
 +zXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6zqhiQUR/t5HSZML/x55nFGZKGW5GK1LULKEmO0k7kA=;
 b=Dc3ytGwt7z60RCbKcU06EqXjZ3cYNjqHu8WCUbYuBswptRm+mg2xii5vI3o+gn9B2D
 /zEDMsyRZ5Ts4TXqjNAuKneIy+GmrSDKaVwdJxkxuxkGrkPxsRd9eSppUQeVjINcaPPd
 9XRKxbBljiRB3I0t5oZuHTyLfPf273pbwXgiG1dCPZlevvIUUwAbFyZjNGE0sZ657CrM
 2WlH+aYASHr5wCqMt2ocKwAvR1wb6Zp76SCMVTi+RjYMX5L7HFJqslr/N4rzXnd6i+Wg
 XssLZWuGErf/njc/yx6kJ8ltTk4D6JGiTcpffThKC6HS1zpRhSiSrPTeKIS3olKsjhcL
 ivGA==
X-Gm-Message-State: APjAAAUSycK7wXV2C+Dy7widhvOklN+vzWJ1cEaxPz8rr9LZyLk21TUR
 WljSmJhNJuIEee43tEPhuyk=
X-Google-Smtp-Source: APXvYqzKlxaRYSDqTrQ5Buu3RAMAQLfm5nyXOzRFCQZdRK9SX2nPkzOnWKnTtQrduQ4tH9q8VfqmlA==
X-Received: by 2002:a62:b408:: with SMTP id h8mr68625605pfn.46.1564958981600; 
 Sun, 04 Aug 2019 15:49:41 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 r6sm35946836pjb.22.2019.08.04.15.49.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 15:49:41 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v2 14/34] oradax: convert put_page() to put_user_page*()
Date: Sun,  4 Aug 2019 15:48:55 -0700
Message-Id: <20190804224915.28669-15-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190804224915.28669-1-jhubbard@nvidia.com>
References: <20190804224915.28669-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_154942_912234_752B8378 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: linux-fbdev@vger.kernel.org, Rob Gardner <rob.gardner@oracle.com>,
 Jan Kara <jack@suse.cz>, kvm@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, Dave Chinner <david@fromorbit.com>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 Wei Yongjun <weiyongjun1@huawei.com>, sparclinux@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, ceph-devel@vger.kernel.org,
 devel@driverdev.osuosl.org, rds-devel@oss.oracle.com,
 Jonathan Corbet <corbet@lwn.net>, linux-rdma@vger.kernel.org, x86@kernel.org,
 amd-gfx@lists.freedesktop.org, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, Andy Shevchenko <andy.shevchenko@gmail.com>,
 xen-devel@lists.xenproject.org, devel@lists.orangefs.org,
 linux-media@vger.kernel.org, Jonathan Helman <jonathan.helman@oracle.com>,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
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

Cc: David S. Miller <davem@davemloft.net>
Cc: Jonathan Helman <jonathan.helman@oracle.com>
Cc: Rob Gardner <rob.gardner@oracle.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jonathan Corbet <corbet@lwn.net>
Cc: Wei Yongjun <weiyongjun1@huawei.com>
Cc: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>
Cc: sparclinux@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/sbus/char/oradax.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/sbus/char/oradax.c b/drivers/sbus/char/oradax.c
index 8af216287a84..029e619992fc 100644
--- a/drivers/sbus/char/oradax.c
+++ b/drivers/sbus/char/oradax.c
@@ -412,7 +412,7 @@ static void dax_unlock_pages(struct dax_ctx *ctx, int ccb_index, int nelem)
 				dax_dbg("freeing page %p", p);
 				if (j == OUT)
 					set_page_dirty(p);
-				put_page(p);
+				put_user_page(p);
 				ctx->pages[i][j] = NULL;
 			}
 		}
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
