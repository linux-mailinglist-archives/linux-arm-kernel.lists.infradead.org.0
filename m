Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6185B1E8F82
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 10:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=USoHwbPXOnzpAvvvbdH/kLp7pLHyiBqEyRyCtwLKi0E=; b=XOm75ITL7QeVDI
	J/eqNleAY4lIf4QyehLwsqge5yeoTQWA53o4RtvMIa0Xz8mrk6ypLCNTlt5++q7VVSnCrwE2td8Sd
	BITecSEAf7y2b6a8Ba4rYslBtyJ2XTBzJXfiy2MzFWhUDqhtDqc+suFzWa5hQTzBTC75mzX6OsCcd
	UOgQ62gdKTwHenii8R2ARx3Y5JZfoG4lv3OUttrMvGMV22Nwd5TM3DehtSJL0gkcSgF3xiKHY8flo
	qiqtO6W2k9DSZGnQGzZOlgI3CiplNshPJEzjWK4KPZV2alWw5/PQ24EIpAPM5/t9GGMBY/Ov3ZAuj
	qPXlas0MWaCIUsJyeygw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jewd1-0005y0-Pq; Sat, 30 May 2020 08:14:03 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jewc9-0005WM-Lh; Sat, 30 May 2020 08:13:11 +0000
X-UUID: b47dd4dd7caf45f89665d0317c1687de-20200530
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=QagKBSo8QFwvJ//9sIEJ70vkMyQb9zwTGgIpL4HmXWw=; 
 b=ZIWmh0hgyzfM47NOPcGg87+tcwnyHfBZRpjX3V0Mr2sSm9gabqs3ADYzeTzJcEj+OZE5Js8DQ8KnwyhG8ACyzTU0vTN5A5IIB024c/9Ift7G37dCznt40QArPsvc58Oa0YXalnE+SldAa2bs9hMPFcbvg+/ejOyK+Rt0QxU0gsE=;
X-UUID: b47dd4dd7caf45f89665d0317c1687de-20200530
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1842063904; Sat, 30 May 2020 00:13:02 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 01:13:06 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 30 May 2020 16:13:03 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 30 May 2020 16:13:03 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Joerg Roedel <joro@8bytes.org>, 
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v4 05/17] memory: mtk-smi: Add device-link between smi-larb
 and smi-common
Date: Sat, 30 May 2020 16:10:06 +0800
Message-ID: <1590826218-23653-6-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
References: <1590826218-23653-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_011309_715100_31C538A3 
X-CRM114-Status: GOOD (  15.22  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 eizan@chromium.org, srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Robin Murphy <robin.murphy@arm.com>, acourbot@chromium.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Normally, If the smi-larb HW need work, we should enable the smi-common
HW power and clock firstly.
This patch adds device-link between the smi-larb dev and the smi-common
dev. then If pm_runtime_get_sync(smi-larb-dev), the pm_runtime_get_sync
(smi-common-dev) will be called automatically.

Also, Add DL_FLAG_STATELESS to avoid the smi-common clocks be gated when
probe.

CC: Matthias Brugger <matthias.bgg@gmail.com>
Suggested-by: Tomasz Figa <tfiga@chromium.org>
Signed-off-by: Yong Wu <yong.wu@mediatek.com>
---
 drivers/memory/mtk-smi.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index a113e81..6cdefda 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -273,6 +273,7 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *smi_node;
 	struct platform_device *smi_pdev;
+	struct device_link *link;
 
 	larb = devm_kzalloc(dev, sizeof(*larb), GFP_KERNEL);
 	if (!larb)
@@ -312,6 +313,12 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 		if (!platform_get_drvdata(smi_pdev))
 			return -EPROBE_DEFER;
 		larb->smi_common_dev = &smi_pdev->dev;
+		link = device_link_add(dev, larb->smi_common_dev,
+				       DL_FLAG_PM_RUNTIME | DL_FLAG_STATELESS);
+		if (!link) {
+			dev_err(dev, "Unable to link smi-common dev\n");
+			return -ENODEV;
+		}
 	} else {
 		dev_err(dev, "Failed to get the smi_common device\n");
 		return -EINVAL;
@@ -324,6 +331,9 @@ static int mtk_smi_larb_probe(struct platform_device *pdev)
 
 static int mtk_smi_larb_remove(struct platform_device *pdev)
 {
+	struct mtk_smi_larb *larb = platform_get_drvdata(pdev);
+
+	device_link_remove(&pdev->dev, larb->smi_common_dev);
 	pm_runtime_disable(&pdev->dev);
 	component_del(&pdev->dev, &mtk_smi_larb_component_ops);
 	return 0;
@@ -335,17 +345,9 @@ static int __maybe_unused mtk_smi_larb_resume(struct device *dev)
 	const struct mtk_smi_larb_gen *larb_gen = larb->larb_gen;
 	int ret;
 
-	/* Power on smi-common. */
-	ret = pm_runtime_get_sync(larb->smi_common_dev);
-	if (ret < 0) {
-		dev_err(dev, "Failed to pm get for smi-common(%d).\n", ret);
-		return ret;
-	}
-
 	ret = mtk_smi_clk_enable(&larb->smi);
 	if (ret < 0) {
 		dev_err(dev, "Failed to enable clock(%d).\n", ret);
-		pm_runtime_put_sync(larb->smi_common_dev);
 		return ret;
 	}
 
@@ -360,7 +362,6 @@ static int __maybe_unused mtk_smi_larb_suspend(struct device *dev)
 	struct mtk_smi_larb *larb = dev_get_drvdata(dev);
 
 	mtk_smi_clk_disable(&larb->smi);
-	pm_runtime_put_sync(larb->smi_common_dev);
 	return 0;
 }
 
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
