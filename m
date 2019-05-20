Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 500E623281
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dUlOtd+OFVe8mcfYPGPNIbKLoKw1Fq7f1Ef40gj1cEc=; b=eW/84BtL08rtD/2oomHSxHLLcD
	F8zRAY2y5Axg3+7h60wjQAyiIGQy4adkYiuOJ28VehcxbZ6vGv6T9ZwLEGrFtLAeJRH5sMNmd6M/7
	42ksvHHUROp2fT9jOx5rV5oJU0eqjlkBjXUc1Xd7I/IxjMo0X8tnMuvSI41wrTC7oEZtTu8kNPxpw
	xBajYcrAcyqI049/3p4xLKZ49IpjumvT5J4aYnSrBWocLkdm/fgxVpegNDe8GtEp4H+jrcEmMSnjy
	VPkaqdurSY8MVS9kRTRw8ZcjMqCiCFmPVvk3e9OMEwJxd+kPea2jzK+iUGwNTmgAUx0FyxUWVzyol
	wT86CwFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgYU-00031t-Bx; Mon, 20 May 2019 11:34:10 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgXS-0001xy-4r
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:33:19 +0000
Received: by mail-pf1-x444.google.com with SMTP id u17so7089372pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:33:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=S4gzzO6EwH6f41hdnpuqebXlIsK5G8TT4DFszJQHgV0=;
 b=kGzjAWx09b8i614qTj93eApuhAYdKFfSCQb0+hZtpocLm2MSIaH0rF9+HiZf0A+vcj
 DFTljdFN5pWcPxuYfUOJ68tQFKj30ZgtibGH2S3BXHbVCKNLZZhwrhp/XsRkXdFInukP
 Xjk9fWaCFqZJ8jZcXhR3aezzU8FJfnpD/f2ytgb8QX23t5dF/R+yuoTqXH0C0ZF9DjXK
 kK/Z6PNz6xn9BbWuEogWU+jIyoiUOisWLQVu90JBLpFdeKSeAFeaYkcaW1tllFwwnKdZ
 nJfsJF6cAcVhHJ/woNRx2z15cQYdmwdMhtceda3QpfeXnUfr/bh84yM2S2fBpXB8Pd1R
 Y6ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=S4gzzO6EwH6f41hdnpuqebXlIsK5G8TT4DFszJQHgV0=;
 b=nuZ1C5vzlOO2NSusmjlA82/YQgToGl2eqaqHHtLfO5uJC59z9U+OWTdr7o8s2B2TUI
 tDkNRnRFY/HhQ3j0LPCJqrV+7cpHCf6ZbqURsRTKTek0CnTJIjKBw78X+/ZZh0vDMxWN
 Fo69DaL3fpd+HnuWjhP7/6FAVIQnBmlqI9CPruy7Qfdjhv4ifNTm2zXOZ3z8HqdP5s3f
 emnmbyIL7+HaL+H7FWrM0aRHIXuj5rJ6OCkcE3jkV3SHzD7B9mWUrW2uMR8sWPNJ1DEb
 kit0tCDGbZkTQLzyWQPA9hpsmhsEfJIRcapsvn91AicpfV4bDfWC2hElwxBprJ1G8MC4
 9aZA==
X-Gm-Message-State: APjAAAXUT39WUrtB4iQHvRzEOlTca0jadpgWyoVmj/A7MSOpOy5PrzV/
 hJftOCga3y+cygEbhrJfCrmARw==
X-Google-Smtp-Source: APXvYqz1+ao7UVqG40GQmasG5WxCT+39UIx+E5Jw485BRv+ugxfxElvHdFQ11VJd43Wx3nTx7nGipA==
X-Received: by 2002:a63:6cc5:: with SMTP id
 h188mr13909311pgc.105.1558351985496; 
 Mon, 20 May 2019 04:33:05 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.33.00
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:33:05 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 7/8] dmaengine: sh: rcar-dmac: Let the core do the device
 node validation
Date: Mon, 20 May 2019 19:32:20 +0800
Message-Id: <6e544656cea22f93bdb2626620b381b00d1b38bf.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043306_682297_7A69D25E 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 drivers/dma/sh/rcar-dmac.c |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/sh/rcar-dmac.c b/drivers/dma/sh/rcar-dmac.c
index 33ab1b6..67df54a 100644
--- a/drivers/dma/sh/rcar-dmac.c
+++ b/drivers/dma/sh/rcar-dmac.c
@@ -1654,8 +1654,7 @@ static bool rcar_dmac_chan_filter(struct dma_chan *chan, void *arg)
 	 * Forcing it to call dma_request_channel() and iterate through all
 	 * channels from all controllers is just pointless.
 	 */
-	if (chan->device->device_config != rcar_dmac_device_config ||
-	    dma_spec->np != chan->device->dev->of_node)
+	if (chan->device->device_config != rcar_dmac_device_config)
 		return false;
 
 	return !test_and_set_bit(dma_spec->args[0], dmac->modules);
@@ -1675,7 +1674,8 @@ static struct dma_chan *rcar_dmac_of_xlate(struct of_phandle_args *dma_spec,
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	chan = dma_request_channel(mask, rcar_dmac_chan_filter, dma_spec);
+	chan = __dma_request_channel(&mask, rcar_dmac_chan_filter, dma_spec,
+				     ofdma->of_node);
 	if (!chan)
 		return NULL;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
