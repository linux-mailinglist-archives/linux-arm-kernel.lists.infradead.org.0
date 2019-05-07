Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045BD15D2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:10:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SSU7DLSbg5eep7iKDVDL22F4HlypHysZ1TfoprHbTCU=; b=Br8dMGKQQ+n2A4WRUKFJP+6Whq
	bJ3TIOvKx0/v2t4eP8YnhIaPUt1IcndA2wjxBNZSQdYB3d4E1L0Nb0ZCmwgSVBsgRKqZYc1glZXFA
	XOMH2L9HdsgXWrVnPPZ7zVAgvvhg+BiQ86o5WSTEZ9D7fzZN1yOdAf4yl5LRPRAM5pBlPHvvB1O4J
	mOxHHx9etv81h97G+9ZyNR8Z97lwCMhNsfOXZUKgjW4p+KX6e1HFmUTtHQ8yzHgcO1Gml1yhN7PcP
	9YlYdf6XYdu+5rzOPNbJ0TGTwuKczplTFdZIg9nBBG6XqS7kpzFEVi9TKYV0NhGla4nFhBk8r4sgQ
	mzDZ2eTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtJV-0006ml-L2; Tue, 07 May 2019 06:10:53 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtJ1-0006JD-6K
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id h1so7740447pgs.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=zZVeFg3ilWn9d8BrQHwI8nm6+PjT4Uc8w1q60Oaxq8U=;
 b=rPaqrwn1dFRkPgVFFCucjoHDO9tCwtxHdMU6tMSwe80W34i8kOmUplfqdBpDJW71dL
 HM7rhYYCe2OGnSSmfVroNtvEdyr6r7JIRywbildJSl0RVF6A1wLs6aWvKzSZ2PgnRXUr
 cCHXZ+OvTXZRbab/VqQs16S4bcCDRdFSdBLLkKHfQ2NssH3PQGzdeVU7HlXwxk6EchIq
 dOsBethnRBXf/G73slckz7OKvoPkhfOznt28Mc5bFa9lCakZNCytQ77xEb/RWjolQr8b
 0SziRR+oL/8Spt70qUhBz+G15DXEaE9/MAvB/8OqYQXH9eRx9Nm1j2FxuRpLUtg1ymrJ
 HD0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=zZVeFg3ilWn9d8BrQHwI8nm6+PjT4Uc8w1q60Oaxq8U=;
 b=hwOiPXRSFWNbMz48nksSxgEJorXKjppDfNzo+tjXjMg+GVC0/OVVtdR50zcwrd6Oqr
 18VOiWu6JmIc5goiR63KPobiiPJMauBMCXlMs/YmxkMEtHk2QJqgcKJQAvtM5JmBwm/q
 QY6OeXATlpIXn/0oW2mA6Hr6/QADt9prFu+TSATI8IWz88gwzg1M3LAaErGXPHvYXgVd
 WZs791wswlcjrNsOwBwphvSH3SiJCHfMDvStYmOkym9F5HxUNUz7uAt4KMwZHHioGwQm
 xMZaBZbQ6ZISOOXqw/47Onvqh4tKttnz1LWBzLhgYA6eR0r+Fb55mBMAiXUtZyhbXj4t
 hlJQ==
X-Gm-Message-State: APjAAAVrH/KtHuIh6iU57ibhgpqUwe+1/ovemZpak93G7Q2zmgda8ss2
 YpdTkfbRwuWPV3j9Tvd9LZTScg==
X-Google-Smtp-Source: APXvYqx2qWlTeHpIBatZZRSy2fiI3ZlapPkg6bNITXkF5AhanuTKXxUc3Xf9Hd7av0sMdlgfjtY7BA==
X-Received: by 2002:a65:62c4:: with SMTP id m4mr37228778pgv.308.1557209422442; 
 Mon, 06 May 2019 23:10:22 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.17
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:21 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 3/8] dmaengine: imx-sdma: Let the core do the device node
 validation
Date: Tue,  7 May 2019 14:09:40 +0800
Message-Id: <60acb5443a9bc18789bd86d6722f4726bf372fbc.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231023_949356_D02993E6 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

Let the DMA engine core do the device node validation instead of drivers.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/dma/imx-sdma.c                |    9 ++-------
 include/linux/platform_data/dma-imx.h |    1 -
 2 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 5f3c137..1a11118 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1921,16 +1921,11 @@ static int sdma_init(struct sdma_engine *sdma)
 static bool sdma_filter_fn(struct dma_chan *chan, void *fn_param)
 {
 	struct sdma_channel *sdmac = to_sdma_chan(chan);
-	struct sdma_engine *sdma = sdmac->sdma;
 	struct imx_dma_data *data = fn_param;
 
 	if (!imx_dma_is_general_purpose(chan))
 		return false;
 
-	/* return false if it's not the right device */
-	if (sdma->dev->of_node != data->of_node)
-		return false;
-
 	sdmac->data = *data;
 	chan->private = &sdmac->data;
 
@@ -1958,9 +1953,9 @@ static struct dma_chan *sdma_xlate(struct of_phandle_args *dma_spec,
 	 * be set to sdmac->event_id1.
 	 */
 	data.dma_request2 = 0;
-	data.of_node = ofdma->of_node;
 
-	return dma_request_channel(mask, sdma_filter_fn, &data);
+	return __dma_request_channel(&mask, sdma_filter_fn, &data,
+				     ofdma->of_node);
 }
 
 static int sdma_probe(struct platform_device *pdev)
diff --git a/include/linux/platform_data/dma-imx.h b/include/linux/platform_data/dma-imx.h
index 9daea8d..7d964e7 100644
--- a/include/linux/platform_data/dma-imx.h
+++ b/include/linux/platform_data/dma-imx.h
@@ -55,7 +55,6 @@ struct imx_dma_data {
 	int dma_request2; /* secondary DMA request line */
 	enum sdma_peripheral_type peripheral_type;
 	int priority;
-	struct device_node *of_node;
 };
 
 static inline int imx_dma_is_ipu(struct dma_chan *chan)
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
