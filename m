Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84358EB29A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 31 Oct 2019 15:28:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=faiIH2lXIt46MfnsbwODtyjX/52Clga06fQz3hlCwk4=; b=srlStRo3vUj78J
	T8nasZmdG2zY3hPXJdwBC6ulGw/zvlBn6hVgreNaBixzYrtK6dDbzCU1Suy3YtifpbkgTwz9YskQf
	nBFuFei1J8PvQWZW3zpvO4IFpW+7t0Sgr/ZXZ+YXt4iqaZvUmRtOu1o7EswR+j5exct9Aobc7WVsy
	8CtBLSn/2QCdjAPcdlWQUmBMoERwYnHmVOf+/eUzcJB4AyM4faHRx+0DxVXWHNS0Uepk+Xds6kMNu
	s2faUvMW9/3Zb5OuUs9vTk8tn+Lqg0jKq4G2AVMRMCyPQyM6NdSjQCmTas5BKqSjFZ+QfqPBcf5wQ
	ZzpqigYYDxhKLXv6hPuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQBQc-0006SA-9a; Thu, 31 Oct 2019 14:27:58 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQBNl-000387-R6
 for linux-arm-kernel@lists.infradead.org; Thu, 31 Oct 2019 14:25:05 +0000
Received: from sntmail12r.snt-is.com (unknown [10.203.32.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by skedge04.snt-world.com (Postfix) with ESMTPS id A628DD4A56B;
 Thu, 31 Oct 2019 15:24:31 +0100 (CET)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail12r.snt-is.com
 (10.203.32.182) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Thu, 31 Oct
 2019 15:24:31 +0100
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1713.004; Thu, 31 Oct 2019 15:24:31 +0100
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Krzysztof Kozlowski <krzk@kernel.org>, Fabio Estevam <festevam@gmail.com>, 
 Schrempf Frieder <frieder.schrempf@kontron.de>, Mark Rutland
 <mark.rutland@arm.com>, NXP Linux Team <linux-imx@nxp.com>, "Pengutronix
 Kernel Team" <kernel@pengutronix.de>, Rob Herring <robh+dt@kernel.org>,
 "Sascha Hauer" <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v3 10/11] dt-bindings: arm: fsl: Add more Kontron i.MX6UL/ULL
 compatibles
Thread-Topic: [PATCH v3 10/11] dt-bindings: arm: fsl: Add more Kontron
 i.MX6UL/ULL compatibles
Thread-Index: AQHVj/boZjsU03v60U6rh0cSmj8HZg==
Date: Thu, 31 Oct 2019 14:24:31 +0000
Message-ID: <20191031142112.12431-11-frieder.schrempf@kontron.de>
References: <20191031142112.12431-1-frieder.schrempf@kontron.de>
In-Reply-To: <20191031142112.12431-1-frieder.schrempf@kontron.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: A628DD4A56B.A0BAA
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: devicetree@vger.kernel.org, festevam@gmail.com,
 kernel@pengutronix.de, krzk@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, mark.rutland@arm.com,
 robh+dt@kernel.org, s.hauer@pengutronix.de, shawnguo@kernel.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_072502_448111_690BA15D 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Frieder Schrempf <frieder.schrempf@kontron.de>

Add the compatibles for Kontron i.MX6UL N6311 SoM and boards and
the compatibles for Kontron i.MX6ULL N6411 SoM and boards.

Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b4b4e6573b5..6d718272725d 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -162,6 +162,7 @@ properties:
           - enum:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
+              - kontron,imx6ul-n6311-som  # Kontron N6311 SOM
           - const: fsl,imx6ul
 
       - description: Kontron N6310 S Board
@@ -170,6 +171,12 @@ properties:
           - const: kontron,imx6ul-n6310-som
           - const: fsl,imx6ul
 
+      - description: Kontron N6311 S Board
+        items:
+          - const: kontron,imx6ul-n6311-s
+          - const: kontron,imx6ul-n6311-som
+          - const: fsl,imx6ul
+
       - description: Kontron N6310 S 43 Board
         items:
           - const: kontron,imx6ul-n6310-s-43
@@ -181,6 +188,13 @@ properties:
         items:
           - enum:
               - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
+              - kontron,imx6ull-n6411-som # Kontron N6411 SOM
+          - const: fsl,imx6ull
+
+      - description: Kontron N6411 S Board
+        items:
+          - const: kontron,imx6ull-n6411-s
+          - const: kontron,imx6ull-n6411-som
           - const: fsl,imx6ull
 
       - description: i.MX6ULZ based Boards
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
