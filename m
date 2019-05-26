Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 807342A8F4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 09:14:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=iKPyAUz9ZRAbk34N+6hw7NIDkz6FazAvYRDUu754sdg=; b=Vjg
	qvM/Y+FWa7hTBghiuPQodNXGaoSkdm0gwbUGJGYRfV/oThOqPewPcuCZxrYWK7Wm7y/KEY35ubvpT
	KNx+qcmm0AjrDHtR5aYkgrETLScMSuvF/a7zy2yF4ArORRXuLQU7bLrwgv7J+327f9/qYPfx4c2EP
	J7lgizygawCCjUm0OWYElj5zZVGHgxmCKjoitWxlhDpgZX+lq+TocXgLnTvsoD91AbdpGjbnj6yPj
	3RJWRqRV2MOihAI+lZSAm0WcoMyHej4jfpeeUwPESaMp+FrtIdBHzH6u6TB6k4qvShW8xvhAQwLlr
	b1gMUc1AX1ibAi8Hffvj+hExIHWtYLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUnMH-0001VO-1o; Sun, 26 May 2019 07:14:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUnM9-0001UQ-1D
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 07:14:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id u17so7742770pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 26 May 2019 00:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gpKp1Ji3NbYE6dlIioVp6OmCdvPteX1H1EwDeUiYnRo=;
 b=SlQO+gvKGyFVekP53VsMEkLrnYKIXnPeCfyVJpCc6L5giIU+OyiuvYGxLKys+i4eEg
 x4Bxv0XjnhN+IX32qe7Y6ElOmFVk5JLdxHDQghLROUfhfkS/yI7y9AsqY8dDjZTmx9Qd
 xQq6iB6wwJHfMzKKMnLuHIqOGcQm72DQLSdgSd8p2BRMGx11qnpAKZACoV3zQish1JUA
 LHrdhVNgk2vQzJ78O0MaTc2cM+d8KmN9D06jyp3OatZm4LGXzYiLtYWkToQNPYiS/QdZ
 HJroVs+UoCH+9+RMl3xE/lALsZKw7lFYjaYgbdr4apzaQv8q/VQyLTftAW25QN3sZjdX
 a30w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gpKp1Ji3NbYE6dlIioVp6OmCdvPteX1H1EwDeUiYnRo=;
 b=peKrqGcrx2Qi6DOYr1sWK1NpPfWepHU7TIzo7c4j82H8+ylDV6qg8t5WwSoSSJeliN
 5p1iWo/YfHaGPjd5ZZLE4Fg8oZf6s0pWd8AwprGcaaVABiC7m0a4IeTm/uPCeVYBCwXF
 YTceYxIMXyRm5CtniZdrRZgAEr3KnXApF5hlelBmTI1cjDBLHEv1OsBZqLrnvXhW+mQ5
 flP71YGtQY60dehVai3lsl36NXsHLrOePDSRJ0sHBktwPiCpRR6PVgCSLsl54+Nnqqs+
 ikoh0H6vz7bqkknaenU2Rs9DeVV4mejrMd8xqL9krY09st9f6bPrTLyDLNm08buiYunF
 3utQ==
X-Gm-Message-State: APjAAAUnxy2juwJ/aQe2N0fQBxghMTu2Od5u8LcFiEJtfgLcZC/PmOur
 00k18iFuJJ5200X7KYWL8vM=
X-Google-Smtp-Source: APXvYqwTC0FptfX7CPxxhryj2laivRpDqWwH7V8fygp/VEbP5GYpQPJX1vkSLqIrM2RDP7oYdhrGsA==
X-Received: by 2002:aa7:8e46:: with SMTP id d6mr98123175pfr.91.1558854846680; 
 Sun, 26 May 2019 00:14:06 -0700 (PDT)
Received: from localhost ([43.224.245.181])
 by smtp.gmail.com with ESMTPSA id 4sm11313421pfj.111.2019.05.26.00.14.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 00:14:06 -0700 (PDT)
From: Weitao Hou <houweitaoo@gmail.com>
To: vkoul@kernel.org, dan.j.williams@intel.com, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH] dmaengine: use to_platform_device()
Date: Sun, 26 May 2019 15:13:24 +0800
Message-Id: <20190526071324.15307-1-houweitaoo@gmail.com>
X-Mailer: git-send-email 2.18.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_001409_077821_1B8D8DDA 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (houweitaoo[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dmaengine@vger.kernel.org, Weitao Hou <houweitaoo@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use to_platform_device() instead of open-coding it.

Signed-off-by: Weitao Hou <houweitaoo@gmail.com>
---
 drivers/dma/stm32-dmamux.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/stm32-dmamux.c b/drivers/dma/stm32-dmamux.c
index a67119199c45..63af24d4c834 100644
--- a/drivers/dma/stm32-dmamux.c
+++ b/drivers/dma/stm32-dmamux.c
@@ -306,8 +306,7 @@ static int stm32_dmamux_probe(struct platform_device *pdev)
 #ifdef CONFIG_PM
 static int stm32_dmamux_runtime_suspend(struct device *dev)
 {
-	struct platform_device *pdev =
-		container_of(dev, struct platform_device, dev);
+	struct platform_device *pdev = to_platform_device(dev);
 	struct stm32_dmamux_data *stm32_dmamux = platform_get_drvdata(pdev);
 
 	clk_disable_unprepare(stm32_dmamux->clk);
@@ -317,8 +316,7 @@ static int stm32_dmamux_runtime_suspend(struct device *dev)
 
 static int stm32_dmamux_runtime_resume(struct device *dev)
 {
-	struct platform_device *pdev =
-		container_of(dev, struct platform_device, dev);
+	struct platform_device *pdev = to_platform_device(dev);
 	struct stm32_dmamux_data *stm32_dmamux = platform_get_drvdata(pdev);
 	int ret;
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
