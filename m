Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A73BF83FA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 03:35:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZBVr0Vg+dAlnM6A73KxWdu2VWpyIpHKUjgCY3Rq4o8=; b=tOBMkVqKODek7J
	ShCKyvdNuSn92DYRwk+u6akH1a+Yt0LGlfsBP9XxohUChlDKBcgEFzu5TIQbTVIFfRaLG9alDJKjK
	3CdTVTvvRhuuousL+39qB993WMiIAM6bGX6iRGnrMWQd3y13lr93NPCGkHYg+SzThA0kTSQ9nJtdA
	j/ITLJmfJMtsejAGYj7i+JPLVB8TMYI4okpjQny+QATKRWsohVLcWAfUhEv8DLPBCNI2l2Z/jpZ+O
	2qJM9hyvwcgsRYeZkw7Cjp5iA7e9kQA7tOK8VGd9+qY5YkKOR7Evx+stynUD+2MYgLXAl6kc8817r
	2zKAcMwCh3iKmpFvH4Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvArs-0005Mq-7v; Wed, 07 Aug 2019 01:35:56 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAps-0001rV-Ra; Wed, 07 Aug 2019 01:33:54 +0000
Received: by mail-pl1-x643.google.com with SMTP id m9so38450032pls.8;
 Tue, 06 Aug 2019 18:33:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WGaquJbd5n3vWHVjzVcVo6+uSZsjc3dg9cLGAnxVc2E=;
 b=D48he9iwy4Ni5qMxjRsQe5pMA51Ifn5pyuXezWFqJsv4KqB2UjEmI492A+H3zjBozl
 z4vxBXelaWALb4vc9TiVQD3xffg2JpycIgMryRj7DdNlQnLoLTJRT2Pr6AqdUldNm96s
 mYxTY6jOTBKy5nq3H5sJhLnHjju1CLRU8H+bKZdHFr7DowwoqkFP2M9FXdH0qDJ2nJJ/
 ss8voK0KQx4e801oBm16bmWlzeZbPR02TnPcDNJm+WHvvx9pL8SRfhdK+3B1hDFHty8B
 eCloTAbKTVyukUiotzfMnjDTWGmB31ermFBDzmeDTGPpsb9KGnZpeSIajIf3hrjzGw2F
 MknQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WGaquJbd5n3vWHVjzVcVo6+uSZsjc3dg9cLGAnxVc2E=;
 b=lYCBr4vLKvj1cRWd0hyCTVW7uUBC9Ogd+66rAewdigulDZAmo8dzszrw2S9QahFDO2
 xzOJFxn7GZv39ZXn/FP8ua+lMeily6yHgZGi4KR3RiTKNF35rAsgven4GQ58SFyAdIlC
 L3G7LiS3ad6c5AoD5ubO1nNMb8Y+1bdBhalIrbdbuMSgd3r9FjLTQD/B2whEBOCX82DM
 aZHXKtITVdW1RzgoEp5VnRg4zTRwbTzGnZ/lwdaOw5ZNEXuUw/493LmC4kduhEG+AcjR
 6bYHTGSzp3R+w2edeFjmRSzDUUNLrU6o35/cEBNqS9eXT/+KZ+lHPYzd3aVYk1NgJ7C3
 yJEA==
X-Gm-Message-State: APjAAAVgw9vCn9WW9kdsK9ebd23h5x19Y0OWYXd5dnIq66lGA4mTQIa+
 QC/AEt6WnHg76zki6l4zdi8=
X-Google-Smtp-Source: APXvYqyUH791dwLub9+aSF5x8hGs1SuLVkdyMKqfaB808Vqluqgizufg0qdY3/pJKJrf/LUH7OWf8Q==
X-Received: by 2002:a17:902:29e6:: with SMTP id
 h93mr5591074plb.297.1565141632504; 
 Tue, 06 Aug 2019 18:33:52 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u69sm111740800pgu.77.2019.08.06.18.33.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 06 Aug 2019 18:33:52 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH v3 05/41] net/ceph: convert put_page() to put_user_page*()
Date: Tue,  6 Aug 2019 18:33:04 -0700
Message-Id: <20190807013340.9706-6-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190807013340.9706-1-jhubbard@nvidia.com>
References: <20190807013340.9706-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183352_985333_A8A611DF 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
 rds-devel@oss.oracle.com, Sage Weil <sage@redhat.com>,
 linux-rdma@vger.kernel.org, x86@kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 xen-devel@lists.xenproject.org, Ilya Dryomov <idryomov@gmail.com>,
 devel@lists.orangefs.org, linux-media@vger.kernel.org,
 John Hubbard <jhubbard@nvidia.com>, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org,
 =?UTF-8?q?J=C3=A9r=C3=B4me=20Glisse?= <jglisse@redhat.com>,
 linux-rpi-kernel@lists.infradead.org, Dan Williams <dan.j.williams@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-nfs@vger.kernel.org,
 netdev@vger.kernel.org, Jeff Layton <jlayton@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, linux-xfs@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>
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

Acked-by: Jeff Layton <jlayton@kernel.org>

Cc: Ilya Dryomov <idryomov@gmail.com>
Cc: Sage Weil <sage@redhat.com>
Cc: David S. Miller <davem@davemloft.net>
Cc: ceph-devel@vger.kernel.org
Cc: netdev@vger.kernel.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 net/ceph/pagevec.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/net/ceph/pagevec.c b/net/ceph/pagevec.c
index 64305e7056a1..c88fff2ab9bd 100644
--- a/net/ceph/pagevec.c
+++ b/net/ceph/pagevec.c
@@ -12,13 +12,7 @@
 
 void ceph_put_page_vector(struct page **pages, int num_pages, bool dirty)
 {
-	int i;
-
-	for (i = 0; i < num_pages; i++) {
-		if (dirty)
-			set_page_dirty_lock(pages[i]);
-		put_page(pages[i]);
-	}
+	put_user_pages_dirty_lock(pages, num_pages, dirty);
 	kvfree(pages);
 }
 EXPORT_SYMBOL(ceph_put_page_vector);
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
