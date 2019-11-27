Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A641810A8F7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 04:01:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Oj3hHD5S3hG8+U2uho8zZxF3LNLBj399YZY6Nra7im0=; b=hZMqcooa5GQVWb
	jbB0FRJfzkk+KYLmNzuJm2Fo/wcijxP6Oe+s/g+cq70bvMWoIztAjd7uMUnIamGH3ExudRjW5N0pS
	0JxMas+wWxiKwgN5lZF7H9b+jWXf3pIb/8ZisSFzcZEHhKK9IaeI9HSIRNywYkCOK2myB9nk98hF7
	WJHxaDF882LkPWdkNXhyxad5LG8QxD56NSwHOtCr5r0QbU/tRrZOJXOEvDEQvf5Jz/rx5vL2kY7c6
	ojH0ZFmegjpAlfXBSGI14wrbEC+I2vhTrvztdatrsW4UZEXGQ6aPH2+hBO772R20Dp8ldhIs6FOPp
	jwt5KOOnR+ZzteFJHglg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZnaL-0004lu-Ge; Wed, 27 Nov 2019 03:01:45 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iZna9-0004kW-6h; Wed, 27 Nov 2019 03:01:37 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xAR31C2b020528,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCASV01.realtek.com.tw[172.21.6.18])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xAR31C2b020528
 (version=TLSv1 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 27 Nov 2019 11:01:12 +0800
Received: from localhost.localdomain (172.21.83.238) by
 RTITCASV01.realtek.com.tw (172.21.6.18) with Microsoft SMTP Server id
 14.3.468.0; Wed, 27 Nov 2019 11:01:11 +0800
From: <max.chou@realtek.com>
To: <marcel@holtmann.org>
Subject: [PATCH] Bluetooth: btusb: Edit the logical value for Realtek
 Bluetooth reset
Date: Wed, 27 Nov 2019 11:01:07 +0800
Message-ID: <20191127030107.17604-1-max.chou@realtek.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [172.21.83.238]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_190133_499468_E76F0E07 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: max.chou@realtek.com, johan.hedberg@gmail.com, linux-kernel@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, alex_lu@realsil.com.cn,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Max Chou <max.chou@realtek.com>

It should be pull low and pull high on the physical line for the Realtek
Bluetooth reset. gpiod_set_value_cansleep() takes ACTIVE_LOW status for
the logical value settings, so the original commit should be corrected.

Signed-off-by: Max Chou <max.chou@realtek.com>
---
 drivers/bluetooth/btusb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/bluetooth/btusb.c b/drivers/bluetooth/btusb.c
index 70e385987d41..82fb2e7b2892 100644
--- a/drivers/bluetooth/btusb.c
+++ b/drivers/bluetooth/btusb.c
@@ -552,9 +552,9 @@ static void btusb_rtl_cmd_timeout(struct hci_dev *hdev)
 	}
 
 	bt_dev_err(hdev, "Reset Realtek device via gpio");
-	gpiod_set_value_cansleep(reset_gpio, 0);
-	msleep(200);
 	gpiod_set_value_cansleep(reset_gpio, 1);
+	msleep(200);
+	gpiod_set_value_cansleep(reset_gpio, 0);
 }
 
 static inline void btusb_free_frags(struct btusb_data *data)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
