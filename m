Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF751C4CDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 06:01:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2fydbB6pjQ0CijaajfAnB9gWSB6BtInqsRI5fXGYJE=; b=HhRmDQ1E+WoSJL
	KLfcE3I+H1Cf06y3kQwU/nA+D4ZzBLZNgVboL3hn5I+8kinQeLKuqvp+RMeqaMoZjny530itEeYoW
	R0SqLM1jU4BTq4guWGfhhCJc5M6qoVkj7SbkN4cxN15iQGT/8d7pLjxBK4nFoWqdQR/ZbfwburJE+
	kmpspDa+h2f8IkbODBvqpLLXrqg8yiiXwMApMtka2uQtU2s5+7sHYWR+KW9rN9sI9jzmjjICon645
	wlwpx35esqbTBS7nWQU1wGKi2IGeQ2ZNBvdYQuiAyQviBrwEJ5AQE0M7q4YkcRkCj5L7eJETGKq4f
	gxDBIefkZzAWrRlgoKLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVomA-0003XQ-QD; Tue, 05 May 2020 04:01:46 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVolo-0003Mh-VG
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 04:01:27 +0000
Received: by mail-pj1-x1044.google.com with SMTP id 7so671475pjo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 May 2020 21:01:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ctoh4fSKKdbnfncF1YOVBJD74K9A/+MRfOMQ6EjpdWU=;
 b=Ii8+KtILgS8kUQw30kWi/g6X8rQQSL7btnKUADBZbiGPsB7xgLrjW/n8WdNDKbgQWN
 tD0CyhvsndPuo5olMQnHe7XkJqOToYWcqesKzfNx4Cr9zVrfqs44PzQD1F0/aSptMOBL
 eUsczSXbwqFmnb3O1kmfFjGdB5/HS/Xh7TVSI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ctoh4fSKKdbnfncF1YOVBJD74K9A/+MRfOMQ6EjpdWU=;
 b=F/XskPUjEDk4ENbhUVKDqvHyD03UKJFfL+EhQ3l/qVyKIoSmRbQvMAefWUJoeXFD9m
 sh4ueSxBI3s1CFGnz6I1KxiFQltCvyt8NJGvBbiTS0MbrYBJP170hA46GnPyLlLf9reL
 f9aOBl4nY0yC1Z1NTZVOTozeBWhG0uwl5LjCxtQn1BeZCD0PzXB0l4mabwpHiROdBAO6
 qP1LQPnN1H5yEz1a8q5PGtAcQo2UEWeZB6YFv3UNbqhG8LE0j6mxhF1nobCtBkKAkMWx
 YNOPfLc07Sdlihh1dmfZTNSqP7z1jNhhlMqaHDff5s2SgcR9VKYXNsJw6wihz7MK6FSK
 7Q/A==
X-Gm-Message-State: AGi0PubtbdadeCVPJybA4fQ707GWgoDVqChVYaAWrgciCNkMgdEJeRiy
 RhuCqUPdqe8vOp5ZJLlg27mgxg==
X-Google-Smtp-Source: APiQypIIEru/mWi8soSg13FgeYsWH8bdQu/U7isUmQMJNW8Y7jDjPHye4EUxOyOGu5+scYfufol+BQ==
X-Received: by 2002:a17:90a:7f83:: with SMTP id
 m3mr525112pjl.147.1588651283555; 
 Mon, 04 May 2020 21:01:23 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:a92f:c47d:76a8:b09e])
 by smtp.gmail.com with ESMTPSA id w2sm565152pfc.194.2020.05.04.21.01.19
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 04 May 2020 21:01:23 -0700 (PDT)
From: Eizan Miyamoto <eizan@chromium.org>
X-Google-Original-From: Eizan Miyamoto <eizan@google.com>
To: LKML <linux-kernel@vger.kernel.org>
Subject: [PATCH v1 2/5] [media] mtk-mdp: handle
 vb2_dma_contig_set_max_seg_size errors during probe
Date: Tue,  5 May 2020 14:00:45 +1000
Message-Id: <20200505125042.v1.2.Ie596e59e0a18935f0b7321ff45e5c5f2ce8082b1@changeid>
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
In-Reply-To: <20200505040048.132493-1-eizan@google.com>
References: <20200505040048.132493-1-eizan@google.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_210125_010144_F236D3D0 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Houlong Wei <houlong.wei@mediatek.com>, Eizan Miyamoto <eizan@google.com>,
 eizan@chromium.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is a cleanup to better handle errors during MDP probe.

Signed-off-by: eizan@chromium.org
Signed-off-by: Eizan Miyamoto <eizan@google.com>
---

 drivers/media/platform/mtk-mdp/mtk_mdp_core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
index aeaed2cf4458..c20ac7681c6f 100644
--- a/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
+++ b/drivers/media/platform/mtk-mdp/mtk_mdp_core.c
@@ -193,13 +193,19 @@ static int mtk_mdp_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, mdp);
 
-	vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+	ret = vb2_dma_contig_set_max_seg_size(&pdev->dev, DMA_BIT_MASK(32));
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to set vb2 dma mag seg size\n");
+		goto err_set_max_seg_size;
+	}
 
 	pm_runtime_enable(dev);
 	dev_dbg(dev, "mdp-%d registered successfully\n", mdp->id);
 
 	return 0;
 
+err_set_max_seg_size:
+
 err_m2m_register:
 	v4l2_device_unregister(&mdp->v4l2_dev);
 
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
