Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FEF11338EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 03:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZtF1rRYbdlOY+/fWVET1sEAIkGAhw2LFjxKRC5EpzY=; b=WcrihZXtffxpce
	0B/RjMRlMLnOMq+p5OFWn05DPWeStsGEjHEXMoiuMxAyjKr2Mm9S4lU6XCP/89BtCoihHgnUTE4YE
	mWy/GjCNbh1c6XVxsPtjia9TMBrtwx9iiOcZTmrh8A+/vQQHrYHHZWYr8em6d/IIULJo0Uhai2OGS
	RV5AlxF5MAu8rH52QIZbCC75wYzStW5EIIjBWX3Y9m58Twj2IMxq2X7t3jP6J6nvlI+7d0rLIO7tW
	fvledB44/iDT8lAdSTLHF8CN3QpytQR7xhL6Ynkf58rlngz5pqr2r1EJZq7yYtdRiYm/hNfyg/X/R
	9Jo99cZt7zPGe7aR736Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip0fM-0000qz-K3; Wed, 08 Jan 2020 02:01:48 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip0eh-0000IY-QB; Wed, 08 Jan 2020 02:01:09 +0000
X-UUID: f9a8693955164c7b8d76ef12e1853d2d-20200107
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=Tn+ocDgoE7quv83eopc3270X61VLoovrwR+4z9klDjM=; 
 b=UN/z2HQeaTRBMtzEN8N2YwZKlg2M08imkkVHjfba9dVlrUBTnaEdEcNhurpc/hwAKGZa6laqSTRPv8pQaB+Ge9SsZvmKQ16OO0lr5RrkR8r5fD8+SPpHfGM2aKFWDeTi/psFjkl+aY++3/spb3zBxr3ci81fS9x96IznyrxOR5M=;
X-UUID: f9a8693955164c7b8d76ef12e1853d2d-20200107
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 422800735; Tue, 07 Jan 2020 18:01:02 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 Jan 2020 17:53:10 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N1.mediatek.inc (172.27.4.69) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 Jan 2020 09:51:57 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 Jan 2020 09:53:07 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 10/11] phy: phy-mtk-tphy: add a new reference clock
Date: Wed, 8 Jan 2020 09:52:05 +0800
Message-ID: <1578448326-27455-10-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
References: <1578448326-27455-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 394569979869DFA0C5D2DE7AD80DFBA25B01A84F9741918F098C6E7299E92AFF2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_180107_855497_2545AF42 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Usually the digital and analog phys use the same reference clock,
but some platforms have two separate reference clocks for each of
them, so add another optional clock to support them.
In order to keep the clock names consistent with PHY IP's, change
the da_ref for analog phy and ref clock for digital phy.

Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
---
v3~v5: no changes

v2: fix typo of analog
---
 drivers/phy/mediatek/phy-mtk-tphy.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/phy/mediatek/phy-mtk-tphy.c b/drivers/phy/mediatek/phy-mtk-tphy.c
index c6424fd2a06d..cdbcc49f7115 100644
--- a/drivers/phy/mediatek/phy-mtk-tphy.c
+++ b/drivers/phy/mediatek/phy-mtk-tphy.c
@@ -298,7 +298,8 @@ struct mtk_phy_instance {
 		struct u2phy_banks u2_banks;
 		struct u3phy_banks u3_banks;
 	};
-	struct clk *ref_clk;	/* reference clock of anolog phy */
+	struct clk *ref_clk;	/* reference clock of (digital) phy */
+	struct clk *da_ref_clk;	/* reference clock of analog phy */
 	u32 index;
 	u8 type;
 	int eye_src;
@@ -925,6 +926,13 @@ static int mtk_phy_init(struct phy *phy)
 		return ret;
 	}
 
+	ret = clk_prepare_enable(instance->da_ref_clk);
+	if (ret) {
+		dev_err(tphy->dev, "failed to enable da_ref\n");
+		clk_disable_unprepare(instance->ref_clk);
+		return ret;
+	}
+
 	switch (instance->type) {
 	case PHY_TYPE_USB2:
 		u2_phy_instance_init(tphy, instance);
@@ -984,6 +992,7 @@ static int mtk_phy_exit(struct phy *phy)
 		u2_phy_instance_exit(tphy, instance);
 
 	clk_disable_unprepare(instance->ref_clk);
+	clk_disable_unprepare(instance->da_ref_clk);
 	return 0;
 }
 
@@ -1170,6 +1179,14 @@ static int mtk_tphy_probe(struct platform_device *pdev)
 			retval = PTR_ERR(instance->ref_clk);
 			goto put_child;
 		}
+
+		instance->da_ref_clk =
+			devm_clk_get_optional(&phy->dev, "da_ref");
+		if (IS_ERR(instance->da_ref_clk)) {
+			dev_err(dev, "failed to get da_ref_clk(id-%d)\n", port);
+			retval = PTR_ERR(instance->da_ref_clk);
+			goto put_child;
+		}
 	}
 
 	provider = devm_of_phy_provider_register(dev, mtk_phy_xlate);
-- 
2.24.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
