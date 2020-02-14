Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EF0E15DCA4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 16:55:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5f5SZDd3uo0COvnN7LqWZ0xGXapKlvCvPW9N+Qkkuk=; b=nOr0U1Mks3RX9a
	CpsQYkcSfHInGO1pdTPKnYd5luZTVMcpAGqDj6UTgBezMHsXo8L0eJIH0KIZm6pAXdG8KgUP2IsdZ
	SgGAcN4FT67Z91XtEoG+KbwVpDVJXAZ7RWLXLcUGmfmCKKj0DQTfO2999dJ9d1VaPJRDucgrywL8K
	+nGRSTGXyNWdx49jCO7qRsOayKsyKUVF99D8JRLXcx7mScySapZh4sf0rZ0fQ4YqioOzEzTRJsD9S
	TpJsG7QJeyIzl9GXc7gwEA4VIDDo31DqBYXmG4qzxgyNhts0K4tPlIy9K37H1pFrWzJOO6u9nnmWr
	BS7cJbq5NJeAAKoRT9aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2dJf-0000pI-Dm; Fri, 14 Feb 2020 15:55:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dFr-0004rN-HK; Fri, 14 Feb 2020 15:51:50 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A88F524676;
 Fri, 14 Feb 2020 15:51:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695506;
 bh=wKF6to/Ae7L+wJeSIQu3UCpCEcTa0xmUwfpSPCOZrZI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=mvScXVCZZGKbdhDLBBA8Pf1/tP6aX9MO+p+8ZaCwgzXkSUkc96Hr73x+FgaAS4iqc
 p5Qp3Ws/4Bp5FgBfZMjynkEPkUM0ZTkCvcdfilJVqVylr0uTI6L3b7ndalN9MlNgOa
 S29QIkVTgPNXErNpIPm+NWd6v6U4hg0CSbaifSVU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 132/542] mt76: mt7615: fix max_nss in
 mt7615_eeprom_parse_hw_cap
Date: Fri, 14 Feb 2020 10:42:04 -0500
Message-Id: <20200214154854.6746-132-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075147_612795_7F2726A6 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
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
Cc: Sasha Levin <sashal@kernel.org>, netdev@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Kalle Valo <kvalo@codeaurora.org>, Lorenzo Bianconi <lorenzo@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Lorenzo Bianconi <lorenzo@kernel.org>

[ Upstream commit d08f3010f4a32eec3c8aa771f03a1b342a1472fa ]

Fix u8 cast reading max_nss from MT_TOP_STRAP_STA register in
mt7615_eeprom_parse_hw_cap routine

Fixes: acf5457fd99db ("mt76: mt7615: read {tx,rx} mask from eeprom")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
Signed-off-by: Kalle Valo <kvalo@codeaurora.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
index eccad4987ac83..17e277bf39e0f 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
@@ -92,8 +92,9 @@ static int mt7615_check_eeprom(struct mt76_dev *dev)
 
 static void mt7615_eeprom_parse_hw_cap(struct mt7615_dev *dev)
 {
-	u8 val, *eeprom = dev->mt76.eeprom.data;
+	u8 *eeprom = dev->mt76.eeprom.data;
 	u8 tx_mask, rx_mask, max_nss;
+	u32 val;
 
 	val = FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
 			eeprom[MT_EE_WIFI_CONF]);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
