Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36725199E20
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 20:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=e9GG3Ti3uAtl9K9TacsgX8Wifh3hcO/S5saIs/SCXZM=; b=ulX
	6iuZUoipXHKJN+Zfyo6K9bxZgrQaotdjJ1nQo5VrLV1kuFcjAtZa728K042MsQwrYWC2Wy+MbxHvo
	mKip6tJkShLmFkQXcQhUfhGxb/yagYokrYHgI19S6sTA8o6Zdx6wKK8HKOTbY2DtMiavBXqQAhIC9
	u1SkuHFR3NgFi2BGKKgIUdDIMkOPWaCpC2GcgljKec89gbqttjJaLiAnuUod9VzGX0udvGk8UNik3
	+/j2gl9OqiWKhR83PW4vDf8bw9rSPp1HC45Uwbl3enlZ+gjvgpwUwytoiEK7UpkyWNeuKgvu0gBAM
	iNyMl73XxUNrYTVrrFQDYQgJUnjzTJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJLlo-0007Gt-D2; Tue, 31 Mar 2020 18:37:52 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLlf-0007GQ-2p
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 18:37:44 +0000
Received: by mail-qk1-x744.google.com with SMTP id o10so24123197qki.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 11:37:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=6bo50showiDDZymkVwcrzZUnNVACXf2piseIaZpnpDc=;
 b=SaBW4VKJMe0E2qjcW8tep8L7AtKIbKOI3PwHv7sEu73TfC+gycMQ/geVK1jDDIi1DP
 rih4oMkWd1qZ2gQmHh7IuvGqQj2Rme6a624fSZlalypsTMkFojle70D1Oi5ewYc7tzhy
 Wk3FekAZMG7wV9yT/+MhupkLufJPJONC4DD1afgcZ99n/3mVZAMmZygSd7E+93sPzmMT
 cU0pbdQEuCAA+/+zPfb8BlhVdY2L9uXSWCSWa11bJjQsL1dRIn2Yg4PaA75aXCCmfl5T
 gnQuHLJqr8WnDEoCa+8evXtGEyHP08u8aD06dOE/egDtG56/igxneLy7MvrgpLfhcns/
 ExJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=6bo50showiDDZymkVwcrzZUnNVACXf2piseIaZpnpDc=;
 b=X9f3wM3Jwtkz2OREYE39gcoKcqi9Pp6b3ppuRfRXdXRpl3B4tne6uuuvQ3oENamVau
 SeMrIi4bYvwv1Og136B7M4AB7Uf1EwbBsl8zSk1ei1VZJ3jUmVTFO1Nmkx7wGshwKVis
 n0cF+P7K/5F1BHYuFVlK0Xn7p0oYB/6/4XraKQ+4IQR4JNUBzno2q9JLDaHlgqDkgvS5
 +DXnPEmqc6KaUw23SzGwL4RYlflqn1cQs2q6/OIfx8J8lx//5bxwwaDxeiQjlwiR2xbC
 GUqG1CN05KRRIGpLWndArcp1JhL0vDyfDU6fZe06k0DJVRza/Sdq+LXQpHYEhBFImq7n
 uwJw==
X-Gm-Message-State: ANhLgQ1peLgSsB7ZV11UhoG4nsUkVepr1/4qsLtxCxUkopMUJx2EF3FU
 e3sFWqu/sZEKw4aQW2PvCt4=
X-Google-Smtp-Source: ADFU+vvEVPUXk9miWqKlR4xK/YHvMHFYmYN1HBOSW37JSD9DBLvt5Xv8gwqOQU2qHc8Y8b4En9YOuA==
X-Received: by 2002:a37:9d4a:: with SMTP id g71mr5471980qke.54.1585679861295; 
 Tue, 31 Mar 2020 11:37:41 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:5bb::4])
 by smtp.gmail.com with ESMTPSA id f21sm14285243qtc.97.2020.03.31.11.37.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 31 Mar 2020 11:37:40 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] arm64: dts: imx8m: Fix AIPS reg properties
Date: Tue, 31 Mar 2020 15:37:25 -0300
Message-Id: <20200331183725.25255-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_113743_148426_59CD19BA 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, peng.fan@nxp.com, robh+dt@kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Commit dc3efc6ff0d5 ("arm64: dts: imx8m: fix aips dts node") caused several
dtc warnings like these when building with W=1:

arch/arm64/boot/dts/freescale/imx8mm.dtsi:265.23-542.5: Warning (simple_bus_reg): /soc@0/bus@30000000: simple-bus unit address format error, expected "301f0000"
arch/arm64/boot/dts/freescale/imx8mm.dtsi:544.23-602.5: Warning (simple_bus_reg): /soc@0/bus@30400000: simple-bus unit address format error, expected "305f0000"
arch/arm64/boot/dts/freescale/imx8mm.dtsi:604.23-862.5: Warning (simple_bus_reg): /soc@0/bus@30800000: simple-bus unit address format error, expected "309f0000"
arch/arm64/boot/dts/freescale/imx8mm.dtsi:864.23-909.5: Warning (simple_bus_reg): /soc@0/bus@32c00000: simple-bus unit address format error, expected "32df0000"

Fix them by using the correct address base and size in the AIPS reg
properties.

Fixes: dc3efc6ff0d5 ("arm64: dts: imx8m: fix aips dts node")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mn.dtsi | 8 ++++----
 arch/arm64/boot/dts/freescale/imx8mp.dtsi | 6 +++---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 8 ++++----
 4 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index cc7152ecedd9..8829628f757a 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -264,7 +264,7 @@
 
 		aips1: bus@30000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x301f0000 0x10000>;
+			reg = <0x30000000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -543,7 +543,7 @@
 
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x305f0000 0x10000>;
+			reg = <0x30400000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -603,7 +603,7 @@
 
 		aips3: bus@30800000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x309f0000 0x10000>;
+			reg = <0x30800000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>,
@@ -863,7 +863,7 @@
 
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x32df0000 0x10000>;
+			reg = <0x32c00000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
diff --git a/arch/arm64/boot/dts/freescale/imx8mn.dtsi b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
index fa78f0163270..e62d4146cebc 100644
--- a/arch/arm64/boot/dts/freescale/imx8mn.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mn.dtsi
@@ -241,7 +241,7 @@
 
 		aips1: bus@30000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x301f0000 0x10000>;
+			reg = <0x30000000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -448,7 +448,7 @@
 
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x305f0000 0x10000>;
+			reg = <0x30400000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -508,7 +508,7 @@
 
 		aips3: bus@30800000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x309f0000 0x10000>;
+			reg = <0x30800000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -754,7 +754,7 @@
 
 		aips4: bus@32c00000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x32df0000 0x10000>;
+			reg = <0x32c00000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mp.dtsi b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
index 9b1616e59d58..9f6ba763238d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mp.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mp.dtsi
@@ -145,7 +145,7 @@
 
 		aips1: bus@30000000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x301f0000 0x10000>;
+			reg = <0x30000000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -318,7 +318,7 @@
 
 		aips2: bus@30400000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x305f0000 0x400000>;
+			reg = <0x30400000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
@@ -378,7 +378,7 @@
 
 		aips3: bus@30800000 {
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x309f0000 0x400000>;
+			reg = <0x30800000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges;
diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 75b384217a23..bab88369be1b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -291,7 +291,7 @@
 
 		bus@30000000 { /* AIPS1 */
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x301f0000 0x10000>;
+			reg = <0x30000000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30000000 0x30000000 0x400000>;
@@ -696,7 +696,7 @@
 
 		bus@30400000 { /* AIPS2 */
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x305f0000 0x10000>;
+			reg = <0x30400000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30400000 0x30400000 0x400000>;
@@ -756,7 +756,7 @@
 
 		bus@30800000 { /* AIPS3 */
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x309f0000 0x10000>;
+			reg = <0x30800000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x30800000 0x30800000 0x400000>,
@@ -1029,7 +1029,7 @@
 
 		bus@32c00000 { /* AIPS4 */
 			compatible = "fsl,aips-bus", "simple-bus";
-			reg = <0x32df0000 0x10000>;
+			reg = <0x32c00000 0x400000>;
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0x32c00000 0x32c00000 0x400000>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
