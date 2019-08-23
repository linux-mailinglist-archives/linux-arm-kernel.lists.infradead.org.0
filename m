Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C32C9B010
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=25tY1cj7L7IwVnoj33+79n8/xdRnW0nCwV3o3X7q00Q=; b=bSQ7uttCrQj3Qb
	9sZDVzl/C5EE6cRcFLY7ZkSvYV9MhXCx4fVgpcQfyU18sJx1hj/zbmsRVqrjQ2SgAXUi3ujL0SeWr
	WvMO2AxRUL/T6wuIvcUVZCAm8t4db3wWD8IhmZ+o1VI6QnrEBBgR0yiBz4EXMFIrjdDD0ZMVr26yD
	JhsXD7t9cgY7/6eKxF7NHQGd8bzHc7CM39AU1gTiRokKmKet0i1mTd4POajYqy2B4LtNA+D6tivRK
	HWjNur9AG0X36Xz8f9YKYiVQzueHlO2flPDbLaYs/238OPV+mS+n44zYVeKivrEwRYp6OHZWDwixk
	oA7wJvkfTmrBXuoakIPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i197S-0008Uf-2w; Fri, 23 Aug 2019 12:56:42 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i196u-00083n-Ro
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:56:10 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7NCu6uB103832;
 Fri, 23 Aug 2019 07:56:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566564966;
 bh=z7aNVn0YYauCti4+ZL7WkTdhJclZFoX05/eUquPIZnU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=byBQEq30ILKRQAB4n4ESMgjjmPpVKcmVZoaZtDu7Sv1yotDwZAmksKVMSJcEbfaba
 /PgiYi0KmJ6aQCNtQ9iDq9hA0JgT9fpdLX94yMT/ItaNQbWhZ2AaXe1zgnPrG7R6oD
 qwvMwBOCSOEYpUQcw+ox0zqUOUfCi1X5+rs27kdA=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7NCu6Em080831
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 23 Aug 2019 07:56:06 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 23
 Aug 2019 07:56:05 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 23 Aug 2019 07:56:06 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7NCtwkg092319;
 Fri, 23 Aug 2019 07:56:03 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 2/5] dmaengine: ti: edma: Only reset region0 access registers
Date: Fri, 23 Aug 2019 15:56:15 +0300
Message-ID: <20190823125618.8133-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823125618.8133-1-peter.ujfalusi@ti.com>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_055608_939349_58A22BC2 
X-CRM114-Status: GOOD (  12.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Region0 is used by Linux, do not reset other registers controlling access
for other shadow regions.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index 1aae95cc0d4b..87450431f336 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -2434,11 +2434,10 @@ static int edma_probe(struct platform_device *pdev)
 		edma_assign_priority_to_queue(ecc, queue_priority_mapping[i][0],
 					      queue_priority_mapping[i][1]);
 
-	for (i = 0; i < ecc->num_region; i++) {
-		edma_write_array2(ecc, EDMA_DRAE, i, 0, 0x0);
-		edma_write_array2(ecc, EDMA_DRAE, i, 1, 0x0);
-		edma_write_array(ecc, EDMA_QRAE, i, 0x0);
-	}
+	edma_write_array2(ecc, EDMA_DRAE, 0, 0, 0x0);
+	edma_write_array2(ecc, EDMA_DRAE, 0, 1, 0x0);
+	edma_write_array(ecc, EDMA_QRAE, 0, 0x0);
+
 	ecc->info = info;
 
 	/* Init the dma device and channels */
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
