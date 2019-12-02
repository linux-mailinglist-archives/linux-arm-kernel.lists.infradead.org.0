Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6001310F18A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 21:32:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PwALndAe8ESJ+RG6jRtJAGkmx/t6CJsn1kl4tFiUJ3c=; b=U6grs8U42CZl7J
	UAa81Tu0MlGZizHx6fQxYGLWEZCJJE6r/viZVqaP7wOmIWCOzmw2l543GVQbhf2FcMUHSBnS8lv+5
	niIrd1lwszYbfp79zHZWqUZTdULcwRlWDvSHdQ7KHCP0IelbEqLJBR/0bssuQ/JP1M/1/unfLg7wx
	Okqi8fQjA83qv4l0oOqwC3bgR765gmeVGYBcGySV3L2kyh0XoEPccvRg4zdmANz4tdXvjcavs1sFI
	r1viEuwZ4IAb3a6juv/igE62MMZJUoxG7OmonVCYLuHTMVGNvFYgHjrJgzMlWz4hUqx4DbQYEf2sl
	vorx4RLuSLkb7ZjMhnig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibsMH-0005yO-O1; Mon, 02 Dec 2019 20:31:49 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibsM9-0005xc-Ce
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 20:31:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xB2KVU2q064017;
 Mon, 2 Dec 2019 14:31:30 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1575318690;
 bh=WJ7/iDoH+LgZm+FTh1H3GU4VY8iNBVP3eVx3nZf37Js=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ibwwyX4C1bE891UNaonAVXRMx4ZwTY4Gfe3ExB59ZVRB+mLyo1AiwGq6KFphTiRhN
 /3OjZmoSlmWh35JsB26bZKAmsWRt8+I2j25SZdzbPV3bGOMeTTpazJGhcIydY9WL42
 45wOkoCc7Sg+If53ly5IkB5/r9mqlBKq7RX7ypKo=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xB2KVU89001490
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 2 Dec 2019 14:31:30 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 2 Dec
 2019 14:31:30 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 2 Dec 2019 14:31:30 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id xB2KVOPm106889;
 Mon, 2 Dec 2019 14:31:27 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH 1/3] dmaengine: ti: k3-udma: Correct completed descriptor's
 residue value
Date: Mon, 2 Dec 2019 22:31:26 +0200
Message-ID: <20191202203128.14348-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191202203128.14348-1-peter.ujfalusi@ti.com>
References: <0191128105945.13071-1-peter.ujfalusi@ti.com>
 <20191202203128.14348-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_123141_535441_B249D0DE 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: grygorii.strashko@ti.com, vigneshr@ti.com, tony@atomide.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The residue should show the number of _not_ completed bytes, so it has to
be 0 when the full transfer is completed.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/k3-udma.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/ti/k3-udma.c b/drivers/dma/ti/k3-udma.c
index c1450b0a8224..1b929f7a84d4 100644
--- a/drivers/dma/ti/k3-udma.c
+++ b/drivers/dma/ti/k3-udma.c
@@ -2784,13 +2784,14 @@ static void udma_desc_pre_callback(struct virt_dma_chan *vc,
 
 		if (cppi5_desc_get_type(desc_vaddr) ==
 		    CPPI5_INFO0_DESC_TYPE_VAL_HOST) {
-			result->residue = cppi5_hdesc_get_pktlen(desc_vaddr);
-			if (result->residue == d->residue)
-				result->result = DMA_TRANS_NOERROR;
-			else
+			result->residue = d->residue -
+					  cppi5_hdesc_get_pktlen(desc_vaddr);
+			if (result->residue)
 				result->result = DMA_TRANS_ABORTED;
+			else
+				result->result = DMA_TRANS_NOERROR;
 		} else {
-			result->residue = d->residue;
+			result->residue = 0;
 			result->result = DMA_TRANS_NOERROR;
 		}
 	}
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
