Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C6511FD63
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 04:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5lwAZnFtTVESi++W+60GdXo6+hS0Om20xhwulxVP7v0=; b=MuKgyrmTU+4QMJ
	ZeTgjYtjoxElzv3pgyFe2xgPZoBmPZ8xj05MqrMgHIZnvyte9L4nGHYSojwbmT02E6rtllGcc2/9d
	myo+3aVn9Z8znO/J+xzKvce2M756+0ONtTPP2WvhEe0cBEwZuVamL1gNuxTzBBmbeWDD6bZ2MAnST
	8rqcfYlQKpDlqXP1cjP8YtvEx99xp6a/LgCLDXI1+tciDYaX3muqJ74OfgEXkEB6I36GSHXEUalaf
	GOseICEvdUUxgLpdEY5t1+Gx1OnvpqirpmS5WWDYI7hTHvdtAJC9ykCzAILOCDAFhLL6Wyed1vqiY
	l78sauWUr4oAf5UTJqqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ighXf-00035l-SE; Mon, 16 Dec 2019 03:59:31 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ighXB-0002pW-RN; Mon, 16 Dec 2019 03:59:03 +0000
X-UUID: 9910396fcb464278a48bd4e8bb5f8623-20191215
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=12E3/w0zLzo1lHYmnmqiu5tF62G08uQTQTzZ3/Kf2H4=; 
 b=Hcg4n26TzyXS2za9aCm9jXFWqGKH+nprJ8AKZgv48EIE7QYfOVTj+i06ntAOWFkNnxAYzOQmTOmKwtQQRdhgwfEeFuhR5zWUVC/mRMWDE0GEHYg4Mm914Bksb3rTUHEfREnfCVT/WuUIeoNhNdHqI/UeBCNW0innOCA0JB1EDbA=;
X-UUID: 9910396fcb464278a48bd4e8bb5f8623-20191215
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2098847578; Sun, 15 Dec 2019 19:58:59 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 15 Dec 2019 19:50:08 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 11:48:36 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Dec 2019 11:48:59 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>,
 <pedrom.sousa@synopsys.com>, <jejb@linux.ibm.com>, <matthias.bgg@gmail.com>,
 <f.fainelli@gmail.com>
Subject: [PATCH v2 1/2 RESEND] soc: mediatek: add header for SiP service
 interface
Date: Mon, 16 Dec 2019 11:48:56 +0800
Message-ID: <1576468137-17220-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
References: <1576468137-17220-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_195901_894409_592539B2 
X-CRM114-Status: UNSURE (   8.91  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Add a header for the SiP service interface in order to access
the UFSHCI controller for secure command handling in MediaTek Chipsets.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 include/linux/soc/mediatek/mtk_sip_svc.h | 29 ++++++++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 include/linux/soc/mediatek/mtk_sip_svc.h

diff --git a/include/linux/soc/mediatek/mtk_sip_svc.h b/include/linux/soc/mediatek/mtk_sip_svc.h
new file mode 100644
index 000000000000..97311959d7d7
--- /dev/null
+++ b/include/linux/soc/mediatek/mtk_sip_svc.h
@@ -0,0 +1,29 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Copyright (C) 2019 MediaTek Inc.
+ */
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
+#define MTK_SIP_SMC_CONVENTION          ARM_SMCCC_SMC_64
+#else
+#define MTK_SIP_SMC_CONVENTION          ARM_SMCCC_SMC_32
+#endif
+
+#define MTK_SIP_SMC_CMD(fn_id) \
+	ARM_SMCCC_CALL_VAL(ARM_SMCCC_FAST_CALL, MTK_SIP_SMC_CONVENTION, \
+			   ARM_SMCCC_OWNER_SIP, fn_id)
+
+/* UFS related SMC call */
+#define MTK_SIP_UFS_CONTROL \
+	MTK_SIP_SMC_CMD(0x276)
+
+#endif
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
