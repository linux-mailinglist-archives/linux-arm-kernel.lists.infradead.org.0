Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E821522646
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 May 2019 09:57:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=18yVVoh3vK7h+WsgcSBV3s0cSzwJlQxs3MXgIEGvjLw=; b=LJBOE+snn0TobB
	Ogjzru3JV9SgV3S/7cp8/XXN4OI15qBnQBgUemnRlCAmVeT84hHTddJuz9q3A/SoaPQT+QC837DcK
	kkr1kny63BuVd+at209lQROBZkRMgDbCULIQ8PWhoR5S6Qxr2ql0OYzDW2QGlRiwmDPP2mXkdFedR
	fhtU/v0PmKtbZgKan9VbHHWY/lz8BzhwZENZN8pv6KKoq6lDCo5ayFa6pnG7Qb4i/qzECUBv9XhFK
	v16VmA1nmGmeMzj0dmb8RNeIu6VyieiC4M3XRgc+IGxZ2XqzZn1GrSjqi4bCc4txy2sluDDNGwaJa
	ET7Co6griEyv/wthrzng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSGhS-0004rn-Vj; Sun, 19 May 2019 07:57:42 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSGhK-0004qJ-PU; Sun, 19 May 2019 07:57:37 +0000
X-UUID: 70e5c1d19ed54e0c849a55df4c0372c1-20190518
X-UUID: 70e5c1d19ed54e0c849a55df4c0372c1-20190518
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 606343033; Sat, 18 May 2019 23:57:25 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 00:57:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 19 May 2019 15:57:22 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 19 May 2019 15:57:22 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 1/2] mmc: mediatek: fix controller busy when plug out SD
Date: Sun, 19 May 2019 15:57:16 +0800
Message-ID: <1558252637-10556-2-git-send-email-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
References: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_005734_830778_F8B9C22A 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Chaotian Jing <chaotian.jing@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

when plug out SD card, may get data CRC error, the MMC core will issue
CMD13 to get card status, then CMD13 timeout(due to card plug out) will
trigger CMD19 tuning, first CMD19 timeout has not call msdc_reset_hw()
and cause the next CMD19 gets controller busy.

Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index c518cc2..7d8502a 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -1077,11 +1077,13 @@ static bool msdc_cmd_done(struct msdc_host *host, int events,
 	}
 
 	if (!sbc_error && !(events & MSDC_INT_CMDRDY)) {
-		if (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
-		    cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200)
+		if (events & MSDC_INT_CMDTMO ||
+		    (cmd->opcode != MMC_SEND_TUNING_BLOCK &&
+		     cmd->opcode != MMC_SEND_TUNING_BLOCK_HS200))
 			/*
 			 * should not clear fifo/interrupt as the tune data
-			 * may have alreay come.
+			 * may have alreay come when cmd19/cmd21 gets response
+			 * CRC error.
 			 */
 			msdc_reset_hw(host);
 		if (events & MSDC_INT_RSPCRCERR) {
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
