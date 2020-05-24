Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AD161DFCB9
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 24 May 2020 05:41:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PKu2ky55le25EidYMrkEkYo2qH5t1KW9whaulkpNXtY=; b=Uz+N9YnbH7F6v1
	+1q6vjS49pHPDrpn9g0mNNfgeKeE4BOe+u4ZVEmVb9NRbZ+GyISVeiTqQC2ZLxo/+ToVidFtXNuqL
	w89B/Du7xDcrZ/6wqPiGj17qLWKufjpV3erTzHjYURMQb4fXwaMJ6iCO0jksZafBKZEq8XUByas98
	vG0h/5qF98tlC4dmT1ito7sB1GVgFcKQFXM2YMGLfZLwWadPfk04vUXitW/YZychyVW7nFZ7vNe9M
	T5qNplN8hUbrBm43bmmdWWjthDUpega7rgvfsYUICps0HrsQ6qTG4hrnCbafgNgPT9VFaIywKVY6D
	0vq8AK6fSOM6LlEeO4uQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jchVv-0002mb-RO; Sun, 24 May 2020 03:41:27 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jchVm-0002lx-Dk; Sun, 24 May 2020 03:41:19 +0000
Received: by mail-pg1-x543.google.com with SMTP id p30so6963884pgl.11;
 Sat, 23 May 2020 20:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8eMD4gjKr8w7ES8m7Hmp8yAct3lfQLGVQ1XuSFyG9tI=;
 b=O6IKWbPRvbAPxRcZ+pceLqhRgfqs87MXSJ6uuLtp1cm3lCA5/rz+OrsPJrmeHhA9af
 l6XPcNfWnet7iJXQVymQoZ/m7/rRlU+Q9ZTMKR/Mr52qnCP890Cor16tlVlwM2Mhl4Cy
 ClzvVVNWDGgir2UeztTbfiVsQT/luk9dLaLupZn9cnwOuAEA8pqeRHIAjPznpSajY6nu
 dfdCK4zRPXsppVab2u+vSlKEk4XX0/4z3t/hLgb/PBPGGJ1c06b1gz99+rMRh8gxKJlY
 ch9U9xG+++fzwUa66Fc+fglm7JJQtILd4pT+m2yjqcpBlibzuahUd+xQXi/7gRRgeGWv
 4JIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=8eMD4gjKr8w7ES8m7Hmp8yAct3lfQLGVQ1XuSFyG9tI=;
 b=X9hqirhfhTBQAOtW/I5uMt4lwKElT1PCAeB/ZNHEKhAWBiLNuy7KzPMgLR8S9JoDO9
 w4zUScijppUIvKwIADN92z59s6CLcliL2eC+EjE7lclkeno4MWgMFOqDGtC0+qiTjELC
 K2tuDEULQrYhdP60sy5DAysZL5KgVFSNUBRO2ymsJtQxyvjkVfGiwKzpUi3dcpCLsqz3
 Zd66kmqRJeD1VcUDj9BWFHSaJTQt3tDQQvViZfQxmKhvzvz5vDUotVV/JwK0PWxsMomy
 49I7X6emUsuP/1RCUZDnJ6gGzer8gokBaE8W9skM3aFbFqqZzqQHRT3gt0KpOsgJZOlG
 V0wg==
X-Gm-Message-State: AOAM532sHTyGeAZSKiq5ULj7QdZjnB6bu7bAVlCrea/8JYtsQM/VyLcM
 OpbJRKqII3aoV5j58pJcZtI=
X-Google-Smtp-Source: ABdhPJyCQWddL3N25pvS87265x5l2BRfUe1I2MLdXuJSd3WNUb8aDwvdmru8Rh5S08G+rwg0DYNdEw==
X-Received: by 2002:a62:4e91:: with SMTP id
 c139mr11294084pfb.285.1590291676735; 
 Sat, 23 May 2020 20:41:16 -0700 (PDT)
Received: from P65xSA.lan ([128.199.164.101])
 by smtp.gmail.com with ESMTPSA id 25sm9753421pjk.50.2020.05.23.20.41.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 23 May 2020 20:41:15 -0700 (PDT)
From: DENG Qingfang <dqfext@gmail.com>
To: linux-wireless@vger.kernel.org
Subject: [PATCH v2] mt76: mt7615: add support for MT7611N
Date: Sun, 24 May 2020 11:41:10 +0800
Message-Id: <20200524034110.22576-1-dqfext@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_204118_481022_78FD9652 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dqfext[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: ryder.lee@mediatek.com, matthias.bgg@gmail.com,
 linux-mediatek@lists.infradead.org, kvalo@codeaurora.org, royluo@google.com,
 lorenzo.bianconi83@gmail.com, linux-arm-kernel@lists.infradead.org,
 nbd@nbd.name
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MT7611N is basically the same as MT7615N, except it only supports 5GHz
It is used by some TP-Link and Mercury wireless routers

Signed-off-by: DENG Qingfang <dqfext@gmail.com>
---
v1 -> v2:
make is_mt7615(&dev->mt76) return true for mt7611

 drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c | 7 +++++++
 drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h | 7 ++++++-
 drivers/net/wireless/mediatek/mt76/mt7615/pci.c    | 1 +
 3 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
index 6a5ae047c63b..edac37e7847b 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
@@ -111,6 +111,12 @@ mt7615_eeprom_parse_hw_band_cap(struct mt7615_dev *dev)
 		return;
 	}
 
+	if (is_mt7611(&dev->mt76)) {
+		/* 5GHz only */
+		dev->mt76.cap.has_5ghz = true;
+		return;
+	}
+
 	val = FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
 			eeprom[MT_EE_WIFI_CONF]);
 	switch (val) {
@@ -310,6 +316,7 @@ static void mt7615_cal_free_data(struct mt7615_dev *dev)
 		mt7622_apply_cal_free_data(dev);
 		break;
 	case 0x7615:
+	case 0x7611:
 		mt7615_apply_cal_free_data(dev);
 		break;
 	}
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index ebdfca64b079..4ce8b379a147 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -411,7 +411,7 @@ static inline bool is_mt7622(struct mt76_dev *dev)
 
 static inline bool is_mt7615(struct mt76_dev *dev)
 {
-	return mt76_chip(dev) == 0x7615;
+	return mt76_chip(dev) == 0x7615 || mt76_chip(dev) == 0x7611;
 }
 
 static inline bool is_mt7663(struct mt76_dev *dev)
@@ -419,6 +419,11 @@ static inline bool is_mt7663(struct mt76_dev *dev)
 	return mt76_chip(dev) == 0x7663;
 }
 
+static inline bool is_mt7611(struct mt76_dev *dev)
+{
+	return mt76_chip(dev) == 0x7611;
+}
+
 static inline void mt7615_irq_enable(struct mt7615_dev *dev, u32 mask)
 {
 	mt76_set_irq_mask(&dev->mt76, 0, 0, mask);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
index 88ff14564521..b09d08d0dac9 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/pci.c
@@ -14,6 +14,7 @@
 static const struct pci_device_id mt7615_pci_device_table[] = {
 	{ PCI_DEVICE(0x14c3, 0x7615) },
 	{ PCI_DEVICE(0x14c3, 0x7663) },
+	{ PCI_DEVICE(0x14c3, 0x7611) },
 	{ },
 };
 
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
