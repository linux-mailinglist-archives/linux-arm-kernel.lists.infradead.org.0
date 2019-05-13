Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09B61B943
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 16:56:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5yPrNDGla/geXxT2UyykPlh+zhMSGiaj3wmYHSGk2PY=; b=O+uv7IZxgqyOMYz0oNBg2Dtd4P
	0I+Mz7D4JXpLr2p1GkyKkVSqyXcE6OH6Q7ROk0Mgp+dD6Dlxamsz1TyRasLDuxJgS4gECVWInMyhh
	+4UV+1ZWmQMkBAzhetyHaOU+8ZeRi3lXZ2HYz7HBqnYgR00JoH/zeWkaiHC1HEepN392mSK7GhMRr
	ImcL1t7QUNd7n+WHnGye9+W4Avu06/egR/FuJdyGt/zdJVrVasqZdy6U1f3dnYV8XX0BhrOYGHdEn
	u+++heUj0/AFHtyQB9Sc8xdqTgV9z0f6tZJJtWB+PpmbBpZbyzYtfSkaU6QVz8W2aNLYJMpC9cUGp
	a/d9g5/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQCNL-0005Y4-6T; Mon, 13 May 2019 14:56:23 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQCMs-00059c-24
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 14:55:56 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id BD4BC4E2050;
 Mon, 13 May 2019 14:55:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557759351; bh=SfqX2EFJOvWCTClrRDpHw/tV94ED1IxtbtG2u/MWNBk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=itvWLkrWh2wRTVHZYibki4sFm28yEaulV9aIeTXpyoSwMaJGjgl4BHIP06/0ZIEon
 z9ojfpKr20i3XOX1ktuXxHSnmXss5115jbAdmccLIoP7ouo6SsAMhmTdY6YEqKkBjv
 rv6jMhHVbYV+dwBKpmAHtzEL+qIfdGxbzyFEhMG0=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2Qc7PrI2YegJ; Mon, 13 May 2019 14:55:51 +0000 (UTC)
Received: from midas.localdomain (S0106788a2041785e.gv.shawcable.net
 [70.66.86.75])
 by node.akkea.ca (Postfix) with ESMTPSA id F1F2C4E204B;
 Mon, 13 May 2019 14:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1557759351; bh=SfqX2EFJOvWCTClrRDpHw/tV94ED1IxtbtG2u/MWNBk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=itvWLkrWh2wRTVHZYibki4sFm28yEaulV9aIeTXpyoSwMaJGjgl4BHIP06/0ZIEon
 z9ojfpKr20i3XOX1ktuXxHSnmXss5115jbAdmccLIoP7ouo6SsAMhmTdY6YEqKkBjv
 rv6jMhHVbYV+dwBKpmAHtzEL+qIfdGxbzyFEhMG0=
From: "Angus Ainslie (Purism)" <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v9 3/3] dt-bindings: arm: fsl: Add the imx8mq boards
Date: Mon, 13 May 2019 07:55:39 -0700
Message-Id: <20190513145539.28174-4-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190513145539.28174-1-angus@akkea.ca>
References: <20190513145539.28174-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_075554_112520_E2F9AFFB 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an entry for imx8mq based boards

Signed-off-by: Angus Ainslie (Purism) <angus@akkea.ca>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 407138ebc0d0..41364b127200 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -177,6 +177,13 @@ properties:
               - fsl,imx8mm-evk            # i.MX8MM EVK Board
           - const: fsl,imx8mm
 
+      - description: i.MX8MQ based Boards
+        items:
+          - enum:
+              - fsl,imx8mq-evk            # i.MX8MQ EVK Board
+              - purism,librem5-devkit     # Purism Librem5 devkit
+          - const: fsl,imx8mq
+
       - description: i.MX8QXP based Boards
         items:
           - enum:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
