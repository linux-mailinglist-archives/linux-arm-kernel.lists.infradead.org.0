Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E7B61ECA5D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 09:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7L0TFAwcFMeWyaUdGwyIpSXjcAboWav3rB7goRla6jE=; b=O2EPoCDaBJo3W5
	zTOxgmu4Z6AIQo+amn2kDgftAfMurcT4TQrm74tvIHmxbBECGmXziG4ahpSjPtFYd31HAVouTVjja
	wbywbsqcN/L+bPAAyLYIWp+SUNiIjoPspLVY4YhdMNYjFte72cT+wQZ1xA+1NGHWNN8r4BO8zYaug
	3AlT8lF60Co4z3FkyuA6tMn5sKtrmUuSbxgiJarqxr5VGI/1jZi5KQUEHcxyecI6Upybv1IKvfDls
	FAitshoQIfsfYQk+V73+7p1U30M0rE7u40jp0GjIardSLCPHlaj/9d8fDYdHws0cYVlftT5fNyG98
	HWg/hXJoxz8ujX22Z9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgNgg-0006Mj-KR; Wed, 03 Jun 2020 07:19:46 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgNgO-0006D6-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 07:19:30 +0000
IronPort-SDR: 9xE8/5E4GjaNmc9RHphpORHjZ4UvyLWv/4uMaMawiQumzkLWTCoB6j8JrG4zd3nJMcyTJzzuJD
 JxZojOJOMw2w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jun 2020 00:19:27 -0700
IronPort-SDR: Yyl9KM/4BH8YDORSPS8aPRUDVd45t282Vv6JqhEp+3M9F8OJHnZM2qMC0PwlIr7sc8Xw7TSkeA
 2KEjhPrZouhw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,467,1583222400"; d="scan'208";a="444996268"
Received: from lkp-server02.sh.intel.com (HELO 8f84dc34deca) ([10.239.97.151])
 by orsmga005.jf.intel.com with ESMTP; 03 Jun 2020 00:19:22 -0700
Received: from kbuild by 8f84dc34deca with local (Exim 4.92)
 (envelope-from <lkp@intel.com>)
 id 1jgNgH-000034-1X; Wed, 03 Jun 2020 07:19:21 +0000
Date: Wed, 3 Jun 2020 15:18:59 +0800
From: kbuild test robot <lkp@intel.com>
To: Barry Song <song.bao.hua@hisilicon.com>, hch@lst.de,
 m.szyprowski@samsung.com, robin.murphy@arm.com, catalin.marinas@arm.com
Subject: [RFC PATCH] dma-direct: dma_contiguous_pernuma_area[] can be static
Message-ID: <20200603071859.GA64477@6bb44d8ad825>
References: <20200603024231.61748-2-song.bao.hua@hisilicon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603024231.61748-2-song.bao.hua@hisilicon.com>
X-Patchwork-Hint: ignore
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_001928_791752_834D7346 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, john.garry@huawei.com,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 iommu@lists.linux-foundation.org, Jonathan.Cameron@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Signed-off-by: kbuild test robot <lkp@intel.com>
---
 contiguous.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/kernel/dma/contiguous.c b/kernel/dma/contiguous.c
index 4b10d0ca0456d..2094c8e0590ac 100644
--- a/kernel/dma/contiguous.c
+++ b/kernel/dma/contiguous.c
@@ -37,7 +37,7 @@
 #endif
 
 struct cma *dma_contiguous_default_area;
-struct cma *dma_contiguous_pernuma_area[MAX_NUMNODES];
+static struct cma *dma_contiguous_pernuma_area[MAX_NUMNODES];
 
 /*
  * Default global CMA area size can be defined in kernel's .config.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
