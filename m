Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02BC198B1E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 08:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MJ7/hoMF1nWe2X1roBjqgyPSWo2egw0GiVC7wV+4uRg=; b=LL6YxaLvYUuqHTPOB82WAKASvA
	US6QYjNpMiye3qo/Z63bcMu5PwRLDveu3rWLMTBLen1YaujRXLbcQe9QQharqgzsB9lqclAkhCt+6
	lSKI4AAcHjmzqKlF3M9nj0FBHSWtwvZEKFWX3mOiY3/moVW8AfuzZQdO89FMDIfORtzG3RDh2Ukil
	Xee504V1fcnfl0rFN2fhOfjGZ75BVjM9EaPiGf6tnRs0aGFwJjiI0Xj4LE5heURnMBRq5QHfbMPiZ
	yZNNLR3o/a5gsyd3PbHmuBf3+VZJhkUuPKq1s6/PqodowSYC2uRUz7lGvXfQx63Y6EBrCqCFyaK2H
	Hko+xpPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0gCD-00006h-Oq; Thu, 22 Aug 2019 06:03:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0gBS-00088O-AM
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 06:02:55 +0000
Received: from localhost.localdomain (unknown [194.230.147.11])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7956B233A2;
 Thu, 22 Aug 2019 06:02:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566453774;
 bh=s5Qwnruo1Obm/UgGKOuiLFuyxuT50eeJafK3ydS0kLA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Dv1EXf7GNShiWAoKHVSRufR4r8GMjrh7DcVXpVY9oLGKzt8eVKsuQEMtoEjKUYG4d
 wSUD1TeckIXuTZTm6PObMjoJG+YCP5dt4b7TQ0KydEXkwhh3f8+Im1At/DCbkLV4D+
 nllO/9BDx5sutMUZ4she2cdmOqnOA8wy+9jtXWcw=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Schrempf Frieder <frieder.schrempf@kontron.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v7 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
Date: Thu, 22 Aug 2019 08:02:37 +0200
Message-Id: <20190822060238.3887-3-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190822060238.3887-1-krzk@kernel.org>
References: <20190822060238.3887-1-krzk@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_230254_396674_ACBE6C3E 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the compatibles for Kontron i.MX6UL N6310 SoM and boards.

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v6:
1. Split entries to pass the dtbs_check.

Changes since v5:
New patch
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..1f440817fc03 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -161,6 +161,20 @@ properties:
         items:
           - enum:
               - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
+              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
+          - const: fsl,imx6ul
+
+      - description: Kontron N6310 S Board
+        items:
+          - const: kontron,imx6ul-n6310-s
+          - const: kontron,imx6ul-n6310-som
+          - const: fsl,imx6ul
+
+      - description: Kontron N6310 S 43 Board
+        items:
+          - const: kontron,imx6ul-n6310-s-43
+          - const: kontron,imx6ul-n6310-s
+          - const: kontron,imx6ul-n6310-som
           - const: fsl,imx6ul
 
       - description: i.MX6ULL based Boards
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
