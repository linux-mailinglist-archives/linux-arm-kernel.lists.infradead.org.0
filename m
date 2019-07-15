Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEBF668284
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 05:18:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ecKjWgAO7ffvQ0pbpvLp2VfeZvmPRj5fLx6b9m2YuMU=; b=VRC
	AAN6+huW3g4EVJjKwjuPFR1w1P8AGE5X36Z1EKDg9eO+vo5usLWTqOuA3bq3tbP60vC6LlIEXm2Og
	y42SvrMoLV86tg6hvYGwJ8CYR5iRTo/LsxXMYcDEb1v0cH5WPc6dDOo6Tk4Nx4HRJtXLKY0ltjcXF
	HieTA5vEOk7X5dBOHywNqAM13dlhiWpaNpMiv9CLbFyfxi5yB6ZnxKJCa2+4N/TFk3KQ5y8K1WxZS
	Vt1VmC2ZChPre7ei+7xrNCpOkm0eLPZl7ObJsog50yTc2Dm45c/H+xI544GhLEjVrFVNfLwce1/ny
	SMQ2QeyKPyKriHIxqoT4w3WZI/+Um5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmrVH-0002Yg-Eg; Mon, 15 Jul 2019 03:18:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmrUZ-0002OU-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 03:17:33 +0000
Received: by mail-pf1-x442.google.com with SMTP id m30so6729298pff.8
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 14 Jul 2019 20:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=aF4g/95JsdU94BtU3dUNZxklmtVOywGbbXwlWkP3bEw=;
 b=AIwQPJeW8q5cgrnpiKU3/rcJC4cWM0mD0TRh2AhbAKuuTHK9Ky05V+G9OjRBhm1bq7
 P3lG5WmWAhujTpKwkyqQFPRA5cKkN06Mp3lvBVABIxOtNSKkc+X3C8ctbtdtvx+OUUnS
 2yACjj2pmoqqeCn+r29ZJFswPGymFo8fx/k6WJ9rQzWHs3eZL0+18gPPgvHF7LLhKMgX
 LpvmGzMqzdQSdggMynJ0hg5dEiYNwHc1fOfRs9N94OcXgkLPDOUNlNhrzQF/39rOIJN6
 IwtGgeIMToWtMQTUb1HOrswIdbJzlwoe0nSY21deOuTdERhc8SmPnjPI4YgHXT2a5pmt
 Q3gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=aF4g/95JsdU94BtU3dUNZxklmtVOywGbbXwlWkP3bEw=;
 b=ESiAP9stZ42wtzfDUsEDrHe0H4SIQkRZrun9xEr8wba3Q82k8EokiDCPLj66pIZaFf
 b7dybt5ETHSTOYj02AKUo3ZxndD0AzZY9qWIS3wbX5uYl5NmzBRhhJageDJ9quFOlCEJ
 nrcfO4gQ3pnzEXJ1dGdDpBU3MfgO1DUZZ5XPUwawlWudq891MPeUiUlLbLD6w6fRSVYz
 vvSZerKDiO13FS581tsYrk5DZnL8SfcKFBCOSLD7YwJ5d72gO6DnMwfZk6dgbGRm0HQC
 ZGD+dVYElxuT5gcIUzXAQDk9ycyC/j5nPkIIxL2qd5XdHCGpFVBiVoldLOJ1wI4/pQRI
 +aFw==
X-Gm-Message-State: APjAAAWXrvgyWgqvXyBrLi9SthGs1HijH8MRV2RLKn7iHd7wRcRJ/jQq
 3g+LgChzYV2iSTS0VmUJprg=
X-Google-Smtp-Source: APXvYqyOe7zFXYz7ZSjmhhIOJzZrjismG1PRArYqe4qOQOu3/AyhmMPK2wwt0AqYDUsIUDfb78ZzRA==
X-Received: by 2002:a65:4103:: with SMTP id w3mr13523619pgp.1.1563160650409;
 Sun, 14 Jul 2019 20:17:30 -0700 (PDT)
Received: from hfq-skylake.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.googlemail.com with ESMTPSA id u3sm13720277pjn.5.2019.07.14.20.17.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 14 Jul 2019 20:17:30 -0700 (PDT)
From: Fuqian Huang <huangfq.daxian@gmail.com>
To: 
Subject: [PATCH v3 04/24] dmaengine: qcom_hidma: Remove call to memset after
 dmam_alloc_coherent
Date: Mon, 15 Jul 2019 11:17:23 +0800
Message-Id: <20190715031723.6375-1-huangfq.daxian@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190714_201732_113421_412B9CEA 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (huangfq.daxian[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-msm@vger.kernel.org, Sinan Kaya <okaya@kernel.org>,
 linux-kernel@vger.kernel.org, David Brown <david.brown@linaro.org>,
 Vinod Koul <vkoul@kernel.org>, Andy Gross <agross@kernel.org>,
 Fuqian Huang <huangfq.daxian@gmail.com>, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In commit 518a2f1925c3
("dma-mapping: zero memory returned from dma_alloc_*"),
dma_alloc_coherent has already zeroed the memory.
So memset is not needed.

Signed-off-by: Fuqian Huang <huangfq.daxian@gmail.com>
---
Changes in v3:
  - Use actual commit rather than the merge commit in the commit message

 drivers/dma/qcom/hidma_ll.c | 2 --
 1 file changed, 2 deletions(-)

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
