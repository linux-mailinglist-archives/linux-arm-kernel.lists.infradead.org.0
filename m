Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C015453F6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 07:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jAj6NKrLCbG65pOCBnN+hH470zzX7fNGuPQIq5BMJqw=; b=BVpuM7qXDKlIFl
	iA+z7eqXAmZcO7GN5ulOhTv4L5LBjx9NTUB+n4AnO6W7fOKqv9zGLlGKNBPYCcwGAgjKt04ThDkki
	Yo5oTuo44Z1O2+5KrKDrq7LJsqRD15erGNus0POUV11wj0XVqppoW6wISNRIO+c6t1kB8RkKhlOEj
	3Km3Dtghymd/j7Ylc1xit7c+vehDfU0KshZ0GpxuSiX6FvAR6OG7xQVckqDoRcXFbZqhKf3KaJX/l
	KW5q5gcb/VP+JZ5PoxhHHJY5bYJPv+5UDYcvNoUn30krypDi5FUn3wkwxHwtOKeyT9Gxm/6eHel2a
	XA8huMqMlf4Tv3Tlby+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbejw-0000VS-8l; Fri, 14 Jun 2019 05:27:04 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbejn-0000Uc-1A; Fri, 14 Jun 2019 05:26:56 +0000
X-UUID: d398ca302804405a88a05acff46509e1-20190613
X-UUID: d398ca302804405a88a05acff46509e1-20190613
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jjian.zhou@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 82122309; Thu, 13 Jun 2019 21:26:19 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Jun 2019 22:26:17 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Jun 2019 13:26:16 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Jun 2019 13:26:15 +0800
From: Jjian Zhou <jjian.zhou@mediatek.com>
To: <ulf.hansson@linaro.org>, <chaotian.jing@mediatek.com>,
 <matthias.bgg@gmail.com>, <linux-mmc@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-mediatek@lists.infradead.org>, 
 <linux-kernel@vger.kernel.org>
Subject: [PATCH 2/2] mmc: mediatek: fix SDIO IRQ detection issue
Date: Fri, 14 Jun 2019 13:26:10 +0800
Message-ID: <1560489970-30467-2-git-send-email-jjian.zhou@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
References: <1560489970-30467-1-git-send-email-jjian.zhou@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_222655_075789_017C3236 
X-CRM114-Status: UNSURE (   7.66  )
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
Cc: jjian zhou <jjian.zhou@mediatek.com>, srv_heupstream@mediatek.com,
 yong.mao@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: jjian zhou <jjian.zhou@mediatek.com>

If cmd19 timeout or response crcerr occurs during execute_tuning(),
it need invoke msdc_reset_hw(). Otherwise SDIO IRQ can't be detected.

Signed-off-by: jjian zhou <jjian.zhou@mediatek.com>
Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
Signed-off-by: Yong Mao <yong.mao@mediatek.com>
---
 drivers/mmc/host/mtk-sd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/host/mtk-sd.c b/drivers/mmc/host/mtk-sd.c
index 29992ae..df8f09d 100644
--- a/drivers/mmc/host/mtk-sd.c
+++ b/drivers/mmc/host/mtk-sd.c
@@ -1031,6 +1031,8 @@ static void msdc_request_done(struct msdc_host *host, struct mmc_request *mrq)
 	msdc_track_cmd_data(host, mrq->cmd, mrq->data);
 	if (mrq->data)
 		msdc_unprepare_data(host, mrq);
+	if (host->error)
+		msdc_reset_hw(host);
 	mmc_request_done(host->mmc, mrq);
 }

--
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
