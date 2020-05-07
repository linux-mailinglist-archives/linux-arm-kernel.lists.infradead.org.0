Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F3341C869C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 12:25:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POSJ9P1zENcBPjmgYaclr9pSNkAUfwwwjGB62qw9SfE=; b=h2N4IgSIft4qJD
	w2NNEqB/YdEZt4wZpUm6PQt1xjP7szdukIvNHigiX+ekfTy0FvAdRLO4FF1UzmyC63oHwUKIKJ0S5
	dcytGIGv68CnyBTKndHgjKLIsb0RJ3+5gOjR/FQKxuObqa7tg45hIwSHbXFwd/MK1+slgBMIkGYmz
	Y4TE4EQR3P1rEUhQvJNeGE6BbcLBFYmonxp65Oy+u16SomA4HlPvyT4vFQaqOwHJRFTAJ2IcDown0
	GR/Sa5KJuyQ9PatbY6LyL3ypMauWHYHi2YMtHUzfug0Koifph60v3RBuSHXqGMPEmudLKX/d/DXD0
	qjOAFnDvGm7DNbw7t//Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWdiR-0008Ad-U5; Thu, 07 May 2020 10:25:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWdhg-0007ri-I7
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 10:24:34 +0000
Received: by mail-pf1-x441.google.com with SMTP id z1so2812390pfn.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 07 May 2020 03:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uayLP2IQIIMajpdlHbzdkBKHnRVFxtyMOMcfphNpLD0=;
 b=GNMgHUHacwUvRBlDY0qArxRb4Pu+eWtZHMaGVHLWsilTyL8VGV+tTJxWb2nMRZdoEr
 xamhmauOh8CrNbLvXypYcr9cM5xkCl36Xi5ODaECqcmO8/fbNNAhFJBSKsPF8+d+2rW6
 t52imrK2WKyuJMQ4xYUNExzjoG8mXm/7OAnQE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uayLP2IQIIMajpdlHbzdkBKHnRVFxtyMOMcfphNpLD0=;
 b=VZkO0Ax5gB9pPaQ6TNTDntQu2P4Mf54KUhsnAT/xTXdktc4cl7wV/LF1X+inyMuQmZ
 zPzhHOro883IdD4ebmqic2JcKEeeQy73A/M6W9acA3QCb2zLHsZ/V/izdw+/3y3CXFg2
 cZgKHpxUvbkPXLftrZt0vDkklSa1s3Srdr9stqL1B1YQYeDAQwBgbpFwDPA7WS6ffEO6
 7+hmNcTenrkb//x9M2MKr4Og186WFztStn3aQmGSAU0HT+HbirXFnodYt15yGXCVwffH
 5HW4kJ4JCZBC7LfhtqRxpz1GLjlnqCKgzWQCFKOqRSMjzThSOTtch05o5s4cYuVEd0mm
 d7Bg==
X-Gm-Message-State: AGi0PuaEndAVqWdWzUAiAw5FBlYz8p2RDWzoD1ack7a9JVNhKlkdZEIr
 2L3t8Sjv9jsdUpkUORW+oLRv0g==
X-Google-Smtp-Source: APiQypLYecQMcanYHXpWS67HlqoWpLrEJDzi2gez5ZNWrCDgTREBk/pph4o5wU3OqaQZOryRyKhRBw==
X-Received: by 2002:a63:a61:: with SMTP id z33mr10826593pgk.440.1588847071729; 
 Thu, 07 May 2020 03:24:31 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id 6sm4503318pfj.123.2020.05.07.03.24.27
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 07 May 2020 03:24:31 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v3 2/5] [media] mtk-mdp: handle
 vb2_dma_contig_set_max_seg_size errors during probe
Date: Thu,  7 May 2020 20:23:44 +1000
Message-Id: <20200507202337.v3.2.If340fa06d86053aaea25841b36741fe69c3126dd@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200507102345.81849-1-eizan@chromium.org>
References: <20200507102345.81849-1-eizan@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_032432_610422_982465A7 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-mediatek@lists.infradead.org, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
---

Changes in v3: None
Changes in v2:
- remove unnecessary error handling labels in favor of err_m2m_register

 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index aeaed2cf4458..9b24b8d46eb7 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -193,7 +193,11 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, mdp);
 
-	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+	ret = vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to set vb2 dma mag seg size\n");
+		goto err_m2m_register;
+	}
 
 	pm_runtime_enable(dev);
 	dev_dbg(dev, "mdp-%d registered successfully\n", mdp->id);
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
