Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30AEE255F0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 18:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gME2EEobZJ7+krtk8oCDRuRUyPMNfrlhgWXdvy6gVnc=; b=rFhd1YxdfakcJ1
	ChuWq0QgVhIucZysaeJ2hO0iBRSVCBI4qPKDNNFJF314VATLCgZ6+25ZvRc8jPYUvzauUT+Rmw0sv
	RIeLR4tjoxaDbpg3NWypWPqmWAzqrpDDffcBXwTqAsPDYQ5oAXfOsnYXplbmTdbipAXk1JmUbF6C+
	puFs1sAy9sgbSSltfy2dubrvXl0DTNvFoDAzpCjECLlSAyk7eTgv2/6VhyNjmry97uLT32Fkdp4Rz
	hs6IghwTcHc3fyJdwWOvYBkghLyffsLkR20NW/1F9C3j1KEPPKy7VLyc7NxQgC70woBypkiglR/sM
	eX+11WUZG2JDbtCYG3Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7sl-0005SN-JZ; Tue, 21 May 2019 16:44:55 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7sV-0005Hx-L4
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 16:44:41 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D50715A2;
 Tue, 21 May 2019 09:44:39 -0700 (PDT)
Received: from e110467-lin.cambridge.arm.com (e110467-lin.cambridge.arm.com
 [10.1.196.75])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6D88F3F73F;
 Tue, 21 May 2019 09:44:38 -0700 (PDT)
From: Robin Murphy <robin.murphy@arm.com>
To: robh+dt@kernel.org,
	mark.rutland@arm.com
Subject: [PATCH 2/2] dt-bindings: arm: Clean up CPU binding examples
Date: Tue, 21 May 2019 17:44:27 +0100
Message-Id: <fe070f591d5e07042062b6b07a701feab324ee2c.1558456785.git.robin.murphy@arm.com>
X-Mailer: git-send-email 2.21.0.dirty
In-Reply-To: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
References: <50fbe259ee5951e32221af457737b7d970be9f32.1558456785.git.robin.murphy@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_094439_787336_17CA66B2 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Following commit 31af04cd60d3 ("arm64: dts: Remove inconsistent use of
'arm,armv8' compatible string"), clean up these binding examples in case
anyone is tempted to copy them.

CC: Linus Walleij <linus.walleij@linaro.org>
Signed-off-by: Robin Murphy <robin.murphy@arm.com>
---
 Documentation/devicetree/bindings/arm/arm-boards     |  4 ++--
 .../devicetree/bindings/arm/cpu-capacity.txt         | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/arm-boards b/Documentation/devicetree/bindings/arm/arm-boards
index b6e810c2781a..abff8d834a6a 100644
--- a/Documentation/devicetree/bindings/arm/arm-boards
+++ b/Documentation/devicetree/bindings/arm/arm-boards
@@ -216,7 +216,7 @@ Example:
 		#size-cells = <0>;
 
 		A57_0: cpu@0 {
-			compatible = "arm,cortex-a57","arm,armv8";
+			compatible = "arm,cortex-a57";
 			reg = <0x0 0x0>;
 			device_type = "cpu";
 			enable-method = "psci";
@@ -225,7 +225,7 @@ Example:
 		.....
 
 		A53_0: cpu@100 {
-			compatible = "arm,cortex-a53","arm,armv8";
+			compatible = "arm,cortex-a53";
 			reg = <0x0 0x100>;
 			device_type = "cpu";
 			enable-method = "psci";
diff --git a/Documentation/devicetree/bindings/arm/cpu-capacity.txt b/Documentation/devicetree/bindings/arm/cpu-capacity.txt
index 96fa46cb133c..380e21c5fc7e 100644
--- a/Documentation/devicetree/bindings/arm/cpu-capacity.txt
+++ b/Documentation/devicetree/bindings/arm/cpu-capacity.txt
@@ -118,7 +118,7 @@ cpus {
 	};
 
 	A57_0: cpu@0 {
-		compatible = "arm,cortex-a57","arm,armv8";
+		compatible = "arm,cortex-a57";
 		reg = <0x0 0x0>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -129,7 +129,7 @@ cpus {
 	};
 
 	A57_1: cpu@1 {
-		compatible = "arm,cortex-a57","arm,armv8";
+		compatible = "arm,cortex-a57";
 		reg = <0x0 0x1>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -140,7 +140,7 @@ cpus {
 	};
 
 	A53_0: cpu@100 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x100>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -151,7 +151,7 @@ cpus {
 	};
 
 	A53_1: cpu@101 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x101>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -162,7 +162,7 @@ cpus {
 	};
 
 	A53_2: cpu@102 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x102>;
 		device_type = "cpu";
 		enable-method = "psci";
@@ -173,7 +173,7 @@ cpus {
 	};
 
 	A53_3: cpu@103 {
-		compatible = "arm,cortex-a53","arm,armv8";
+		compatible = "arm,cortex-a53";
 		reg = <0x0 0x103>;
 		device_type = "cpu";
 		enable-method = "psci";
-- 
2.21.0.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
