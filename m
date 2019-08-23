Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E8E99B011
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:57:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3z+CU6ncjXnmQEAY+wraZjJEs2bnGLEzTIAy0jH2Iw=; b=HLgQdMp+WkBhdr
	l0lu1WzOuBU5H/fWasmJb4JVaZcWZllV7ePNdkQCMub3Q+eSWEdzDhakbRt9pAbG219uCQAiyfsKL
	5FNY7QSTbjlwJpZm/vb2N+MB6lYfkw56A8wXu3U5acUWvLnlP9FlndHn3LPiTiBF+p/mActckY+l3
	75/ECsfgwbDSioCBIJB5V8mMe7yD6sCNAvWrYeLM1lQ1labWxG4sp8YyyHydO3uOVUqEK9P4jq5CJ
	Smz0SCyhoVIKUX9B1PyB8RpcuHZeX5ueS5ql+vcpE0PKbs+Qw9ozmUA3xpjHSlVYmTwtHOID+fw/A
	PpyCS7lve2CmSfcYig7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i197e-0000JU-Ns; Fri, 23 Aug 2019 12:56:54 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i196x-00084o-MR
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:56:13 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7NCu8hU073766;
 Fri, 23 Aug 2019 07:56:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566564968;
 bh=4p8x7v8EaQ++SIjoJmr4MK1Cg7JXqSOfe+y4BO9Mvv8=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ma39mbRlT65De5gN1ZfuqkKvk3VI5qahfCk9z+mz41wwyAKyaEIXAwShQhP/YTkxO
 cSVx5vr5PFc4cSizYXixue33OmXD7hPyD2QqY44YC4hTjM9+12UhG9eVETFAX+hO44
 SzPJ0SoUoGucEYxknHIDKx8JqmApUJ4OVeWPCtf8=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7NCu8uG080903
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 23 Aug 2019 07:56:08 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 23
 Aug 2019 07:56:08 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 23 Aug 2019 07:56:07 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7NCtwkh092319;
 Fri, 23 Aug 2019 07:56:06 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>
Subject: [PATCH 3/5] dmaengine: ti: edma: Use bitmap_set() instead of open
 coded edma_set_bits()
Date: Fri, 23 Aug 2019 15:56:16 +0300
Message-ID: <20190823125618.8133-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20190823125618.8133-1-peter.ujfalusi@ti.com>
References: <20190823125618.8133-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_055611_822861_F72AA18A 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
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

bitmap_set() is the standard way of setting an area in the bitfield.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 17 +++++------------
 1 file changed, 5 insertions(+), 12 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index 87450431f336..ba7c4f07fcd6 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -15,6 +15,7 @@
 
 #include <linux/dmaengine.h>
 #include <linux/dma-mapping.h>
+#include <linux/bitmap.h>
 #include <linux/err.h>
 #include <linux/init.h>
 #include <linux/interrupt.h>
@@ -423,12 +424,6 @@ static inline void edma_param_or(struct edma_cc *ecc, int offset, int param_no,
 	edma_or(ecc, EDMA_PARM + offset + (param_no << 5), or);
 }
 
-static inline void edma_set_bits(int offset, int len, unsigned long *p)
-{
-	for (; len > 0; len--)
-		set_bit(offset + (len - 1), p);
-}
-
 static void edma_assign_priority_to_queue(struct edma_cc *ecc, int queue_no,
 					  int priority)
 {
@@ -2254,7 +2249,7 @@ static int edma_probe(struct platform_device *pdev)
 {
 	struct edma_soc_info	*info = pdev->dev.platform_data;
 	s8			(*queue_priority_mapping)[2];
-	int			i, off, ln;
+	int			i, off;
 	const s16		(*rsv_slots)[2];
 	const s16		(*xbar_chans)[2];
 	int			irq;
@@ -2342,11 +2337,9 @@ static int edma_probe(struct platform_device *pdev)
 		/* Set the reserved slots in inuse list */
 		rsv_slots = info->rsv->rsv_slots;
 		if (rsv_slots) {
-			for (i = 0; rsv_slots[i][0] != -1; i++) {
-				off = rsv_slots[i][0];
-				ln = rsv_slots[i][1];
-				edma_set_bits(off, ln, ecc->slot_inuse);
-			}
+			for (i = 0; rsv_slots[i][0] != -1; i++)
+				bitmap_set(ecc->slot_inuse, rsv_slots[i][0],
+					   rsv_slots[i][1]);
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
