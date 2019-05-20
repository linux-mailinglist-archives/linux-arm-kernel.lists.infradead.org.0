Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5FDA23280
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:34:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OE6Gis3qHJTzNuLPHS/nGQcDMF2UFYxWxk24r9+bIRQ=; b=f4vaUhuWT3gGYk/kD7rvnNCB8P
	hREopZrMJ66ylVVCluYuiMFbaAptP4YjBjBbcxYSYEIeeY80FrGJHphn+RKLCmjYN6mJLGPd7C/GB
	5JVKEixOKB11Xjj/OSI7+DvqhdqKZqsefYiPDDmey80bh8488LN1fnQw9YV05MdnCWzey0ay6GT57
	Kij/cnWOILt46Cnnat/YFQOhB6LrItJuAykR0d2wnDFukkphiTlRU9lSicPYLe2wTEqhavoLxmSx3
	pJGhSdIdNxZuC4RYM+Nk/FI7w0r1vszlp800No+ctg7Ccrh+pSE/Fnwu3mCZkAjEJGVdFYm+sAe2O
	0mdicl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgYK-0002nB-JH; Mon, 20 May 2019 11:34:00 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgXN-0001rG-Bp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:33:14 +0000
Received: by mail-pf1-x441.google.com with SMTP id g9so7074076pfo.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=MjWLMAdBW11KI57uPKHpmOc8QO2EQsc2Bw5TFtq2aeM=;
 b=QlKJ6r1aObcZ4e/504tulmS44XDtvOqWXOeJ7wgE1B+qEzdF8A6Ye8ybl6JSbXdowf
 Fbx4Y0P9D/5zijVUhbgS/2hpOtRgBIilgav6Fn3qZV4A3hbgw25/Rzxea6lEyHRrDxBu
 0w+Jp7JdKp0vaJ1ZAHGJtNsZ195h2NaCgScaAnpZoqGbhRlItoawUBO+LTSL5fjnQC3r
 I03Bp6Fj4PFLvnYB8H8DaqWfJ4K4bfuNVzatgSU40EKQZzG31HCHatdZY3FPBK056x7r
 4AMw+Z9y8lJiDFYI3oQodoGTmTvmu9ekhcWYEM4ei6PXFx2sADK/ZiIWk3YLrnnIpeu5
 wUHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=MjWLMAdBW11KI57uPKHpmOc8QO2EQsc2Bw5TFtq2aeM=;
 b=qhbWSN0v7n4yy2aYEDxjGHcJLMxS4hLFVhojHIx1772dNFLZDgz7uOvIF2aMmSnTQX
 0snC9Y6hwiRNE8VmXtIBz5HqsGhF4oiWfcNLbkzIhuWxobf7zm0NYkOc8sj+rMp6kgl+
 cagXdM4tqdYNfLRc9Tvu5kHokaMW+IAwBoMphV0f9aSBFg5MsXI139zUGUk1sZsZGrIE
 7P5eUSSe2BtSQ3wwdEqcSZVLJJBgmgyItsmyKVFGMETNBe6aBG6IxZ9NK//y86RxTpHe
 xzC8N1xgbmxV6jV5MjwtGEFFQDTxEKPKTsZwa/E704UiLBNxo/WXblADUamzKTkoIbrx
 LTdQ==
X-Gm-Message-State: APjAAAVjnPCk2OFFHXCzGJqbPDgPkFQ+HSebv7T+IhTEmEfoE8JyuJvJ
 CES8D1MEqkrStzxaqxAptqJ4Vw==
X-Google-Smtp-Source: APXvYqzvbnYheVzjLAwm4HomvMFLaeeJKqzxnDKXoHl0dMjK1k4k08i8lD/BQRS3A+Rm2kIGCkj5/Q==
X-Received: by 2002:a65:5302:: with SMTP id m2mr62317316pgq.369.1558351980703; 
 Mon, 20 May 2019 04:33:00 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.32.56
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:33:00 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 6/8] dmaengine: mxs-dma: Let the core do the device node
 validation
Date: Mon, 20 May 2019 19:32:19 +0800
Message-Id: <15bd5303ecf61f3a3aacd0b078d13f042dea73c6.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043302_021129_9502DBA0 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
