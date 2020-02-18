Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1091621E7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 08:58:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ame4ES0HfmJKrZ/y6BSYsayKy8XWc0JiE3YV7x8vHWI=; b=RZ2ho7AJ7S6aTvikm8ZKYAkZTA
	X3dPl2kfwJ0i85UqZnm2nfJUBDeVO2qVQ1aBEFc517pCU3aAYRSLixuGzS5y5xyPrO6vHDvLMheY/
	Bpc3krdjuF1oebeMeaapEip1yjhFjZFNqmLT/TbLbnhijLP9yIxz7o+sa4j2hJPvKXSb/kbe/6VY4
	O8x9/AxpU6FqIcbANLpCCb+L4DKEES0zPaBN6AWOH2tCHFSoNLoaOsac6o+Al6RyydNIpcGGZ29NK
	U7Vwo/5kHy9I/yuB08mVddNLpQNTHvhLdqAd758pRsR4VXXegE9MuJcQM/ah0nzqTgYGwIAUSYSSO
	he60Noew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3xmK-0005Sx-DS; Tue, 18 Feb 2020 07:58:48 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3xlC-0004Xu-MH
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 07:57:40 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5FB4F1A0A1B;
 Tue, 18 Feb 2020 08:57:37 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4F6561A0289;
 Tue, 18 Feb 2020 08:57:30 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 74087402E1;
 Tue, 18 Feb 2020 15:57:20 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: aisheng.dong@nxp.com, festevam@gmail.com, shawnguo@kernel.org,
 stefan@agner.ch, kernel@pengutronix.de, linus.walleij@linaro.org,
 robh+dt@kernel.org, mark.rutland@arm.com, s.hauer@pengutronix.de,
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH V4 4/4] dt-bindings: pinctrl: imx8mp: Replace the uint32-array
 with uint32-matrix
Date: Tue, 18 Feb 2020 15:51:40 +0800
Message-Id: <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_235738_898426_40478B0E 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

The items of mux_reg/conf_reg/input_reg/mux_val/input_val/pad_setting
should be uint32-matrix instead of uint32-array, fix it and improve the
schema and example.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
New patch.
---
 .../bindings/pinctrl/fsl,imx8mp-pinctrl.yaml       | 25 ++++++++++++++++------
 1 file changed, 19 insertions(+), 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
index 2e31e12..6297e78 100644
--- a/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/fsl,imx8mp-pinctrl.yaml
@@ -30,8 +30,6 @@ patternProperties:
 
     properties:
       fsl,pins:
-        allOf:
-          - $ref: /schemas/types.yaml#/definitions/uint32-array
         description:
           each entry consists of 6 integers and represents the mux and config
           setting for one pin. The first 5 integers <mux_reg conf_reg input_reg
@@ -39,6 +37,22 @@ patternProperties:
           be found in <arch/arm64/boot/dts/freescale/imx8mp-pinfunc.h>. The last
           integer CONFIG is the pad setting value like pull-up on this pin. Please
           refer to i.MX8M Plus Reference Manual for detailed CONFIG settings.
+        allOf:
+          - $ref: /schemas/types.yaml#/definitions/uint32-matrix
+          - items:
+              items:
+                - description: |
+                    "mux_reg" indicates the offset of mux register.
+                - description: |
+                    "conf_reg" indicates the offset of pad configuration register.
+                - description: |
+                    "input_reg" indicates the offset of select input register.
+                - description: |
+                    "mux_val" indicates the mux value to be applied.
+                - description: |
+                    "input_val" indicates the select input value to be applied.
+                - description: |
+                    "pad_setting" indicates the pad configuration value to be applied.
 
     required:
       - fsl,pins
@@ -59,10 +73,9 @@ examples:
         reg = <0x30330000 0x10000>;
 
         pinctrl_uart2: uart2grp {
-            fsl,pins = <
-                0x228 0x488 0x5F0 0x0 0x6	0x49
-                0x228 0x488 0x000 0x0 0x0	0x49
-            >;
+            fsl,pins =
+                <0x228 0x488 0x5F0 0x0 0x6	0x49>,
+                <0x228 0x488 0x000 0x0 0x0	0x49>;
         };
     };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
