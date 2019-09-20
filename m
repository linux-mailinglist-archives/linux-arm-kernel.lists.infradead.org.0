Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82218B8F4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Sep 2019 13:52:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YXTBKEcqG/T6eXqPok/tDO7mOyxkDS8NVDyZjQaSEl0=; b=Ho6UPoUjZJcAol+iicbagFiEF+
	onbAj85M2C3aMIPoWvGOcQ8QBVzZFznkAwSvVUx1567eYQnr3sCru0qZBld5WqD3aNG20dyg+uXmx
	zfg6BP2/0fsJS+wciInmLUb7SBhWOyMa6WXBxeq84HF26hZeeujilYCuLkZ1ru8mi/toWCMAkbjbp
	GbyzS90DHIxKoXmFQaXXzFimD3RYL396gtPgEblBQFFNAMfakE4m+C5edlXv1fjkHl0nvOvotbYwu
	5AOKVMXPfJd/WZEb1ULGjqpMzgCo5VyFNKwh4ceUeNmDTzsPMZjtiSl4T7dky6A5hNqGLvCwot9jd
	nVJJfkEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBHSl-00032V-QO; Fri, 20 Sep 2019 11:52:35 +0000
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBHSe-00031j-NZ
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Sep 2019 11:52:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
 q=dns/txt; i=@phytec.de; t=1568980347; x=1571572347;
 h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mfFBMMfelPcYt0HozABPa7ZrKOpTUktgFSot938sgWs=;
 b=R2H94MLTZNypuq+uJsQh0bNajJY5p2BqcJiV1n8TQwNh76MaWNNSesemEjR1ef90
 4qf8g0S/nmixIfae/jQzx3Za4ubcd5R5oLdAS/M8+nEUarVZKuk/Zrf2V4H0Optw
 vs0pu2sdxvYKKiI3k/zUQB7kWobGTo+jlXQz0iAUrjA=;
X-AuditID: c39127d2-e31ff70000001af2-9c-5d84bd7a3605
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id A3.19.06898.A7DB48D5;
 Fri, 20 Sep 2019 13:52:26 +0200 (CEST)
Received: from augenblix2.phytec.de ([172.16.0.56])
 by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
 with ESMTP id 2019092013522631-76272 ;
 Fri, 20 Sep 2019 13:52:26 +0200 
From: Stefan Riedmueller <s.riedmueller@phytec.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/2] dt-bindings: arm: fsl: Add PHYTEC i.MX6 devicetree
 bindings
Date: Fri, 20 Sep 2019 13:52:26 +0200
Message-Id: <1568980346-385840-2-git-send-email-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
References: <1568980346-385840-1-git-send-email-s.riedmueller@phytec.de>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
 17, 2016) at 20.09.2019 13:52:26,
 Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 20.09.2019 13:52:26, Serialize complete at 20.09.2019 13:52:26
X-TNEFEvaluated: 1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPLMWRmVeSWpSXmKPExsWyRoCBS7dqb0uswfpJZhbNHbYW84+cY7V4
 eNXfYtPja6wWXb9WMltc3jWHzeJuSyerxdLrF5ksWvceYbf4u30Ti8WLLeIO3B5r5q1h9Ng5
 6y67x6ZVnWwed67tYfPYvKTeY+O7HUwe/X8NPD5vkgvgiOKySUnNySxLLdK3S+DK+DF/BVvB
 Z7GK/zc3sDcwThToYuTkkBAwkZi99R5bFyMXh5DADkaJ+fePMkI45xgl3l/bxQxSxSZgJLFg
 WiMTiC0ioCExpesxO0gRs8BUZonGP0tZQRLCAsES09b/AitiEVCVWNPWwgZi8wp4SPw4dYoV
 Yp2cxM1znWBDOQU8Jd5fX8wOYgsB1TQdOsUCMlRCoJFJYsWmbcwQDUISpxefZZ7AyLeAkWEV
 o1BuZnJ2alFmtl5BRmVJarJeSuomRmCgHp6ofmkHY98cj0OMTByMhxglOJiVRHjnmDbFCvGm
 JFZWpRblxxeV5qQWH2KU5mBREufdwFsSJiSQnliSmp2aWpBaBJNl4uCUamDsefHz9ro8NbFl
 Z4NCrHYy2i7qSX/Is6VRdefnpIel3t1PZAsrngUr6CZFd4f80PEunv786NE+mbd3Hd+oVPq3
 zlnaVHEh8l6506YXL6zLl92IS9hbMLN88duqPCedzGntr6YULzoTvN7od7RO+tvN537tSW9h
 FOzxrJzptkJg1orEr70/j69TYinOSDTUYi4qTgQAW8AidEICAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190920_045228_917493_E8151BE5 
X-CRM114-Status: UNSURE (   9.96  )
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

Add devicetree bindings for i.MX6 based phyCORE-i.MX6, phyBOARD-Mira and
phyFLEX-i.MX6.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
Changes in v2:
 - Use seperate description for each board instead of squashing them into
   the standard board.
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 37 ++++++++++++++++++++++++++
 1 file changed, 37 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index c926ff6eac67..7dbb45cebb86 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -116,6 +116,21 @@ properties:
               - technologic,imx6q-ts7970
           - const: fsl,imx6q
 
+      - description: i.MX6Q PHYTEC phyBOARD-Mira
+        items:
+          - enum:
+              - phytec,imx6q-pbac06-emmc  # PHYTEC phyBOARD-Mira eMMC RDK
+              - phytec,imx6q-pbac06-nand  # PHYTEC phyBOARD-Mira NAND RDK
+          - const: phytec,imx6q-pbac06    # PHYTEC phyBOARD-Mira
+          - const: phytec,imx6qdl-pcm058  # PHYTEC phyCORE-i.MX6
+          - const: fsl,imx6q
+
+      - description: i.MX6Q PHYTEC phyFLEX-i.MX6
+        items:
+          - const: phytec,imx6q-pbab01    # PHYTEC phyFLEX carrier board
+          - const: phytec,imx6q-pfla02    # PHYTEC phyFLEX-i.MX6 Quad
+          - const: fsl,imx6q
+
       - description: i.MX6QP based Boards
         items:
           - enum:
@@ -123,6 +138,13 @@ properties:
               - fsl,imx6qp-sabresd        # i.MX6 Quad Plus SABRE Smart Device Board
           - const: fsl,imx6qp
 
+      - description: i.MX6QP PHYTEC phyBOARD-Mira
+        items:
+          - const: phytec,imx6qp-pbac06-nand
+          - const: phytec,imx6qp-pbac06   # PHYTEC phyBOARD-Mira
+          - const: phytec,imx6qdl-pcm058  # PHYTEC phyCORE-i.MX6
+          - const: fsl,imx6qp
+
       - description: i.MX6DL based Boards
         items:
           - enum:
@@ -138,6 +160,21 @@ properties:
               - ysoft,imx6dl-yapp4-ursa   # i.MX6 Solo Y Soft IOTA Ursa board
           - const: fsl,imx6dl
 
+      - description: i.MX6DL PHYTEC phyBOARD-Mira
+        items:
+          - enum:
+              - phytec,imx6dl-pbac06-emmc # PHYTEC phyBOARD-Mira eMMC RDK
+              - phytec,imx6dl-pbac06-nand # PHYTEC phyBOARD-Mira NAND RDK
+          - const: phytec,imx6dl-pbac06   # PHYTEC phyBOARD-Mira
+          - const: phytec,imx6qdl-pcm058  # PHYTEC phyCORE-i.MX6
+          - const: fsl,imx6dl
+
+      - description: i.MX6DL PHYTEC phyFLEX-i.MX6
+        items:
+          - const: phytec,imx6dl-pbab01   # PHYTEC phyFLEX carrier board
+          - const: phytec,imx6dl-pfla02   # PHYTEC phyFLEX-i.MX6 Quad
+          - const: fsl,imx6dl
+
       - description: i.MX6SL based Boards
         items:
           - enum:
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
