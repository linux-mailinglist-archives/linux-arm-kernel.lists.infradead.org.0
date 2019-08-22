Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D631598B96
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:49:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+DeQFFpY7x4LcqstXG9DnS4SL8dRFxjjecDbzxO/s8c=; b=qho2qVJOzZTncv
	AztdifesN7Sa6Q/OQrqcN9GZID+SxYmjBhBd6JgIrJ+DKQCdnIipW+VAC5wOVPHavRO1TFWriTzl/
	i0zuH8Btm0UVJLtNt/Q/LdLgfhFGhRiqzx7rUCl9es8aRIRnNkQe8LPLa6xTiVi8NDOegE6E81hWu
	bo2K6vyweDMXx9lZcaBdlaoKW7qeZTLxBobMXh6ohHTo0gQIHo/OKgYJVNmaGSWUeD8rUP40H2NHd
	wxde6xJmtNnhj7GiOnNPtD4Kt7BfmlEitK585Ex6daIGUQjaHvg2GnnLeQJJfOzOrweFP532YZzul
	RmVpwfeA4+Sx2/hDAJIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0guo-0002QX-Q5; Thu, 22 Aug 2019 06:49:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gt1-0001rZ-3c; Thu, 22 Aug 2019 06:47:59 +0000
X-UUID: 9e38ecc491a842d1b2b2f39734e16aec-20190821
X-UUID: 9e38ecc491a842d1b2b2f39734e16aec-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 728045430; Wed, 21 Aug 2019 22:47:45 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 23:47:44 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 22 Aug 2019 14:47:42 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 22 Aug 2019 14:47:42 +0800
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Subject: [PATCH 1/2] mmc: mediatek: fix controller busy when plug out SD
Date: Thu, 22 Aug 2019 14:47:40 +0800
Message-ID: <20190822064741.11196-2-chaotian.jing@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190822064741.11196-1-chaotian.jing@mediatek.com>
References: <20190822064741.11196-1-chaotian.jing@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_234755_639572_B088FE88 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index 33f4b6387ef7..5cc422e5db69 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -1071,11 +1071,13 @@ static bool msdc_cmd_done(struct msdc_host *host, int events,
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
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
