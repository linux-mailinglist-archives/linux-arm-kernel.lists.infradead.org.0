Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF591E9246
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 17:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SJablvArATBDLy9CEsEOwFqCIlM+iqig62glQuGuCSY=; b=Rn8vegWuim5FjU
	3B8KJeMw9G9lP8t0GBEGei6csQKk/Q+fW/KMSMhGtZHs/qqYld96e5vSQbax2qmJgz+KkxKhuapaO
	MyyclMLlvSo7GI7jmfwaXKxjoRpoFw7SsYQnIyUFFvNfZGHOboFvtrpeaf2MxO9XDCrhom6GDAZOm
	GnAB0wGIbfImH5KW26T7FhD5Nvn+UHTJcu2TlOd99rsafyKsy8p+CnXeYd9ZoK6SeETF1wTd9/KPZ
	C9/NSs2zAIj8nd6yLgRqkoehA+Dw4KBGSADUnOvxc4XPG3T6m86E41y2tX44KGTpvlnhCIWCtCF2q
	yb9504kBOuzGK42z9UfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf3Bl-00055b-AN; Sat, 30 May 2020 15:14:21 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf3BU-00050V-9z; Sat, 30 May 2020 15:14:05 +0000
X-UUID: 307e3a3370f5479ca3b854bd7a413a7b-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=SPJ40cDjqiU6ZOCt6LvTtGZM/kEwgPDknQLr1x5cZfY=; 
 b=Kza9OG7AGv27NbJbLE9OIiD+PFPwgDGluPkAC3Im8IQv9jDqOzohNkWZM/9L7oJPBaYnu85pfTndcy0E82Xb0Q0veNl8YsScOl/UtHcbGDESH1//7koFAAJ2gvtsCibjdetxPwVEZBVL7p0KrpyLjuRFDgF8LuLuYFQvDf+XMFI=;
X-UUID: 307e3a3370f5479ca3b854bd7a413a7b-20200530
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 945028142; Sat, 30 May 2020 07:13:26 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 08:13:53 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 23:13:37 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Sat, 30 May 2020 23:13:37 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v1 2/2] scsi: ufs-mediatek: Support WriteBooster on Samsung
 UFS devices
Date: Sat, 30 May 2020 23:13:37 +0800
Message-ID: <20200530151337.6182-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200530151337.6182-1-stanley.chu@mediatek.com>
References: <20200530151337.6182-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: D9C1B2FE1DB9811E2C52585261D356E405E346685F5B7B75511E572B46C88C132000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_081404_346252_67893C60 
X-CRM114-Status: UNSURE (   6.52  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, cc.chou@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com, chaotian.jing@mediatek.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add device quirk "UFS_DEVICE_QUIRK_WB_USING_SPECIAL_SELECTOR"
on all Samsung UFS devices to enable WriteBooster on those
devices.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index d587b3276aa8..078a1e3d05d3 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -32,6 +32,9 @@
 	ufs_mtk_smc(UFS_MTK_SIP_DEVICE_RESET, high, res)
 
 static struct ufs_dev_fix ufs_mtk_dev_fixups[] = {
+	UFS_FIX(UFS_VENDOR_SAMSUNG, UFS_ANY_MODEL,
+		UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES |
+		UFS_DEVICE_QUIRK_WB_SPECIAL_SELECTOR),
 	UFS_FIX(UFS_VENDOR_SKHYNIX, "H9HQ21AFAMZDAR",
 		UFS_DEVICE_QUIRK_SUPPORT_EXTENDED_FEATURES),
 	END_FIX
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
