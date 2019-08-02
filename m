Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A63447EA4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 04:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wxC5Vup0GeL1plSuUB/jPJ703rW9ftW2UZESs9094A8=; b=ocgkvBwMTlakgv
	Ft/N8WB9NwBT+IP7EJDcnLI1b0nFTAjhV4myTLEZ8ysTJ+wFrPO8ZLavFJ6INE5JAx9XsVcdv3GoX
	EMTreO05YSHAqX/LNgyWlQG0kUSjZNzN6OR2Jc/zfT+IRQMzDCgqNHDEk4rNhFg0DNODuGFsOu9+M
	WYGCMgBGvyqcOi8cUvI52264AvyQ6MpQrhNfMp5QX6M3UfpZYfQ091u63LApms4iM24/AaNfq9q2p
	vFSXGVSXpbEHc0iJDsGG7wX1ld7b2abmp+W9U2ELuIWpfN6B21DQydFMiBXyppVkh2HD2qaR3TjQX
	3Nyc7pGeZMP0wWV6fMwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htNKE-0003mS-AS; Fri, 02 Aug 2019 02:29:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htNBj-0002VH-Ab; Fri, 02 Aug 2019 02:21:00 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so33054238pls.6;
 Thu, 01 Aug 2019 19:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4iYkOl3aeyTERThJenFq1/3UwJx4Onl0nTT+k7YLDaI=;
 b=elfpTxMe1/6j0BhX2ft/28omzWdU5w7mpxF5KS6Ry8a8zkGJScYbqAJ2NTQjOpA+gX
 oQX8NO2qfr8fQYzhkmlI2m44i8n5UA95IshiSsHQfSaUB55LfEMP8Nf6Bwly/9Em6O/v
 kb75MLzprl0H6ilua+Tsx9/J/pL9/kQBkbd23F8nfmf7/S2UoqNko9rQth0i8PtjUyLH
 QNhM+JJQO3CxcyAMQTRjV2IrQz9Ukzpv3t7kO6uUD4p+f92uGnc2g/qdEf6YIu13QPQ3
 M8XRiksoxntjoSZ9RhVKNzEdpCIwtT4CToNN39nu0gxIxKKgNM9/D3+uDvkH0PFa7iEb
 mOeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4iYkOl3aeyTERThJenFq1/3UwJx4Onl0nTT+k7YLDaI=;
 b=hZXvILU6YwStDyou76TJyGAHQE5u610RxJNJrG2NxDLbabTXDUFzBTwOkbtoKprHXM
 1RExasRoTRfjnsziJrPQd3uJT53YnMTFOZJ60HO0pCAtM78bzifJKE1lm6Ibfrb+ajRi
 oHTsZrtImE98iZTz8xl3nfElDZXULcZ7ydQoHE8swUXY9CbsZ67M8JLVumQ/VClnip+w
 Bd+JYKdeHcdBMeAkjdFSm7ue8XzP8Y3GqC0n27JqlsDCsUiNrUnX7SNG65Q8vW15IMEO
 LTu8cP7LVhz3O4EzMNtatb4P+ylwYgY+7ycwS4Fn0P5aPcXOQpvNhfgN46UNTwfZAVO9
 Vbgw==
X-Gm-Message-State: APjAAAVnWy0NvdPIo9UKy7LqpmciaexRzAHLbNM20wVEXADALzZMRfco
 /m9k1jKoVS/Kn1iZ1OdkaI8=
X-Google-Smtp-Source: APXvYqzzllbFm5p1RJ6Hv9sdYEOY7jdZkiYuzxv4vZdIzU4+gyWXMgDLOAREt7Tj2iCCice8+nHYSA==
X-Received: by 2002:a17:902:24b:: with SMTP id
 69mr123385473plc.250.1564712458970; 
 Thu, 01 Aug 2019 19:20:58 -0700 (PDT)
Received: from blueforge.nvidia.com (searspoint.nvidia.com. [216.228.112.21])
 by smtp.gmail.com with ESMTPSA id
 u9sm38179744pgc.5.2019.08.01.19.20.57
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 01 Aug 2019 19:20:58 -0700 (PDT)
From: john.hubbard@gmail.com
X-Google-Original-From: jhubbard@nvidia.com
To: Andrew Morton <akpm@linux-foundation.org>
Subject: [PATCH 30/34] crypt: convert put_page() to put_user_page*()
Date: Thu,  1 Aug 2019 19:20:01 -0700
Message-Id: <20190802022005.5117-31-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802022005.5117-1-jhubbard@nvidia.com>
References: <20190802022005.5117-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_192059_576639_FC1C6907 
X-CRM114-Status: GOOD (  10.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
