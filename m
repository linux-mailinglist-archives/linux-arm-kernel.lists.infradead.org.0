Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 186361EF86B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 14:56:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7bB1iY4PA/uUYW6NStWPBgH0Sor+6sE2AHkAc+V+HT0=; b=JNZcntMZ3MaBKt
	CKpZ9AMtK/zJfWQpJx6HL0/xNMEUvNzE4AFKd2PHRajY5aa00nVuzMOHkasKr6OsuYntMJTLuJtFM
	GAijTKfxrayw8N/nyAnWRRuw6HWbhpqWPvpd5YUQSLa+FMd3KJWJfXfJjVhbRlE6NWXQVw2XkSkt6
	oNxpRaobG4LuTqiS1FboQhzQWqVeY0GMiQBqxivG4KIudmcwIWZBEooxiI2+DQ+nxBOob/w/nXA2y
	7Zjn4XjfrYNMlWGZo4ko7GLn/CzrbtBqj743NIEcoe7oRPxHK47T71at6KTFZdoC1hw79yeACtcxJ
	egjq0UU5PGD7H3BI5hPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jhBtW-0003CJ-B6; Fri, 05 Jun 2020 12:56:22 +0000
Received: from smtp2207-205.mail.aliyun.com ([121.197.207.205])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhBt3-0002zi-WA; Fri, 05 Jun 2020 12:55:56 +0000
X-Alimail-AntiSpam: AC=CONTINUE; BC=0.1869643|-1; CH=green; DM=|CONTINUE|false|;
 DS=CONTINUE|ham_social|0.00106272-0.000406173-0.998531; FP=0|0|0|0|0|-1|-1|-1;
 HT=e02c03294; MF=frank@allwinnertech.com; NM=1; PH=DS; RN=13; RT=13; SR=0;
 TI=SMTPD_---.Hib7hso_1591361738; 
Received: from allwinnertech.com(mailfrom:frank@allwinnertech.com
 fp:SMTPD_---.Hib7hso_1591361738)
 by smtp.aliyun-inc.com(10.147.41.143);
 Fri, 05 Jun 2020 20:55:47 +0800
From: Frank Lee <frank@allwinnertech.com>
To: chaotian.jing@mediatek.com, ulf.hansson@linaro.org, matthias.bgg@gmail.com,
 mripard@kernel.org, wens@csie.org, tiny.windzz@gmail.com, rmfrfs@gmail.com,
 frank@allwinnertech.com, marex@denx.de, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] mmc: mediatek: do not hide address in
 msdc_request_timeout()
Date: Fri,  5 Jun 2020 20:55:45 +0800
Message-Id: <20200605125545.31974-2-frank@allwinnertech.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20200605125545.31974-1-frank@allwinnertech.com>
References: <20200605125545.31974-1-frank@allwinnertech.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_055554_221760_FF0E2262 
X-CRM114-Status: UNSURE (   8.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [121.197.207.205 listed in list.dnswl.org]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yangtao Li <tiny.windzz@gmail.com>

Using %px to show the actual address in msdc_request_timeout()
to help us to debug issue.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
Signed-off-by: Frank Lee <frank@allwinnertech.com>
---
 drivers/mmc/host/mtk-sd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 39e7fc54c438..28b4a136fc72 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -1411,7 +1411,7 @@ static void msdc_request_timeout(struct work_struct *work)
 	/* simulate HW timeout status */
 	dev_err(host->dev, "%s: aborting cmd/data/mrq\n", __func__);
 	if (host->mrq) {
-		dev_err(host->dev, "%s: aborting mrq=%p cmd=%d\n", __func__,
+		dev_err(host->dev, "%s: aborting mrq=%px cmd=%d\n", __func__,
 				host->mrq, host->mrq->cmd->opcode);
 		if (host->cmd) {
 			dev_err(host->dev, "%s: aborting cmd=%d\n",
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
