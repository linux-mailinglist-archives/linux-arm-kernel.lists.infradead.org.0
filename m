Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDAE02327C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 13:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rjB/6z6SlKL8dDCUtGcH82cMFmCvtNsVxoLAXJpIdl0=; b=N+aYAbzCVLVSkfoN4ysKmKkoHt
	kPYTwlhh/43Xdg1u2eKHSJvYH7+wshGNsC6cz5LbUG0o+JCUtO03zvaQ0f2KwQMnCwlAEIiHqAus9
	JPw4ZDTN+t54Q3L/c+BGQR/qPx71JBIGeWNwN9FZY/sYvxpytFngrdJcQdBGZ3XOwIkhlq4ZZPGqX
	MuSU9cXG/YkebfBIh80SSDTSdLZBigD1Y9LKR4sOdy71VkP84rtZX8yKzF8oOkMUt/voVYrJZedIe
	pViS0xYt+FeP+ez++iAJ9s48O5Qe4pK9nzlSeGIZj7IzbhPMiV++HpeER99jrD1/lGuqOag0cFH+9
	9lx8d1vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSgXS-0001o9-F9; Mon, 20 May 2019 11:33:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSgX4-0001Vk-PB
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 11:32:44 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so6613293plz.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 04:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=SH6bOeq9QaZcFruKHetHjcR5Vxn/cn2SAhXtcAspD6Q=;
 b=sflEPPU61og2VFcVypItpwuhuRDg9RrZEU06pKHkq2dyUELMdFIRetA3Amp70Gtasf
 LhfWjt1c9cmf+TG5FSEfkVz+lZS0jhnu+radx8ygtiMy6DUBV6VY/q7zmVwRrpmQQgY2
 B9Dc9sKeRreukolUt81y2EoSpDcHlDSNm3QhtmO5fmJhtkfyi6KzETanmpcUjlCFpOcf
 Q26N+Ofg3YiM4/uR0pX24XqD7mW/EcgeKAO2TfSrLASTOTfUwr2snO69Ns6Zc+0XQf1M
 LBwZV3ZxwK9YX1i7P0cXIqNlvHWZPbknS8ZDFw4g+tubEeoIjZHWwcDoF3THlN+Gxy0Y
 vhJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=SH6bOeq9QaZcFruKHetHjcR5Vxn/cn2SAhXtcAspD6Q=;
 b=VEsz8t8uSQak9XX8O9CeIxwYB3aJfLLLlF2Dqf6duSBx2+XdGnLRgFb8AHaIbLCiph
 2Y5uwZmXOabUaBu/AGn+jREQCmWVerpYs7KYRbyN/+oDGZ+p1LYJEvJbc7ghRe79MWBh
 iWpK73rB+/AYk7CYXEPMvl/De2vL/ZSxsCmHLdSKRyTOHyjwoVakvJIJuYIfqkbpQWwx
 gG2jWDd7p9v4ZwY4TrNRToi7ge0RiEgpmfMfm57cx5bn6fmDfMg6hyYMWJOwIp6CjSNd
 zMgFaZExLtAgcHHFjEN/wyCnSJBjUz7hjrm5j18knHzYE44w2RIC71Q3uzCIvcEUEH5d
 FScw==
X-Gm-Message-State: APjAAAXLczKEBvCsmX6yMRU8W22UA29EmePkasIzdH58tY/hjvYy2Puc
 qhw9P3WOVrLytLLQEKhDuwBbew==
X-Google-Smtp-Source: APXvYqw5fPKlpPwCDX8Prno12aw6CFqlLCWkN1e77syboLkhzA1LnbIZ14RetfpmMHPjpaxnXWlwXw==
X-Received: by 2002:a17:902:a81:: with SMTP id
 1mr29319466plp.287.1558351962410; 
 Mon, 20 May 2019 04:32:42 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.102])
 by smtp.gmail.com with ESMTPSA id z124sm21310020pfz.116.2019.05.20.04.32.37
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 20 May 2019 04:32:42 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: dan.j.williams@intel.com,
	vkoul@kernel.org
Subject: [PATCH v2 2/8] soc: tegra: fuse: Use dma_request_channel instead of
 __dma_request_channel()
Date: Mon, 20 May 2019 19:32:15 +0800
Message-Id: <f1dc31b78b6852bc12a126380816ee32cf78a3f5.1558351667.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1558351667.git.baolin.wang@linaro.org>
References: <cover.1558351667.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_043242_853484_7214D440 
X-CRM114-Status: GOOD (  12.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

The __dma_request_channel() prototype has been changed to help to do
device node validation, thus we can use dma_request_channel() instead
of __dma_request_channel() to keep kernel bisectable.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/soc/tegra/fuse/fuse-tegra20.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/tegra/fuse/fuse-tegra20.c b/drivers/soc/tegra/fuse/fuse-tegra20.c
index 49ff017..f40a06f 100644
--- a/drivers/soc/tegra/fuse/fuse-tegra20.c
+++ b/drivers/soc/tegra/fuse/fuse-tegra20.c
@@ -110,7 +110,7 @@ static int tegra20_fuse_probe(struct tegra_fuse *fuse)
 	dma_cap_zero(mask);
 	dma_cap_set(DMA_SLAVE, mask);
 
-	fuse->apbdma.chan = __dma_request_channel(&mask, dma_filter, NULL);
+	fuse->apbdma.chan = dma_request_channel(mask, dma_filter, NULL);
 	if (!fuse->apbdma.chan)
 		return -EPROBE_DEFER;
 
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
