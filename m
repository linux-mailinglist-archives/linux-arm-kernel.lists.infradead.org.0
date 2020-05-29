Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 977161E7293
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 04:28:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CH8kMDDTqMy2QtzKLaXd3L5p12M6gnbvZzQ26mhMegQ=; b=KywducTo3RXr3O
	mTZip1xDXXzyC1dUJ6Fl/uq77DLbVpIgTMasfOiPHo72/zfASDyx5SNxZ77KRbt4YK5cf/CGcSAF4
	lNY7D5iCXKDqFIsZPXmtd0NtpFtt9Ci3bvkSjlcbPFSdwhbwUQCjty/FLB/kk1XuTZJAzFqvQFz4i
	8p7UGd5N9ggZ8/GHeJdntY4lK/wmiVJy9VXEJNGnmlHGETh79yHS67toRrw4gFLW1rGpAICrbFa8n
	Y+GoGlUFfIvwF7y8Cg5+9K5pvLsK2KmCCaSoLjmTzSFwRJaBnpzL7eC46mOSGD41RShCRvGNF0/s7
	u8ot3JzdxRuHkQo1E8RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeUkW-000545-B0; Fri, 29 May 2020 02:27:56 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeUkK-00051n-Hr; Fri, 29 May 2020 02:27:45 +0000
Received: by mail-pf1-x444.google.com with SMTP id z26so441628pfk.12;
 Thu, 28 May 2020 19:27:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q7Ds55mrogGXuEM4SJQgAqnILsJS644/RVVdZVRg++g=;
 b=NdaMAUAEDkjuPmLDmz0DlFfsp4ufVxj0FWetWnq1nPXQTn0gJydk3i7kHOD2PRXom3
 c29KH/BGst0jdrowBQuRWgbkg+GoAXln+xEXP1NqwS47xG3aHSDk1M5w+vVHQpAliTsw
 DeiA/FQE5G/vByHeDu3RZNFz342dKsAcSGOI+Y0MFO2j6LDESQrHfi/LIundli+NzACx
 cONgLmFWbTXn4pbj1NX7NnNFCZuUFS69lclsOMCxJw+eF+FOil6ro4HRH9JAsz7x1Q84
 iwwSNSABC9+blpWz19mnQXvvlQgGvMEwGmhcMWmDRQGo/EYN6d1mnktit0bwCI1FnaLK
 L8YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Q7Ds55mrogGXuEM4SJQgAqnILsJS644/RVVdZVRg++g=;
 b=tvP+JW5S3oremuaJa6Y6PSxNAiGAC1BDbgQq/qQMDNYMj6Bl9beCiriCbupmI+vtGe
 eHtsZ+l3A0yeUCtNrdXGPvF8Sj737QuZzCMoZFYi65quPSdzR0cVsCbC04D4IddBHyk7
 /twOanvJuDRuWESWa3khij43EdR0baCAuRvTW8qRmropqLEW7B5We/2xM8pjPnywjP12
 JiaY8U/sC0E+ugNEsYTGrK9JQAdnPTM8vD+cPxFRPZLZ/QLRdLwVHvzwi04GnyG0hosV
 YihVIEC2eKQZAqDmJc2+SvBlDf+dCUQ843OqbqIaGY025jxdgI2v1GFvpspXxZmXKRtq
 lwqg==
X-Gm-Message-State: AOAM5332TPsXcpGBSl41jVa6z+YSGXg91Ol15IHrNATZAJxx55MOZBXg
 23LCBHZjShT7/9fH8UfzO/g=
X-Google-Smtp-Source: ABdhPJzx/ymfutkB2+J7IwEf32NLdzpK09ZlEr9zw9Gmck5sFYIuhFuU6NGYaBcMyXxxLR/h8SccjA==
X-Received: by 2002:a62:2f45:: with SMTP id v66mr6665066pfv.45.1590719262506; 
 Thu, 28 May 2020 19:27:42 -0700 (PDT)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id u26sm5850316pfn.88.2020.05.28.19.27.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 19:27:41 -0700 (PDT)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH v2] Bluetooth: btmtkuart: Improve exception handling in
 btmtuart_probe()
Date: Fri, 29 May 2020 10:27:26 +0800
Message-Id: <20200529022726.917826-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_192744_608866_A7CBDEA5 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [hslester96[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hslester96[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
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
 linux-bluetooth@vger.kernel.org, Markus Elfring <Markus.Elfring@web.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calls of the functions clk_disable_unprepare() and hci_free_dev()
were missing for the exception handling.
Thus add the missed function calls together with corresponding
jump targets.

Fixes: 055825614c6b ("Bluetooth: btmtkuart: add an implementation for clock osc property")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
Changes in v2:
  - Modify description.
  - Add fixes tag.

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
