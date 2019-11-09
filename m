Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB5CF5EC8
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 12:37:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Il8o4nGIJHG3qkBiIFtiUgBPKfeKJJZQC8b5/kEQf9o=; b=UspPyVg+kWgGv002CekRUo49we
	K5pN8MSWf03HEVujIP+YAaQ3vhLGSYgRS4uWAK0T79dgz3am9GNZ+3qmLOl96qdBHukYHjO3aVEOw
	zGkRPqf8DbpFOIBBi4/NX+AN3Pdp9wKGsfEWAXL9zDAyRX5ZzHXGXXlCjkBpdzID17kF246BQ14ea
	2MQcqhqcme4xg0mNxdT/1Djab/OFQ+bxiKQ1c5tMUTpVrsHkqIThNNo1ck+F8qsfIZdBNf2Edv8Ix
	fBdiInrh45kiGE7UeH1T51/0bNXpbG/ILqYEhHIsyrlltu7y1aN4pNvUKMSxO74jKmytKyYAvRNLd
	8YVR2qng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTP2A-0008Qe-Js; Sat, 09 Nov 2019 11:36:02 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTP23-0008QE-M0; Sat, 09 Nov 2019 11:35:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id d7so3590414pls.3;
 Sat, 09 Nov 2019 03:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=RPkvyrfedBbWeyTZwzNlXB9DkGbGD3+8P8FOhsdkoDw=;
 b=fA9LXUTy+uzBaE6ACg3sMciWy/pmk8bafM5PrJlxx+/61IoyBypuhoZDWhxguCQnzZ
 QIZ0rNbf0hHAtHzx2qkbaM+RGfY7lmNfNNfhWRrXvlW0tXIgSBlV+QFPhHux2JYxcjC4
 tbhF5VYQ/4ZBVisASZmfOqMwvCuOZeJiZ84fu98M//x1ppDOx2iLkfVpdRDueEwNv8pT
 ryA/6FtYt8U70JlR8won7D8N+SzDgUf98jjOUxXow0UTBpHQMub1r5DDaQmPVxw2Jcmk
 gI7EKyGdV4ya4aplh5FnQzsnWJi1KtiQDeCaY+olpoVnIj/04Vp/uKV3y9Z0GggREPHk
 HcHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=RPkvyrfedBbWeyTZwzNlXB9DkGbGD3+8P8FOhsdkoDw=;
 b=t7PAKjOVtJgO6HHWUQ5PU/M2InZ2Gw1tdfsX5ZTB5kHOKi8hfYKKnjNCoVuNWmvs80
 33EWcalrbFJD6yneaAcW13TjMvL4G+/4x2FIJjQQG3N8PTmF3uzI0lE7uA6fUZ1M293D
 6VmnL5vHP5/QOYvVGOievIJ/6OGUv9FcJn51n8RvBsCj6AM/d8ZfEFfkUGoz22sFctml
 cyDk9vkaBaR1iyzO6bAGJ56GMeojZ4ihnbinXo+QlXnuzGHg2prv+/pE99fTFqdDNPMG
 JYt93OHZD/p4veHqH/h39h4j3q4Dqct4FezHQalFK9TS1GnlJdOVP5hmblZvT1M3uMMW
 ICqw==
X-Gm-Message-State: APjAAAUM5geSGTFByPJYz1Q4dz3wWgYAkleXnVq+TLUFEplabb1HAClS
 xk7E/2J6xNV4TB0oVLgav0U=
X-Google-Smtp-Source: APXvYqzwtXIY+k0OyvUU4Bkg5AOcucS9hxURQZLsvnV9PlC6QBWMaauMMsyzwgYYWy1wRwhboZNu/w==
X-Received: by 2002:a17:902:9681:: with SMTP id
 n1mr16143620plp.87.1573299354291; 
 Sat, 09 Nov 2019 03:35:54 -0800 (PST)
Received: from localhost.localdomain ([103.82.150.242])
 by smtp.gmail.com with ESMTPSA id x29sm10518172pfj.131.2019.11.09.03.35.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 09 Nov 2019 03:35:53 -0800 (PST)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH v1] dmaengine: mediatek: hsdma_probe: fixed a memory leak when
 devm_request_irq fails
Date: Sat,  9 Nov 2019 17:05:23 +0530
Message-Id: <20191109113523.6067-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191105165914.GD952516@vkoul-mobl>
References: <20191105165914.GD952516@vkoul-mobl>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_033555_720888_0EDB7654 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Satendra Singh Thakur <sst2005@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When devm_request_irq fails, currently, the function
dma_async_device_unregister gets called. This doesn't free
the resources allocated by of_dma_controller_register.
Therefore, we have called of_dma_controller_free for this purpose.

Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 v1: modified the subject line with new tags

 drivers/dma/mediatek/mtk-hsdma.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/dma/mediatek/mtk-hsdma.c b/drivers/dma/mediatek/mtk-hsdma.c
index 1a2028e1c29e..4c58da742143 100644
--- a/drivers/dma/mediatek/mtk-hsdma.c
+++ b/drivers/dma/mediatek/mtk-hsdma.c
@@ -997,7 +997,7 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	if (err) {
 		dev_err(&pdev->dev,
 			"request_irq failed with err %d\n", err);
-		goto err_unregister;
+		goto err_free;
 	}
 
 	platform_set_drvdata(pdev, hsdma);
@@ -1006,6 +1006,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_free:
+	of_dma_controller_free(pdev->dev.of_node);
 err_unregister:
 	dma_async_device_unregister(dd);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
