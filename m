Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 987601F4D33
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 07:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EqOWFLND69+PSviiV/Jw22O8Dcaf8SJ5v/FM12DLskQ=; b=TMAploRL2YMa9+
	pSjPshnzE3VT6hZq6D5ESw8Xp08UTYwZYE/dmvZTklrzXe55BKDsqrJe6ef8ogex5X8jM5jWModW+
	wY/lxeT/Ua9L3n0zcQaHx6fcFHbwf9EP517lOEkMVXbbv89xAy24HIrHBkGkJU8HdL42eOif7dJXl
	PIkEceduktwraAEIClw+0d18EBC4VOHc4FdE6EQsAuxpJShT5+MNq3xn1fi3mt5/2W8Lco4RbHyqM
	BQaDxyS1f3SbFdNVkkAe2sp0mTQOLpCzFGEKh5xSTNd2Vn1iF/Xq1xm2VdLPy2MK1AKZrwtokK/LB
	2tJU/40eis3vr4Da9A0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jitaK-0001T1-LZ; Wed, 10 Jun 2020 05:47:36 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jitZq-0001I2-VX; Wed, 10 Jun 2020 05:47:08 +0000
X-UUID: 62e29d46fd374d8eb2ab7b76f0813f79-20200609
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=P4ir2L+O0CL9udXrFkoeOl6qfpnyyIFELvh2AjIFg7I=; 
 b=WznV4C0Tgrn7s+stUeAl5aT1Qb3J2RYwhrDMnctCo0WcsKwQM9It9UJC0B25CLhQ5WRHbfUYbOPJ3PcEDwCcLNcz5KaIGWSguT78cNVFXn1vJSYeG5MOcVFHMY6UWnLWNctv2enVpMraKmHLFcWfIF8zXoEQje54ra8H3a19f2A=;
X-UUID: 62e29d46fd374d8eb2ab7b76f0813f79-20200609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 604862879; Tue, 09 Jun 2020 21:46:48 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 9 Jun 2020 22:37:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 10 Jun 2020 13:36:52 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Wed, 10 Jun 2020 13:36:53 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v1 2/2] scsi: ufs: Cleanup device vendor and quirk definition
Date: Wed, 10 Jun 2020 13:36:45 +0800
Message-ID: <20200610053645.19975-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200610053645.19975-1-stanley.chu@mediatek.com>
References: <20200610053645.19975-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: ECA4F3CB4DEFF80CD6B31B8B0CD1BF9841AFE6F22FE8BBC5C983FD9B0DB3DAD22000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_224707_020591_46943781 
X-CRM114-Status: UNSURE (   8.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, cc.chou@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 chaotian.jing@mediatek.com, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup below items,
- Arrange vendor name in alphabetical order
- Squash device quirks as compact as possible in device quirk table
  to enhance performance of the lookup.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs_quirks.h | 2 +-
 drivers/scsi/ufs/ufshcd.c     | 6 ++----
 2 files changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/scsi/ufs/ufs_quirks.h b/drivers/scsi/ufs/ufs_quirks.h
index e80d5f26a442..2a0041493e30 100644
--- a/drivers/scsi/ufs/ufs_quirks.h
+++ b/drivers/scsi/ufs/ufs_quirks.h
@@ -13,9 +13,9 @@
 #define UFS_ANY_MODEL  "ANY_MODEL"
 
 #define UFS_VENDOR_MICRON      0x12C
-#define UFS_VENDOR_TOSHIBA     0x198
 #define UFS_VENDOR_SAMSUNG     0x1CE
 #define UFS_VENDOR_SKHYNIX     0x1AD
+#define UFS_VENDOR_TOSHIBA     0x198
 #define UFS_VENDOR_WDC         0x145
 
 /**
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index dea4fddf9332..7c93cb446f51 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -219,10 +219,8 @@ static struct ufs_dev_fix ufs_fixups[] = {
 	UFS_FIX(UFS_VENDOR_MICRON, UFS_ANY_MODEL,
 		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
 	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
-		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
-	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
-		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS),
-	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
+		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM |
+		UFS_DEVICE_QUIRK_RECOVERY_FROM_DL_NAC_ERRORS |
 		UFS_DEVICE_QUIRK_HOST_PA_TACTIVATE),
 	UFS_FIX(UFS_VENDOR_TOSHIBA, UFS_ANY_MODEL,
 		UFS_DEVICE_QUIRK_DELAY_BEFORE_LPM),
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
