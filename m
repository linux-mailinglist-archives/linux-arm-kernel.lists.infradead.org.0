Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A817E2F911
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 11:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=szk9KfVg+LTu0F6dTwX3aR+HBqZ5FEyV4rsw6OWC3Z0=; b=n8S
	D3iurbTgpNUKd+vKexRJnJ7U+fP5SkkH7eNlq+mTQkfUWKYaMzGbIObzUiGWWPnd6gH1CNboODxml
	+hMYDV/fiY7O/BAtzA9XT8HpCW1/P0Wz/+wjwqYFDtWXU3Udy9sq7tuTgV8dIE3Aq9CuEyuKQ9IBJ
	cvChQ4ko8G+ARLv9izSryQp0j6LreDc3nV6bgtfcoyJElSWQ5m7YA9yVDdn7MzlFZh2BvFwwzIvyT
	iBCHAApwbLklDMx/EnKCXBHAhMMJUP+nGsDUHH+w+A4Ozwo/xjHvUPjdY5Chho3uUYurVIbGOIGKN
	Oy/ay76a/28ukg0w4DNNY63s2algOrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWH6d-0002vT-E2; Thu, 30 May 2019 09:12:15 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWH6R-0002qd-HJ
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 09:12:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 18D41A78;
 Thu, 30 May 2019 02:12:03 -0700 (PDT)
Received: from usa.arm.com (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id D98C43F59C;
 Thu, 30 May 2019 02:12:01 -0700 (PDT)
From: Sudeep Holla <sudeep.holla@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: vexpress: set the right partition type for NOR flash
Date: Thu, 30 May 2019 10:11:56 +0100
Message-Id: <20190530091156.11693-1-sudeep.holla@arm.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_021203_703888_4E89790D 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Liviu Dudau <liviu.dudau@arm.com>, Sudeep Holla <sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We should set up the partitions in the right way so we will find out
what is in the flash.

The ARM Firmware Suite now has its own compatible and proper device
tree bindings to trigger discovery of the flash contents, and Linux
supports handling the new type of AFS partitions.

Based on commit 7f8e78ca90e2 ("arm64: dts: juno: set the right partition
type for NOR flash")

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
---
 arch/arm/boot/dts/vexpress-v2m-rs1.dtsi | 3 +++
 arch/arm/boot/dts/vexpress-v2m.dtsi     | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
index 1b5bc536c547..d6a1fc269241 100644
--- a/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m-rs1.dtsi
@@ -35,6 +35,9 @@
 				reg = <0 0x00000000 0x04000000>,
 				      <4 0x00000000 0x04000000>;
 				bank-width = <4>;
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			psram@1,00000000 {
diff --git a/arch/arm/boot/dts/vexpress-v2m.dtsi b/arch/arm/boot/dts/vexpress-v2m.dtsi
index 798c97aff7fa..8e57e15307e2 100644
--- a/arch/arm/boot/dts/vexpress-v2m.dtsi
+++ b/arch/arm/boot/dts/vexpress-v2m.dtsi
@@ -35,6 +35,9 @@
 				reg = <0 0x00000000 0x04000000>,
 				      <1 0x00000000 0x04000000>;
 				bank-width = <4>;
+				partitions {
+					compatible = "arm,arm-firmware-suite";
+				};
 			};
 
 			psram@2,00000000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
