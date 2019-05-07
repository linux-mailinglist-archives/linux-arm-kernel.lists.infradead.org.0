Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D6BA15D20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:10:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UshjJUhvKmFfjcrnkyCuvnwaKUsMSvTEA/WzsxPOvjs=; b=kZwZZK1ybRWTbERwZsZMZUmle5
	yL4cDn1kpnVpvjNBFmk1VkUtvd9RHubY6trnlNtN7b6MtIAfmp+NMQ+FiIxtMmzxoS9qeFZG02S/9
	vWghDo/T88UxMcw1e6Y5gUmkDjp3IAiKWPzQ8ybIj13YyIV/1sf/9PCVRYCeNPSzV5CGr/O4jUco1
	cN2+1s58nCNjpWf8us1CuqOjGPLvUehjZCevx/FvAxs1RVljs+/0eLKHHuh017KZ2qHs++0SPA0DS
	meLJFgCuxda+oZirbkNyKAfCM8q9ylZhdW5AIQ+OPUMcMnOdJD9bm9ytgnNqhQdBQpFtg89H5MtvS
	Hm2kbjbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtJ5-0006Dd-R0; Tue, 07 May 2019 06:10:27 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtIq-00064u-Lo
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:16 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so2872045pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=ocbAuIAf3IKqxmrD8BDylPcrWXIwDT9EtJL2aoTkWT0=;
 b=eW6FDJOcTD20PObfZpdVGKkaItn9WQ1hYpVO8EGcNkYkpbdcbslbka9dSSdhBu5/us
 6m45eQR1VUr0hYBR8zTdkwc7je4Tm5t4GqvYRJYBo0PChRyyqW9tCMQSWgFzI3dX7VsQ
 FwBRCKZZcjZOhGApZPk48kNN24KkN6bXZ0GZ3N3RiLw5WOSQPiDCaTTvmxvt61LC4bxB
 FhvTbk6UNAE7dYiUZA8Wh2/YcDjgNCunpItqcjs/Str0If/TlRH7iOdCUPPabQRLeWXo
 jHa4ds3cktME2Ke6Do2jhx/oYHMVsK/6G4qQBQriJAmke3d62HFFWHJnVc+/TLFbwfpr
 lovg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=ocbAuIAf3IKqxmrD8BDylPcrWXIwDT9EtJL2aoTkWT0=;
 b=IeJ2sQ7KTmgmRmSz6PQzWU2AMcZCrkZd85zcN+0/HvQdU5I7HIpbQh56I3neGAEg0b
 i1kMOJtw1yPTYDQuyEOsNKfcs/fVvZ26ltB6HMaUJFrnffCvU+RZc+zhN0CYzsSLRcaH
 QBZUr4iOzMQczDt0N2FtTiMVt5qi938Ylddc5HUfap4lvfXYL5LHKfgsheE+OLTNMld/
 CNOM+HANFRPvyq8TYbSXFQ4KkVTkDd4H9ioM7Ho0IOj7Hz6KJ/Imc7LFAp6YgqLhM15q
 zphIdTv0T+4tenZoiiV4FMhyARhraqDB8d2xSrlx0rKahW9ZyxuIKio0o44aS8bqYFrN
 kpoQ==
X-Gm-Message-State: APjAAAWWiVK1Sy0gL5y2YUu442O6q9LjV8lH9NOGAvcP5o8bZtwGZe6A
 HXjXlqwPGWIPds1T7go6eDR4kw==
X-Google-Smtp-Source: APXvYqxKPo0qOh1P/ydBlkUZtj0v54YJ0oLi3CXxSzI1jQdpcFRZqvq/mvfJH7rjLXKntTXZ9qadKA==
X-Received: by 2002:a63:1706:: with SMTP id x6mr4601020pgl.280.1557209411899; 
 Mon, 06 May 2019 23:10:11 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.06
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:11 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 1/8] dmaengine: Add matching device node validation in
 __dma_request_channel()
Date: Tue,  7 May 2019 14:09:38 +0800
Message-Id: <17a22052fdb759ae6129e30f9bd8862f23a03ad9.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231013_557291_A1ABA60B 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jroedel@suse.de, vincent.guittot@linaro.org, Zubair.Kakakhel@imgtec.com,
 baolin.wang@linaro.org, dmaengine@vger.kernel.org, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 wsa+renesas@sang-engineering.com, thierry.reding@gmail.com, linux-imx@nxp.com,
 kernel@pengutronix.de, linux-tegra@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When user try to request one DMA channel by __dma_request_channel(), it won't
validate if it is the correct DMA device to request, that will lead each DMA
engine driver to validate the correct device node in their filter function
if it is necessary.

Thus we can add the matching device node validation in the DMA engine core,
to remove all of device node validation in the drivers.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/dma/dmaengine.c   |   10 ++++++++--
 drivers/dma/of-dma.c      |    4 ++--
 include/linux/dmaengine.h |   12 ++++++++----
 3 files changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/dma/dmaengine.c b/drivers/dma/dmaengine.c
index 3a11b10..610080c 100644
--- a/drivers/dma/dmaengine.c
+++ b/drivers/dma/dmaengine.c
@@ -641,11 +641,13 @@ struct dma_chan *dma_get_any_slave_channel(struct dma_device *device)
  * @mask: capabilities that the channel must satisfy
  * @fn: optional callback to disposition available channels
  * @fn_param: opaque parameter to pass to dma_filter_fn
+ * @np: device node to look for DMA channels
  *
  * Returns pointer to appropriate DMA channel on success or NULL.
  */
 struct dma_chan *__dma_request_channel(const dma_cap_mask_t *mask,
-				       dma_filter_fn fn, void *fn_param)
+				       dma_filter_fn fn, void *fn_param,
+				       struct device_node *np)
 {
 	struct dma_device *device, *_d;
 	struct dma_chan *chan = NULL;
@@ -653,6 +655,10 @@ struct dma_chan *__dma_request_channel(const dma_cap_mask_t *mask,
 	/* Find a channel */
 	mutex_lock(&dma_list_mutex);
 	list_for_each_entry_safe(device, _d, &dma_device_list, global_node) {
+		/* Finds a DMA controller with matching device node */
+		if (np && device->dev->of_node && np != device->dev->of_node)
+			continue;
+
 		chan = find_candidate(device, mask, fn, fn_param);
 		if (!IS_ERR(chan))
 			break;
@@ -769,7 +775,7 @@ struct dma_chan *dma_request_chan_by_mask(const dma_cap_mask_t *mask)
 	if (!mask)
 		return ERR_PTR(-ENODEV);
 
-	chan = __dma_request_channel(mask, NULL, NULL);
+	chan = __dma_request_channel(mask, NULL, NULL, NULL);
 	if (!chan) {
 		mutex_lock(&dma_list_mutex);
 		if (list_empty(&dma_device_list))
diff --git a/drivers/dma/of-dma.c b/drivers/dma/of-dma.c
index 91fd395..6b43d04 100644
--- a/drivers/dma/of-dma.c
+++ b/drivers/dma/of-dma.c
@@ -316,8 +316,8 @@ struct dma_chan *of_dma_simple_xlate(struct of_phandle_args *dma_spec,
 	if (count != 1)
 		return NULL;
 
-	return dma_request_channel(info->dma_cap, info->filter_fn,
-			&dma_spec->args[0]);
+	return __dma_request_channel(&info->dma_cap, info->filter_fn,
+				     &dma_spec->args[0], dma_spec->np);
 }
 EXPORT_SYMBOL_GPL(of_dma_simple_xlate);
 
diff --git a/include/linux/dmaengine.h b/include/linux/dmaengine.h
index d49ec5c..504085b 100644
--- a/include/linux/dmaengine.h
+++ b/include/linux/dmaengine.h
@@ -1314,7 +1314,8 @@ static inline enum dma_status dma_async_is_complete(dma_cookie_t cookie,
 enum dma_status dma_wait_for_async_tx(struct dma_async_tx_descriptor *tx);
 void dma_issue_pending_all(void);
 struct dma_chan *__dma_request_channel(const dma_cap_mask_t *mask,
-					dma_filter_fn fn, void *fn_param);
+				       dma_filter_fn fn, void *fn_param,
+				       struct device_node *np);
 struct dma_chan *dma_request_slave_channel(struct device *dev, const char *name);
 
 struct dma_chan *dma_request_chan(struct device *dev, const char *name);
@@ -1339,7 +1340,9 @@ static inline void dma_issue_pending_all(void)
 {
 }
 static inline struct dma_chan *__dma_request_channel(const dma_cap_mask_t *mask,
-					      dma_filter_fn fn, void *fn_param)
+						     dma_filter_fn fn,
+						     void *fn_param,
+						     struct device_node *np)
 {
 	return NULL;
 }
@@ -1411,7 +1414,8 @@ static inline int dmaengine_desc_free(struct dma_async_tx_descriptor *desc)
 void dma_run_dependencies(struct dma_async_tx_descriptor *tx);
 struct dma_chan *dma_get_slave_channel(struct dma_chan *chan);
 struct dma_chan *dma_get_any_slave_channel(struct dma_device *device);
-#define dma_request_channel(mask, x, y) __dma_request_channel(&(mask), x, y)
+#define dma_request_channel(mask, x, y) \
+	__dma_request_channel(&(mask), x, y, NULL)
 #define dma_request_slave_channel_compat(mask, x, y, dev, name) \
 	__dma_request_slave_channel_compat(&(mask), x, y, dev, name)
 
@@ -1429,6 +1433,6 @@ static inline int dmaengine_desc_free(struct dma_async_tx_descriptor *desc)
 	if (!fn || !fn_param)
 		return NULL;
 
-	return __dma_request_channel(mask, fn, fn_param);
+	return __dma_request_channel(mask, fn, fn_param, NULL);
 }
 #endif /* DMAENGINE_H */
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
