Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16F151294CC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Dec 2019 12:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7dd239yBbLLXoUxxeZ4XHg/DaOg+kiuoy8S898IRH1o=; b=UiezgniNnvrdC7
	ClIJ9eqkJPq4KMzwA2vEe2x1m28Nmgc/9AqXJFNMuwY6I0NivKnhzW3MQSyuDynuWzRuH+7hvhuVH
	1idgAQ/GB2Ezy8xAkUILH+Ae5FHjhDcId8elN4R9aDA5Zj3LWFptWjFSsq5qTioLxxpV0k3Yf25/X
	gARuLhB0Uf0HNXGhdegNcdDVHVVk6FKTaBCLkev6k8WCvS1yV35qcwidBgYcHMftj31I2kyvZSefa
	+6dIjqLD1vwRECSGwan+1zeBSDG1b718ox+nRkf8e7oixjAghxfhhxUBw/rotHVIQsr1ffbcR9wUd
	yuP0HixKFa4i0gJ6pL7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijLYt-0003YT-5W; Mon, 23 Dec 2019 11:07:43 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijLWZ-00024i-Bt
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Dec 2019 11:05:21 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xBNB5D1n110565;
 Mon, 23 Dec 2019 05:05:13 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1577099113;
 bh=InxUgyvU8lymSAtilFp+vD1kDqNPZsdnOQIPWDDC2Kc=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TlhDqKNG0Rfe30Pc+Pl+QdNXGOZ4KB59QZ672eUZ/0cHduxZdL1LwYNpm/jOKL4k0
 iKHNfGggrBBhAa/62K/KjyKRuyMrITjdoI4Iy/dmO/nvCuv2VTv0eejD5htHtxjLbY
 fS9zzumP9UyQ1EroIpqQ1c6tZufCLJgta36o8/VY=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id xBNB5D1i106727
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 23 Dec 2019 05:05:13 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 23
 Dec 2019 05:05:04 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 23 Dec 2019 05:05:04 -0600
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id xBNB4eMC025693;
 Mon, 23 Dec 2019 05:05:00 -0600
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH v8 05/18] dmaengine: Add support for reporting DMA cached data
 amount
Date: Mon, 23 Dec 2019 13:04:45 +0200
Message-ID: <20191223110458.30766-6-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223110458.30766-1-peter.ujfalusi@ti.com>
References: <20191223110458.30766-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_030519_504988_A94E78D7 
X-CRM114-Status: GOOD (  13.80  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, vigneshr@ti.com,
 lokeshvutla@ti.com, j-keerthy@ti.com, linux-kernel@vger.kernel.org,
 t-kristo@ti.com, tony@atomide.com, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, frowand.list@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A DMA hardware can have big cache or FIFO and the amount of data sitting in
the DMA fabric can be an interest for the clients.

For example in audio we want to know the delay in the data flow and in case
the DMA have significantly large FIFO/cache, it can affect the latenc/delay

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
Reviewed-by: Tero Kristo <t-kristo@ti.com>
Tested-by: Keerthy <j-keerthy@ti.com>
Reviewed-by: Grygorii Strashko <grygorii.strashko@ti.com>
---
 drivers/dma/dmaengine.h   | 8 ++++++++
 include/linux/dmaengine.h | 2 ++
 2 files changed, 10 insertions(+)

diff --git a/drivers/dma/dmaengine.h b/drivers/dma/dmaengine.h
index 501c0b063f85..b0b97475707a 100644
--- a/drivers/dma/dmaengine.h
+++ b/drivers/dma/dmaengine.h
@@ -77,6 +77,7 @@ static inline enum dma_status dma_cookie_status(struct dma_chan *chan,
 		state->last = complete;
 		state->used = used;
 		state->residue = 0;
+		state->in_flight_bytes = 0;
 	}
 	return dma_async_is_complete(cookie, complete, used);
 }
@@ -87,6 +88,13 @@ static inline void dma_set_residue(struct dma_tx_state *state, u32 residue)
 		state->residue = residue;
 }
 
+static inline void dma_set_in_flight_bytes(struct dma_tx_state *state,
+					   u32 in_flight_bytes)
+{
+	if (state)
+		state->in_flight_bytes = in_flight_bytes;
+}
+
 struct dmaengine_desc_callback {
 	dma_async_tx_callback callback;
 	dma_async_tx_callback_result callback_result;
diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index 81ce9d2480c4..7f9a7150a632 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -686,11 +686,13 @@ static inline struct dma_async_tx_descriptor *txd_next(struct dma_async_tx_descr
  * @residue: the remaining number of bytes left to transmit
  *	on the selected transfer for states DMA_IN_PROGRESS and
  *	DMA_PAUSED if this is implemented in the driver, else 0
+ * @in_flight_bytes: amount of data in bytes cached by the DMA.
  */
 struct dma_tx_state {
 	dma_cookie_t last;
 	dma_cookie_t used;
 	u32 residue;
+	u32 in_flight_bytes;
 };
 
 /**
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
