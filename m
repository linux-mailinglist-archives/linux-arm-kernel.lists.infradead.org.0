Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E80DF15D37
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 08:11:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OE6Gis3qHJTzNuLPHS/nGQcDMF2UFYxWxk24r9+bIRQ=; b=X0SCJ02hDjTXyoK7ikypYE2c6U
	u+H3XGu7eWzfK3V8IlE4JcFYF9AJIaFstsYJOQK6s/OjO2+2+6UFL7/yANPGcSOf0JhZIQBd9pUpb
	EC2ALr7qVlLgJCJe6AlN6PNo7PgzltxOxNlqI/BmeZPNNchPfXa61U75rozPxzb5f6Q/rAjl3dy7Q
	gLSnode7tVCjjEDjtnGK4/f/tItHyHD+w3jx445tK3O26kx63qJSUgoi4hhrA43pN/m4uNUM8+guy
	YKKlw7cbSdixdbNVBujv0B64etydSscFljEQ5Gamt8lGdMPilVzlZjELBkNjEkzYOFTOAZGGbx3vb
	w17IZ+jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNtK2-0007XJ-EQ; Tue, 07 May 2019 06:11:26 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNtJH-0006do-5M
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 06:10:57 +0000
Received: by mail-pf1-x442.google.com with SMTP id j11so8055260pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 23:10:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=MjWLMAdBW11KI57uPKHpmOc8QO2EQsc2Bw5TFtq2aeM=;
 b=EPTCkX6PIWp6H6mHi0TmZyBHNTkNiDCOjwIvq4y+k7bAcUKgg+aAQYSeUiGtcEFhac
 uMQAb8Ce8bUqBZz0qzb3QD+1St8FT3LKJBOg2WJ79dLdgMiEnyhT6dED9GpA50HiDYXN
 g0cKvEmfcBjAZftLALFM6YJyyLCO2jGotOdpdiT+Jjqk4ZyUCejl/+4S7hjOJBIeAEgH
 EAM3+6a/PJghpLImXKKWgX2TNnpm0v9a0iYFb5ZHU9heUH6Nziw1o22ZNlXNQi/VzWyP
 yMjMvo3QcgAZii1n18z4Ol2nN+x5pdXG7MSREtWPwYDbLaQVwGa4WWigS7aVj5XMz8ac
 hXmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=MjWLMAdBW11KI57uPKHpmOc8QO2EQsc2Bw5TFtq2aeM=;
 b=fzfs1OYfSl9EMwTneLnX0tzzrODKbUz/UxGKqkh4MjSWulHIcP/CEVbGTPAJ8T8oNS
 dyCmKHtZr102RnHeliRU4s821hNEfRM4dVKIbQZ0XDJT8BTR3PuLUf9TAsDKZXSMzSfM
 ahltEPRh4HYIUlcJV4iLqWgoPQfC1zC4iK5hjsp2dje6ottuaXYAB2JwaaYhNROUiDU1
 peW073rrHrUn7tn/lcNDyxm0uquesC6oee3zUeK9c3K1u4+xkF0UGoAbX3+U8kpgnQD3
 N39Y/6PtCpOUP8ouh8sU1QWtgCJJGOesQOczPNvBx4F7DDruUWBGIwu4d8/CfN8mqkj3
 mfKQ==
X-Gm-Message-State: APjAAAV3shXsJqNUlFsMScWn3GcBxGP+FdeJ3JgqmIIusdEsQ7tGFPiY
 HhnR697ykmEz6vJVug74u8zGEg==
X-Google-Smtp-Source: APXvYqxLVILAxDHZN2kRQScJnvark6ssZgdEGaBWmo/QMwC9MFS0hSHYzRT49kNXNOF1nEGRxtcIsw==
X-Received: by 2002:aa7:90ca:: with SMTP id k10mr1280408pfk.20.1557209438341; 
 Mon, 06 May 2019 23:10:38 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id e184sm30786325pfc.102.2019.05.06.23.10.33
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 23:10:37 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH 6/8] dmaengine: mxs-dma: Let the core do the device node
 validation
Date: Tue,  7 May 2019 14:09:43 +0800
Message-Id: <c9b8865e869b4ca0bfcbaf04a997c4883dd8e15e.1557206859.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1557206859.git.baolin.wang@linaro.org>
References: <cover.1557206859.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_231039_556181_D053B4E7 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 drivers/dma/mxs-dma.c |    8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/mxs-dma.c b/drivers/dma/mxs-dma.c
index 22cc7f6..8ce5e79 100644
--- a/drivers/dma/mxs-dma.c
+++ b/drivers/dma/mxs-dma.c
@@ -716,7 +716,6 @@ static int __init mxs_dma_init(struct mxs_dma_engine *mxs_dma)
 }
 
 struct mxs_dma_filter_param {
-	struct device_node *of_node;
 	unsigned int chan_id;
 };
 
@@ -727,9 +726,6 @@ static bool mxs_dma_filter_fn(struct dma_chan *chan, void *fn_param)
 	struct mxs_dma_engine *mxs_dma = mxs_chan->mxs_dma;
 	int chan_irq;
 
-	if (mxs_dma->dma_device.dev->of_node != param->of_node)
-		return false;
-
 	if (chan->chan_id != param->chan_id)
 		return false;
 
@@ -752,13 +748,13 @@ static struct dma_chan *mxs_dma_xlate(struct of_phandle_args *dma_spec,
 	if (dma_spec->args_count != 1)
 		return NULL;
 
-	param.of_node = ofdma->of_node;
 	param.chan_id = dma_spec->args[0];
 
 	if (param.chan_id >= mxs_dma->nr_channels)
 		return NULL;
 
-	return dma_request_channel(mask, mxs_dma_filter_fn, &param);
+	return __dma_request_channel(&mask, mxs_dma_filter_fn, &param,
+				     ofdma->of_node);
 }
 
 static int __init mxs_dma_probe(struct platform_device *pdev)
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
