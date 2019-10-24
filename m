Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDFDBE299E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 06:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IeiJjF6cKE+OMiHsBH02wltiXmea7x7FUvzY79nlRYA=; b=Cax
	AVSjF1xVGT+vRcSwWXLD4l/C5g0Cctx8XWD6MYM3oMvpk3qgqL9qvzB7JhiTrfEie/n++lgdufNaO
	uiWw7i6BNq/9x/aPOVdrzGjCoCLlA7NKhxK6O1x7CQaoyOLpe9yHq1i557/KELalTXZ0/QsXsGKlO
	FRmW20G3QOhhQ86JC5pYk2tLt4uqPOMbDdoUckdlS/GDXFacLW/e5TY6/WtHbZlTcldCuP8u/MxMr
	ewTbdm3iYvdyD6EFEpFa9xmMsnVDoxlLPnpWQsw1rQNKSqMCHVJaGSJeknKjQnj2s58LmztUGjmxl
	L9N5dFHKAAFtGaFnARBj3IxJ+mR3cWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNUyl-0003S1-0b; Thu, 24 Oct 2019 04:44:07 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNUyb-0003Rd-20; Thu, 24 Oct 2019 04:43:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id x28so839663pfi.12;
 Wed, 23 Oct 2019 21:43:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=DGvsutXz3Va8MZNR1BWYtmUMeqR2Mgk81F6e8jFyn/0=;
 b=nOfQByySorFjQbh+5XHg4z1JE9rR8h0M8SSTlVPR/zghBnVyu72YPX8wJRhTZRxxpr
 H/RNFGKcUMUu7c+eRPCiFJN2EN4pmF7PNL+S4Dn01if5myQ1PREqCl+1Fdlt/8+h953W
 1+ExVi8jfHpU6zlcX7/qxt9/F7BDVq+ztye0UYRGYDTr2RuBCiquQW8kPzzA8Ty9X6WJ
 GCjkkj+R3BByaQ6JNb0+sQTmtH4nCagRiaKKtA3ZXmcQAFGJbozjBtwuZYyKaQQpTNKi
 KkJUcNZPLH13JIrRR0MjJxmUMIFodZpheDdCHoZ3zH/rju5gAP3aCVcNEuUD0Sf44gS8
 5UpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=DGvsutXz3Va8MZNR1BWYtmUMeqR2Mgk81F6e8jFyn/0=;
 b=VxdR7CvMmzR3JUP5POOLXXLJ6Jwq/1PZMMS5meX2HfRP+mgJISu8gq04HzPAVVpa9L
 VgHWXkxIA+VUDd+YHRi7tgL9YetmGBWzf7Adu8Z0K0b71SoClEbNiITPH2ashPWnS/Am
 qvZkJZY6wWGGzVgxnH1i9agCXgeYc6twes6k5eiEQD6zoOyKlc0A+0toaUJXQcQAIAt0
 d4yE/Tzx1boVoM12lmVOtJP3Vqhv1r2fPl2uBr/WChDuJJqTfkIubQKwbFEOfgy/XbNT
 UweEaLO2cqL4E9n8vWd+wSV5UWJxZTqTbwfXeyHa72sM9qRcZGdKQgNiOdWjFSNYPzes
 1SRA==
X-Gm-Message-State: APjAAAUFz8eN8prsOZ3Bb8wT73Kk45vnE1h5+6GG0b/1ktt1XUu/Yvg+
 xIR6k9fDEM4Oo29D5eSpjvs=
X-Google-Smtp-Source: APXvYqx2nGeXw6VcyQoFHX/I2YmFJtdNkule4SJatnqCVY9Vbw31cONtoNPkW8QbG7QvD2DDir0s2A==
X-Received: by 2002:aa7:9295:: with SMTP id j21mr14876195pfa.87.1571892235729; 
 Wed, 23 Oct 2019 21:43:55 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.60])
 by smtp.gmail.com with ESMTPSA id m9sm1064593pjf.11.2019.10.23.21.43.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 21:43:54 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH] dma/mediatek-hs/probe: Fixed a memory leak when
 devm_request_irq fails
Date: Thu, 24 Oct 2019 10:13:19 +0530
Message-Id: <20191024044320.1097-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_214357_123148_54F9B6D2 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
