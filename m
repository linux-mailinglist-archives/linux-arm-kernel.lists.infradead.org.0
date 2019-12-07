Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C1B3115B69
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  7 Dec 2019 07:49:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QGo3FsWPoJvuI6DkRsFeEyN6mKHwmFiP7/BHgfrNpeY=; b=mKDw08xRudFf2g
	dzYB9kkxPfFOqhDplnBy3XhfcbAxch0wmfs1/JHaBmi14X3ZxUIFIsNaIs0b47hN6ORfEbwNy91q1
	Rkkvo4duZ21NegaYpg74jRJYcx2EE0ZgIWqpMjKCKeh8U5Wpz4fUU+pUZnzrBZ+bLzvyWHAaKaPOQ
	9qx5mJsMwmyhHwUDiilD/tN7ZUF5QhKhSV6Qjz/3iwXhBB67CA+B6krcBTu9sV714ucd0cyZsh1s4
	EOSRyRjYfg6Ks4GT/vIu2KkayTUI1h+bY+BkDCF58JboJTA/kib2qFgaPFKlqUj9OGpBw5BaH/c6x
	m9L+++joSl/HEUKBAXIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idTuT-000772-TN; Sat, 07 Dec 2019 06:49:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idTuG-00074h-AJ; Sat, 07 Dec 2019 06:49:33 +0000
X-UUID: 6b16fd91b5374d48b81eb8aa99747012-20191206
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=qz9simjY54XSvDI25tNlpRELcfVBXCKb+vRfUEdSjks=; 
 b=dFQTnbukODvJ272L2Xev50buLt/kQadssaH6YaHKPGQMKrdOMrZr4WNhc2grZoWy6XEWWenQsNJF6AyNleVL0LnVsjnf6pgraHf/fLQ0PtW8XQ+AV6xe7Sqw2va2ovBYrO/9a5weOgOOAZkjtPyctD4RLSpfeycKkRXpPIIoeSQ=;
X-UUID: 6b16fd91b5374d48b81eb8aa99747012-20191206
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 969719159; Fri, 06 Dec 2019 22:49:26 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Dec 2019 22:39:36 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 7 Dec 2019 14:38:50 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sat, 7 Dec 2019 14:38:44 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>
Subject: [PATCH v1 1/2] soc: mediatek: add header for SiP service interface
Date: Sat, 7 Dec 2019 14:39:07 +0800
Message-ID: <1575700748-28191-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1575700748-28191-1-git-send-email-stanley.chu@mediatek.com>
References: <1575700748-28191-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_224932_369274_72757ABC 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: leon.chen@mediatek.com, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a header for the SiP service interface defined to access
the UFSHCI controller handling secure commands in MediaTek Chipsets.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 include/linux/soc/mediatek/mtk_sip_svc.h | 26 ++++++++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
new file mode 100644
index 000000000000..7b69aa06f58d
--- /dev/null
+++ b/include/linux/soc/mediatek/mtk_sip_svc.h
@@ -0,0 +1,26 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ */
+
+#ifndef __MTK_SIP_SVC_H
+#define __MTK_SIP_SVC_H
+
+/* Error Code */
+#define SIP_SVC_E_SUCCESS               0
+#define SIP_SVC_E_NOT_SUPPORTED         -1
+#define SIP_SVC_E_INVALID_PARAMS        -2
+#define SIP_SVC_E_INVALID_RANGE         -3
+#define SIP_SVC_E_PERMISSION_DENIED     -4
+
+#ifdef CONFIG_ARM64
+#define MTK_SIP_SMC_AARCH_BIT           0x40000000
+#else
+#define MTK_SIP_SMC_AARCH_BIT           0x00000000
+#endif
+
+/* UFS related SMC call */
+#define MTK_SIP_UFS_CONTROL \
+	(0x82000276 | MTK_SIP_SMC_AARCH_BIT)
+
+#endif
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
