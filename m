Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470441920CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 06:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TSldUGS+svUAPpKi017OM/QXw21EVi9xQyVR60VZPs8=; b=XhXqnCu6vE+Rt/
	bHZGkNp4cGkXU34THu0v9qT5Q7SdktMdLCAOqyC7wvycEHtzCyad8fLZDFm9jIDf1KH0Ujgx6emPl
	fSnPerYoOBFPFk664FFHbVgmarb4+mCnleSxD3vMAm8ILBX18z5NAiwCmoKpDoxWZuTq1p0yZpmal
	HxGT26+DxLU7pdITnTuDRfnt4O8VqYqkrss+39a3eXsouoeICwrzq1WdlwRiZlJTlM4PMTZ0Yhg6v
	ER99U0kt5ni9Ghc1jXfR/isVP+0yTbd0JbgOLBdIiaATTSQiZH8XSRIVGo3n4LCgxj/XTn6mfILJF
	5oPeCpPsRflKScw2y65w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGz22-0006EU-Im; Wed, 25 Mar 2020 05:56:50 +0000
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGz1p-00068Y-77; Wed, 25 Mar 2020 05:56:38 +0000
Received: by mail-lj1-x242.google.com with SMTP id k21so1180907ljh.2;
 Tue, 24 Mar 2020 22:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KXLP0/H62Iyak+HWMvNxv2asCanHU5NDryMupzQljyQ=;
 b=pZR9ei1vxMr3u8y5qL+mLZGwU/2WSStdK5WDY0E67329D/GFURPI717SH1LJJ8Pjl7
 wUdOM8f3RY5tMwLxdZsfS2NcnGAlpDtHxYI0uxbPL6F9TO7dGiB4hByqOrnYTrxKfmTo
 A9UGNoNuiQS8omgDrK2UzlP1gAqF/MB49ucMu7uZDJnyngiYbvPjENn2qXW3Rvwl/ggV
 7Nsvzpj0Rsp1IIXZDXTPcAhvp88VuGFAb6uU8X7xM4ZAtLdxAZJUVQaP9mjst3dNvyH6
 zUEeJAmo1krCrnnxTFUZrv9Vlh7c7wpu+5450YoGJZ1wXhHlZZaBDIF8ZrAWkm9SL/jK
 8qWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=KXLP0/H62Iyak+HWMvNxv2asCanHU5NDryMupzQljyQ=;
 b=VNFZ7sAVE1ldW0YdoRpPvbC4bkQ/Uy1zVejGhL+uhaGH1umKXl/xCZrVIEBKAvIGwZ
 kleVrkUL2zQsOlGeCNWaKCEnJpV4DaZ8wv46gYsOqkeQLyTVKBVcdi7pfzOF5CFB2gr/
 POlL04xR9ODOn77CxPjgqX8nQb84NZoFC5NYSptopgKx6whwOMkj9x0FWiSXCFi3V39q
 4FnDaAfwu7VaUzeIrFCiUTxZlZokHtwKpa7RG+vV1atfszAGRH5A9f/PdUrWEBovDjnh
 6yUntZTk/aIO3MriLigSdeu2qx4LP6uJjKSfaPYN/KTL568imDXBAS7Z2jbcCQ+HkzQP
 GuJA==
X-Gm-Message-State: AGi0PubB0JUvqahkMUSd6T/PXkPFEr/d+6ORJ++EW2BgegqrB/QlJ39o
 ALgTx4wFun/rVYupzc3qCTQ=
X-Google-Smtp-Source: ADFU+vu3fs9td+AZg+GfH8KE6sCDA0t03LRyFkKaskNvANi2tSXlhNrCU5zMzOlFPRoZLQ/GPlGnQg==
X-Received: by 2002:a2e:878a:: with SMTP id n10mr885894lji.130.1585115794908; 
 Tue, 24 Mar 2020 22:56:34 -0700 (PDT)
Received: from localhost.localdomain ([185.188.71.122])
 by smtp.gmail.com with ESMTPSA id y20sm3453692ljy.100.2020.03.24.22.56.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Mar 2020 22:56:34 -0700 (PDT)
From: Pawel Dembicki <paweldembicki@gmail.com>
To: Felix Fietkau <nbd@nbd.name>
Subject: [PATCH] mt76: mt76x0: pci: add mt7610 PCI ID
Date: Wed, 25 Mar 2020 06:55:23 +0100
Message-Id: <20200325055525.20279-1-paweldembicki@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_225637_262255_04D8AC2E 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paweldembicki[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, Stanislaw Gruszka <sgruszka@redhat.com>,
 netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Pawel Dembicki <paweldembicki@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 "David S. Miller" <davem@davemloft.net>, Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add mt7610 PCI id found on D-Link DWR-960 to pci_device_id table.

Run-tested on D-Link DWR-960 with no-name half-size mPCIE card
with mt7610e.

Signed-off-by: Pawel Dembicki <paweldembicki@gmail.com>
---
 drivers/net/wireless/mediatek/mt76/mt76x0/pci.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c b/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c
index e2974e0ae1fc..3bd753cda190 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c
+++ b/drivers/net/wireless/mediatek/mt76/mt76x0/pci.c
@@ -215,6 +215,7 @@ mt76x0e_remove(struct pci_dev *pdev)
 }
 
 static const struct pci_device_id mt76x0e_device_table[] = {
+	{ PCI_DEVICE(0x14c3, 0x7610) },
 	{ PCI_DEVICE(0x14c3, 0x7630) },
 	{ PCI_DEVICE(0x14c3, 0x7650) },
 	{ },
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
