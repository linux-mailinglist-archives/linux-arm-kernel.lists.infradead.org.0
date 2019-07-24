Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A80473523
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 19:20:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4n0dmgGkclwPZv0CgyUdhe4fqzHAwHXBgvb5oHtMysE=; b=sMuHDO4uQbAvkK
	G35RwzPdvArwcWumcyZEhtp21NEQzR6QgHfoOiEx4xdgCiL55lbZugYFuu8yV0WWrq4Umi68vyC6H
	RyThmVHndOodWw3pt1EOfuaWxDHJM925ELYZYNrEuwao426uHU6QtJLTr/7u59PfiW4OqTWfxAjb4
	eMpKbn/iIcPpLA/nEZdpuCEUAQ//IAEljhNdKriiZHMXlRf/B2MUVcFDBKjx6DLSmcWPiJgGGVN6C
	EMyDWGoa5lmxaJZ+sXafGXjzX0z/qIuQGsisGFRTNLVBNU2ac7EV/DH/pnVfVaOzzCnQQGOAsFAR0
	573k74S6eG4akqa5qVkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKwF-0001Jt-6B; Wed, 24 Jul 2019 17:20:27 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqKu7-0005Tf-OK
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 17:18:21 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id B14FE28B60A
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
To: dafna.hirschfeld@collabora.com
Subject: [PATCH 1/2] dt-bindings: arm: imx: add imx8mq nitrogen support
Date: Wed, 24 Jul 2019 19:17:47 +0200
Message-Id: <20190724171747.26076-2-dafna.hirschfeld@collabora.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190724171747.26076-1-dafna.hirschfeld@collabora.com>
References: <20190724171747.26076-1-dafna.hirschfeld@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_101815_976258_D7293260 
X-CRM114-Status: UNSURE (   7.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, ezequiel@collabora.com,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 Gary Bisson <gary.bisson@boundarydevices.com>, robh+dt@kernel.org,
 kernel@pengutronix.de, kernel@collabora.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

i.MX 8Quad is a quad (4x) Cortex-A53 processor with powerful
graphic and multimedia features.
This patch adds Nitrogen8M board support.

Signed-off-by: Gary Bisson <gary.bisson@boundarydevices.com>
Signed-off-by: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..728c41ef83bb 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -227,6 +227,12 @@ properties:
               - fsl,imx8qxp-mek           # i.MX8QXP MEK Board
           - const: fsl,imx8qxp
 
+      - description: i.MX8MQ based Boards
+        items:
+          - enum:
+              - boundary,imx8mq-nitrogen8m           # i.MX8MQ NITROGEN Board
+          - const: fsl,imx8mq
+
       - description:
           Freescale Vybrid Platform Device Tree Bindings
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
