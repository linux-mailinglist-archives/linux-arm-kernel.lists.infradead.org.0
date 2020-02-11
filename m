Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0079E1588DA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 04:33:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3RN2nAh7sHc5v8lf4BenlJmQMhxUZyD7BXltNITJ2Lo=; b=oxw6nFa79AOo0T
	oj0Km8uOIO7fPxedrn9t4p+wi2ToQoSLvulTHqFsRqEFRlfTec7uQSQOuIjEvntTvyzRkUwqaiUoH
	FwEv7QOvpu8P4G4X4tsg7nCejAhoUsgaGJttaJa6CCf4ooD4XDsTViW/3I6yDazgTfqE3RzHo0a9Y
	3HL0Xbnly+YFXFYewt3WSkE2nrf7CBmHj0dnbtx0A1Qgm3ecN6ZZPRvMHZFKybQfdQW+HHbK9ZOHz
	Vq7f3RyvVOxKdjpd7iRLOJ6ktST9f4DXjP9x749sENu0t9j/D3zYV1T0JEmj+bfZgyol+HkseTlZC
	YLAdWzYfgg5DR1L4hrBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1MIP-0006Wd-K6; Tue, 11 Feb 2020 03:33:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1MHQ-0005fh-0M; Tue, 11 Feb 2020 03:32:09 +0000
X-UUID: 095c582d2ab548a5ae345801b903bb95-20200210
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=A6qxK858W87X2ZTHmHr6KHIdkb1675UGNWHnxzj5b+0=; 
 b=AYoIZvkjFQzg7Y4GtTqYIDqtgi1Mjon5tV2cObvK2ZOU94JSmFAapE7aWb+N6R04lQuFVEuLIDdl9fXMWoKBx8v8SWAdxgO4VoNPZ3XJE2LUvgfML7oo+ZVVodMfedIaUtk0K6LCZAdeYM7+A+wj2jHhyjQ4GTR+vTX4L8VUpUo=;
X-UUID: 095c582d2ab548a5ae345801b903bb95-20200210
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 521949387; Mon, 10 Feb 2020 19:32:01 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Feb 2020 19:22:00 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 11 Feb 2020 11:20:31 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 11 Feb 2020 11:21:03 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Kishon Vijay Abraham I <kishon@ti.com>
Subject: [RESEND PATCH v5 10/11] phy: phy-mtk-tphy: add a new reference clock
Date: Tue, 11 Feb 2020 11:21:15 +0800
Message-ID: <351551520d485cc312f18468c50bd8045febf4a2.1581389234.git.chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <bfcf6a4dd6829dfa1bd0119b34043db7364dfd8e.1581389234.git.chunfeng.yun@mediatek.com>
References: <bfcf6a4dd6829dfa1bd0119b34043db7364dfd8e.1581389234.git.chunfeng.yun@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 721C335FC361EA2317E27FEFAF26EC8404961C0ADB8AB87EA6DF7862BA28B5D82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_193208_076560_7E91273E 
X-CRM114-Status: GOOD (  13.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
2.25.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
