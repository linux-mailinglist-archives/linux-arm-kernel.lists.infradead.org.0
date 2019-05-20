Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CB12327D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:33:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=RUxuF/6IxQ5TyYnIX2enJ9jf0UxIhlKnkqKnqLhBpg0=; b=SrGVlic6iiC2H9/kw4ci5D8INM
	fnDIXhJki/ut8BVncBMtO4FSgemqVjGlc37GxLlJY7DIVKFRcX8nHqQx9G6wPFmVlXzp/BnDAxP8o
	z2QQjesHZg2GakQXU9k8rv50B1HUmRWahSlDQd9w2WQbVn7oMvT3eTjLnVwaNPop2/EG2gN7lXWQw
	GK3JOZkdTU11SQPE4F5N9t6WFPkMG8MHkYLM8wCMCkQMPjwEq97zQxDp93ubWoXBD5WTD8H9GLaX2
	37shLvBDIZGHid3idR1LQetL7rP9haSR0F0xx4nQVDe6plINZtXQeBFwBLAiibveCyQHtyKCMHAgD
	u2wx4r3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgXc-00020W-M9; Mon, 20 May 2019 11:33:16 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgX9-0001a6-DL
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:32:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id r18so6585710pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:32:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=Rhx5bIGIXYyTwXNSrFhH6sXCwPoowbOq8I8g6rhgfcM=;
 b=u/TmKJQVbWXU1jY6nvSgyqY9QzIEzS6idFSTXXT7qz9wsgNBI/s4V17hUgh4Rv7R2Y
 cwuuJfl56c+TBCEGqsc5RRIu34NSt4lHOx8UibOcyvnhXey8lHP7056ZxtHY0B4NseoG
 6152HD/5j7w4ftbZ4++CLib5eBofL1XNbn5oS8Osd8NYxVsBI8Ft9hZDT1zAZ/NwACnM
 BkDXCqfsjhvdPmSFeCmpfO3FxtOu2mbVJWnOjskv6Npuj/95BixXJKam34owM1QCU0dF
 hZkQDeWU7Y0zRyI7nbkB4upO4egh0ZnC/sBYA0i4TH21JKW6sXLUUZFUxv9bWc9DnUq2
 NdBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=Rhx5bIGIXYyTwXNSrFhH6sXCwPoowbOq8I8g6rhgfcM=;
 b=a1TtZLBycMi7bgsp8N+/lDpU5UuIbxSLvwedGl1d+MepnTcWHK3hxkOzuC3Jq2N8Wt
 pAHVNN1RMCYCOchmDxGv6ZjkDi8XI6WXMn4Qe844o3yuzPstUbSeBtu+A/M7/nOKVxGa
 U34OJClC43X/uv5bhZVoijk7X1M9rYceCCGjxD6lWXHxIunZCHG73nGsErMPnVWWWIsZ
 hMi6PdzFDjDXuF91aPLElE4wrQHhK1EnvW8Nt2+efCHmuPf/Thz5zOHDhI6lFfObRwaG
 UiUzq2PjBOER5qnRkPUMNaipoLuOkjMs5JTiaFfSvjPSrJ7ON+BzyCAsQNWk6SGN5OwU
 PNMQ==
X-Gm-Message-State: APjAAAVC1soQmIXfPuznGqAiCJYpoci0CNHBXrxnXMKfdNZ6aP9Ko0/Z
 tgntqYqndBy/5M4/9tAnnlkjzA==
X-Google-Smtp-Source: APXvYqwgHwuoUVL1ByBfPSEobTX9ErDzyRhrOOJ1I3tJoZIQ3cgXSjtVqIPbUPY7AzkB1zM9IH6mIA==
X-Received: by 2002:a17:902:8ec4:: with SMTP id
 x4mr65112742plo.249.1558351966882; 
 Mon, 20 May 2019 04:32:46 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.32.42
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:32:46 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 3/8] dmaengine: imx-sdma: Let the core do the device node
 validation
Date: Mon, 20 May 2019 19:32:16 +0800
Message-Id: <77c1171088844b62a50977817103c2cf01fd75ae.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043247_545412_05A342B9 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: jroedel@suse.de, vincent.guittot@linaro.org, dmaengine@vger.kernel.org,
 baolin.wang@linaro.org, festevam@gmail.com, s.hauer@pengutronix.de,
 linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
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
index 99d9f43..ca296f0 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1934,16 +1934,11 @@ static int sdma_init(struct sdma_engine *sdma)
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
 
@@ -1971,9 +1966,9 @@ static struct dma_chan *sdma_xlate(struct of_phandle_args *dma_spec,
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
