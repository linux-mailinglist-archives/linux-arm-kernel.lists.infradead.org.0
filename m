Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F9A1E97A0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 09:09:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3RL8OnMIGlaw1X0yftyB8CYjquVDXlmoWJIXWW5mFwE=; b=IBPjq4Ipe4zfrt
	z+czwXELeDtUEjjS7S5Emw9wqkhMlGCFY/by+6wkXXgXrLN+Lc09BPMCM19FAtMGT5aXGQL8GOIbE
	HCLWcNU/EBAnoifqUnmSERy07MlLdqOGgT/AiuZXRPP3htYtqXh2qk5P6Dzlt/O6Jj6ma8q3UqB8v
	2IfCQkb/zn/GmcoNq1N3DHtGyJ35rT9JY77kwgoj0oFVwKAr7kImQ0A7u4mfQsuZgVqQK9WmI7tba
	04hHZy8FwWhiJNn6SOdgOsbbc82Kc2+7jQajbFz7L8WVHv/n6xx92nRaVbTUUTrmSmKi7nDz5s9SO
	hz7oJseOTH4aJqgT6lsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPj2S-0004a6-5M; Wed, 30 Oct 2019 08:09:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPj23-0004M4-2l; Wed, 30 Oct 2019 08:08:44 +0000
X-UUID: 7640225c4a25481e94ce0a9a72b2c247-20191030
X-UUID: 7640225c4a25481e94ce0a9a72b2c247-20191030
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <luhua.xu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 630928706; Wed, 30 Oct 2019 00:08:50 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 30 Oct 2019 01:08:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 30 Oct 2019 16:08:30 +0800
Received: from localhost.localdomain (10.15.20.246) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 30 Oct 2019 16:08:29 +0800
From: Luhua Xu <luhua.xu@mediatek.com>
To: Mark Brown <broonie@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH V2] spi: add power control when set_cs
Date: Wed, 30 Oct 2019 16:08:16 +0800
Message-ID: <1572422896-29487-1-git-send-email-luhua.xu@mediatek.com>
X-Mailer: git-send-email 2.6.4
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_010843_158286_269BFCF2 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, Luhua Xu <luhua.xu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Luhua Xu" <luhua.xu@mediatek.com>

As to set_cs takes effect immediately, power spi
is needed when setup spi.

Signed-off-by: Luhua Xu <luhua.xu@mediatek.com>
---
V2:
- move set_cs PM control from .set_cs callback in
  vendor driver to spi_setup in spi framework


 drivers/spi/spi.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index f9502db..19007e0 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -3091,7 +3091,20 @@ int spi_setup(struct spi_device *spi)
 	if (spi->controller->setup)
 		status = spi->controller->setup(spi);
 
-	spi_set_cs(spi, false);
+	if (spi->controller->auto_runtime_pm && spi->controller->set_cs) {
+		status = pm_runtime_get_sync(spi->controller->dev.parent);
+		if (status < 0) {
+			pm_runtime_put_noidle(spi->controller->dev.parent);
+			dev_err(&spi->controller->dev, "Failed to power device: %d\n",
+				status);
+			return status;
+		}
+		spi_set_cs(spi, false);
+		pm_runtime_mark_last_busy(spi->controller->dev.parent);
+		pm_runtime_put_autosuspend(spi->controller->dev.parent);
+	} else {
+		spi_set_cs(spi, false);
+	}
 
 	if (spi->rt && !spi->controller->rt) {
 		spi->controller->rt = true;
-- 
2.6.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
