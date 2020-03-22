Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 236EC18E76A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 22 Mar 2020 08:58:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uQ+/db1PWAAyUPDM/7y6vnJyNptWTJVh9Erl/YNQUC4=; b=VmAbVxbNVtfMhs
	Db6GPcGdHSn0mTGFzYSFwRk+k5Rz5qHm+bhFUryppmsqdSboEwiZwpqhyazdoU2grTecwZdSketwL
	UOC6B0EKBdloKi+sYCX01ZfRTy4WKhEtF0xrul1rPeMbpidcP0ankrX1aDG4Zud+HJ0uz3NIxFbjS
	LhmWGOIXOaZsn5UWmNuuRWEG25TS15ht5IsLgHitYGYknHNROzkTk2lQGpAX5tt9V5qqtyZYKJdkt
	Ell17y7AS1V8wEf3stYxzXJqqXwPBwD1Av43QMb7kVrOeC/F6I3qlLyUeqpS2lnvmphOVpARBpK9K
	H7dPtEE6dk2/e4b5/GrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFvUw-000724-Hr; Sun, 22 Mar 2020 07:58:18 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFvUo-000718-7B; Sun, 22 Mar 2020 07:58:11 +0000
X-UUID: 4d1a11276a3e4eb2af82efa8ad4a840d-20200321
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=0SlVnuKkPvNl1cm3aUi1MmMi33v297Tf8W2wHp9Pizo=; 
 b=kCX+VHSmjz8Oheiluq9K3FRV4n8ws6KT9oEWXJIM7yKyOGUkPeZQRxVrhNLD5OnxV4ROy59Qcgij8wK0QkmwTIix3zIEIEcGOWnY9HIoN5VTsOOOvaqLVsUz0Y24h4t18UCwmFEqxf4zIK4sxIwJTjxicaZpls4HLkNx+iphPVQ=;
X-UUID: 4d1a11276a3e4eb2af82efa8ad4a840d-20200321
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <gtk_ruiwang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1659629673; Sat, 21 Mar 2020 23:58:01 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Mar 2020 00:57:59 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 22 Mar 2020 15:55:24 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 22 Mar 2020 15:58:07 +0800
From: <gtk_ruiwang@mediatek.com>
To: Hans Verkuil <hverkuil@xs4all.nl>, Alexandre Courbot
 <acourbot@chromium.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>, Tomasz Figa
 <tfiga@chromium.org>, <linux-media@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] media: mtk-vpu: load vpu firmware from the new location
Date: Sun, 22 Mar 2020 15:57:45 +0800
Message-ID: <20200322075745.6133-1-gtk_ruiwang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_005810_267395_44C71E65 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Maoguang Meng <maoguang.meng@mediatek.com>, srv_heupstream@mediatek.com,
 gtk_ruiwang@mediatek.com, Erin Lo <erin.lo@mediatek.com>, Houlong
 Wei <houlong.wei@mediatek.com>, Sj Huang <sj.huang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: gtk_ruiwang <gtk_ruiwang@mediatek.com>

mt8173 VPU firmware has been moved to a sub-folder of
linux-firmware, so load vpu-fw from the new location first,
if it fails, then from the old one.

Signed-off-by: Rui Wang <gtk_ruiwang@mediatek.com>
---
 drivers/media/platform/mtk-vpu/mtk_vpu.c | 16 +++++++++++++---
 1 file changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/media/platform/mtk-vpu/mtk_vpu.c b/drivers/media/platform/mtk-vpu/mtk_vpu.c
index a768707abb94..89274842e07b 100644
--- a/drivers/media/platform/mtk-vpu/mtk_vpu.c
+++ b/drivers/media/platform/mtk-vpu/mtk_vpu.c
@@ -46,6 +46,8 @@
 /* binary firmware name */
 #define VPU_P_FW		"vpu_p.bin"
 #define VPU_D_FW		"vpu_d.bin"
+#define VPU_P_FW_NEW		"mediatek/mt8173/vpu_p.bin"
+#define VPU_D_FW_NEW		"mediatek/mt8173/vpu_d.bin"
 
 #define VPU_RESET		0x0
 #define VPU_TCM_CFG		0x0008
@@ -477,16 +479,24 @@ static int load_requested_vpu(struct mtk_vpu *vpu,
 	size_t tcm_size = fw_type ? VPU_DTCM_SIZE : VPU_PTCM_SIZE;
 	size_t fw_size = fw_type ? VPU_D_FW_SIZE : VPU_P_FW_SIZE;
 	char *fw_name = fw_type ? VPU_D_FW : VPU_P_FW;
+	char *fw_new_name = fw_type ? VPU_D_FW_NEW : VPU_P_FW_NEW;
 	const struct firmware *vpu_fw;
 	size_t dl_size = 0;
 	size_t extra_fw_size = 0;
 	void *dest;
 	int ret;
 
-	ret = request_firmware(&vpu_fw, fw_name, vpu->dev);
+	ret = request_firmware(&vpu_fw, fw_new_name, vpu->dev);
 	if (ret < 0) {
-		dev_err(vpu->dev, "Failed to load %s, %d\n", fw_name, ret);
-		return ret;
+		dev_info(vpu->dev, "Failed to load %s, %d, retry\n",
+			 fw_new_name, ret);
+
+		ret = request_firmware(&vpu_fw, fw_name, vpu->dev);
+		if (ret < 0) {
+			dev_err(vpu->dev, "Failed to load %s, %d\n", fw_name,
+				ret);
+			return ret;
+		}
 	}
 	dl_size = vpu_fw->size;
 	if (dl_size > fw_size) {
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
