Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A8DB8F4E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 13:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=nD3nX8cGb1UuCVc8azhtdQCkLVXwf85AWGl+ujFCr10=; b=uQp
	UShYL+JF9B8KkofvGZZ4JmQxn1rpb5wWcRS1mIDvfcfSZQ2B0LmpVroEpS16dOBp5a9vt5dTPMkSI
	HlWIYW1Lo13pf12O8gLdVeR4v9GCXmOmKz0vvEe+UnOTSlRLYA2ZM8qgBy+B3J1ZymrWeBXlwTDfe
	Ym5E7RGXLBwVxs8mbL09z/14i6rtQyvqAx+cOBLsQ0c9afVmmz/L6TipCiewVjb+Rx6MoMsK2HUeq
	Dr+0Z6Pi8sSwYtG3rXLUOmKBQ3BFyWDHh9/I0VZuRxCnGVYaa234Zaj7256fM8Jz+qFbwIAqPoLLX
	soBYR62/pRLHFGNUiZujWJBdLfd5Npw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHSw-0003AD-9M; Fri, 20 Sep 2019 11:52:46 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHSg-00031j-NU
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 11:52:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1568980347; x=1571572347;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YxMQ+eWkjel7628f0sdJqwnYptMi1NZAQO88k99cXso=;
 b=ncTnMbGGOeJDABR1sLq7Ukl05sb4SfJTZVToofa7swFn7urSUOP2lkIvfqAAgBa6
 t4Zns8VBXrvnUsx9DKc3qUnWOhTArhGOX9MNGBvIpr+cwbDJut2EqYAyFqFWZZFy
 J4vvX+lxrB4sc6h61ePi93/rqhxdh1/GXQZXivYx7/c=;
X-AuditID: c39127d2-e1bff70000001af2-9b-5d84bd7a3e07
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 03.19.06898.A7DB48D5;
 Fri, 20 Sep 2019 13:52:26 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.0.56])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019092013522608-76271 ;
 Fri, 20 Sep 2019 13:52:26 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 1/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 UL/ULL
 devicetree bindings
Date: Fri, 20 Sep 2019 13:52:25 +0200
Message-Id: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 20.09.2019 13:52:26,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 20.09.2019 13:52:26, Serialize complete at 20.09.2019 13:52:26
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGLMWRmVeSWpSXmKPExsWyRoCBS7dqb0uswbUH6hbNHbYW84+cY7V4
 eNXfYtPja6wWXb9WMltc3jWHzeJuSyerxdLrF5ksWvceYbf4u30Ti8WLLeIO3B5r5q1h9Ng5
 6y67x6ZVnWwed67tYfPYvKTeY+O7HUwe/X8NPD5vkgvgiOKySUnNySxLLdK3S+DK2Pz/PFPB
 Jb6KO3PXsTYwXuTqYuTkkBAwkVj9tJOti5GLQ0hgB6PE4l9boZxzjBIXXjazglSxCRhJLJjW
 yARiiwhoSEzpeswOUsQsMJVZovHPUqAiDg5hgSiJc/2FIDUsAqoSPUfXs4HYvAIeEnueP2CB
 2CYncfNcJzNIr4RAI5PEik3bmCESQhKnF59lnsDIs4CRYRWjUG5mcnZqUWa2XkFGZUlqsl5K
 6iZGYNgdnqh+aQdj3xyPQ4xMHIyHGCU4mJVEeOeYNsUK8aYkVlalFuXHF5XmpBYfYpTmYFES
 593AWxImJJCeWJKanZpakFoEk2Xi4JRqYJT6pS/w7OUHrs92P12nOe8SCOraKvBxO7/HxUtn
 5kXa2Pk+nH/70Y9P2nd2iTf/O/yBOyVO3c6PdZZxpfbyeoGGf1XfJx7enxI997RitjzH/K0/
 TwQmvTXg7OU6d6hU1zdixb+vbOrcgituaRv3vm2Yz347xUu9prE76GZjvteRyZbyz6UNJiix
 FGckGmoxFxUnAgAVo78vKQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_045230_910561_1C8BBAC9 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.145.39.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
 Stefan Riedmueller <s.riedmueller@phytec.de>,
 Andrew Smirnov <andrew.smirnov@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-imx@nxp.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Shawn Guo <shawnguo@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add devicetree bindings for i.MX6 UL/ULL based phyCORE-i.MX6 UL/ULL and
phyBOARD-Segin.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v2:
 - Use seperate description for each board instead of squashing them into
   the standard board.
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 1b4b4e6573b5..c926ff6eac67 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -164,6 +164,15 @@ properties:
               - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
           - const: fsl,imx6ul
 
+      - description: i.MX6UL PHYTEC phyBOARD-Segin
+        items:
+          - enum:
+              - phytec,imx6ul-pbacd10-emmc
+              - phytec,imx6ul-pbacd10-nand
+          - const: phytec,imx6ul-pbacd10  # PHYTEC phyBOARD-Segin with i.MX6 UL
+          - const: phytec,imx6ul-pcl063   # PHYTEC phyCORE-i.MX 6UL
+          - const: fsl,imx6ul
+
       - description: Kontron N6310 S Board
         items:
           - const: kontron,imx6ul-n6310-s
@@ -183,6 +192,15 @@ properties:
               - fsl,imx6ull-14x14-evk     # i.MX6 UltraLiteLite 14x14 EVK Board
           - const: fsl,imx6ull
 
+      - description: i.MX6ULL PHYTEC phyBOARD-Segin
+        items:
+          - enum:
+              - phytec,imx6ull-pbacd10-emmc
+              - phytec,imx6ull-pbacd10-nand
+          - const: phytec,imx6ull-pbacd10 # PHYTEC phyBOARD-Segin with i.MX6 ULL
+          - const: phytec,imx6ull-pcl063  # PHYTEC phyCORE-i.MX 6ULL
+          - const: fsl,imx6ull
+
       - description: i.MX6ULZ based Boards
         items:
           - enum:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
