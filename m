Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 316A629E1C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 20:33:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CTNhdNSc46Lirl7tcYks+ItbB2VXT2OjnKAjaQ8/QN8=; b=RDEob0aufpjAYC8VCzlm/skwHc
	jTVo6nIr9c8cAeAikImUqUY/K0LZphbeiGarl9km2l2qYse4BC3VmWZAsgVQAjY/5cWAWbAL+i6y7
	Jdgik26spPxLSp15XQ6N6s8S0JYl/Xayg+yfGbBvqTxRwfEc26/sFGVK1OAWPonuhVDRGE/Wik6am
	kN9nK8xT8GREFcpSNYkAAITJv7ZeW6DJ7y/lpppy8p+1eFViAGuYtimIgx5kUYH7WlH62L+pbMUJX
	+0Nd54LX4BqCw89JT35CpeQQPImnoDpB4hdL1vMOuQC2FacsRRsQcuZ4TzHVtWB7iQ6SnEtyKbIzF
	pohFUZBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUF0n-0001q0-OH; Fri, 24 May 2019 18:33:49 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUF07-0001B2-QT
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 18:33:09 +0000
Received: from localhost (localhost [127.0.0.1])
 by node.akkea.ca (Postfix) with ESMTP id A4A7E4E204E;
 Fri, 24 May 2019 18:33:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558722787; bh=duJfzh7N+uXE8UOPikoITZJHN+xJXuWQxWEXCUEz0yo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iWpfqy8oAdV4GPnWb9v/ERiEuygQ+GXJby1L52bCW0uPMNCCzRa4GrXdgNXCOo9vs
 5pDo8t3xzXCdZRK6WJ/c2lvmc/kyzD6tGBer6pgIviMmmC0GxMxALFTwcaqZoGpH9y
 cupw1Tb8zvCIbE9FxfbzrQXkcSfVTJZpQf35gutM=
X-Virus-Scanned: Debian amavisd-new at mail.akkea.ca
Received: from node.akkea.ca ([127.0.0.1])
 by localhost (mail.akkea.ca [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RDhP_5DGI4bm; Fri, 24 May 2019 18:33:07 +0000 (UTC)
Received: from localhost.localdomain (unknown [24.244.23.228])
 by node.akkea.ca (Postfix) with ESMTPSA id 95F944E204D;
 Fri, 24 May 2019 18:33:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1558722787; bh=duJfzh7N+uXE8UOPikoITZJHN+xJXuWQxWEXCUEz0yo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=iWpfqy8oAdV4GPnWb9v/ERiEuygQ+GXJby1L52bCW0uPMNCCzRa4GrXdgNXCOo9vs
 5pDo8t3xzXCdZRK6WJ/c2lvmc/kyzD6tGBer6pgIviMmmC0GxMxALFTwcaqZoGpH9y
 cupw1Tb8zvCIbE9FxfbzrQXkcSfVTJZpQf35gutM=
From: Angus Ainslie <angus@akkea.ca>
To: angus.ainslie@puri.sm
Subject: [PATCH v14 3/3] dt-bindings: arm: fsl: Add the imx8mq boards
Date: Fri, 24 May 2019 12:32:57 -0600
Message-Id: <20190524183257.16066-4-angus@akkea.ca>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524183257.16066-1-angus@akkea.ca>
References: <20190524183257.16066-1-angus@akkea.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_113307_854946_C7A4A99A 
X-CRM114-Status: UNSURE (   8.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Pavel Machek <pavel@ucw.cz>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "Angus Ainslie \(Purism\)" <angus@akkea.ca>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Angus Ainslie (Purism)" <angus@akkea.ca>

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
