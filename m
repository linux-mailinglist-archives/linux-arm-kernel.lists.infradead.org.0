Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE311E5D03
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 12:20:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0nbLqS0xVat7dBpgWoXnHT8Y/G/b6bGPhF8B3ELDFzY=; b=mhpWX3yZNWAqkc
	8l8bzgWH0+V/x0t+ViKnK7GJu5EV0kt0A2d42Uzz/0JrNFhElqelMzVU2CAzuwanZRIwgWo4hJRNM
	ImiWxuzRb/vZOrlq8maNk164t3clmNOzP1MOQTVmC/og3yP82YX1YmYIq/0Ec+2ySmc8jn2QEy+0h
	dIJQhTuldyxK/FQYeHWAAtnmU9u6Bj9K7MGjCIAXdmOtFRpXz60tZWz95gDbTWlNz9yDUtxQz4epq
	aRw+nf1OK4bIJhcKJwA3Q7mpJE1pX/W016u5/e6awU5B6uFXg6E4Z7qQ2d8wjSQEjfR+KW7hhAfL/
	dtIZi7hAqlEjIXzxUWCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeFeZ-0003ad-F7; Thu, 28 May 2020 10:20:47 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeFeK-0003Z6-LT; Thu, 28 May 2020 10:20:33 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh7so4475315plb.11;
 Thu, 28 May 2020 03:20:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n8iipgJAi/NQyT9g10+jXpAAhQUJmCgX3ykzxFLrLKM=;
 b=FocExwZgEGs3gT0g8mnUyvPa6RpF30FXKarH1WH9tVM3Qfk2UMDFsUGGktPrgs6eG8
 oWa6KQ3j+BOpYt1wNostFfpItGTf7Nia2InQUTO4w8rOcch2k+RjAUsNbvmSK/nxbgDp
 HOSdd++QHNr67yGxv/1ozdj8+NQjB7FB8qxJMmDpuAv0IP2tidoiPkWbNp4AAileJdUN
 QdUH88+CtMfwJs0OtDlUNxQ4KSfvGtRsAtsXTTE9PD0sEuaBlzkpIWj9IJNujmvNiVNe
 Dr9VGxowiAhoIecs4k25fXf/tzGz9WKaUTZ5NiqHo5NEQkJnHkq98nLVkPhtXHFA+mMw
 +hTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=n8iipgJAi/NQyT9g10+jXpAAhQUJmCgX3ykzxFLrLKM=;
 b=XQZMOngHw+iQ1BVktDqsybfTfFUtK3HmBiLqS+80N+YKi2in3ldlBAZQnZOE9Gfq7p
 680uz8pdbUJrWqlHlP2x278S7mT6NWg7qrIoRcte4Obrp7BqIR5M4F4ksGaVV+JTH0n2
 VDUQYNsDiM/6NLN93blCFgv4VCD7NzjkCje5DUvbRk6XUVeaKxoxqvVXdLNquk06zwfW
 aAo3dejmPxEHIZr9JgXtarBr+ueZrKsapoU32mZGjDPuWoNGTQLGZE+m368uLX3rHI39
 70niUXcYt26O8InAfagAGuXurC92ZPE/7sv7hp6Z2Gdw+CZeImLbvNdt8XcgTXiVuDyv
 qc4w==
X-Gm-Message-State: AOAM531GBfAzYQAm5nN3ms3fXw2n/0WiXq/aEGTIv/g3meyzFHNm6lLH
 eGCImXZn1VUz4HDcHpqLIos=
X-Google-Smtp-Source: ABdhPJywCGzsdw5guspTvAxKu+Juxq4ii0vQsLONLmhQYEB+Q72DtYuN3e5AP5ezkwffsfJqoQc9hQ==
X-Received: by 2002:a17:90a:1485:: with SMTP id
 k5mr2995699pja.108.1590661231748; 
 Thu, 28 May 2020 03:20:31 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id e16sm4193122pgg.8.2020.05.28.03.20.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 03:20:30 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] Bluetooth: btmtkuart: add missed functions in the error paths
 of btmtuart_probe()
Date: Thu, 28 May 2020 18:20:21 +0800
Message-Id: <20200528102021.911709-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_032032_721277_0F3C71F3 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
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
Cc: Johan Hedberg <johan.hedberg@gmail.com>,
 Marcel Holtmann <marcel@holtmann.org>, Sean Wang <sean.wang@mediatek.com>,
 Chuhong Yuan <hslester96@gmail.com>, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

btmtuart_probe() misses several function calls in its error paths,
including hci_free_dev() and clk_disable_unprepare().
Refactor the code and call correct undo functions to fix the error
paths.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/bluetooth/btmtkuart.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/bluetooth/btmtkuart.c b/drivers/bluetooth/btmtkuart.c
index e11169ad8247..8a81fbca5c9d 100644
--- a/drivers/bluetooth/btmtkuart.c
+++ b/drivers/bluetooth/btmtkuart.c
@@ -1015,7 +1015,7 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 	if (btmtkuart_is_standalone(bdev)) {
 		err = clk_prepare_enable(bdev->osc);
 		if (err < 0)
-			return err;
+			goto err_hci_free_dev;
 
 		if (bdev->boot) {
 			gpiod_set_value_cansleep(bdev->boot, 1);
@@ -1028,10 +1028,8 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 
 		/* Power on */
 		err = regulator_enable(bdev->vcc);
-		if (err < 0) {
-			clk_disable_unprepare(bdev->osc);
-			return err;
-		}
+		if (err < 0)
+			goto err_clk_disable_unprepare;
 
 		/* Reset if the reset-gpios is available otherwise the board
 		 * -level design should be guaranteed.
@@ -1063,7 +1061,6 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 	err = hci_register_dev(hdev);
 	if (err < 0) {
 		dev_err(&serdev->dev, "Can't register HCI device\n");
-		hci_free_dev(hdev);
 		goto err_regulator_disable;
 	}
 
@@ -1072,6 +1069,11 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 err_regulator_disable:
 	if (btmtkuart_is_standalone(bdev))
 		regulator_disable(bdev->vcc);
+err_clk_disable_unprepare:
+	if (btmtkuart_is_standalone(bdev))
+		clk_disable_unprepare(bdev->osc);
+err_hci_free_dev:
+	hci_free_dev(hdev);
 
 	return err;
 }
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
