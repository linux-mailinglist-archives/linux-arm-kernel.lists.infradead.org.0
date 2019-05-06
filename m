Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49929149D7
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 14:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H0oKIWBICPt4NCJgsXEwKgWYE8aOoUcTPB+Xnv2KZZw=; b=fEye+L7TZ7D+Ql
	dyiT6tcRSDoJmMxEUFPZ4YZ4xwZqBbvNGf6eydSnS40fEYHlDpoA+Mj8zHwzq/j8XvsU6F7Bx1cnA
	XgSXPrFGET1sS3uO3vNAoAtP+nd2xh5G6uPRz9Fy0QyNyPk/nI2IzeRHxxOVQb9l3oMS1okUeRht7
	D9FOoMlnthLsgonkP3BibPMTAgfPgEhFKz2amxvQYdPGsMjFSgVHCu9aDCSh6/rq2Y6YGfUZo1tUF
	EIsMVQMnPw267DtBWSKReWYlgLhRicjAdpJrMCA8eucweEmmTcZLwg3qzB1+XlcsxNT9HBIVuiRMJ
	JAaMgBL08Y1iV6bAivLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNcrJ-0000SV-S5; Mon, 06 May 2019 12:36:41 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNcq3-0007W7-L9
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 12:35:43 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x46CZJbg017849;
 Mon, 6 May 2019 07:35:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1557146119;
 bh=k+xYXJk24KElUVNAc9y4GHfBm7/BQojVwXvOY0hlb2M=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=xK9JGg19rRbmty8mZwA+uvBocr+9M+PlIhum5w3yXmvxojinXIQBx/+8cnvmvhlSm
 qqMAr+tx7+AZ2BknK1b0Vop0ZvS4Oo5JDwLRnccPAvnsXow7qnetJWjMktk/Nwn4Sg
 WEBEilerQe5UQtEjTNRXyLFMjlQ19z9tRFQGwUiM=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x46CZJf7035849
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 May 2019 07:35:19 -0500
Received: from DFLE104.ent.ti.com (10.64.6.25) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 6 May
 2019 07:35:16 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 6 May 2019 07:35:16 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x46CYpUD110286;
 Mon, 6 May 2019 07:35:13 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <nm@ti.com>,
 <ssantosh@kernel.org>
Subject: [PATCH 07/16] dmaengine: Add function to request slave channel from a
 dma_device
Date: Mon, 6 May 2019 15:34:47 +0300
Message-ID: <20190506123456.6777-8-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190506123456.6777-1-peter.ujfalusi@ti.com>
References: <20190506123456.6777-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_053524_550443_68A0B803 
X-CRM114-Status: GOOD (  11.45  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, grygorii.strashko@ti.com, lokeshvutla@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma_get_any_slave_channel() would skip using the filter function, which
in some cases needed to be executed before the alloc_chan_resources
callback to make sure that all parameters are provided for the slave
channel.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/dmaengine.c   | 7 ++++---
 include/linux/dmaengine.h | 5 ++++-
 2 files changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/dmaengine.c b/drivers/dma/dmaengine.c
index 8eed5ff0fc01..7ec93be12088 100644
--- a/drivers/dma/dmaengine.c
+++ b/drivers/dma/dmaengine.c
@@ -617,7 +617,8 @@ struct dma_chan *dma_get_slave_channel(struct dma_chan *chan)
 }
 EXPORT_SYMBOL_GPL(dma_get_slave_channel);
 
-struct dma_chan *dma_get_any_slave_channel(struct dma_device *device)
+struct dma_chan *dmadev_get_slave_channel(struct dma_device *device,
+					  dma_filter_fn fn, void *fn_param)
 {
 	dma_cap_mask_t mask;
 	struct dma_chan *chan;
@@ -628,13 +629,13 @@ struct dma_chan *dma_get_any_slave_channel(struct dma_device *device)
 	/* lock against __dma_request_channel */
 	mutex_lock(&dma_list_mutex);
 
-	chan = find_candidate(device, &mask, NULL, NULL);
+	chan = find_candidate(device, &mask, fn, fn_param);
 
 	mutex_unlock(&dma_list_mutex);
 
 	return IS_ERR(chan) ? NULL : chan;
 }
-EXPORT_SYMBOL_GPL(dma_get_any_slave_channel);
+EXPORT_SYMBOL_GPL(dmadev_get_slave_channel);
 
 /**
  * __dma_request_channel - try to allocate an exclusive channel
diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index c1486564a314..4774b66f2064 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -1541,7 +1541,10 @@ int dmaenginem_async_device_register(struct dma_device *device);
 void dma_async_device_unregister(struct dma_device *device);
 void dma_run_dependencies(struct dma_async_tx_descriptor *tx);
 struct dma_chan *dma_get_slave_channel(struct dma_chan *chan);
-struct dma_chan *dma_get_any_slave_channel(struct dma_device *device);
+struct dma_chan *dmadev_get_slave_channel(struct dma_device *device,
+					  dma_filter_fn fn, void *fn_param);
+#define dma_get_any_slave_channel(device) \
+	dmadev_get_slave_channel(device, NULL, NULL)
 #define dma_request_channel(mask, x, y) __dma_request_channel(&(mask), x, y)
 #define dma_request_slave_channel_compat(mask, x, y, dev, name) \
 	__dma_request_slave_channel_compat(&(mask), x, y, dev, name)
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
