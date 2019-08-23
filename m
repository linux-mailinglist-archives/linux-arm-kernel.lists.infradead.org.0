Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E78629B23B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 16:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0S0PYZFkUef5i08foKjq7ZG3ensFZdZRTVQlJpUcmn0=; b=D2UgW0h0u8+YIAw2jHv54UFP/o
	poumc1dFZneIrCGumzt8C0hihYVvVXKX8+VzNzPAMlEhO5/rHPKJkXRDFIAIMpcKRTwjr6dqfYRqr
	r7RjcmdTJHBLhpQSmKL602peGd7E2jVfBgxRIwLUhVWUWs82O8qgJnleUCNSsPTt4JWA+K+puopq7
	2WppxRItgmLam3YLimf/UZdkWc5xd6m35M0YuKJFRICkFHv131jk5VL0ALyElzCogpg3Jw6/8TMaG
	AxSrBLRHCepccy2oSqaEPHdC6xzaZhPsxNPdMjtA+OV+FzgMs+ySoGnFrspS3txcfUk2tflLd7uXS
	++GtMkkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1AhL-0002gn-Ew; Fri, 23 Aug 2019 14:37:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1Agd-0001s1-Mk
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 14:37:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7B5D3200743;
 Fri, 23 Aug 2019 16:37:06 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 6D20920073F;
 Fri, 23 Aug 2019 16:37:06 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 47C3D205D9;
 Fri, 23 Aug 2019 16:37:05 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>
Subject: [RFCv4 3/7] dt-bindings: devfreq: imx: Describe interconnect
 properties
Date: Fri, 23 Aug 2019 17:36:56 +0300
Message-Id: <3f27038292c09c8bf07a086eac759132c100aedb.1566570260.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566570260.git.leonard.crestez@nxp.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1566570260.git.leonard.crestez@nxp.com>
References: <cover.1566570260.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_073707_875951_36CD85EF 
X-CRM114-Status: UNSURE (   7.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Dong Aisheng <aisheng.dong@nxp.com>,
 linux-arm-kernel@lists.infradead.org, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 devicetree@vger.kernel.org, linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The interconnect-node-id property is parsed by the imx interconnect
driver to find nodes on which frequencies can be adjusted.

Add #interconnect-cells so that device drivers can request paths from
bus nodes instead of requiring a separate "virtual" node to represent
the interconnect itself.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml | 5 +++++
 Documentation/devicetree/bindings/devfreq/imx.yaml      | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
index 31db204e6845..014449a9dd01 100644
--- a/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
+++ b/Documentation/devicetree/bindings/devfreq/imx-ddrc.yaml
@@ -31,10 +31,15 @@ properties:
       - const: dram_alt
       - const: dram_apb
 
   operating-points-v2: true
 
+  interconnect-node-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+  '#interconnect-cells':
+    const: 1
+
   devfreq-events:
     description: Phandle of PMU node
     $ref: "/schemas/types.yaml#/definitions/phandle"
 
 required:
diff --git a/Documentation/devicetree/bindings/devfreq/imx.yaml b/Documentation/devicetree/bindings/devfreq/imx.yaml
index 634870496d5e..f2f9b76c752f 100644
--- a/Documentation/devicetree/bindings/devfreq/imx.yaml
+++ b/Documentation/devicetree/bindings/devfreq/imx.yaml
@@ -43,10 +43,15 @@ properties:
   clocks:
     maxItems: 1
 
   operating-points-v2: true
 
+  interconnect-node-id:
+    $ref: /schemas/types.yaml#/definitions/uint32
+  '#interconnect-cells':
+    const: 1
+
   devfreq:
     description: |
       Phandle to another devfreq device to match OPPs with by using the
       passive governor.
     $ref: "/schemas/types.yaml#/definitions/phandle"
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
