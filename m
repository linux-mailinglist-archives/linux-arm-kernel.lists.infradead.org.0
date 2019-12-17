Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D7FF1222E3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 05:13:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PGKlOH7R1bnENpelz58x4cHf7viyQNkoZ6EoA6ZcGX0=; b=tg2Lp5S7jx/PO3
	WK7MrGHwxDG+NzshMPeDp5jMfreOmhGQE2EwxJyvAtzWEkkkMUFfWbIpErfHxKRPAVUUVbwzl1nt5
	BKjlU1lxIastAe79/ggvJRzgB8ZYrhNgHstFOK4n+HWIWgsEgQbwjrpinF1EuracRLdqAd2t62rUl
	SW5DApSmABH9As1uSjbQLouD3zgIE1d9GrsN96kcKdc9Ac8ji+BVUb0wlEu2bpygc7K8RrOvld2jg
	PzX/fzV0GclXR6A8WlpsFr8YRND3qqeowxnXzOcy5sl2HxQo+/NKXUdEPlMXJMYb3f5OFBk3wCq2D
	RHK9agMHlWS49a29wUHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih4EO-0002OW-Jv; Tue, 17 Dec 2019 04:13:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih4Dy-0002C6-7W; Tue, 17 Dec 2019 04:12:43 +0000
X-UUID: 2df27680f1844217be60020583f553aa-20191216
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=NXAXywe6bG/ogKzjc7bR2k8BXtOTUM9mI6/1bMTQUeg=; 
 b=FSgOH8Zdv8Gh5UoXzMLCPz6QTEOUr9uJk8BOevVhavH99x7Z5OP24DtFLAXpbv3/XLyFy7TShpJOO8sLht7OhR/uLdV+w+bHGhQU++r2h39S18EV/bCM3JVCSty0wQk8eUWhdusGdTytYIjKtLw9yN+ig5TXdKXz6Agy+SoqD04=;
X-UUID: 2df27680f1844217be60020583f553aa-20191216
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1048344974; Mon, 16 Dec 2019 20:12:37 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Dec 2019 20:02:53 -0800
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 17 Dec 2019 11:59:58 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Tue, 17 Dec 2019 12:02:11 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Thierry Reding <thierry.reding@gmail.com>, Uwe Kleine-Koenig
 <u.kleine-koenig@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 <linux-pwm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 1/2] pwm: mtk_disp: fix pwm clocks not poweroff when
 disable pwm
Date: Tue, 17 Dec 2019 12:02:36 +0800
Message-ID: <20191217040237.28238-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191217040237.28238-1-jitao.shi@mediatek.com>
References: <20191217040237.28238-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C64F1CCDD6C51B102A0764C8E6E30B3F9EB8E77F9E408CAA7B83AB79D34817F42000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_201242_290221_9B9116F9 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clocks of pwm are still in prepare state when disable pwm.

Because the clocks is prepared in mtk_disp_pwm_probe() and unprepared
in mtk_disp_pwm_remove().

clk_prepare and clk_unprepare aren't called by mtk_disp_pwm_enable()
and mtk_disp_pwm_disable().

Modified:
So clk_enable() is instread with clk_prepare_enable().
clk_disable() is instread with clk_disable_unprepare().

And remove the clk_prepare() from mtk_disp_pwm_probe(),
remove the clk_unprepare from mtk_disp_pwm_remove().

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/pwm/pwm-mtk-disp.c | 43 +++++++++++---------------------------
 1 file changed, 12 insertions(+), 31 deletions(-)

diff --git a/drivers/pwm/pwm-mtk-disp.c b/drivers/pwm/pwm-mtk-disp.c
index 83b8be0209b7..c7b14acc9316 100644
--- a/drivers/pwm/pwm-mtk-disp.c
+++ b/drivers/pwm/pwm-mtk-disp.c
@@ -98,13 +98,13 @@ static int mtk_disp_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 	high_width = div64_u64(rate * duty_ns, div);
 	value = period | (high_width << PWM_HIGH_WIDTH_SHIFT);
 
-	err = clk_enable(mdp->clk_main);
+	err = clk_prepare_enable(mdp->clk_main);
 	if (err < 0)
 		return err;
 
-	err = clk_enable(mdp->clk_mm);
+	err = clk_prepare_enable(mdp->clk_mm);
 	if (err < 0) {
-		clk_disable(mdp->clk_main);
+		clk_disable_unprepare(mdp->clk_main);
 		return err;
 	}
 
@@ -124,8 +124,8 @@ static int mtk_disp_pwm_config(struct pwm_chip *chip, struct pwm_device *pwm,
 					 0x0);
 	}
 
-	clk_disable(mdp->clk_mm);
-	clk_disable(mdp->clk_main);
+	clk_disable_unprepare(mdp->clk_mm);
+	clk_disable_unprepare(mdp->clk_main);
 
 	return 0;
 }
@@ -135,13 +135,13 @@ static int mtk_disp_pwm_enable(struct pwm_chip *chip, struct pwm_device *pwm)
 	struct mtk_disp_pwm *mdp = to_mtk_disp_pwm(chip);
 	int err;
 
-	err = clk_enable(mdp->clk_main);
+	err = clk_prepare_enable(mdp->clk_main);
 	if (err < 0)
 		return err;
 
-	err = clk_enable(mdp->clk_mm);
+	err = clk_prepare_enable(mdp->clk_mm);
 	if (err < 0) {
-		clk_disable(mdp->clk_main);
+		clk_disable_unprepare(mdp->clk_main);
 		return err;
 	}
 
@@ -158,8 +158,8 @@ static void mtk_disp_pwm_disable(struct pwm_chip *chip, struct pwm_device *pwm)
 	mtk_disp_pwm_update_bits(mdp, DISP_PWM_EN, mdp->data->enable_mask,
 				 0x0);
 
-	clk_disable(mdp->clk_mm);
-	clk_disable(mdp->clk_main);
+	clk_disable_unprepare(mdp->clk_mm);
+	clk_disable_unprepare(mdp->clk_main);
 }
 
 static const struct pwm_ops mtk_disp_pwm_ops = {
@@ -194,14 +194,6 @@ static int mtk_disp_pwm_probe(struct platform_device *pdev)
 	if (IS_ERR(mdp->clk_mm))
 		return PTR_ERR(mdp->clk_mm);
 
-	ret = clk_prepare(mdp->clk_main);
-	if (ret < 0)
-		return ret;
-
-	ret = clk_prepare(mdp->clk_mm);
-	if (ret < 0)
-		goto disable_clk_main;
-
 	mdp->chip.dev = &pdev->dev;
 	mdp->chip.ops = &mtk_disp_pwm_ops;
 	mdp->chip.base = -1;
@@ -210,7 +202,7 @@ static int mtk_disp_pwm_probe(struct platform_device *pdev)
 	ret = pwmchip_add(&mdp->chip);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "pwmchip_add() failed: %d\n", ret);
-		goto disable_clk_mm;
+		return ret;
 	}
 
 	platform_set_drvdata(pdev, mdp);
@@ -229,24 +221,13 @@ static int mtk_disp_pwm_probe(struct platform_device *pdev)
 	}
 
 	return 0;
-
-disable_clk_mm:
-	clk_unprepare(mdp->clk_mm);
-disable_clk_main:
-	clk_unprepare(mdp->clk_main);
-	return ret;
 }
 
 static int mtk_disp_pwm_remove(struct platform_device *pdev)
 {
 	struct mtk_disp_pwm *mdp = platform_get_drvdata(pdev);
-	int ret;
-
-	ret = pwmchip_remove(&mdp->chip);
-	clk_unprepare(mdp->clk_mm);
-	clk_unprepare(mdp->clk_main);
 
-	return ret;
+	return pwmchip_remove(&mdp->chip);
 }
 
 static const struct mtk_pwm_data mt2701_pwm_data = {
-- 
2.21.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
