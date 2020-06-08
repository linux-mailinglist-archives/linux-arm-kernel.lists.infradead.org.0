Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F8631F22CF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oprX98BKV1b3EswOXTlstEFQDT+JksGr12Qx5I90dn4=; b=Pws0UYYPfXu1LC
	PCQs8qE9450MTqsPoztez9u1yPmFYN1yb9huppfT5VHsoROTGAHHp6uwgZfadb3cAGqhkX0piHO4x
	qbmbnj1H2awFF11100WVlnUWqZxSeeSy7VLUo4I79GQP9T5xLQv+gwnzq11EASB9g1TixJbMhQYkw
	fss+Rkkz3SRvLKGpvpS3no/e0yGsdP4TQqqVR9UMf3/ITj8YIiIHA/rOZzxOrLPPlREOOpLEzso97
	aReYhM7UeoCNZJs07SLcT8xlFkQ7ICdm0Pss3UNbsNyb1nPyH2JVsa7v5a3vcgR/DtqTXO5Ul/URz
	AJXIHIohBVmFeIYoL0KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQv7-0004FP-1v; Mon, 08 Jun 2020 23:11:09 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQrt-0007hz-F0; Mon, 08 Jun 2020 23:07:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B99522086A;
 Mon,  8 Jun 2020 23:07:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657668;
 bh=PRuINvBRZW2mZwEv6yL9odErB1I7qLxkutEUY51xAFc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=UJUV0YaVsV7c2Vo+aIuG2esMjFNttNQCp9gIq4S37E3DtsvCslivS0wX9BbEzutp7
 R+MecZQAIJQVSV18Zcl27yUJK3bRB5drN9AJ/uH0PF2Uev8v5oKqGMNHsOIOfeyJN4
 2h+BXF0Os6EALcOKpvCzC4JTZNDh54fhQpDaqhg4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 078/274] Bluetooth: btmtkuart: Improve exception
 handling in btmtuart_probe()
Date: Mon,  8 Jun 2020 19:02:51 -0400
Message-Id: <20200608230607.3361041-78-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_160749_528133_42B1A87C 
X-CRM114-Status: GOOD (  11.25  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>, Marcel Holtmann <marcel@holtmann.org>,
 Chuhong Yuan <hslester96@gmail.com>, linux-bluetooth@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chuhong Yuan <hslester96@gmail.com>

[ Upstream commit 4803c54ca24923a30664bea2a7772db6e7303c51 ]

Calls of the functions clk_disable_unprepare() and hci_free_dev()
were missing for the exception handling.
Thus add the missed function calls together with corresponding
jump targets.

Fixes: 055825614c6b ("Bluetooth: btmtkuart: add an implementation for clock osc property")
Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
Signed-off-by: Marcel Holtmann <marcel@holtmann.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
