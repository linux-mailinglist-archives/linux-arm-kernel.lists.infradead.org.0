Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A725E1FE97B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 05:34:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nJIulBmvUAwYDUMd9uwY8zwPoVsrzQs7GG5GG9/J4HQ=; b=kcARPRlX4REdyRyRCvCZStqFA8
	PWM1jV7P+US8sC2thltAbhGR+Q0ZwbFfrB3w6kVPzsUPLOAsqftNJ/NsRsAe1lQ182/91uZBhhiRl
	uG8QZZA2eqDSBp+Vv8+LtSI5mkkZURqzKl9G1UuitavF5WvzltRNPDRP5taNxAS9wmdnzdcYJ5Ms3
	PubDepCI0wTIOEqCPHRvFjLnMiCJS5JoqiJWW5nKfMZE6y3xfCLlVBxP07lOS0teQ4cGbjMsxez5G
	RMzTid+/vkLKrlwEKcJc4CKf98lax7AnkYtXDTn209LHqcQkWHdg6DRm0dZhX38R2OKuK/A5ud3MP
	ETweHbCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jllJm-0004h3-NX; Thu, 18 Jun 2020 03:34:22 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jllJf-0004g4-El
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 03:34:16 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2F7121A0045;
 Thu, 18 Jun 2020 05:34:14 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id D6D871A0079;
 Thu, 18 Jun 2020 05:34:07 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id CADD8402B3;
 Thu, 18 Jun 2020 11:33:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
 festevam@gmail.com, ulf.hansson@linaro.org, s.trumtrar@pengutronix.de,
 aisheng.dong@nxp.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org
Subject: [PATCH V4 2/3] dt-bindings: clock: Correct mmc node name in i.MX35
 binding
Date: Thu, 18 Jun 2020 11:22:57 +0800
Message-Id: <1592450578-30140-2-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592450578-30140-1-git-send-email-Anson.Huang@nxp.com>
References: <1592450578-30140-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_203415_627369_9DCE6057 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nodename should be "mmc" instead of "esdhc" in i.MX35 clock binding
to avoid below build error:

Documentation/devicetree/bindings/clock/imx35-clock.example.dt.yaml:
esdhc@53fb4000: $nodename:0: 'esdhc@53fb4000' does not match '^mmc(@.*)?$'

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch, to fix build error when patch #1 is added.
---
 Documentation/devicetree/bindings/clock/imx35-clock.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/clock/imx35-clock.yaml b/Documentation/devicetree/bindings/clock/imx35-clock.yaml
index bd871da..3e20cca 100644
--- a/Documentation/devicetree/bindings/clock/imx35-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx35-clock.yaml
@@ -130,7 +130,7 @@ examples:
         #clock-cells = <1>;
     };
 
-    esdhc@53fb4000 {
+    mmc@53fb4000 {
         compatible = "fsl,imx35-esdhc";
         reg = <0x53fb4000 0x4000>;
         interrupts = <7>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
