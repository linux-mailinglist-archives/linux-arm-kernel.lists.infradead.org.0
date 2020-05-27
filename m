Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0FCC1E34B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 03:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SC6jgQwioPNsrT+e7pSQn4CNS1M7PRXZDkzxOCGzf8=; b=RHoqH3zCy4yi+q
	bn1AKDSYW0BD4Zmn1jFnAPGwNpvOOW1yv60xYNEyybIr3G7isWpygnqzQd/1bM6orWnAVGnJIKiKB
	UK4apiWIzV2SrSA+wLUxN2RKZrGo3T9yNtXYawtB6d1vs6iGkyuCW2geJMqSKL/CUxBLrLfVihxlG
	hJECzlC53qc6NNRaQUj6VBBqAAkH6J7YeOkvWOkwccll9cAmdawyEVfOZXxTDFh3nZX08YqsyDBja
	bD+oZuU/ExpNgw4FxeoIdL7pAKAo9H29OZshbWcKazBNYXwMjZuScdx+cLmSaTnAsXjdqV1yFVZHG
	8P9FIdWxC2bjHsKAphyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdkr8-000057-5S; Wed, 27 May 2020 01:27:42 +0000
Received: from hqnvemgate26.nvidia.com ([216.228.121.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdkq0-0007oX-Q5
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 01:26:34 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqnvemgate26.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5ecdc1ba0000>; Tue, 26 May 2020 18:26:18 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 26 May 2020 18:26:30 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 26 May 2020 18:26:30 -0700
Received: from HQMAIL111.nvidia.com (172.20.187.18) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 27 May
 2020 01:26:30 +0000
Received: from hqnvemgw03.nvidia.com (10.124.88.68) by HQMAIL111.nvidia.com
 (172.20.187.18) with Microsoft SMTP Server (TLS) id 15.0.1473.3 via Frontend
 Transport; Wed, 27 May 2020 01:26:30 +0000
Received: from sandstorm.nvidia.com (Not Verified[10.2.50.17]) by
 hqnvemgw03.nvidia.com with Trustwave SEG (v7, 5, 8, 10121)
 id <B5ecdc1c50006>; Tue, 26 May 2020 18:26:29 -0700
From: John Hubbard <jhubbard@nvidia.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/3] misc: xilinx-sdfec: convert get_user_pages() -->
 pin_user_pages()
Date: Tue, 26 May 2020 18:26:28 -0700
Message-ID: <20200527012628.1100649-4-jhubbard@nvidia.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200527012628.1100649-1-jhubbard@nvidia.com>
References: <20200527012628.1100649-1-jhubbard@nvidia.com>
MIME-Version: 1.0
X-NVConfidentiality: public
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1590542778; bh=pIs/SexR7/3J3Zjm6Xj7h9EQRh/1TTydznodYn91aGk=;
 h=X-PGP-Universal:From:To:CC:Subject:Date:Message-ID:X-Mailer:
 In-Reply-To:References:MIME-Version:X-NVConfidentiality:
 Content-Transfer-Encoding:Content-Type;
 b=IUG2VDZp6/dk88r0F4O3ym0mwyEuNNu0CeTrd1/j470r4ImZ6HD1mtRg/2AOizQqv
 9nWKC3H+q29wkZ25dAd0b0swAgKQ88GWlqaK8RjHwFKND6qe0Bw0k/Uv9HssztrUkw
 1T5u3wvw3yKBetOKp+aCtbahP0kv0l5WygMe7r1XfmvIQi709dq9H5CGw/MTi/gjFy
 EurNZqrtpbtU3YupZp/E2yFAO/TSNPsqdFfCs+axZuRnYq0PWi/8AJVDhahN3F/0is
 0YjoEL7EWKgFmcjV4cYAcHNE5GwjmGakNJiwJ8Dyz44GYDzqmXq4sU502j3R4NF/Ic
 v6+Uuh8oBYr3A==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_182632_864114_7376A460 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnd Bergmann <arnd@arndb.de>, John Hubbard <jhubbard@nvidia.com>,
 Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>,
 Souptick Joarder <jrdr.linux@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This code was using get_user_pages*(), in approximately a "Case 1"
scenario (Direct IO), using the categorization from [1]. That means
that it's time to convert the get_user_pages*() + put_page() calls to
pin_user_pages*() + unpin_user_pages() calls.

There is some helpful background in [2]: basically, this is a small
part of fixing a long-standing disconnect between pinning pages, and
file systems' use of those pages.

[1] Documentation/core-api/pin_user_pages.rst

[2] "Explicit pinning of user-space pages":
    https://lwn.net/Articles/807108/

Cc: Derek Kiernan <derek.kiernan@xilinx.com>
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Michal Simek <michal.simek@xilinx.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: John Hubbard <jhubbard@nvidia.com>
---
 drivers/misc/xilinx_sdfec.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/misc/xilinx_sdfec.c b/drivers/misc/xilinx_sdfec.c
index 7e2ee3e547f2..cda3559025d5 100644
--- a/drivers/misc/xilinx_sdfec.c
+++ b/drivers/misc/xilinx_sdfec.c
@@ -627,12 +627,11 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
 
 	nr_pages = n;
 
-	res = get_user_pages_fast((unsigned long)src_ptr, nr_pages, 0, pages);
+	res = pin_user_pages_fast((unsigned long)src_ptr, nr_pages, 0, pages);
 	if (res < nr_pages) {
-		if (res > 0) {
-			for (i = 0; i < res; i++)
-				put_page(pages[i]);
-		}
+		if (res > 0)
+			unpin_user_pages(pages, res);
+
 		return -EINVAL;
 	}
 
@@ -646,7 +645,7 @@ static int xsdfec_table_write(struct xsdfec_dev *xsdfec, u32 offset,
 			reg++;
 		} while ((reg < len) &&
 			 ((reg * XSDFEC_REG_WIDTH_JUMP) % PAGE_SIZE));
-		put_page(pages[i]);
+		unpin_user_page(pages[i]);
 	}
 	return 0;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
