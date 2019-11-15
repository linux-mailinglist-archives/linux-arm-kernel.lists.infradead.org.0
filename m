Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8521FE81C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 23:38:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=W0oPJ2FWTne6dq5zP5u8patgI3/hjA7HaPmKBZRNI9A=; b=FKLMJ7p/6aROZkpQy/VZVd6y7g
	WPyz45mLa5Vj1fg6K63rWZoRzQ2932us0tcG2+ariWVhDJD/6ywEtSO/DpxxA3rKm1HTdE7H7kZA7
	ksZBJf4q6iMZVtNBDaUOv2xeHAF7bOQjtQkRVM/i9FsokP7lFDRQm/8S3pxgOrCNLMqcJJC002skP
	J2tr95OkyjtUNhN+F/7TZTj2lC1GAKBtz0elV5HTCHKW63IM18KrMxLbGA1/D2vn+n0Q2axQ4sIDk
	z/Chalqfbe1/Q77jtbIQ8710iB+wu/clt/JInnCc9Rw8aE1h5JHt21nBvvKPKK6axAJEJVqYgAgTF
	/XdnM5fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVkE6-00034z-SK; Fri, 15 Nov 2019 22:38:02 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVkAL-0007F2-V9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 22:34:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id q17so6617216pgt.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 15 Nov 2019 14:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4OAg+K/MSQ8LDMB5QZGzBoNYfURH+sTBMSUExg9URq0=;
 b=WeIJk6lIxyCTX4RCndZxDj9cy9KCsTub6pTQq4mdaj3dFRpi65OWFqCZRA44CBtrxD
 wyRa0X0CmZhRMy5Zc5o6LHi1MH3tbcQL0cv6gNCqqSz1J3XAMtx2zhJ2JtE+s68O47NN
 zHR5m5wI7wETwcEBKNsfebJLtuRqn3mfOO7V8dd30qDbuXTHtB4c9BgZjgnwNq49NE0s
 sHN1LPoBsVxzNYQxP/EzcPTZ08HKWeXQ0I/7fV81CBePfnFtSebCvvcctt33pVFHmB1t
 3cJcol2P9GoSGYES+I95jsL41GuvG8R4/j9nrA8bdohfjWKd0oseIzbWJkGjljUdRMSA
 KFlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4OAg+K/MSQ8LDMB5QZGzBoNYfURH+sTBMSUExg9URq0=;
 b=lkISzFbkpSofexv5GpKLR9RNsy6PJBA8FUkj0ZfZaAG1NoccE8JgGbjjtYHWwB2NF3
 RGN+ibqplbXshcyjFYBH5Vec+nfhHwwX6MNFnLsp7/oejF61u0FP32wZXf/1oxIldQyr
 3ZGUbmG4/qQHKg5GRttTsoNZ/hCd8JtG+Lw9+qBjbVSgNxMBThYrbhpKL3U/1gGMi9IU
 9BAwvD5ZMVrzYaQ7R1PxV+4PE1THYcskdsS7UcOYdVFsLYCxt5KwbVo1kM2DabCMnJFg
 zlJI2/I4S5gJVm9zNNf1xOVtnFjvsK6pWqWqgltjq76+pBCBHnPP/jJk+Bwpt3QpVyVM
 HQ6Q==
X-Gm-Message-State: APjAAAWiDJD1m9nPH7g6Vs8+zHOsa0B/vrwaR/OnzZHkt+uFXdkpM6WO
 3ZzJM7l/yVZ3AEaQ+gI60baFFw==
X-Google-Smtp-Source: APXvYqwvPO8gcw50QrAb2M5Uc8qjsXNsBlM/blU4way61lTUGihMhTmdns75zP4KkzdAtC6LmJhrrQ==
X-Received: by 2002:a62:1e42:: with SMTP id e63mr7219946pfe.25.1573857248667; 
 Fri, 15 Nov 2019 14:34:08 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id m15sm11699724pfh.19.2019.11.15.14.34.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 15 Nov 2019 14:34:08 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: stable@vger.kernel.org
Subject: [stable 4.19+][PATCH 13/20] mailbox: mailbox-test: fix null pointer
 if no mmio
Date: Fri, 15 Nov 2019 15:33:49 -0700
Message-Id: <20191115223356.27675-13-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191115223356.27675-1-mathieu.poirier@linaro.org>
References: <20191115223356.27675-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_143410_042242_9A3B3375 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabien Dessenne <fabien.dessenne@st.com>

commit 6899b4f7c99c72968e58e502f96084f74f6e5e86 upstream

Fix null pointer issue if resource_size is called with no ioresource.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
Signed-off-by: Jassi Brar <jaswinder.singh@linaro.org>
Cc: stable <stable@vger.kernel.org> # 4.19+
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/mailbox/mailbox-test.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/mailbox/mailbox-test.c b/drivers/mailbox/mailbox-test.c
index 58bfafc34bc4..129b3656c453 100644
--- a/drivers/mailbox/mailbox-test.c
+++ b/drivers/mailbox/mailbox-test.c
@@ -363,22 +363,24 @@ static int mbox_test_probe(struct platform_device *pdev)
 
 	/* It's okay for MMIO to be NULL */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	size = resource_size(res);
 	tdev->tx_mmio = devm_ioremap_resource(&pdev->dev, res);
-	if (PTR_ERR(tdev->tx_mmio) == -EBUSY)
+	if (PTR_ERR(tdev->tx_mmio) == -EBUSY) {
 		/* if reserved area in SRAM, try just ioremap */
+		size = resource_size(res);
 		tdev->tx_mmio = devm_ioremap(&pdev->dev, res->start, size);
-	else if (IS_ERR(tdev->tx_mmio))
+	} else if (IS_ERR(tdev->tx_mmio)) {
 		tdev->tx_mmio = NULL;
+	}
 
 	/* If specified, second reg entry is Rx MMIO */
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
-	size = resource_size(res);
 	tdev->rx_mmio = devm_ioremap_resource(&pdev->dev, res);
-	if (PTR_ERR(tdev->rx_mmio) == -EBUSY)
+	if (PTR_ERR(tdev->rx_mmio) == -EBUSY) {
+		size = resource_size(res);
 		tdev->rx_mmio = devm_ioremap(&pdev->dev, res->start, size);
-	else if (IS_ERR(tdev->rx_mmio))
+	} else if (IS_ERR(tdev->rx_mmio)) {
 		tdev->rx_mmio = tdev->tx_mmio;
+	}
 
 	tdev->tx_channel = mbox_test_request_channel(pdev, "tx");
 	tdev->rx_channel = mbox_test_request_channel(pdev, "rx");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
