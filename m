Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B389D139EFD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 02:31:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iuuWw8CF+u420C+atcOIT6r16Fztrjt9Q4U08nnooOo=; b=YD6KN87mEx//tpoA8VOUTdlnSd
	cvse5r2zLQyxS26ELJQsXTDANB37eOnfa1RuoY4jlN6UhVwlH4kUhf4QJLe/FeSQSh0Sn4u3FE0m6
	g1JFNhNQQ0XAVMkgVFOjlfp0I1lleFYvxJSdDSNGuDl/qQ2j6fSRj9AhHDObMutQtA241UjUSWOD+
	H0HCBZ18hzaNgRd6ooywFLEdAG/+RRcaoxIAvED6cg93YZmuORDhpdRadCwgqmx5pywkalwOK0EFj
	qqUJooUCXTz++D4yb6U3Iwpnn4dtrXYp4/SG3gt9AyLtURyYFA0gL0p+SwAG7hrIrwwN2xsuxNRev
	Av+yvF/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irB2r-00050w-HK; Tue, 14 Jan 2020 01:31:01 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irB2B-0004Wp-QY
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 01:30:22 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 981E91A07BA;
 Tue, 14 Jan 2020 02:30:18 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 4EB4D1A01BD;
 Tue, 14 Jan 2020 02:30:13 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 0DD0B402DF;
 Tue, 14 Jan 2020 09:30:06 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
 mark.rutland@arm.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH V2 3/3] dt-bindings: clock: Refine i.MX8MN clock binding
Date: Tue, 14 Jan 2020 09:26:07 +0800
Message-Id: <1578965167-31588-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578965167-31588-1-git-send-email-Anson.Huang@nxp.com>
References: <1578965167-31588-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_173019_994795_6C859069 
X-CRM114-Status: UNSURE (   7.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

Refine i.MX8MN clock binding by removing useless content and
updating the example, it makes all i.MX8M SoCs' clock binding
aligned.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No change.
---
 .../devicetree/bindings/clock/imx8mn-clock.yaml    | 48 +---------------------
 1 file changed, 2 insertions(+), 46 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
index 622f365..da2103d 100644
--- a/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
+++ b/Documentation/devicetree/bindings/clock/imx8mn-clock.yaml
@@ -40,7 +40,7 @@ properties:
 
   '#clock-cells':
     const: 1
-    description: |
+    description:
       The clock consumer should specify the desired clock by having the clock
       ID in its "clocks" phandle cell. See include/dt-bindings/clock/imx8mn-clock.h
       for the full list of i.MX8M Nano clock IDs.
@@ -57,7 +57,7 @@ examples:
   - |
     clk: clock-controller@30380000 {
         compatible = "fsl,imx8mn-ccm";
-        reg = <0x0 0x30380000 0x0 0x10000>;
+        reg = <0x30380000 0x10000>;
         #clock-cells = <1>;
         clocks = <&osc_32k>, <&osc_24m>, <&clk_ext1>,
                  <&clk_ext2>, <&clk_ext3>, <&clk_ext4>;
@@ -65,48 +65,4 @@ examples:
                       "clk_ext2", "clk_ext3", "clk_ext4";
     };
 
-  # Required external clocks for Clock Control Module node:
-  - |
-    osc_32k: clock-osc-32k {
-        compatible = "fixed-clock";
-        #clock-cells = <0>;
-        clock-frequency = <32768>;
-        clock-output-names = "osc_32k";
-    };
-
-    osc_24m: clock-osc-24m {
-        compatible = "fixed-clock";
-        #clock-cells = <0>;
-        clock-frequency = <24000000>;
-        clock-output-names = "osc_24m";
-    };
-
-    clk_ext1: clock-ext1 {
-        compatible = "fixed-clock";
-        #clock-cells = <0>;
-        clock-frequency = <133000000>;
-        clock-output-names = "clk_ext1";
-    };
-
-    clk_ext2: clock-ext2 {
-        compatible = "fixed-clock";
-        #clock-cells = <0>;
-        clock-frequency = <133000000>;
-        clock-output-names = "clk_ext2";
-    };
-
-    clk_ext3: clock-ext3 {
-        compatible = "fixed-clock";
-        #clock-cells = <0>;
-        clock-frequency = <133000000>;
-        clock-output-names = "clk_ext3";
-    };
-
-    clk_ext4: clock-ext4 {
-        compatible = "fixed-clock";
-        #clock-cells = <0>;
-        clock-frequency= <133000000>;
-        clock-output-names = "clk_ext4";
-    };
-
 ...
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
