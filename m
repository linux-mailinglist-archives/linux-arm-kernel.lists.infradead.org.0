Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4EB1F23FC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 01:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N01ZDs0V77UkGVmgXRauRs+DQTutLPoVlfEeMcWC+Dc=; b=b6AmocnZPoR/+t
	uod6djRZkm0Ztvr4oXBJRFMSlDuC1rnwgoRrhVD6cOtjm0dhP965BqhEC+9+JzAxgXlLqOLouWSjh
	PqO/0KsmmuIWhJv3r3F8xtNo3hyMAD0ZbjKC59D2qbpiHiDUfG2FSo7UZAhWvimvywPS/VNW3Gw5/
	9xiBFJ7/BhFoiPNbqW9irREWn/BKgAMG3nJDQioqtuJDQ/V1ncHUjfbmvzLj50tU4TXRen8frZAJB
	BjeO7j9jKY3WG2lqz9MLnpzUIA87NPtqXpxMfku9ZJ//vAQdes3w+9XsJ5V6Hi3WMSp5WRSZqT9Ua
	v9yQAaYW3nTs8VcTK7lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiR2O-0004oX-U7; Mon, 08 Jun 2020 23:18:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQuM-0003q9-5s; Mon, 08 Jun 2020 23:10:24 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 92B29214D8;
 Mon,  8 Jun 2020 23:10:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591657821;
 bh=CvFeTCugHHRONHTP2eRlFRtgrbQbpBoVKDgXt7fTF8s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vSKrxqq/jtcMevL97hTB6bCGq0S0X0UTz84n3hgMISpqJI9QK9T8dN6GEiCipIsMO
 dAgAaX0Rtd4vyT7R4BOJFxkH3RFpWqmdnOZJPnoyOjWne5oDZ1YjR09g/cw0NkkIVd
 krfl9aJZQryqEGd5JSCgSdcJfx6VE1jTP1v68uGI=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.7 194/274] mt76: mt7615: fix mt7615_firmware_own for
 mt7663e
Date: Mon,  8 Jun 2020 19:04:47 -0400
Message-Id: <20200608230607.3361041-194-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608230607.3361041-1-sashal@kernel.org>
References: <20200608230607.3361041-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_161022_271966_27EBF161 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lorenzo Bianconi <lorenzo@kernel.org>

[ Upstream commit becdf0d5d7a46f5ed1f12405ffae4b04764fe27c ]

Check the firmware-own configuration has been applied polling
MT_CONN_HIF_ON_LPCTL register

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Felix Fietkau <nbd@nbd.name>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mcu.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index a19fb0cb7794..0d56e0834bde 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -1550,9 +1550,8 @@ static int mt7615_firmware_own(struct mt7615_dev *dev)
 
 	mt76_wr(dev, addr, MT_CFG_LPCR_HOST_FW_OWN);
 
-	if (is_mt7622(&dev->mt76) &&
-	    !mt76_poll_msec(dev, MT_CFG_LPCR_HOST,
-			    MT_CFG_LPCR_HOST_FW_OWN,
+	if (!is_mt7615(&dev->mt76) &&
+	    !mt76_poll_msec(dev, addr, MT_CFG_LPCR_HOST_FW_OWN,
 			    MT_CFG_LPCR_HOST_FW_OWN, 3000)) {
 		dev_err(dev->mt76.dev, "Timeout for firmware own\n");
 		return -EIO;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
