Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD1459183
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 04:47:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+NZZ47MfHFTmjFRMMQPtzVl2LeMz0m7jWi3BIerEpcs=; b=c5Y
	rTRQfBR9A3HGt/B5NuV6bj5+AjnJa0RgDbjnB4Vx+1ice4r0y9BnM5BqkHVzkS8pvMnPc4e948HSD
	EXyd0yR5wWQn9CVYdcUuYagIb+f6/twOugfKeOqxEodNvCD4kzRlBr+as1hj/s2yBFAdJ9Sz4Wsu4
	Vr8YyBLGHGm5IRIl3K/qY0uDjzcIjtPRtVKm6YXzAh0upHhTfDEclxGQl0ZVgUtRvDvyDP0emxzv4
	icIrWjzPUEF4jgqBFrIClespX/jr3mlZL2CraY5c0qT5eaOU5yCZiVprOeN60Y+Ga7U8F8XRn1KIu
	SHiKYNqwKfn/A3FqYN9Jkm29YGWKckw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hggus-00086E-T2; Fri, 28 Jun 2019 02:47:10 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hggub-00085a-Hz
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 02:46:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so2345062pls.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Jun 2019 19:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=04GljEtl2h3DmnTzFw9yoiLkqcADLLyfQ+DeoECtL/g=;
 b=DfYRJv3o9Bcrqrgqw90Ljs1hZlo0ut9UVtzdSkOf+R1UrqOE5qgOpWli4VXM0vexVS
 kcLQdIIY41qtuPt77bpfXCCz78DVSEt8nHQLWrbGGHdvoUJiz0AHcKv0zey3ymekMWQW
 3ZYA8ry/J/fEnLyaQxY/BCrVNKg3WvLn+S+OzgWsXccwFp47WifaGx+EJq/hvLPyjB5T
 MReyTie+sBqblJjpj/MiGCu3GI5I5tLhd2JdRgoeCaOJaKr2J4U4bH/SxUo06oabCEJW
 tSJtSMgB5G+PcmJykIpGyPCl2lY/vlSPJFcP9+0kFoqBvtyZKe04tgqrO4PjH2qf54hN
 q8Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=04GljEtl2h3DmnTzFw9yoiLkqcADLLyfQ+DeoECtL/g=;
 b=ERZx4z0viB1zy/x/CzJVyQ5RTbUAMlIVq7xWBga2TTF+Iq4nZc4aq9cJvzruteedkP
 lwtTdJn9UEyTlPgurH+kP0YJrAyB86UjvnvlImdPLd6R7gAn1e4jiHsasUolmCFEH9oC
 bNIVUj0TZIH0tVg7DMBpOTjh0nIQBp7ZG6AdtMMHhlxkre8Id8xEWvcMxaxHawSZI6CD
 ZbUhRxXfAUzHKATf6y7w0lyFS0ALh5jNsyl5BgWVbWZxB/dcGj1iHE28j+IxFf07h6Fk
 bB4RCgllvITkD0SWnnkxzcIYHQXf70fyIKtvRGdIkyzopRsXnoCLfevrJu/fs9oN45cD
 Nr9A==
X-Gm-Message-State: APjAAAWqxZgeHRPBezHhCfUjYogtCOerYzSpBuzOhvlo8+gkl0AXVt2R
 EvgzpUfxiLDRkJ+V0R/A0I8=
X-Google-Smtp-Source: APXvYqwZWLNOSYNebra3h7VxqKFQWWgskOaNU9GLrmfb1nSa3+umdvA8TKyiTag+IOKEC5NcyTD2Fg==
X-Received: by 2002:a17:902:9a42:: with SMTP id
 x2mr8693861plv.106.1561690012576; 
 Thu, 27 Jun 2019 19:46:52 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id j15sm450696pfr.146.2019.06.27.19.46.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 27 Jun 2019 19:46:52 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v2 06/27] dma: remove memset after
 dma_alloc_coherent/dmam_alloc_coherent
Date: Fri, 28 Jun 2019 10:46:42 +0800
Message-Id: <20190628024642.15089-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_194653_592624_8E7472B6 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dmaengine@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sinan Kaya <okaya@kernel.org>,
 linux-kernel@vger.kernel.org, David Brown <david.brown@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
 Fuqian Huang <huangfq.daxian@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit af7ddd8a627c
("Merge tag 'dma-mapping-4.21' of git://git.infradead.org/users/hch/dma-mapping"),
dma_alloc_coherent/dmam_alloc_coherent has already zeroed the memory.
So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
 drivers/dma/imx-sdma.c      | 4 ----
 drivers/dma/qcom/hidma_ll.c | 2 --
 2 files changed, 6 deletions(-)

diff --git a/drivers/dma/imx-sdma.c b/drivers/dma/imx-sdma.c
index 99d9f431ae2c..54d86359bdf8 100644
--- a/drivers/dma/imx-sdma.c
+++ b/drivers/dma/imx-sdma.c
@@ -1886,10 +1886,6 @@ static int sdma_init(struct sdma_engine *sdma)
 	sdma->context_phys = ccb_phys +
 		MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control);
 
-	/* Zero-out the CCB structures array just allocated */
-	memset(sdma->channel_control, 0,
-			MAX_DMA_CHANNELS * sizeof (struct sdma_channel_control));
-
 	/* disable all channels */
 	for (i = 0; i < sdma->drvdata->num_events; i++)
 		writel_relaxed(0, sdma->regs + chnenbl_ofs(sdma, i));
diff --git a/drivers/dma/qcom/hidma_ll.c b/drivers/dma/qcom/hidma_ll.c
index 5bf8b145c427..bb4471e84e48 100644
--- a/drivers/dma/qcom/hidma_ll.c
+++ b/drivers/dma/qcom/hidma_ll.c
@@ -749,7 +749,6 @@ struct hidma_lldev *hidma_ll_init(struct device *dev, u32 nr_tres,
 	if (!lldev->tre_ring)
 		return NULL;
 
-	memset(lldev->tre_ring, 0, (HIDMA_TRE_SIZE + 1) * nr_tres);
 	lldev->tre_ring_size = HIDMA_TRE_SIZE * nr_tres;
 	lldev->nr_tres = nr_tres;
 
@@ -769,7 +768,6 @@ struct hidma_lldev *hidma_ll_init(struct device *dev, u32 nr_tres,
 	if (!lldev->evre_ring)
 		return NULL;
 
-	memset(lldev->evre_ring, 0, (HIDMA_EVRE_SIZE + 1) * nr_tres);
 	lldev->evre_ring_size = HIDMA_EVRE_SIZE * nr_tres;
 
 	/* the EVRE ring has to be EVRE_SIZE aligned */
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
